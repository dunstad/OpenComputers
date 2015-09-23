os.execute("cd /usr/inventory")
os.execute("wget https://raw.githubusercontent.com/dunstad/OpenComputers/master/inventory/inventory.lua")
os.execute("wget https://raw.githubusercontent.com/dunstad/OpenComputers/master/inventory/receiver/receiveRequest.lua")
os.execute("receiveRequest.lua")