
import cocotb
from datetime import datetime, timedelta
from time import sleep
import tkinter as tk

led_color_on      = "lime"
led_color_off     = "dark slate gray"
led_color_invalid = "red"

refresh_time = timedelta(milliseconds=40)

class TbGui:
    def __init__(self, dut):
        self.dut = dut

        self.leds = []
        self.sws  = []
        self.txts = {}
        self.btn_states = {}

        self.root = tk.Tk()
        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

        self.closed = False
        self.setup()

        self.last_update = datetime.now()
        self.update()

    def setup():
        pass

    def on_close(self):
        self.root.quit()
        self.closed = True

    def add_clock(self, trigger, burst_time, burst_count):
        cocotb.fork(realtime_clock(self.dut.clk_i, trigger, burst_time, burst_count))

    def add_canvas(self, width, height, side):
        self.canvas = tk.Canvas(self.root, width=width, height=height, bg="black", relief="flat")
        self.canvas.pack(side=side)

    def add_leds(self, count, radius, left, top, spacing):
        d = 2 * radius
        l = left + spacing
        t = top + spacing
        b = t + d
        s = d + spacing
        self.leds = [self.canvas.create_oval(l + i * s, t, l + i * s + d, b, fill=led_color_off) for i in reversed(range(count))]

    def update_leds(self):
        for i, led in enumerate(self.leds):
            led_state = self.dut.leds_o.value.binstr[-i-1]
            if led_state == '1':
                color = led_color_on
            elif led_state == '0':
                color = led_color_off
            else:
                color = led_color_invalid

            self.canvas.itemconfig(led, fill=color)

    def add_switches(self, count, width, height, cursor_height, left, top, spacing):
        self.sw_states = 0
        self.sw_top = top
        self.sw_bottom = top + height + 2 * spacing
        self.sw_step = width + spacing
        self.sw_start = width / 2 + spacing
        self.sw_bottom0 = self.sw_bottom - spacing
        self.sw_top0 = self.sw_bottom0 - cursor_height
        self.sw_top1 = top + spacing
        self.sw_bottom1 = self.sw_top1 + cursor_height

        self.canvas.create_rectangle(left, top, count * self.sw_step + spacing, self.sw_bottom, fill="light gray")
        self.sws = [self.canvas.create_rectangle(left + spacing + i * self.sw_step, self.sw_top0, left + spacing + width + i * self.sw_step, self.sw_bottom0, fill="black") for i in reversed(range(count))]
        self.canvas.bind("<Button-1>", self.on_switch_click)

    def on_switch_click(self, evt):
        if evt.y >= self.sw_top and evt.y < self.sw_bottom:
            i = round((evt.x - self.sw_start) / self.sw_step)
            if i >= 0 and i < len(self.sws):
                self.sw_states ^= 1 << (len(self.sws) - i - 1)

    def update_switches(self):
        for i, sw in enumerate(self.sws):
            coords = self.canvas.coords(sw)
            if self.sw_states & (1 << i):
                coords[1] = self.sw_top1
                coords[3] = self.sw_bottom1
            else:
                coords[1] = self.sw_top0
                coords[3] = self.sw_bottom0
            self.canvas.coords(self.sws[i], coords)

        if len(self.sws) > 0:
            self.dut.switches_i <= self.sw_states

    def add_button(self, port, text, side=tk.LEFT):
        def on_press(evt=None):
            self.btn_states[port] = 1
        def on_release(evt=None):
            self.btn_states[port] = 0

        btn = tk.Button(self.root, text=text)
        btn.pack(side=side, fill=tk.BOTH, expand=True)
        btn.bind("<ButtonPress>", on_press)
        btn.bind("<ButtonRelease>", on_release)
        on_release()

    def update_buttons(self):
        for k, v in self.btn_states.items():
            getattr(self.dut, k) <= v

    def add_text_field(self, label, side=tk.TOP, height=1, editable=True):
        frm = tk.LabelFrame(self.root, text=label)
        txt = tk.Text(frm, height=height)
        if editable:
            txt.bind("<Key>", self.on_key_press)
        else:
            txt.config(state=tk.DISABLED, bg=led_color_off, fg=led_color_on)
        txt.pack()
        frm.pack(side=side)
        self.txts[label] = txt

    def on_key_press(self, evt):
        # Override this method in your testbench
        print(evt)

    def update(self):
        t = datetime.now()
        delta = t - self.last_update

        if delta >= refresh_time:
            self.last_update = t
            self.update_leds()
            self.update_switches()

        self.update_buttons()

        self.root.update()

# Generate a clock that attempts to match the real time.
#
# trigger:       A Timer object corresponding to half a clock period
# burst_time:    A timedelta object corresponding to the duration of a burst of clock cycles
# burst_count:   The number of clock cycles in a burst
#
# Precondition: burst_time / burst_count == 2 * trigger
@cocotb.coroutine
def realtime_clock(sig, trigger, burst_time, burst_count):
    second = timedelta(seconds=1)

    while True:
        burst_start_time = datetime.now()
        for i in range(burst_count):
            sig <= 0
            yield trigger
            sig <= 1
            yield trigger
        burst_end_time = datetime.now()
        delta = burst_end_time - burst_start_time
        if delta < burst_time:
            sleep((burst_time - delta) / second)
