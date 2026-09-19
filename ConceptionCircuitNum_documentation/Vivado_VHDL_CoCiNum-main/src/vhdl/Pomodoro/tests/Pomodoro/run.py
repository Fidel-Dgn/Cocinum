
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer

import tkinter as tk
from datetime import datetime, timedelta

display_width           = 100
display_height          = 200
display_margin          = 10
display_thickness       = 20
display_selector_height = 30
display_total_height    = display_height + display_selector_height
display_color_on        = "lime"
display_color_off       = "dark slate gray"
display_color_alarm     = "orange"

refresh_time = timedelta(milliseconds=40)

class SegmentDisplay:
    def __init__(self, gui, dut, seg_signal_name, led_signal_name):
        self.dut             = dut
        self.seg_signal_name = seg_signal_name
        self.led_signal_name = led_signal_name

        self.canvas = tk.Canvas(gui, width=display_width, height=display_total_height, bg="black", relief="flat")
        self.canvas.pack(side=tk.RIGHT)

        top    = left           = display_margin + display_thickness / 2
        right  = display_width  - display_margin - display_thickness / 2
        bottom = display_height - display_margin - display_thickness / 2
        middle = display_height / 2

        # Add segments in the bit index order
        self.segments = [
            self.add_horizontal_segment(left,  right,  top),
            self.add_vertical_segment(  right, top,    middle),
            self.add_vertical_segment(  right, middle, bottom),
            self.add_horizontal_segment(left,  right,  bottom),
            self.add_vertical_segment(  left,  middle, bottom),
            self.add_vertical_segment(  left,  top,    middle),
            self.add_horizontal_segment(left,  right,  middle)
        ]

        self.led = self.add_led()

    def add_horizontal_segment(self, left, right, y):
        x0 = left  + display_thickness / 2
        x1 = right - display_thickness / 2
        y0 = y     - display_thickness / 2
        y1 = y     + display_thickness / 2
        return self.canvas.create_polygon(left, y, x0, y0, x1, y0, right, y, x1, y1, x0, y1,
                                          outline="black", fill=display_color_off)

    def add_vertical_segment(self, x, top, bottom):
        x0 = x      - display_thickness / 2
        x1 = x      + display_thickness / 2
        y0 = top    + display_thickness / 2
        y1 = bottom - display_thickness / 2
        return self.canvas.create_polygon(x, top, x0, y0, x0, y1, x, bottom, x1, y1, x1, y0,
                                          outline="black", fill=display_color_off)

    def add_led(self):
        left   = display_width / 2 - display_thickness / 2
        right  = display_width / 2 + display_thickness / 2
        top    = display_height + display_selector_height / 2 - display_thickness / 2
        bottom = display_height + display_selector_height / 2 + display_thickness / 2
        return self.canvas.create_oval(left, top, right, bottom, fill=display_color_off)

    def get_color(self, condition):
        return display_color_alarm if self.dut.alarm_o.value else display_color_on if condition else display_color_off

    def update(self):
        segments = getattr(self.dut, self.seg_signal_name)
        led      = getattr(self.dut, self.led_signal_name)

        for b in range(7):
            self.canvas.itemconfig(self.segments[b],
                                   fill=self.get_color(segments.value.binstr[b] == '1'))

        self.canvas.itemconfig(self.led,
                               fill=self.get_color(led.value.binstr == '1'))


class Button:
    def __init__(self, gui, txt, dut, signal_name):
        self.dut = dut
        self.signal_name = signal_name
        self.value = 0

        btn = tk.Button(gui, text=txt)
        btn.pack(fill=tk.BOTH)
        btn.bind("<ButtonPress>", self.on_press)
        btn.bind("<ButtonRelease>", self.on_release)

    def on_press(self, evt):
        self.value = 1

    def on_release(self, evt):
        self.value = 0

    def update(self):
        if getattr(self.dut, self.signal_name).value.integer != self.value:
            setattr(self.dut, self.signal_name, self.value)


class Minuteur:
    def __init__(self, dut):
        self.root = tk.Tk()
        self.root.protocol("WM_DELETE_WINDOW", self.close)

        self.widgets = [
            SegmentDisplay(self.root, dut, "seg_seconds_ones_o", "led_seconds_ones_o"),
            SegmentDisplay(self.root, dut, "seg_seconds_tens_o", "led_seconds_tens_o"),
            SegmentDisplay(self.root, dut, "seg_minutes_ones_o", "led_minutes_ones_o"),
            SegmentDisplay(self.root, dut, "seg_minutes_tens_o", "led_minutes_tens_o"),
            Button(self.root, "Start/Stop", dut, "btn_start_stop_i"),
            Button(self.root, "Select",     dut, "btn_select_i"),
            Button(self.root, "+",          dut, "btn_plus_i"),
            Button(self.root, "-",          dut, "btn_minus_i"),
        ]

        self.closed = False

        self.last_update = datetime.now()

    def close(self):
        self.root.quit()
        self.closed = True

    def update(self):
        # Do not refresh the UI too often
        t = datetime.now()
        delta = t - self.last_update

        if delta >= refresh_time:
            self.last_update = t
            for w in self.widgets:
                w.update()

        self.root.update()


@cocotb.test()
def run(dut):
    gui = Minuteur(dut)

    clk = Clock(dut.clk_i, 1, "ms")
    cocotb.fork(clk.start())

    dut.reset_i          = 1
    dut.btn_start_stop_i = 0
    dut.btn_select_i     = 0
    dut.btn_plus_i       = 0
    dut.btn_minus_i      = 0

    yield Timer(1500, "us")
    dut.reset_i = 0

    while not gui.closed:
        yield Timer(250, "us")
        gui.update()
