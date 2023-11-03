use context essentials2021
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

distance-per-day = 50 
distance-per-unit-of-fuel = 12
energy-per-unit-of-fuel = 10

energy-per-day = (distance-per-day / 
     distance-per-unit-of-fuel) * energy-per-unit-of-fuel

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day #slik at funksjonen jeg har regnet ersatter verdien i "bil"
  end
where: 
  energi-to-number("") is energy-per-day
  energi-to-number("48") is 48
  energi-to-number("37") is 37
end

#fun add-car(value :: Number) -> Number:
#if value == 0: 50 else: value 
#end 
#end 

final = transform-column(consumer-data, "energi", energi-to-number)
#semi = transform-column(final, "energi", add-car)


bar-chart(final, "komponent", "energi")