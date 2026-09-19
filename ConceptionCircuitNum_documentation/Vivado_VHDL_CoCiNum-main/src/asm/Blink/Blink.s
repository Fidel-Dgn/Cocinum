
    .set IO_ADDRESS,          0x80000000
    .set INTC_ADDRESS,        0x81000000
    .set TIMER_ADDRESS,       0x83000000
    .set TIMER_LIMIT,         500 /* On suppose une fréquence d'horloge de 1 kHz */
    .set INTC_EVENTS_TIMER,   4

    .global irq_handler
irq_handler:
    sw x6, 4(x5)   /* Acquitter la demande d'interruption                           */
    lh x9, (x7)    /* Lire l'état des interrupteurs                                 */
    xor x8, x8, x9 /* Inverser l'état des LED correspondant aux interrupteurs levés */
    sh x8, (x7)    /* Mettre à jour les LED                                         */
    mret           /* Revenir dans le programme appelant                            */

    .global main
main:
    /* Configurer la période des demandes d'interruption */
    li x5, TIMER_ADDRESS
    li x6, TIMER_LIMIT
    sw x6, (x5)

    /* Autoriser les interruptions du timer */
    li x5, INTC_ADDRESS
    li x6, INTC_EVENTS_TIMER
    sw x6, (x5)

    /* Mettre à zéro l'état des LED */
    li x7, IO_ADDRESS
    li x8, 0
    sh x8, (x7)

main_loop:
    j main_loop
