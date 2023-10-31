use context essentials2021
fun nordic-flag(top, middle, bot, pole, main): #de andre navnene sier sitt, men "bot" er forkortelse på bottom, "main" er hovedbakgrunnen, men den er overlayet slik at fargen mellom "korset" på midten kommer fram
  frame(
    overlay-xy(square(60, "solid", top),
      0, 0, #dette er en kvadrat, med overlay plassert på topp. Jeg la den til med variableren "top" slik at jeg kan legge til fargen på topp. 
      overlay-xy(square(60, "solid", bot),
        0, -90, #samme kvadrat med overlay, plassert kvadraten på bunnen, slik at jeg kan lage en funksjon for fargen på bunnen. 
        overlay-xy(rectangle(180, 60, "solid", bot), #rektangel på bunnen
        -120, -90,
          overlay-xy(rectangle(180, 60, "solid", top),
          -120, 0,
            overlay-xy(rectangle(300, 15, "solid", middle), #dette er et av "korset" som går gjennom de nordiske flaggene
            0, -70,
              overlay-xy(rectangle(37, 150, "solid", pole), #korset som går gjennom de nordiske flaggene, måtte lage to stykk av de
              -70, 0,
                rectangle(300, 150, "solid", main)))))))) #på slutten måtte jeg kjøre en rektangle som skal være på bakgrunnen slik at jeg kan endre fargen på "korset" som er i midten/bakgrunnen av de fleste nordiske flag
end
norway = nordic-flag("red", "blue", "red", "blue", "white")
sweden = nordic-flag("blue", "yellow", "blue", "yellow", "yellow")
denmark = nordic-flag("red", "white", "red", "white", "white")
iceland = nordic-flag("blue", "red", "blue", "red", "white")
finland = nordic-flag("white", "blue", "white", "blue", "blue")
faroe = nordic-flag("white", "red", "white", "red", "blue")
norway
sweden
denmark
iceland
finland
faroe
#jeg valgte bruke "frame" på starten fordi det var den lettelse å jobbe med, ettersomt det er eksempelen pensum bruker