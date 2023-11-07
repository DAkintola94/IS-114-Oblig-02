use context essentials2021
fun draw-flag(flag-name) -> Image:#Starter med det norske flagget
 
  if flag-name == "Norway": #Dette er funksjonen for å kalle flagget
    BlueNorway = rectangle(220, 20, "solid", "darkblue") #Her lagde jeg flere variabler
    BlueNorway2 = rectangle(20, 160, "solid", "darkblue") 
    WhiteNorway = rectangle(220, 40, "solid", "white") #hensikten er å lage forskjellige variabler med rettet farge og dimensjon
    WhiteNorway2 = rectangle(40, 160, "solid", "white")
    RedNorway = rectangle(220, 160, "solid", "red")

    put-image(#etter det satt jeg variablene i et spesifikt punkt. Måtte dele verdiene på 2, og dette gjorde jeg med alle de andre flagene også
      BlueNorway, 110, 80,
      put-image(
        BlueNorway2, 80, 80,
        put-image(
          WhiteNorway, 110, 80,
          put-image(
            WhiteNorway2, 80, 80,
            put-image(
              RedNorway, 110, 80,
              empty-scene(220, 160)))))) #en empty-scene til slutt. Brukte dette for å sette inn alle "image" eller variablene inn
    #Iceland

  else if flag-name == "Iceland": #lagde en "else if" statement, hensikten er for å bryte med den "oppringlige første flagget, vanskelig formulering
    RedIceland = rectangle(250, 20, "solid", "red")
    RedIceland2 = rectangle(20, 180, "solid", "red") 
    WhiteIceland = rectangle(250, 40, "solid", "white")
    WhiteIceland2 = rectangle(40, 180, "solid", "white")
    BlueIceland = rectangle(250, 180, "solid", "blue") #Her gjorde jeg det samme som øverst, med forskjellig navn slik at det er lettere for meg å gå gjennom koden

    put-image(
      RedIceland, 125, 90,
      put-image(
        RedIceland2, 90, 90,
        put-image(
          WhiteIceland, 125, 90,
          put-image(
            WhiteIceland2, 90, 90,
            put-image(
              BlueIceland, 125, 90,
              empty-scene(250, 180))))))
    
  else if flag-name == "Denmark": #Danmark
    WhiteDenmark = rectangle(370, 40, "solid", "white")
    WhiteDenmark2 = rectangle(40, 280, "solid", "white") 
    SWhiteDenmark = rectangle(280, 40, "solid", "white")
    SWhiteDenmark2 = rectangle(40, 280, "solid", "white")
    RedDenmark = rectangle(370, 280, "solid", "red")

    put-image(
      WhiteDenmark, 185, 140,
      put-image(
        WhiteDenmark2, 140, 140,
        put-image(
          SWhiteDenmark, 185, 140,
          put-image(
            SWhiteDenmark2, 140, 140,
            put-image(
              RedDenmark, 185, 140,
              empty-scene(370, 280))))))
    
  else if flag-name == "Sweden": #Sverige
    YellowSwe = rectangle(160, 20, "solid", "yellow")
    YellowSwe2 = rectangle(20, 160, "solid", "yellow") 
    SyellowSwe = rectangle(160, 20, "solid", "yellow")
    SyellowSwe2 = rectangle(20, 160, "solid", "yellow")
    BlueSwe = rectangle(160, 100, "solid", "blue")

    put-image(
      YellowSwe, 80, 50,
      put-image(
        YellowSwe2, 50, 50,
        put-image(
          SyellowSwe, 80, 50,
          put-image(
            SyellowSwe2, 50, 50,
            put-image(
              BlueSwe, 80, 50,
              empty-scene(160, 100))))))
    
  else if flag-name == "Finland": #Finland
    BlueFin = rectangle(180, 30, "solid", "blue")
    BlueFin2 = rectangle(30, 110, "solid", "blue") 
    BlueFin3 = rectangle(180, 30, "solid", "blue")
    BlueFin4 = rectangle(30, 110, "solid", "blue")
    WhiteFin = rectangle(180, 110, "solid", "white")

    put-image(
      BlueFin, 90, 55,
      put-image(
        BlueFin2, 55, 55,
        put-image(
          BlueFin3, 90, 55,
          put-image(
            BlueFin4, 55, 55,
            put-image(
              WhiteFin, 90, 55,
              empty-scene(180, 110))))))
    
  else if flag-name == "Faroe": #Faroe
    RedFaroe = rectangle(220, 20, "solid", "red")
    RedFaroe2 = rectangle(20, 160, "solid", "red") 
    BlueFaroe = rectangle(220, 40, "solid", "blue")
    BlueFaroe2 = rectangle(40, 160, "solid", "blue")
    WhiteFaroe = rectangle(220, 160, "solid", "white")

    put-image(
      RedFaroe, 110, 80,
      put-image(
        RedFaroe2, 80, 80,
        put-image(
          BlueFaroe, 110, 80,
          put-image(
            BlueFaroe2, 80, 80,
            put-image(
              WhiteFaroe, 110, 80,
              empty-scene(220, 160))))))
    
  end 
end 

draw-flag("Norway")
draw-flag("Iceland")
draw-flag("Denmark")
draw-flag("Sweden")
draw-flag("Finland")
draw-flag("Faroe")