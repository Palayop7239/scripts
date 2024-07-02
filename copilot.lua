2.	local v0 = {} -- this array is empty
4.	local v1 = {} -- this array is empty
6.	-- V nested upvalues[0] = v2
local function CloneTable(p1) -- [line 18]
	1.	local v1 = {} -- this array is empty
	3.	local v2 = pairs
	5.	local v3 = p1
	6.	v2, v3, v4 = v2(v3)
	7.	for v5, v6 in v2(v3) do -- [escape at #25] (pairs/next)
	8.	FASTCALL[typeof](v6)
	9.	local v9 = v6
	10.	local v8 = typeof
	12.	v8 = v8(v9)
	13.	if v8 == "table" then goto #22
	15.	if v6 == p1 then goto #18
	17.	local v7 = v1
	18.	if not v7 then goto #23 -- referenced by #15
					end
	19.	v7 = v2 -- get upval
	20.	v8 = v6
	21.	v7 = v7(v8)
	22.	if not v7 then goto #23 -- referenced by #13
					end
	23.	v7 = v6 -- referenced by #18, #22
					end
					end
	24.	v1[v5] = v7
	25.	end -- FORGLOOP - iterate + goto #7
	27.	return v1
end
[DUPCLOSURE] v2 = CloneTable
7.	CAPTURE VAL R2

8.	-- V nested upvalues[0] = v11
local function ReformTable(p2) -- [line 28]
	1.	local v10 = v11 -- get upval
	2.	local v11 = p2
	3.	v10 = v10(v11)
	4.	v11 = table.sort
	6.	local v12 = v10
	7.		[DUPCLOSURE] v13 = function(p3, p4) -- [line 32]
		1.	local v12 = p3.Rarity
		3.	local v13 = p4.Rarity
		5.	if v13 >= v12 then goto #7
		7.	local v11 = false +1 -- referenced by #5
						end
		8.	v11 = true
		9.	return v11
	end

	8.	v15(v16, v17)
	9.	return v14
end
[DUPCLOSURE] v16 = ReformTable
9.	CAPTURE VAL R2

10.	-- V nested upvalues[0] = v19
local function ReformTable2(p5, p6) -- [line 37]
	1.	local v18 = 0
	2.	local v19 = 0
	3.	local v20 = v19 -- get upval
	4.	local v21 = p5
	5.	v20 = v20(v21)
	6.	v21 = {} -- this array is empty
	8.	local v22 = ipairs
	10.	local v23 = v20
	11.	v22, v23, v24 = v22(v23)
	12.	for v25, v26 in v22(v23) do -- [escape at #27] (ipairs)
	13.	local v30 = v26.Rarity
	15.	local v33 = v26.Value
	17.	local v32 = v21[v33]
	18.	local v31 = v32 or 1
	19.	local v29 = v30 / v31
	20.	FASTCALL[math.max](v18, v29)
	22.	local v28 = v18
	23.	local v27 = math.max
	25.	v27 = v27(v28, v29)
	26.	v18 = v27
	27.	end -- FORGLOOP - iterate + goto #12 (ipairs)
	29.	v22 = ipairs
	31.	v23 = v20
	32.	v22, v23, v24 = v22(v23)
	33.	for v25, v26 in v22(v23) do -- [escape at #43] (ipairs)
	34.	v29 = v26.Rarity
	36.	v28 = 1 / v29
	37.	v27 = v28 * v18
	38.	v26.Rarity = v27
	40.	v27 = v26.Rarity
	42.	v19 = v19 + v27
	43.	end -- FORGLOOP - iterate + goto #33 (ipairs)
	45.	v22 = table.sort
	47.	v23 = v20
	48.		[DUPCLOSURE] v24 = function(p7, p8) -- [line 51]
		1.	local v20 = p7.Rarity
		3.	local v21 = p8.Rarity
		5.	if v21 >= v20 then goto #7
		7.	local v19 = false +1 -- referenced by #5
						end
		8.	v19 = true
		9.	return v19
	end

	49.	v26(v27, v28)
	50.	v26 = v24
	51.	v27 = v23
	52.	return v26, v27
end
[DUPCLOSURE] v25 = ReformTable2
11.	CAPTURE VAL R2

12.	-- V nested upvalues[0] = v49
-- V nested upvalues[1] = v48
local function GetItem(p9, p10, p11) -- [line 56]
	1.	local v49 = v49 -- get upval
	2.	local v50 = p9
	3.	v49 = v49(v50)
	4.	v50 = table.sort
	6.	local v51 = v49
	7.		[DUPCLOSURE] v52 = function(p12, p13) -- [line 32]
		1.	local v50 = p12.Rarity
		3.	local v51 = p13.Rarity
		5.	if v51 >= v50 then goto #7
		7.	local v49 = false +1 -- referenced by #5
						end
		8.	v49 = true
		9.	return v49
	end

	8.	v54(v55, v56)
	9.	local v52 = v53
	10.	v53 = p12 or 1
	11.	v54 = p13
	12.	if not v54 then goto #13
	13.	v54 = v48 -- get upval -- referenced by #12
					end
	14.	v55 = ipairs
	16.	local v56 = v52
	17.	v55, v56, v57 = v55(v56)
	18.	for v58, v59 in v55(v56) do -- [escape at #57] (ipairs)
	19.	local v60 = v59.Craftable
	21.	if not v60 then goto #56
	22.	v60 = v59.Unobtainable
	24.	if not v60 then goto #56
	25.	local v63 = v59.Value
	27.	local v62 = v54[v63]
	28.	local v61 = v62 or 0
	29.	v60 = v53 + v61
	30.	v62 = 1
	31.	local v65 = v59.Rarity
	33.	local v64 = v65 / v60
	34.	FASTCALL[math.round](v64)
	35.	v63 = math.round
	37.	v63 = v63(v64)
	38.	FASTCALL[math.max](v62, v63)
	40.	v61 = math.max
	42.	v61 = v61(v62, v63)
	43.	v62 = Random.new
	45.	v62 = v62(v63)
	46.	v64 = 1
	47.	v65 = v61
	48.	
	50.	v62 = v62:NextInteger(v64, v65)
	51.	if v62 ~= 1 then goto #55
	53.	v62 = #v52
	54.	if v58 == v62 then goto #56
					end
	56.	return v59 -- referenced by #21, #24, #54
					end
					end
					end
	57.	end -- FORGLOOP - iterate + goto #18 (ipairs)
	59.	return
end
[DUPCLOSURE] v56 = GetItem
13.	CAPTURE VAL R2

14.	CAPTURE VAL R1

15.	v76.GetItem = v81
17.	-- V nested upvalues[0] = v80
-- V nested upvalues[1] = v78
local function GetItemByWeight(p14, p15) -- [line 73]
	1.	local v77 = v80 -- get upval
	2.	local v78 = p14
	3.	local v79 = p15
	4.	v77, v78 = v77(v78, v79)
	5.	v79 = Random.new
	7.	v79 = v79(v80)
	8.	local v82 = 0
	9.	local v83 = v78
	10.	
	12.	v80 = v79:NextNumber(v82, v83)
	13.	local v81 = 0
	14.	v82 = nil
	15.	v83 = ipairs
	17.	local v84 = v77
	18.	v83, v84, v85 = v83(v84)
	19.	for v86, v87 in v83(v84) do -- [escape at #34] (ipairs)
	20.	local v88 = v87.Rarity
	22.	v81 = v81 + v88
	23.	if v80 <= v81 then goto #29
	25.	v88 = v78 -- get upval
	26.	local v89 = v87
	27.	v88 = v88(v89)
	28.	v82 = v88
	29.	goto #35 -- referenced by #23
					else
	30.	v88 = table.clear
	32.	v89 = v87
	33.	v88(v89)
	34.	end -- FORGLOOP - iterate + goto #19 (ipairs)
					end
	36.	v83 = table.clear
	38.	v84 = v77
	39.	v83(v84)
	40.	return v82
end
[DUPCLOSURE] v81 = GetItemByWeight
18.	CAPTURE VAL R4

19.	CAPTURE VAL R2

20.	v95.GetItemByWeight = v100
22.	return v95
