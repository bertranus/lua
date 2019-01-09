function runGet()
dofile("getSend.lua")
end

function firstCon() 
dofile("connectWIFI.lua") 
--tmr.stop(0)
end

--tmr.alarm(0, 5000, tmr.ALARM_SINGLE, firstCon)
tmr.alarm(1, 60000, tmr.ALARM_AUTO, runGet)