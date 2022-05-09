function init()
	print("Installations: ")
	print("-------------------------")
	print("1: Storage-System")
	print("2: Mining-System")
	print("-------------------------")
	io.write("Choose Number: ")
	local target = tonumber(read())
	if target == 1 then
		initStorage()
	elseif target == 2 then
		initMiningSystem()
	else
		print("Input Invalid")
	end
end

function initMiningSystem()
	print("Programms: ")
	print("-------------------------")
	print("1: Turtle")
	print("-------------------------")
	io.write("Choose Number: ")
	local target = tonumber(read())
	if target == 1 then
		shell.run("wget https://raw.githubusercontent.com/Terandox-The-Pineapple/TRX-Miner/main/TRX-Miner.lua TRX-Miner")
		shell.run("TRX-Miner")
	else
		print("Input Invalid")
	end
end

function initStorage()
	print("Programms: ")
	print("-------------------------")
	print("1: Server")
	print("2: Tablet")
	print("3: Turtle")
	print("-------------------------")
	io.write("Choose Number: ")
	local target = tonumber(read())
	if target == 1 then
		shell.run("wget https://raw.githubusercontent.com/Terandox-The-Pineapple/TRX-Storage/main/Server.lua startup")
		shell.run("reboot")
	elseif target == 2 then
		shell.run("wget https://raw.githubusercontent.com/Terandox-The-Pineapple/TRX-Storage/main/Handheld.lua startup")
		shell.run("reboot")
	elseif target == 3 then
		shell.run("wget https://raw.githubusercontent.com/Terandox-The-Pineapple/TRX-Storage/main/Turtle.lua startup")
		shell.run("reboot")
	else
		print("Input Invalid")
	end
end

init()
