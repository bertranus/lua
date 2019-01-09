address = "http://192.168.0.102/"
key = "17041979"
dofile("readDHT.lua")
sendmessage = address.."weather.php?type=dht&t="..temp.."&h="..humi.."&s="..wifi.ap.getmac().."&k="..key
http.get(sendmessage, nil, function(code, data)
    if (code < 0) then
      print("HTTP request failed")
    else
      print(code, data)
    end
  end)