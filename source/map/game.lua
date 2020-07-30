genMap = function()
	room.groundsPosition = {250, 749+250, 50}
	room.isInLobby = false
    local xml = {}
    local xml2 = {}
    local obj = {}
    local spawn = {}
	local aps = '16bb480f649.png,1,5791,4596,205,200,5791,4596;16f8fd6e0e9.png,1,8505,6230,2000,500,8498,5950'

	--16bf16a367a.png -- original
	--16dcff228d2.png -- halloween
	local largeGrass = '16bce6d826c.jpg'
	local largeEarth = '16bce7d39d8.jpg'
	if room.event == 'halloween2019' then
		largeGrass = '16de5dedee3.jpg'
		largeEarth = '16de5e3db57.jpg'
	elseif room.event == 'christmas2019' then
		largeGrass = '16f19d53238.jpg'
	end
    for i = 1, 17 do
		xml[#xml+1] = '<S H="10" L="3000" X="'..room.groundsPosition[2]..'" c="3" Y="800" m="" T="5" P="0,0,0.3,0,0,0,0,0" /><S H="1400" L="10" X="'..room.groundsPosition[3]..'" Y="1100" m="" T="5" P="0,0,0,0,0,0,0,0" /><S H="110" L="800" X="'..room.groundsPosition[2]..'" c="3" m="" Y="1790" T="9" P="0,0,0.3,0,0,0,0,0" /><S H="150" L="800" i="0,0,'..largeEarth..'" X="'..room.groundsPosition[2]..'" c="3" Y="1870" T="5" P="0,0,0.3,0,0,0,0,0" /><S H="220" L="800" i="0,0,'..largeGrass..'" X="'..room.groundsPosition[1]..'" Y="1825" T="6" P="0,0,0.3,0,0,0,0,0" />'
		for i = 1, 3 do
			room.groundsPosition[i] = room.groundsPosition[i] + 1500
		end
	end
	-- wall
		xml[#xml+1] = '<S L="50" X="9600" H="300" Y="170" T="4" m="" P="0,0,0,0,0,0,0,0" /><S L="50" X="8420" H="300" Y="170" T="4" m="" P="0,0,0,0,0,0,0,0" />'
	-- hospital
		xml[#xml+1] = '<S T="14" L="137" H="30" X="4102" Y="3645" P="0,0,0.3,0,5,0,0,0,0"/><S T="14" L="3000" H="10" X="5500" Y="3660" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="14" L="3000" H="10" X="6600" Y="3260" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="12" o="665b4e" L="3000" H="100" X="6600" Y="2950" P="0,0,0,0,-180,0,0,0" N="" c="3"/><S T="12" o="665b4e" L="3000" H="100" X="5500" Y="2950" P="0,0,0,0,-180,0,0,0" N="" c="3"/><S T="14" L="3000" H="10" X="5500" Y="3260" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="14" L="10" H="800" X="4800" Y="3400" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="800" X="4000" Y="3400" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="5700" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="4900" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="6600" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="5800" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="7500" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="10" H="400" X="6700" Y="3200" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="95" H="30" X="4098" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="4691" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="4998" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="5591" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="5898" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="6491" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="6798" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/><S T="14" L="95" H="30" X="7391" Y="3233" P="0,0,0.3,0.5,0,0,0,0"/>'
	-- seedStore
		xml[#xml+1] = '<S T="12" L="40" H="400" X="11350" Y="51" P="0,0,0,0,0,0,0,0" N="" o="4b2400"/><S T="12" L="40" H="400" X="12165" Y="51" P="0,0,0,0,0,0,0,0" N="" o="4b2400"/>'
	-- café
		xml[#xml+1] = '<S T="14" L="10" H="400" X="7090" Y="100" P="0,0,0,0,0,0,0,0"/><S T="14" L="10" H="200" X="6005" Y="143" P="0,0,0,0,0,0,0,0" c="3" o="ffffff"/>'
	-- Potion store
		xml[#xml+1] = '<S T="14" L="10" H="500" X="10500" Y="50" P="0,0,0,0,0,0,0,0"/><S T="14" L="10" H="500" X="10910" Y="50" P="0,0,0,0,0,0,0,0"/>'
	-- Dealership
		xml[#xml+1] = '<S T="12" L="1400" H="200" X="9100" Y="350" P="0,0,0.3,0,0,0,0,0" o="909090"/>'
	-- Pizzeria
		xml[#xml+1] = '<S T="12" L="40" H="400" X="14000" Y="50" P="0,0,0,0,0,0,0,0" o="4b2400"/><S T="12" L="400" N="" H="400" X="15200" Y="50" P="0,0,0,0,0,0,0,0" o="4b2400"/>'
	-- Furniture Store
		xml[#xml+1] = '<S T="12" L="40" H="400" X="16000" Y="50" P="0,0,0,0,0,0,0,0" o="f0f0f0"/><S T="12" L="40" H="400" X="17015" Y="50" P="0,0,0,0,0,0,0,0" o="f0f0f0"/>'
	-- Fish Shop 
		xml[#xml+1] = '<S T="14" L="50" H="300" X="12585" Y="100" P="0,0,0,0,0,0,0,0"/><S T="14" L="50" H="300" X="13200" Y="100" P="0,0,0,0,0,0,0,0"/>'

	-- Police Station 
		-- Jail 
		local aps2 = {}
		for i = 1, 18 do 
			aps2[#aps2+1] = '16f9672ce4a.png,1,' .. (8045 + (i-1)*25) .. ',6260,30,174,' .. (8045 + (i-1)*25) .. ',6260;16f96805a4f.png,1,0,0,30,174,' .. (8045 + (i-1)*25) .. ',6260;'
		end
		spawn[#spawn+1] = '<P P="1,0" C="e8e9eb,cf8531" Y="6405" T="119" X="8475" />'

	local streetGrounds = '<S T="12" L="2000" H="300" X="5539" Y="5395" P="0,0,0.3,0,0,0,0,0" o="8f8570"/><S T="14" L="34" H="1023" X="6029" Y="4739" P="0,0,0,0,0,0,0,0"/><S T="14" L="100" H="1000" X="5014" Y="4750" P="0,0,0,0,0,0,0,0" c="3"/><S T="14" L="25" H="180" X="5260" Y="5100" P="0,0,0,0,0,0,0,0"/><S T="14" L="796" H="54" X="5648" Y="5030" P="0,0,0.3,0,0,0,0,0"/><S T="14" L="230" H="173" X="5106" Y="5260" P="0,0,0.3,0,33,0,0,0"/><S T="14" L="150" H="10" X="5195" Y="5053" P="0,0,0.3,0,-37,0,0,0"/><S T="14" L="150" H="10" X="5195" Y="5138" P="0,0,0.3,0,37,0,0,0"/><S T="14" L="794" H="46" X="5648" Y="4810" P="0,0,0.3,0,0,0,0,0"/><S T="14" L="200" H="10" X="5115" Y="4910" P="0,0,0.3,0,39,0,0,0"/><S T="14" L="200" H="10" X="5115" Y="5030" P="0,0,0.3,0,-39,0,0,0"/><S T="14" L="120" H="10" X="5204" Y="4826" P="0,0,0.3,0,-37,0,0,0"/><S T="14" L="120" H="10" X="5204" Y="4892" P="0,0,0.3,0,37,0,0,0"/><S T="14" L="24" H="130" X="5260" Y="4869" P="0,0,0,0,0,0,0,0"/><S T="14" L="1032" H="50" X="5516" Y="4565" P="0,0,0,0,0,0,0,0"/><S T="14" L="31" H="131" X="5808" Y="4653" P="0,0,0,0,0,0,0,0"/><S T="14" L="75" H="10" X="5433" Y="4974" P="0,0,0,0,0,0,0,0"/><S T="14" L="20" H="25" X="5373" Y="4997" P="0,0,0.3,0,0,0,0,0"/><S T="14" L="20" H="25" X="5496" Y="4997" P="0,0,0.3,0,0,0,0,0"/><S T="14" L="778" H="30" X="7502" Y="5846" P="0,0,0,0,0,0,0,0"/><S T="12" L="20" H="398" X="7877" Y="6045" P="0,0,0,0,0,0,0,0" o="ffffff"/><S T="14" L="40" H="465" X="7111" Y="6068" P="0,0,0,0,0,0,0,0" i="-489,-187,172a62d3af2.png"/><S T="14" L="40" H="800" X="8520" Y="6020" P="0,0,0,0,0,0,0,0"/><S T="14" L="310" H="22" X="7287" Y="6105" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="20" H="222" X="8042" Y="6351" P="0,0,0,0,0,0,0,0"/><S T="14" L="310" H="22" X="7287" Y="5978" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="325" H="22" X="7718" Y="5978" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="322" H="22" X="7716" Y="6105" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="900" H="22" X="8153" Y="6236" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" c="3" L="600" H="56" X="7294" Y="6254" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" c="3" L="300" H="42" X="7685" Y="6345" P="0,0,0.3,0.2,45,0,0,0"/><S T="14" c="3" L="900" H="60" X="8152" Y="6437" P="0,0,0.3,0.2,0,0,0,0"/><S L="30" X="3450" H="300" Y="170" T="12" P="0,0,0,0,0,0,0,0" i="0,2,16f09acf0bc.png"/><S L="3000" X="1500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="1500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="4500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="4500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="7500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="7500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S L="3000" X="10500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="10500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="13500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="13500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="16500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="16500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="19500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="19500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="22500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="22500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="25500" H="50" Y="-5" T="14" P="0,0,0.3,0.2,0,0,0,0"/><S L="3000" X="25500" H="50" i="0,0,1708cc51823.jpg" Y="275" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="1599" H="102" X="2400" Y="7826" i="0,-400,170f00f4705.png" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S L="1600" H="102" X="3999" Y="7826" i="0,-400,17200ada21f.png" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S L="1600" H="102" X="5598" Y="7826" i="0,-400,172a473bd5f.png" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S L="3000" H="50" X="1500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="4500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="7500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="10500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="13500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="16500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="20" X="5119" H="300" Y="170" T="14" P="0,0,0,0,0,0,0,0" N=""/><S L="3000" H="50" X="19500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="22500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="3000" H="50" X="25500" Y="7300" c="3" T="14" P="0,0,0,0,0,0,0,0"/><S L="1600" H="50" X="800" Y="7600" i="0,0,17192f72648.png" T="12" P="0,0,0.3,0.2,0,0,0,0"/><S L="1600" H="57" X="800" Y="7604" i="0,0,17193917e30.png" N="" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S T="12" L="350" H="40" X="1430" Y="8241" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="350" H="40" X="1368" Y="8367" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="70" H="130" X="1368" Y="8242" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="70" H="70" X="1478" Y="8327" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="470" H="70" X="1677" Y="8152" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="180" H="276" X="1197" Y="8430" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="314" H="40" X="1479" Y="8484" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="40" H="230" X="1785" Y="8519" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="150" H="30" X="1785" Y="8699" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="100" H="40" X="1728" Y="8424" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="110" H="40" X="1610" Y="8577" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="100" H="40" X="1658" Y="8454" P="0,0,1,0.3,136,0,0,0" o="e2ad32"/><S T="12" L="160" H="40" X="1875" Y="8515" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="282" H="40" X="1982" Y="8382" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="45" H="150" X="1863" Y="8382" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="50" H="100" X="2028" Y="8317" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="300" H="200" X="2238" Y="8204" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="120" H="36" X="1813" Y="8325" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="190" H="40" X="1678" Y="8282" P="0,0,1,0.3,207,0,0,0" o="e2ad32"/><S T="12" L="50" H="150" X="1943" Y="8247" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="410" H="130" X="1966" Y="8169" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="175" H="61" X="1719" Y="8196" P="0,0,1,0.3,207,0,0,0" o="e2ad32"/><S T="12" L="180" H="40" X="1873" Y="8243" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="110" H="180" X="1162" Y="8212" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="800" H="38" X="1508" Y="8123" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="50" H="90" X="1943" Y="8490" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="50" H="90" X="1942" Y="8490" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="110" H="40" X="1973" Y="8465" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="180" H="35" X="1658" Y="8367" P="0,0,1,0.3,-144,0,0,0" o="e2ad32"/><S T="12" L="70" H="30" X="1560" Y="8381" P="0,0,1,0.3,-140,0,0,0" o="e2ad32"/><S T="12" L="1278" H="289" X="1369" Y="8973" P="0,0,1,0,0,0,0,0" o="e2ad32"/><S T="12" L="397" H="27" X="1482" Y="8774" P="0,0,1,0,0,0,0,0" o="e2ad32"/><S T="12" L="132" H="365" X="1174" Y="8910" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="120" H="35" X="1955" Y="8594" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="70" H="215" X="1974" Y="8769" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="14" L="70" H="3000" X="1972" Y="10386" P="0,0,0,0.3,0,0,0,0"/><S T="12" L="170" H="50" X="1698" Y="8640" P="0,0,0,0,52,0,0,0" o="e2ad32"/><S T="12" L="130" H="30" X="1875" Y="8641" P="0,0,0,0,-60,0,0,0" o="e2ad32"/><S T="12" L="250" H="30" X="1498" Y="8597" P="0,0,0,0,61,0,0,0" o="e2ad32"/><S T="12" L="85" H="30" X="1589" Y="8700" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="95" H="40" X="1696" Y="8737" P="0,0,0,0,-50,0,0,0" o="e2ad32"/><S T="12" L="350" H="60" X="1283" Y="8697" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="120" H="84" X="1388" Y="8648" P="0,0,0,0,50,0,0,0" o="e2ad32"/><S T="12" L="58" H="119" X="1327" Y="8659" P="0,0,0,0,50,0,0,0" o="e2ad32"/><S T="12" L="451" H="239" X="2209" Y="8997" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="500" H="467" X="2588" Y="8884" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="200" H="26" X="2268" Y="8663" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="150" H="26" X="2188" Y="8725" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="70" H="180" X="2088" Y="8648" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="150" H="20" X="2128" Y="8832" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="150" H="20" X="2058" Y="8782" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="150" H="20" X="2058" Y="8782" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="80" H="120" X="2223" Y="8782" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="40" H="140" X="2103" Y="8447" P="0,0,40,0.3,0,0,0,0" o="e2ad32"/><S T="12" L="3000" H="284" X="3882" Y="8246" P="0,0,0,0,0,0,0,0" o="32180b"/><S T="14" L="50" H="50" X="1873" Y="7790" P="0,0,0.2,0.3,34,0,0,0"/><S T="14" L="127" H="529" X="232" Y="7856" P="0,0,0,0,0,0,0,0"/><S T="14" L="371" H="223" X="668" Y="8719" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="370" H="226" X="1012" Y="8753" P="0,0,0.3,0.2,11,0,0,0"/><S T="14" L="117" H="150" X="1552" Y="7800" P="0,0,10,0.2,0,0,0,0"/><S T="14" L="450" H="37" X="668" Y="8209" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="718" H="236" X="1018" Y="8132" P="0,0,0,0.2,-53,0,0,0"/><S T="14" L="1600" H="102" X="1940" Y="7826" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="650" H="114" X="382" Y="8363" P="0,0,0,0.2,60,0,0,0"/><S T="14" L="270" H="15" X="1711" Y="7659" P="0,0,0.5,0.2,34,0,0,0"/><S T="14" L="1500" H="20" X="3586" Y="8570" P="0,0,0,0,0,0,0,0"/><S T="14" L="40" H="2000" X="2835" Y="9121" P="0,0,0,0,0,0,0,0"/><S T="14" L="40" H="2000" X="4325" Y="9108" P="0,0,0,0,0,0,0,0"/><S T="14" L="340" H="62" X="12921" Y="7732" P="0,0,0.5,0.2,-34,0,0,0" N=""/><S T="14" L="2000" H="40" X="14041" Y="7632" P="0,0,0.3,0.2,0,0,0,0" N=""/><S L="3000" H="50" X="10627" Y="7800" i="-1200,-800,172b978531a.png" T="12" P="0,0,0.3,0.2,0,0,0,0" o=""/><S L="1600" H="57" X="12873" Y="7803" T="14" P="0,0,0.3,0.2,0,0,0,0" i="-4140,-800,172b97bd4ef.png"/><S T="14" L="2800" H="20" X="7800" Y="7680" P="0,0,0,0,0,0,0,0"/><S T="14" L="80" H="1777" X="6400" Y="8170" c="3" P="0,0,0,0,0,0,0,0"/><S T="14" L="2829" H="20" X="7783" Y="7830" P="0,0,0,0,0,0,0,0"/><S T="14" L="2833" H="20" c="3" X="7782" Y="7810" P="0,0,0,0,0,0,0,0"/><S T="14" L="80" H="1337" X="9161" Y="7933" c="3" P="0,0,0,0,0,0,0,0"/><S T="14" L="200" H="2000" X="-100" Y="7000" P="0,0,0,0,0,0,0,0"/><S T="14" L="1200" H="66" X="1350" Y="9445" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="1200" H="74" X="1350" Y="9750" P="0,0,0.3,0.2,0,0,0,0"/><S T="14" L="210" H="300" X="1845" Y="9576" P="0,0,0,0,0,0,0,0"/><S T="14" L="220" H="300" X="860" Y="9276" P="0,0,0,0,0,0,0,0"/><S T="14" L="30" H="600" X="743" Y="9426" P="0,0,0,0,0,0,0,0"/><S T="14" L="1500" H="20" X="3588" Y="8674" i="0,0,17200cccdc3.png" P="0,0,0,0,0,0,0,0"/><S T="12" L="1225" H="3000" X="5750" Y="10145" P="0,0,100,0,0,0,0,0" o="32180b"/><S T="12" L="904" H="2968" X="5908" Y="9585" P="0,0,0,0,0,0,0,0" o="32180b"/><S T="12" L="210" H="3000" X="4431" Y="10145" P="0,0,100,0.2,0,0,0,0" o="32180b"/><S X="5420" Y="8257" T="9" L="77" H="778" P="0,0,0,0,0,0,0,0" c="4" m=""/><S X="5345" Y="7985" T="14" L="73" H="243" P="0,0,0,0,0,0,0,0" i="72,-90,172a445929d.png"/><S X="5494" Y="7984" T="14" L="73" H="243" P="0,0,0,0,0,0,0,0"/><S X="1139" Y="8611" T="14" L="42" H="127" P="0,0,0,0,0,0,0,0" c="3"/><S X="7499" Y="6136" T="9" L="114" H="85" P="0,0,0,0,0,0,0,0" c="4" m=""/><S X="7499" Y="6009" T="9" L="114" H="85" P="0,0,0,0,0,0,0,0" c="4" m=""/><S T="14" L="2000" H="1000" X="14130" Y="7569" P="0,0,0,0,0,0,0,0" N=""/><S T="14" L="366" H="19" X="15306" Y="1575" P="0,0,0.3,0,0,0,0,0"/><S T="13" m="" L="25" H="10" X="15600" Y="1676" P="0,0,0,1,0,0,0,0" o="fffff"/><S T="14" L="340" H="19" X="15380" Y="1444" P="0,0,0.3,0,0,0,0,0"/><S T="14" L="180" H="10" X="15140" Y="1422" P="0,0,0,0,-60,0,0,0"/><S T="14" L="180" H="10" X="15537" Y="1422" P="0,0,0,0,60,0,0,0"/><S T="14" L="15" H="122" X="15118" Y="1522" P="0,0,0,0,0,0,0,0"/><S T="14" L="180" H="10" X="15420" Y="1290" P="0,0,0,0,35,0,0,0"/><S T="14" L="180" H="10" X="15257" Y="1290" P="0,0,0,0,-35,0,0,0"/><S T="14" L="100" H="20" X="15575" Y="1705" P="0,0,0.3,0,0,0,0,0" i="300,-342,172e7410e6d.png"/>'

	-- Boat Shop
		aps2[#aps2+1] = '1727230e19e.jpg,1,650,9125,1400,300,650,9125;1727230e19e.jpg,1,650,9425,1400,300,650,9425;17276006818.png,1,830,9075,300,350,830,9075;'
		aps2[#aps2+1] = '17201b0f743.jpg,1,1100,8050,3410,860,1100,8050;'

	local barriers = {{'<S T="12" L="30" H="90" X="1582" Y="8437" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>', '<S T="12" L="30" H="90" X="1953" Y="8547" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>', '<S T="12" L="30" H="90" X="1688" Y="8817" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>'}, {'<S T="12" L="30" H="90" X="1953" Y="8417" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>', '<S T="12" L="40" H="90" X="2103" Y="8522" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>', '<S T="12" L="100" H="25" X="2138" Y="8662" P="0,0,1,0.3,0,0,0,0" o="e2ad32"/>'}}
	local allowedPaths = {
		{{1, 2}, {1, 3}, {4},},
		{{1, 4}, {2}, {3},},
		{{1, 4}, {2}, {3},},
	}
	math.randomseed(room.mathSeed)
	local step1 = math.random(1, 3)
	if step1 == 1 then -- top barrier
		xml[#xml+1] = barriers[1][2] .. barriers[1][3]
	elseif step1 == 2 then -- mid barrier
		xml[#xml+1] = barriers[1][1] .. barriers[1][3]
	else 
		xml[#xml+1] = barriers[1][1] .. barriers[1][2]			
	end
	math.randomseed(room.mathSeed * step1); math.randomseed(room.mathSeed * step1 * math.random())
	local step3 = math.random(1, #allowedPaths[step1])
	for i = 1, 4 do 
		if not table.contains(allowedPaths[step1][step3], i) then 
			xml[#xml+1] = barriers[2][i]
		end
	end		
	math.randomseed(os.time())

	aps2[#aps2+1] = '170f0b9e5b1.png,1,0,7670,1765,1200,0,7625;'
	TFM.newGame(([[
		<C>
			<P F="0" mc="" dodue="" APS="]] .. table.concat(aps2) .. aps .. [[" Ca="" L="27000" H="13000" />
			<Z>
				<S>
					<S X="15960" Y="1520" T="13" L="20" H="20" N="" o="324650" P="1,0,0.3,0.2,0,0,500,0" i="-150,-148,172e7303b3b.png" c="3" nosync=""/>
					]] .. streetGrounds .. table.concat(xml2) .. table.concat(xml) .. [[<S T="12" m="" L="400" H="400" X="-75" Y="150" P="0,0,0,0,0,0,0,0" c="3"/><S L="30" m="" X="2900" N="" H="300" Y="100" T="6" P="0,0,0,0,0,0,0,0" /><S L="30" m="" X="5170" N="" H="300" Y="100" T="6" P="0,0,0,0,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="1000" o="324650" H="386" Y="53" T="12" m="" X="1300" /><S L="248" o="324650" H="386" X="-123" Y="107" T="12" m="" P="0,0,0,0,0,0,0,0" />

				</S>
				<D>
					<F Y="-100" X="-300" /><F Y="-100" X="-200" /><F Y="-100" X="-100" /><DS Y="7770" X="2155" />]] .. table.concat(spawn) .. [[
				</D>
				<O>
				</O>
				<L>
					<JR P1="15960,1520" MV="Infinity,0.2" M1="1"/>
				</L>
			</Z>
		</C>
	]]):gsub("[\n\r\t]+", ""))
	startRoom()
end