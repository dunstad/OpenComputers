component = require("component")
event = require("event")
tunnel = component.tunnel
modem = component.modem
 
while 1 do
  local _, _, _, _, _, message = event.pull("modem_message")
  modem.broadcast(1337, message)
  print(message)
end