
gtkwave::addSignalsFromList [list \
    clk reset \
    btn_demarrer_arreter appui_demarrer_arreter \
    btn_selection appui_selection \
    btn_plus appui_plus \
    btn_moins appui_moins \
    etat_reg \
    led_minutes_dizaine led_minutes_unite led_secondes_dizaine led_secondes_unite \
    alarme \
    cycle_diviseur inc_secondes_unite dec_secondes_unite secondes_unite \
    cycle_secondes_unite inc_secondes_dizaine dec_secondes_dizaine secondes_dizaine \
    cycle_secondes_dizaine inc_minutes_unite dec_minutes_unite minutes_unite \
    cycle_minutes_unite inc_minutes_dizaine dec_minutes_dizaine minutes_dizaine \
    cycle_minutes_dizaine \
    seg_minutes_dizaine seg_minutes_unite seg_secondes_dizaine seg_secondes_unite \
]

gtkwave::setZoomRangeTimes [gtkwave::getMinTime] [gtkwave::getMaxTime]
