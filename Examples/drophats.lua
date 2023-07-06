--[[
    Drophats [ About ]
        drops your hats
]]--

--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.9) ~  Much Love, Ferib 

]]--

do
	local v0 = string.char;
	local v1 = string.byte;
	local v2 = string.sub;
	local v3 = bit32 or bit;
	local v4 = v3.bxor;
	local v5 = table.concat;
	local v6 = table.insert;
	local function v7(v24, v25)
		local v26 = 0;
		local v27;
		while true do
			if (v26 == 1) then
				return v5(v27);
			end
			if (v26 == 0) then
				v27 = {};
				for v44 = 1, #v24 do
					v6(v27, v0(v4(v1(v2(v24, v44, v44 + 1)), v1(v2(v25, 1 + (v44 % #v25), 1 + (v44 % #v25) + 1))) % 256));
				end
				v26 = 1;
			end
		end
	end
	local v8 = tonumber;
	local v9 = string.byte;
	local v10 = string.char;
	local v11 = string.sub;
	local v12 = string.gsub;
	local v13 = string.rep;
	local v14 = table.concat;
	local v15 = table.insert;
	local v16 = math.ldexp;
	local v17 = getfenv or function()
		return _ENV;
	end;
	local v18 = setmetatable;
	local v19 = pcall;
	local v20 = select;
	local v21 = unpack or table.unpack;
	local v22 = tonumber;
	local function v23(v28, v29, ...)
		local v30 = 0;
		local v31;
		local v32;
		local v33;
		local v34;
		local v35;
		local v36;
		local v37;
		local v38;
		local v39;
		local v40;
		local v41;
		local v42;
		local v43;
		while true do
			if (v30 == 1) then
				v35 = nil;
				v36 = nil;
				v37 = nil;
				v38 = nil;
				v30 = 2;
			end
			if (2 == v30) then
				v39 = nil;
				v40 = nil;
				v41 = nil;
				v42 = nil;
				v30 = 3;
			end
			if (v30 == 0) then
				v31 = 0;
				v32 = nil;
				v33 = nil;
				v34 = nil;
				v30 = 1;
			end
			if (v30 == 3) then
				v43 = nil;
				while true do
					local v45 = 0;
					while true do
						if (v45 == 1) then
							if (v31 == 0) then
								local v46 = 0;
								while true do
									if (v46 == 2) then
										v31 = 1;
										break;
									end
									if (v46 == 1) then
										v28 = v12(v11(v28, 5), v7("\66\244", "\121\108\218\37\200\213\188\234"), function(v52)
											if (v9(v52, 2) == 79) then
												local v94 = 0;
												local v95;
												while true do
													if (v94 == 0) then
														v95 = 0;
														while true do
															if (v95 == 0) then
																local v127 = 0;
																while true do
																	if (v127 == 0) then
																		v33 = v8(v11(v52, 1, 2 - 1));
																		return "";
																	end
																end
															end
														end
														break;
													end
												end
											else
												local v96 = 0;
												local v97;
												local v98;
												while true do
													if (v96 == 1) then
														while true do
															if (0 == v97) then
																v98 = v10(v8(v52, 16));
																if v33 then
																	local v140 = 0;
																	local v141;
																	local v142;
																	while true do
																		if (v140 == 0) then
																			v141 = 0;
																			v142 = nil;
																			v140 = 1;
																		end
																		if (v140 == 1) then
																			while true do
																				local v158 = 0;
																				while true do
																					if (v158 == 0) then
																						if (v141 == 0) then
																							local v169 = 0;
																							while true do
																								if (v169 == 0) then
																									v142 = v13(v98, v33);
																									v33 = nil;
																									v169 = 1;
																								end
																								if (v169 == 1) then
																									v141 = 1;
																									break;
																								end
																							end
																						end
																						if (v141 == 1) then
																							return v142;
																						end
																						break;
																					end
																				end
																			end
																			break;
																		end
																	end
																else
																	return v98;
																end
																break;
															end
														end
														break;
													end
													if (v96 == 0) then
														v97 = 0;
														v98 = nil;
														v96 = 1;
													end
												end
											end
										end);
										v34 = nil;
										v46 = 2;
									end
									if (v46 == 0) then
										v32 = 1;
										v33 = nil;
										v46 = 1;
									end
								end
							end
							if (v31 == 5) then
								local v47 = 0;
								while true do
									if (v47 == 0) then
										v43 = nil;
										function v43(v53, v54, v55)
											local v56 = 0;
											local v57;
											local v58;
											local v59;
											while true do
												if (v56 == 0) then
													v57 = v53[1];
													v58 = v53[2];
													v56 = 1;
												end
												if (v56 == 1) then
													v59 = v53[3];
													return function(...)
														local v106 = 0;
														local v107;
														local v108;
														local v109;
														local v110;
														local v111;
														local v112;
														local v113;
														local v114;
														local v115;
														local v116;
														local v117;
														local v118;
														local v119;
														local v120;
														while true do
															if (0 == v106) then
																v107 = v57;
																v108 = v58;
																v109 = v59;
																v110 = v41;
																v106 = 1;
															end
															if (v106 == 2) then
																v115 = v20("#", ...) - (1066 - (68 + 997));
																v116 = {};
																v117 = {};
																for v128 = 1270 - (226 + 1044), v115 do
																	if (v128 >= v109) then
																		v113[v128 - v109] = v114[v128 + 1];
																	else
																		v117[v128] = v114[v128 + (4 - 3)];
																	end
																end
																v106 = 3;
															end
															if (v106 == 1) then
																v111 = 1 - 0;
																v112 = -1;
																v113 = {};
																v114 = {...};
																v106 = 2;
															end
															if (v106 == 3) then
																v118 = (v115 - v109) + 1;
																v119 = nil;
																v120 = nil;
																while true do
																	local v129 = 0;
																	local v130;
																	while true do
																		if (v129 == 0) then
																			v130 = 0;
																			while true do
																				if (v130 == 0) then
																					local v159 = 0;
																					while true do
																						if (v159 == 1) then
																							v130 = 1;
																							break;
																						end
																						if (v159 == 0) then
																							v119 = v107[v111];
																							v120 = v119[1];
																							v159 = 1;
																						end
																					end
																				end
																				if (v130 == 1) then
																					if (v120 <= 32) then
																						if (v120 <= (132 - (32 + 85))) then
																							if (v120 <= 7) then
																								if (v120 <= 3) then
																									if (v120 <= 1) then
																										if (v120 == (0 + 0)) then
																											v117[v119[1 + 1]] = v117[v119[3]] + v119[4];
																										else
																											v117[v119[2]] = v55[v119[3]];
																										end
																									elseif (v120 == 2) then
																										local v179 = 0;
																										local v180;
																										local v181;
																										local v182;
																										while true do
																											if (1 == v179) then
																												v182 = 0;
																												for v650 = v180, v119[4] do
																													local v651 = 0;
																													local v652;
																													while true do
																														if (v651 == 0) then
																															v652 = 0;
																															while true do
																																if (v652 == 0) then
																																	v182 = v182 + 1;
																																	v117[v650] = v181[v182];
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												break;
																											end
																											if (v179 == 0) then
																												v180 = v119[2];
																												v181 = {v117[v180](v117[v180 + 1])};
																												v179 = 1;
																											end
																										end
																									else
																										v117[v119[2]][v119[960 - (892 + 65)]] = v117[v119[4]];
																									end
																								elseif (v120 <= 5) then
																									if (v120 == (9 - 5)) then
																										local v185 = 0;
																										local v186;
																										local v187;
																										local v188;
																										local v189;
																										local v190;
																										while true do
																											if (v185 == 0) then
																												v186 = 0;
																												v187 = nil;
																												v185 = 1;
																											end
																											if (v185 == 1) then
																												v188 = nil;
																												v189 = nil;
																												v185 = 2;
																											end
																											if (2 == v185) then
																												v190 = nil;
																												while true do
																													if (v186 == 5) then
																														v117[v190] = v117[v190](v21(v117, v190 + 1, v112));
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														if v117[v119[2]] then
																															v111 = v111 + 1;
																														else
																															v111 = v119[3];
																														end
																														break;
																													end
																													if (v186 == 1) then
																														local v692 = 0;
																														while true do
																															if (v692 == 2) then
																																v186 = 2;
																																break;
																															end
																															if (v692 == 0) then
																																v111 = v111 + 1;
																																v119 = v107[v111];
																																v692 = 1;
																															end
																															if (v692 == 1) then
																																v117[v119[2]] = v119[3];
																																v111 = v111 + 1;
																																v692 = 2;
																															end
																														end
																													end
																													if (v186 == 2) then
																														local v693 = 0;
																														while true do
																															if (v693 == 1) then
																																v111 = v111 + 1;
																																v119 = v107[v111];
																																v693 = 2;
																															end
																															if (v693 == 2) then
																																v186 = 3;
																																break;
																															end
																															if (v693 == 0) then
																																v119 = v107[v111];
																																v117[v119[2]] = v119[3];
																																v693 = 1;
																															end
																														end
																													end
																													if (v186 == 4) then
																														local v694 = 0;
																														while true do
																															if (v694 == 2) then
																																v186 = 5;
																																break;
																															end
																															if (v694 == 0) then
																																for v1054 = v190, v112 do
																																	local v1055 = 0;
																																	while true do
																																		if (v1055 == 0) then
																																			v187 = v187 + 1;
																																			v117[v1054] = v188[v187];
																																			break;
																																		end
																																	end
																																end
																																v111 = v111 + 1;
																																v694 = 1;
																															end
																															if (v694 == 1) then
																																v119 = v107[v111];
																																v190 = v119[2];
																																v694 = 2;
																															end
																														end
																													end
																													if (v186 == 0) then
																														local v695 = 0;
																														while true do
																															if (v695 == 0) then
																																v187 = nil;
																																v188, v189 = nil;
																																v695 = 1;
																															end
																															if (v695 == 1) then
																																v190 = nil;
																																v117[v119[2]] = v54[v119[3]];
																																v695 = 2;
																															end
																															if (v695 == 2) then
																																v186 = 1;
																																break;
																															end
																														end
																													end
																													if (v186 == 3) then
																														local v696 = 0;
																														while true do
																															if (0 == v696) then
																																v190 = v119[2];
																																v188, v189 = v110(v117[v190](v21(v117, v190 + 1, v119[3])));
																																v696 = 1;
																															end
																															if (v696 == 1) then
																																v112 = (v189 + v190) - 1;
																																v187 = 0;
																																v696 = 2;
																															end
																															if (v696 == 2) then
																																v186 = 4;
																																break;
																															end
																														end
																													end
																												end
																												break;
																											end
																										end
																									else
																										v117[v119[3 - 1]][v119[4 - 1]] = v119[4];
																									end
																								elseif (v120 > 6) then
																									if (v119[2] == v117[v119[4]]) then
																										v111 = v111 + 1;
																									else
																										v111 = v119[3];
																									end
																								else
																									v117[v119[2]] = v117[v119[353 - (87 + 263)]] % v119[4];
																								end
																							elseif (v120 <= 11) then
																								if (v120 <= (189 - (67 + 113))) then
																									if (v120 == 8) then
																										local v194 = 0;
																										local v195;
																										local v196;
																										while true do
																											if (v194 == 7) then
																												v117[v196 + 1] = v195;
																												v117[v196] = v195[v119[4]];
																												v111 = v111 + (953 - (802 + 150));
																												v119 = v107[v111];
																												v194 = 8;
																											end
																											if (v194 == 3) then
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v117[v119[2]] = v55[v119[3]];
																												v111 = v111 + 1;
																												v194 = 4;
																											end
																											if (0 == v194) then
																												v195 = nil;
																												v196 = nil;
																												v117[v119[2]] = v117[v119[3]][v119[4]];
																												v111 = v111 + 1;
																												v194 = 1;
																											end
																											if (v194 == 4) then
																												v119 = v107[v111];
																												v117[v119[2]] = v117[v119[3]][v119[4]];
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v194 = 5;
																											end
																											if (v194 == 8) then
																												v117[v119[2]] = v55[v119[3]];
																												break;
																											end
																											if (v194 == 1) then
																												v119 = v107[v111];
																												v117[v119[2]][v119[3]] = v117[v119[3 + 1]];
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v194 = 2;
																											end
																											if (6 == v194) then
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v196 = v119[2];
																												v195 = v117[v119[3]];
																												v194 = 7;
																											end
																											if (v194 == 2) then
																												v117[v119[2]][v119[3]] = v119[4];
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v117[v119[2]][v119[7 - 4]] = v119[4];
																												v194 = 3;
																											end
																											if (v194 == 5) then
																												v117[v119[2 + 0]] = v117[v119[3]][v119[4]];
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v117[v119[2]] = v117[v119[3]][v119[15 - 11]];
																												v194 = 6;
																											end
																										end
																									else
																										local v197 = 0;
																										local v198;
																										while true do
																											if (v197 == 0) then
																												v198 = v119[2];
																												v117[v198](v117[v198 + 1]);
																												break;
																											end
																										end
																									end
																								elseif (v120 == 10) then
																									for v355 = v119[5 - 3], v119[3] do
																										v117[v355] = nil;
																									end
																								else
																									v117[v119[2]] = v54[v119[3]];
																								end
																							elseif (v120 <= 13) then
																								if (v120 > (21 - 9)) then
																									local v201 = 0;
																									local v202;
																									local v203;
																									local v204;
																									local v205;
																									while true do
																										if (v201 == 1) then
																											v204 = nil;
																											v205 = nil;
																											v201 = 2;
																										end
																										if (v201 == 2) then
																											while true do
																												if (v202 == 2) then
																													if (v204 > (0 + 0)) then
																														if (v205 <= v117[v203 + 1]) then
																															local v1056 = 0;
																															while true do
																																if (v1056 == 0) then
																																	v111 = v119[1000 - (915 + 82)];
																																	v117[v203 + 3] = v205;
																																	break;
																																end
																															end
																														end
																													elseif (v205 >= v117[v203 + 1]) then
																														local v1057 = 0;
																														while true do
																															if (v1057 == 0) then
																																v111 = v119[3];
																																v117[v203 + 3] = v205;
																																break;
																															end
																														end
																													end
																													break;
																												end
																												if (0 == v202) then
																													local v697 = 0;
																													while true do
																														if (v697 == 0) then
																															v203 = v119[2];
																															v204 = v117[v203 + 2];
																															v697 = 1;
																														end
																														if (v697 == 1) then
																															v202 = 1;
																															break;
																														end
																													end
																												end
																												if (v202 == 1) then
																													local v698 = 0;
																													while true do
																														if (v698 == 1) then
																															v202 = 2;
																															break;
																														end
																														if (v698 == 0) then
																															v205 = v117[v203] + v204;
																															v117[v203] = v205;
																															v698 = 1;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (v201 == 0) then
																											v202 = 0;
																											v203 = nil;
																											v201 = 1;
																										end
																									end
																								else
																									v117[v119[2]] = v117[v119[3]][v119[4]];
																								end
																							elseif (v120 == 14) then
																								if (v117[v119[2]] < v117[v119[11 - 7]]) then
																									v111 = v111 + 1;
																								else
																									v111 = v119[3];
																								end
																							else
																								local v208 = 0;
																								local v209;
																								local v210;
																								while true do
																									if (v208 == 0) then
																										v209 = v119[2];
																										v210 = v117[v119[3]];
																										v208 = 1;
																									end
																									if (v208 == 1) then
																										v117[v209 + 1] = v210;
																										v117[v209] = v210[v119[4]];
																										break;
																									end
																								end
																							end
																						elseif (v120 <= 23) then
																							if (v120 <= 19) then
																								if (v120 <= 17) then
																									if (v120 > (10 + 6)) then
																										local v211 = 0;
																										local v212;
																										local v213;
																										while true do
																											if (0 == v211) then
																												v212 = 0;
																												v213 = nil;
																												v211 = 1;
																											end
																											if (v211 == 1) then
																												while true do
																													if (v212 == 0) then
																														v213 = v119[2];
																														v117[v213] = v117[v213](v21(v117, v213 + 1, v119[3 - 0]));
																														break;
																													end
																												end
																												break;
																											end
																										end
																									else
																										v117[v119[2]] = v117[v119[3]] * v119[4];
																									end
																								elseif (v120 == 18) then
																									local v215 = 0;
																									local v216;
																									local v217;
																									while true do
																										if (v215 == 1) then
																											while true do
																												if (v216 == 0) then
																													v217 = v119[2];
																													v117[v217](v21(v117, v217 + 1, v119[3]));
																													break;
																												end
																											end
																											break;
																										end
																										if (v215 == 0) then
																											v216 = 0;
																											v217 = nil;
																											v215 = 1;
																										end
																									end
																								else
																									local v218 = 0;
																									local v219;
																									local v220;
																									while true do
																										if (v218 == 1) then
																											while true do
																												if (v219 == 4) then
																													local v702 = 0;
																													while true do
																														if (v702 == 1) then
																															v117[v119[3 - 1]] = v55[v119[3]];
																															v219 = 5;
																															break;
																														end
																														if (v702 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v702 = 1;
																														end
																													end
																												end
																												if (v219 == 8) then
																													local v703 = 0;
																													while true do
																														if (v703 == 1) then
																															v119 = v107[v111];
																															v219 = 9;
																															break;
																														end
																														if (0 == v703) then
																															v117[v220](v21(v117, v220 + 1, v119[3]));
																															v111 = v111 + 1;
																															v703 = 1;
																														end
																													end
																												end
																												if (v219 == 6) then
																													local v704 = 0;
																													while true do
																														if (v704 == 1) then
																															v117[v119[2]] = v117[v119[3]];
																															v219 = 7;
																															break;
																														end
																														if (v704 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v704 = 1;
																														end
																													end
																												end
																												if (v219 == 5) then
																													local v705 = 0;
																													while true do
																														if (v705 == 1) then
																															v117[v119[2]] = v55[v119[3]];
																															v219 = 6;
																															break;
																														end
																														if (v705 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v705 = 1;
																														end
																													end
																												end
																												if (v219 == 1) then
																													local v706 = 0;
																													while true do
																														if (1 == v706) then
																															v117[v119[2]][v119[1190 - (1069 + 118)]] = v117[v119[4]];
																															v219 = 2;
																															break;
																														end
																														if (v706 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v706 = 1;
																														end
																													end
																												end
																												if (v219 == 2) then
																													local v707 = 0;
																													while true do
																														if (v707 == 0) then
																															v111 = v111 + (2 - 1);
																															v119 = v107[v111];
																															v707 = 1;
																														end
																														if (v707 == 1) then
																															v117[v119[3 - 1]] = v55[v119[3]];
																															v219 = 3;
																															break;
																														end
																													end
																												end
																												if (v219 == 7) then
																													local v708 = 0;
																													while true do
																														if (v708 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v708 = 1;
																														end
																														if (v708 == 1) then
																															v220 = v119[2];
																															v219 = 8;
																															break;
																														end
																													end
																												end
																												if (v219 == 0) then
																													local v709 = 0;
																													while true do
																														if (v709 == 1) then
																															v117[v220] = v117[v220](v21(v117, v220 + 1, v119[3]));
																															v219 = 1;
																															break;
																														end
																														if (v709 == 0) then
																															v220 = nil;
																															v220 = v119[2];
																															v709 = 1;
																														end
																													end
																												end
																												if (9 == v219) then
																													v111 = v119[3 + 0];
																													break;
																												end
																												if (v219 == 3) then
																													local v711 = 0;
																													while true do
																														if (0 == v711) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v711 = 1;
																														end
																														if (v711 == 1) then
																															v117[v119[2]] = v117[v119[1 + 2]][v119[4]];
																															v219 = 4;
																															break;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (v218 == 0) then
																											v219 = 0;
																											v220 = nil;
																											v218 = 1;
																										end
																									end
																								end
																							elseif (v120 <= 21) then
																								if (v120 > 20) then
																									local v221 = 0;
																									local v222;
																									local v223;
																									local v224;
																									while true do
																										if (1 == v221) then
																											v224 = nil;
																											while true do
																												if (v222 == 0) then
																													local v712 = 0;
																													while true do
																														if (v712 == 0) then
																															v223 = nil;
																															v224 = nil;
																															v712 = 1;
																														end
																														if (v712 == 2) then
																															v222 = 1;
																															break;
																														end
																														if (v712 == 1) then
																															v117[v119[793 - (368 + 423)]] = v117[v119[3]] + v119[4];
																															v111 = v111 + 1;
																															v712 = 2;
																														end
																													end
																												end
																												if (v222 == 7) then
																													local v713 = 0;
																													while true do
																														if (v713 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v713 = 1;
																														end
																														if (v713 == 1) then
																															v117[v119[2]] = v119[3];
																															v111 = v111 + 1;
																															v713 = 2;
																														end
																														if (v713 == 2) then
																															v222 = 8;
																															break;
																														end
																													end
																												end
																												if (6 == v222) then
																													local v714 = 0;
																													while true do
																														if (v714 == 2) then
																															v222 = 7;
																															break;
																														end
																														if (v714 == 1) then
																															v119 = v107[v111];
																															v117[v119[2]] = v117[v119[3]];
																															v714 = 2;
																														end
																														if (v714 == 0) then
																															v117[v119[2]] = v117[v119[3]][v119[22 - (10 + 8)]];
																															v111 = v111 + 1;
																															v714 = 1;
																														end
																													end
																												end
																												if (3 == v222) then
																													local v715 = 0;
																													while true do
																														if (0 == v715) then
																															v223 = v117[v119[3]];
																															v117[v224 + 1] = v223;
																															v715 = 1;
																														end
																														if (v715 == 1) then
																															v117[v224] = v223[v119[4]];
																															v111 = v111 + 1;
																															v715 = 2;
																														end
																														if (v715 == 2) then
																															v222 = 4;
																															break;
																														end
																													end
																												end
																												if (v222 == 4) then
																													local v716 = 0;
																													while true do
																														if (v716 == 2) then
																															v222 = 5;
																															break;
																														end
																														if (v716 == 0) then
																															v119 = v107[v111];
																															v224 = v119[2];
																															v716 = 1;
																														end
																														if (v716 == 1) then
																															v117[v224](v117[v224 + 1]);
																															v111 = v111 + 1;
																															v716 = 2;
																														end
																													end
																												end
																												if (v222 == 8) then
																													v119 = v107[v111];
																													v117[v119[2]] = v119[3];
																													break;
																												end
																												if (v222 == 5) then
																													local v720 = 0;
																													while true do
																														if (v720 == 2) then
																															v222 = 6;
																															break;
																														end
																														if (v720 == 0) then
																															v119 = v107[v111];
																															v117[v119[2]] = v55[v119[3]];
																															v720 = 1;
																														end
																														if (v720 == 1) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v720 = 2;
																														end
																													end
																												end
																												if (v222 == 2) then
																													local v721 = 0;
																													while true do
																														if (v721 == 2) then
																															v222 = 3;
																															break;
																														end
																														if (v721 == 0) then
																															v117[v119[2]] = v117[v119[3]][v119[4]];
																															v111 = v111 + 1;
																															v721 = 1;
																														end
																														if (v721 == 1) then
																															v119 = v107[v111];
																															v224 = v119[2];
																															v721 = 2;
																														end
																													end
																												end
																												if (v222 == 1) then
																													local v722 = 0;
																													while true do
																														if (v722 == 0) then
																															v119 = v107[v111];
																															v55[v119[9 - 6]] = v117[v119[2]];
																															v722 = 1;
																														end
																														if (v722 == 2) then
																															v222 = 2;
																															break;
																														end
																														if (v722 == 1) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v722 = 2;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (v221 == 0) then
																											v222 = 0;
																											v223 = nil;
																											v221 = 1;
																										end
																									end
																								else
																									local v225 = 0;
																									local v226;
																									while true do
																										if (v225 == 0) then
																											v226 = 0;
																											while true do
																												if (4 == v226) then
																													local v723 = 0;
																													while true do
																														if (0 == v723) then
																															v111 = v111 + (3 - 2);
																															v119 = v107[v111];
																															v723 = 1;
																														end
																														if (2 == v723) then
																															v226 = 5;
																															break;
																														end
																														if (v723 == 1) then
																															v117[v119[2]] = v55[v119[3]];
																															v111 = v111 + 1;
																															v723 = 2;
																														end
																													end
																												end
																												if (v226 == 2) then
																													local v724 = 0;
																													while true do
																														if (v724 == 1) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v724 = 2;
																														end
																														if (v724 == 0) then
																															v119 = v107[v111];
																															v117[v119[2]] = v117[v119[3]][v119[4]];
																															v724 = 1;
																														end
																														if (v724 == 2) then
																															v226 = 3;
																															break;
																														end
																													end
																												end
																												if (v226 == 0) then
																													local v725 = 0;
																													while true do
																														if (v725 == 0) then
																															v117[v119[2]] = v55[v119[3]];
																															v111 = v111 + 1;
																															v725 = 1;
																														end
																														if (v725 == 1) then
																															v119 = v107[v111];
																															v117[v119[2]] = v117[v119[3]][v119[4]];
																															v725 = 2;
																														end
																														if (v725 == 2) then
																															v226 = 1;
																															break;
																														end
																													end
																												end
																												if (v226 == 3) then
																													local v726 = 0;
																													while true do
																														if (v726 == 2) then
																															v226 = 4;
																															break;
																														end
																														if (v726 == 1) then
																															v119 = v107[v111];
																															v117[v119[2]] = v117[v119[3]][v119[4]];
																															v726 = 2;
																														end
																														if (v726 == 0) then
																															v117[v119[2]] = v55[v119[3]];
																															v111 = v111 + 1;
																															v726 = 1;
																														end
																													end
																												end
																												if (v226 == 1) then
																													local v727 = 0;
																													while true do
																														if (v727 == 1) then
																															v117[v119[7 - 5]] = v55[v119[3]];
																															v111 = v111 + (443 - (416 + 26));
																															v727 = 2;
																														end
																														if (v727 == 0) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v727 = 1;
																														end
																														if (v727 == 2) then
																															v226 = 2;
																															break;
																														end
																													end
																												end
																												if (5 == v226) then
																													v119 = v107[v111];
																													if not v117[v119[1 + 1]] then
																														v111 = v111 + (1 - 0);
																													else
																														v111 = v119[3];
																													end
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							elseif (v120 == 22) then
																								local v227 = 0;
																								local v228;
																								local v229;
																								local v230;
																								local v231;
																								while true do
																									if (v227 == 1) then
																										v112 = (v230 + v228) - 1;
																										v231 = 0;
																										v227 = 2;
																									end
																									if (v227 == 0) then
																										v228 = v119[2];
																										v229, v230 = v110(v117[v228](v117[v228 + 1]));
																										v227 = 1;
																									end
																									if (v227 == 2) then
																										for v653 = v228, v112 do
																											local v654 = 0;
																											while true do
																												if (v654 == 0) then
																													v231 = v231 + 1;
																													v117[v653] = v229[v231];
																													break;
																												end
																											end
																										end
																										break;
																									end
																								end
																							else
																								local v232 = 0;
																								local v233;
																								local v234;
																								local v235;
																								local v236;
																								local v237;
																								while true do
																									if (v232 == 2) then
																										v237 = nil;
																										while true do
																											if (v233 == 2) then
																												for v794 = v234, v112 do
																													local v795 = 0;
																													local v796;
																													while true do
																														if (v795 == 0) then
																															v796 = 0;
																															while true do
																																if (0 == v796) then
																																	v237 = v237 + 1;
																																	v117[v794] = v235[v237];
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												break;
																											end
																											if (v233 == 0) then
																												local v729 = 0;
																												while true do
																													if (v729 == 1) then
																														v233 = 1;
																														break;
																													end
																													if (v729 == 0) then
																														v234 = v119[2];
																														v235, v236 = v110(v117[v234](v21(v117, v234 + 1, v119[3])));
																														v729 = 1;
																													end
																												end
																											end
																											if (v233 == 1) then
																												local v730 = 0;
																												while true do
																													if (v730 == 0) then
																														v112 = (v236 + v234) - 1;
																														v237 = 0;
																														v730 = 1;
																													end
																													if (v730 == 1) then
																														v233 = 2;
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (v232 == 1) then
																										v235 = nil;
																										v236 = nil;
																										v232 = 2;
																									end
																									if (v232 == 0) then
																										v233 = 0;
																										v234 = nil;
																										v232 = 1;
																									end
																								end
																							end
																						elseif (v120 <= (465 - (145 + 293))) then
																							if (v120 <= 25) then
																								if (v120 == 24) then
																									v117[v119[2]] = #v117[v119[3]];
																								else
																									v117[v119[2]] = v117[v119[3]] / v117[v119[4]];
																								end
																							elseif (v120 > 26) then
																								local v240 = 0;
																								local v241;
																								local v242;
																								local v243;
																								local v244;
																								while true do
																									if (v240 == 1) then
																										v243 = nil;
																										v244 = nil;
																										v240 = 2;
																									end
																									if (v240 == 0) then
																										v241 = 0;
																										v242 = nil;
																										v240 = 1;
																									end
																									if (2 == v240) then
																										while true do
																											if (1 == v241) then
																												v244 = v117[v242 + 2];
																												if (v244 > 0) then
																													if (v243 > v117[v242 + 1]) then
																														v111 = v119[3];
																													else
																														v117[v242 + 3] = v243;
																													end
																												elseif (v243 < v117[v242 + 1]) then
																													v111 = v119[3];
																												else
																													v117[v242 + (433 - (44 + 386))] = v243;
																												end
																												break;
																											end
																											if (v241 == 0) then
																												local v732 = 0;
																												while true do
																													if (0 == v732) then
																														v242 = v119[2];
																														v243 = v117[v242];
																														v732 = 1;
																													end
																													if (1 == v732) then
																														v241 = 1;
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							else
																								local v245 = 0;
																								local v246;
																								local v247;
																								local v248;
																								local v249;
																								while true do
																									if (0 == v245) then
																										v246 = 0;
																										v247 = nil;
																										v245 = 1;
																									end
																									if (v245 == 2) then
																										while true do
																											if (1 == v246) then
																												local v733 = 0;
																												while true do
																													if (v733 == 0) then
																														v249 = {};
																														v248 = v18({}, {[v7("\61\64\66\0\119\7\103", "\19\98\31\43\110")]=function(v1062, v1063)
																															local v1064 = 0;
																															local v1065;
																															local v1066;
																															while true do
																																if (v1064 == 1) then
																																	while true do
																																		if (0 == v1065) then
																																			local v1163 = 0;
																																			while true do
																																				if (v1163 == 0) then
																																					v1066 = v249[v1063];
																																					return v1066[1][v1066[2]];
																																				end
																																			end
																																		end
																																	end
																																	break;
																																end
																																if (v1064 == 0) then
																																	v1065 = 0;
																																	v1066 = nil;
																																	v1064 = 1;
																																end
																															end
																														end,[v7("\57\32\92\194\187\123\133\2\26\74", "\235\102\127\50\167\204\18")]=function(v1067, v1068, v1069)
																															local v1070 = 0;
																															local v1071;
																															local v1072;
																															while true do
																																if (v1070 == 0) then
																																	v1071 = 0;
																																	v1072 = nil;
																																	v1070 = 1;
																																end
																																if (v1070 == 1) then
																																	while true do
																																		if (v1071 == 0) then
																																			v1072 = v249[v1068];
																																			v1072[1][v1072[1488 - (998 + 488)]] = v1069;
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																														end});
																														v733 = 1;
																													end
																													if (v733 == 1) then
																														v246 = 2;
																														break;
																													end
																												end
																											end
																											if (v246 == 0) then
																												local v734 = 0;
																												while true do
																													if (v734 == 1) then
																														v246 = 1;
																														break;
																													end
																													if (v734 == 0) then
																														v247 = v108[v119[3]];
																														v248 = nil;
																														v734 = 1;
																													end
																												end
																											end
																											if (v246 == 2) then
																												for v797 = 1, v119[4] do
																													local v798 = 0;
																													local v799;
																													while true do
																														if (v798 == 1) then
																															if (v799[1] == 61) then
																																v249[v797 - 1] = {v117,v799[3]};
																															else
																																v249[v797 - 1] = {v54,v799[3]};
																															end
																															v116[#v116 + 1] = v249;
																															break;
																														end
																														if (v798 == 0) then
																															v111 = v111 + 1;
																															v799 = v107[v111];
																															v798 = 1;
																														end
																													end
																												end
																												v117[v119[2]] = v43(v247, v248, v55);
																												break;
																											end
																										end
																										break;
																									end
																									if (v245 == 1) then
																										v248 = nil;
																										v249 = nil;
																										v245 = 2;
																									end
																								end
																							end
																						elseif (v120 <= 29) then
																							if (v120 > 28) then
																								local v250 = 0;
																								local v251;
																								local v252;
																								while true do
																									if (1 == v250) then
																										while true do
																											if (5 == v251) then
																												v117[v252] = v117[v252](v21(v117, v252 + 1, v119[3]));
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v117[v119[2]]();
																												break;
																											end
																											if (v251 == 4) then
																												local v738 = 0;
																												while true do
																													if (v738 == 0) then
																														v117[v119[8 - 6]] = v119[3];
																														v111 = v111 + 1;
																														v738 = 1;
																													end
																													if (2 == v738) then
																														v251 = 5;
																														break;
																													end
																													if (v738 == 1) then
																														v119 = v107[v111];
																														v252 = v119[2];
																														v738 = 2;
																													end
																												end
																											end
																											if (v251 == 0) then
																												local v739 = 0;
																												while true do
																													if (v739 == 0) then
																														v252 = nil;
																														v117[v119[2]] = v117[v119[3]][v119[4]];
																														v739 = 1;
																													end
																													if (v739 == 1) then
																														v111 = v111 + 1 + 0;
																														v119 = v107[v111];
																														v739 = 2;
																													end
																													if (v739 == 2) then
																														v251 = 1;
																														break;
																													end
																												end
																											end
																											if (v251 == 1) then
																												local v740 = 0;
																												while true do
																													if (v740 == 1) then
																														v119 = v107[v111];
																														v117[v119[2]] = v117[v119[3]][v119[4]];
																														v740 = 2;
																													end
																													if (v740 == 2) then
																														v251 = 2;
																														break;
																													end
																													if (v740 == 0) then
																														v117[v119[2]] = v55[v119[3 + 0]];
																														v111 = v111 + (773 - (201 + 571));
																														v740 = 1;
																													end
																												end
																											end
																											if (v251 == 3) then
																												local v741 = 0;
																												while true do
																													if (v741 == 1) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v741 = 2;
																													end
																													if (v741 == 0) then
																														v119 = v107[v111];
																														v117[v119[2]] = v117[v119[3]][v119[4]];
																														v741 = 1;
																													end
																													if (v741 == 2) then
																														v251 = 4;
																														break;
																													end
																												end
																											end
																											if (2 == v251) then
																												local v742 = 0;
																												while true do
																													if (v742 == 1) then
																														v117[v119[2]] = v117[v119[3]][v117[v119[1142 - (116 + 1022)]]];
																														v111 = v111 + 1;
																														v742 = 2;
																													end
																													if (v742 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v742 = 1;
																													end
																													if (2 == v742) then
																														v251 = 3;
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (0 == v250) then
																										v251 = 0;
																										v252 = nil;
																										v250 = 1;
																									end
																								end
																							else
																								v117[v119[2]] = v119[3];
																							end
																						elseif (v120 <= 30) then
																							local v255 = 0;
																							local v256;
																							local v257;
																							while true do
																								if (v255 == 0) then
																									v256 = 0;
																									v257 = nil;
																									v255 = 1;
																								end
																								if (v255 == 1) then
																									while true do
																										if (v256 == 3) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v119[3];
																											break;
																										end
																										if (v256 == 2) then
																											local v746 = 0;
																											while true do
																												if (v746 == 0) then
																													v117[v119[2]] = v54[v119[2 + 1]];
																													v111 = v111 + 1;
																													v746 = 1;
																												end
																												if (v746 == 2) then
																													v256 = 3;
																													break;
																												end
																												if (v746 == 1) then
																													v119 = v107[v111];
																													v117[v119[2]] = v117[v119[3]][v119[4]];
																													v746 = 2;
																												end
																											end
																										end
																										if (v256 == 0) then
																											local v747 = 0;
																											while true do
																												if (v747 == 2) then
																													v256 = 1;
																													break;
																												end
																												if (v747 == 1) then
																													v117[v257] = v117[v257]();
																													v111 = v111 + 1;
																													v747 = 2;
																												end
																												if (v747 == 0) then
																													v257 = nil;
																													v257 = v119[2];
																													v747 = 1;
																												end
																											end
																										end
																										if (v256 == 1) then
																											local v748 = 0;
																											while true do
																												if (v748 == 2) then
																													v256 = 2;
																													break;
																												end
																												if (0 == v748) then
																													v119 = v107[v111];
																													v117[v119[2]] = v117[v119[3]];
																													v748 = 1;
																												end
																												if (v748 == 1) then
																													v111 = v111 + 1;
																													v119 = v107[v111];
																													v748 = 2;
																												end
																											end
																										end
																									end
																									break;
																								end
																							end
																						elseif (v120 == 31) then
																							local v359 = 0;
																							local v360;
																							while true do
																								if (v359 == 0) then
																									v360 = v119[2];
																									v117[v360] = v117[v360]();
																									break;
																								end
																							end
																						else
																							v117[v119[2]] = {};
																						end
																					elseif (v120 <= 49) then
																						if (v120 <= (146 - 106)) then
																							if (v120 <= 36) then
																								if (v120 <= 34) then
																									if (v120 == 33) then
																										local v258 = 0;
																										local v259;
																										local v260;
																										local v261;
																										local v262;
																										local v263;
																										while true do
																											if (v258 == 1) then
																												v261 = v259 + 2;
																												v262 = {v117[v259](v117[v259 + 1], v117[v261])};
																												v258 = 2;
																											end
																											if (v258 == 3) then
																												if v263 then
																													local v685 = 0;
																													local v686;
																													while true do
																														if (v685 == 0) then
																															v686 = 0;
																															while true do
																																if (v686 == 0) then
																																	v117[v261] = v263;
																																	v111 = v119[3];
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												else
																													v111 = v111 + 1;
																												end
																												break;
																											end
																											if (v258 == 0) then
																												v259 = v119[2];
																												v260 = v119[4];
																												v258 = 1;
																											end
																											if (v258 == 2) then
																												for v655 = 3 - 2, v260 do
																													v117[v261 + v655] = v262[v655];
																												end
																												v263 = v262[1];
																												v258 = 3;
																											end
																										end
																									elseif (v117[v119[2]] == v119[4]) then
																										v111 = v111 + 1;
																									else
																										v111 = v119[3];
																									end
																								elseif (v120 == 35) then
																									local v264 = 0;
																									local v265;
																									local v266;
																									local v267;
																									local v268;
																									while true do
																										if (v264 == 6) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v119[3];
																											break;
																										end
																										if (v264 == 3) then
																											v268 = v119[2];
																											v266, v267 = v110(v117[v268](v21(v117, v268 + 1, v119[3])));
																											v112 = (v267 + v268) - 1;
																											v265 = 0;
																											v264 = 4;
																										end
																										if (v264 == 1) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v119[3];
																											v111 = v111 + 1;
																											v264 = 2;
																										end
																										if (v264 == 4) then
																											for v658 = v268, v112 do
																												local v659 = 0;
																												while true do
																													if (v659 == 0) then
																														v265 = v265 + 1;
																														v117[v658] = v266[v265];
																														break;
																													end
																												end
																											end
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v268 = v119[2];
																											v264 = 5;
																										end
																										if (5 == v264) then
																											v117[v268] = v117[v268](v21(v117, v268 + 1, v112));
																											v111 = v111 + (2 - 1);
																											v119 = v107[v111];
																											v117[v119[2]][v119[3]] = v117[v119[4]];
																											v264 = 6;
																										end
																										if (0 == v264) then
																											v265 = nil;
																											v266, v267 = nil;
																											v268 = nil;
																											v117[v119[861 - (814 + 45)]] = v119[3];
																											v264 = 1;
																										end
																										if (v264 == 2) then
																											v119 = v107[v111];
																											v117[v119[2]] = v119[3];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v264 = 3;
																										end
																									end
																								else
																									v55[v119[3]] = v117[v119[2]];
																								end
																							elseif (v120 <= 38) then
																								if (v120 == 37) then
																									v117[v119[2]] = v117[v119[1 + 2]] - v117[v119[4]];
																								else
																									local v272 = 0;
																									local v273;
																									local v274;
																									while true do
																										if (v272 == 1) then
																											while true do
																												if (v273 == 0) then
																													v274 = v119[2];
																													v117[v274](v21(v117, v274 + 1, v112));
																													break;
																												end
																											end
																											break;
																										end
																										if (v272 == 0) then
																											v273 = 0;
																											v274 = nil;
																											v272 = 1;
																										end
																									end
																								end
																							elseif (v120 == 39) then
																								v111 = v119[3];
																							else
																								local v276 = 0;
																								local v277;
																								local v278;
																								while true do
																									if (v276 == 0) then
																										v277 = 0;
																										v278 = nil;
																										v276 = 1;
																									end
																									if (v276 == 1) then
																										while true do
																											if (0 == v277) then
																												v278 = v119[2];
																												do
																													return v21(v117, v278, v112);
																												end
																												break;
																											end
																										end
																										break;
																									end
																								end
																							end
																						elseif (v120 <= 44) then
																							if (v120 <= (15 + 27)) then
																								if (v120 > 41) then
																									local v279 = 0;
																									local v280;
																									local v281;
																									local v282;
																									local v283;
																									local v284;
																									local v285;
																									while true do
																										if (v279 == 3) then
																											while true do
																												if (v280 == 1) then
																													local v751 = 0;
																													while true do
																														if (v751 == 2) then
																															v119 = v107[v111];
																															v285 = v119[887 - (261 + 624)];
																															v751 = 3;
																														end
																														if (v751 == 3) then
																															v280 = 2;
																															break;
																														end
																														if (v751 == 1) then
																															v117[v119[2]] = v55[v119[3]];
																															v111 = v111 + 1;
																															v751 = 2;
																														end
																														if (0 == v751) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v751 = 1;
																														end
																													end
																												end
																												if (2 == v280) then
																													local v752 = 0;
																													while true do
																														if (3 == v752) then
																															v280 = 3;
																															break;
																														end
																														if (v752 == 2) then
																															v119 = v107[v111];
																															v285 = v119[2];
																															v752 = 3;
																														end
																														if (v752 == 0) then
																															v284 = v117[v119[3]];
																															v117[v285 + (1 - 0)] = v284;
																															v752 = 1;
																														end
																														if (v752 == 1) then
																															v117[v285] = v284[v119[4]];
																															v111 = v111 + (1081 - (1020 + 60));
																															v752 = 2;
																														end
																													end
																												end
																												if (v280 == 0) then
																													local v753 = 0;
																													while true do
																														if (v753 == 2) then
																															v285 = nil;
																															v117[v119[2]] = v55[v119[3]];
																															v753 = 3;
																														end
																														if (1 == v753) then
																															v281, v283 = nil;
																															v284 = nil;
																															v753 = 2;
																														end
																														if (v753 == 3) then
																															v280 = 1;
																															break;
																														end
																														if (v753 == 0) then
																															v281 = nil;
																															v282 = nil;
																															v753 = 1;
																														end
																													end
																												end
																												if (v280 == 4) then
																													local v754 = 0;
																													while true do
																														if (v754 == 1) then
																															v282 = 0;
																															for v1075 = v285, v119[4] do
																																local v1076 = 0;
																																while true do
																																	if (v1076 == 0) then
																																		v282 = v282 + 1;
																																		v117[v1075] = v281[v282];
																																		break;
																																	end
																																end
																															end
																															v754 = 2;
																														end
																														if (v754 == 3) then
																															v280 = 5;
																															break;
																														end
																														if (v754 == 0) then
																															v285 = v119[2];
																															v281 = {v117[v285](v21(v117, v285 + 1, v112))};
																															v754 = 1;
																														end
																														if (v754 == 2) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v754 = 3;
																														end
																													end
																												end
																												if (3 == v280) then
																													local v755 = 0;
																													while true do
																														if (2 == v755) then
																															v111 = v111 + 1;
																															v119 = v107[v111];
																															v755 = 3;
																														end
																														if (v755 == 3) then
																															v280 = 4;
																															break;
																														end
																														if (v755 == 1) then
																															v282 = 0;
																															for v1077 = v285, v112 do
																																local v1078 = 0;
																																local v1079;
																																while true do
																																	if (v1078 == 0) then
																																		v1079 = 0;
																																		while true do
																																			if (v1079 == 0) then
																																				v282 = v282 + 1;
																																				v117[v1077] = v281[v282];
																																				break;
																																			end
																																		end
																																		break;
																																	end
																																end
																															end
																															v755 = 2;
																														end
																														if (v755 == 0) then
																															v281, v283 = v110(v117[v285](v117[v285 + 1]));
																															v112 = (v283 + v285) - 1;
																															v755 = 1;
																														end
																													end
																												end
																												if (5 == v280) then
																													v111 = v119[3];
																													break;
																												end
																											end
																											break;
																										end
																										if (v279 == 1) then
																											v282 = nil;
																											v283 = nil;
																											v279 = 2;
																										end
																										if (v279 == 0) then
																											v280 = 0;
																											v281 = nil;
																											v279 = 1;
																										end
																										if (v279 == 2) then
																											v284 = nil;
																											v285 = nil;
																											v279 = 3;
																										end
																									end
																								else
																									v117[v119[2]] = v117[v119[3]] * v117[v119[4]];
																								end
																							elseif (v120 > 43) then
																								local v287 = 0;
																								local v288;
																								local v289;
																								local v290;
																								local v291;
																								while true do
																									if (v287 == 0) then
																										v288 = 0;
																										v289 = nil;
																										v287 = 1;
																									end
																									if (2 == v287) then
																										while true do
																											if (v288 == 2) then
																												local v757 = 0;
																												while true do
																													if (v757 == 1) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v757 = 2;
																													end
																													if (v757 == 0) then
																														v119 = v107[v111];
																														v117[v119[2]] = #v117[v119[3]];
																														v757 = 1;
																													end
																													if (v757 == 2) then
																														v288 = 3;
																														break;
																													end
																												end
																											end
																											if (v288 == 3) then
																												local v758 = 0;
																												while true do
																													if (v758 == 1) then
																														v119 = v107[v111];
																														v291 = v119[2];
																														v758 = 2;
																													end
																													if (v758 == 2) then
																														v288 = 4;
																														break;
																													end
																													if (0 == v758) then
																														v117[v119[2]] = v119[3];
																														v111 = v111 + 1;
																														v758 = 1;
																													end
																												end
																											end
																											if (v288 == 0) then
																												local v759 = 0;
																												while true do
																													if (v759 == 1) then
																														v291 = nil;
																														v117[v119[2]] = {};
																														v759 = 2;
																													end
																													if (v759 == 2) then
																														v288 = 1;
																														break;
																													end
																													if (v759 == 0) then
																														v289 = nil;
																														v290 = nil;
																														v759 = 1;
																													end
																												end
																											end
																											if (v288 == 4) then
																												v290 = v117[v291];
																												v289 = v117[v291 + 2];
																												if (v289 > 0) then
																													if (v290 > v117[v291 + (4 - 3)]) then
																														v111 = v119[3];
																													else
																														v117[v291 + 3] = v290;
																													end
																												elseif (v290 < v117[v291 + 1 + 0]) then
																													v111 = v119[3];
																												else
																													v117[v291 + 3] = v290;
																												end
																												break;
																											end
																											if (v288 == 1) then
																												local v762 = 0;
																												while true do
																													if (v762 == 1) then
																														v117[v119[1425 - (630 + 793)]] = v119[3];
																														v111 = v111 + (3 - 2);
																														v762 = 2;
																													end
																													if (v762 == 2) then
																														v288 = 2;
																														break;
																													end
																													if (v762 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v762 = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (v287 == 1) then
																										v290 = nil;
																										v291 = nil;
																										v287 = 2;
																									end
																								end
																							elseif not v117[v119[2]] then
																								v111 = v111 + 1;
																							else
																								v111 = v119[3];
																							end
																						elseif (v120 <= 46) then
																							if (v120 > 45) then
																								local v292 = 0;
																								local v293;
																								local v294;
																								local v295;
																								local v296;
																								local v297;
																								while true do
																									if (v292 == 3) then
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										v111 = v111 + 1;
																										v292 = 4;
																									end
																									if (v292 == 0) then
																										v293 = nil;
																										v294, v295 = nil;
																										v296 = nil;
																										v297 = nil;
																										v55[v119[3]] = v117[v119[2]];
																										v111 = v111 + 1;
																										v292 = 1;
																									end
																									if (v292 == 1) then
																										v119 = v107[v111];
																										v117[v119[2]] = v55[v119[3]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v297 = v119[2];
																										v296 = v117[v119[3]];
																										v292 = 2;
																									end
																									if (v292 == 2) then
																										v117[v297 + 1] = v296;
																										v117[v297] = v296[v119[13 - 9]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = v117[v119[3]];
																										v111 = v111 + 1;
																										v292 = 3;
																									end
																									if (v292 == 5) then
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v297 = v119[2];
																										v117[v297] = v117[v297](v21(v117, v297 + 1, v112));
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v292 = 6;
																									end
																									if (v292 == 6) then
																										v55[v119[3]] = v117[v119[2]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = {};
																										break;
																									end
																									if (v292 == 4) then
																										v119 = v107[v111];
																										v297 = v119[2];
																										v294, v295 = v110(v117[v297](v21(v117, v297 + 1, v119[3])));
																										v112 = (v295 + v297) - (1748 - (760 + 987));
																										v293 = 0;
																										for v660 = v297, v112 do
																											local v661 = 0;
																											while true do
																												if (v661 == 0) then
																													v293 = v293 + 1;
																													v117[v660] = v294[v293];
																													break;
																												end
																											end
																										end
																										v292 = 5;
																									end
																								end
																							else
																								local v298 = 0;
																								local v299;
																								while true do
																									if (v298 == 2) then
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										v111 = v111 + 1;
																										v298 = 3;
																									end
																									if (v298 == 4) then
																										v119 = v107[v111];
																										v117[v119[2]] = v117[v119[3]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v298 = 5;
																									end
																									if (v298 == 3) then
																										v119 = v107[v111];
																										v299 = v119[2];
																										v117[v299] = v117[v299](v21(v117, v299 + 1, v119[3]));
																										v111 = v111 + 1;
																										v298 = 4;
																									end
																									if (v298 == 6) then
																										v117[v119[2]] = v117[v119[3]];
																										v111 = v111 + (2 - 1);
																										v119 = v107[v111];
																										v117[v119[2]] = v117[v119[3]];
																										v298 = 7;
																									end
																									if (v298 == 5) then
																										v299 = v119[2];
																										v117[v299] = v117[v299](v21(v117, v299 + 1, v119[2 + 1]));
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v298 = 6;
																									end
																									if (v298 == 0) then
																										v299 = nil;
																										v117[v119[1915 - (1789 + 124)]] = v117[v119[3]][v119[770 - (745 + 21)]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v298 = 1;
																									end
																									if (v298 == 7) then
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										break;
																									end
																									if (v298 == 1) then
																										v117[v119[2]] = v117[v119[3]];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										v298 = 2;
																									end
																								end
																							end
																						elseif (v120 <= 47) then
																							local v300 = 0;
																							local v301;
																							while true do
																								if (v300 == 1) then
																									v301 = v119[2];
																									v117[v301] = v117[v301](v21(v117, v301 + 1, v119[3]));
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v300 = 2;
																								end
																								if (v300 == 4) then
																									v119 = v107[v111];
																									v117[v119[2]] = v119[3];
																									break;
																								end
																								if (v300 == 3) then
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v117[v119[2]][v119[3]] = v117[v119[4]];
																									v111 = v111 + 1;
																									v300 = 4;
																								end
																								if (v300 == 2) then
																									v117[v119[1 + 1]] = v117[v119[3]];
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v117[v119[2]] = v117[v119[3]][v119[4]];
																									v300 = 3;
																								end
																								if (0 == v300) then
																									v301 = nil;
																									v117[v119[2]] = v55[v119[3]];
																									v111 = v111 + (3 - 2);
																									v119 = v107[v111];
																									v300 = 1;
																								end
																							end
																						elseif (v120 > 48) then
																							v117[v119[2]] = v43(v108[v119[3]], nil, v55);
																						else
																							local v365 = 0;
																							local v366;
																							local v367;
																							while true do
																								if (1 == v365) then
																									while true do
																										if (v366 == 0) then
																											v367 = v119[2];
																											do
																												return v117[v367](v21(v117, v367 + 1, v119[3]));
																											end
																											break;
																										end
																									end
																									break;
																								end
																								if (0 == v365) then
																									v366 = 0;
																									v367 = nil;
																									v365 = 1;
																								end
																							end
																						end
																					elseif (v120 <= 57) then
																						if (v120 <= 53) then
																							if (v120 <= 51) then
																								if (v120 == 50) then
																									local v302 = 0;
																									local v303;
																									local v304;
																									local v305;
																									local v306;
																									local v307;
																									while true do
																										if (v302 == 3) then
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v302 = 4;
																										end
																										if (v302 == 2) then
																											v306 = v117[v119[3]];
																											v117[v307 + 1] = v306;
																											v117[v307] = v306[v119[4]];
																											v111 = v111 + 1;
																											v302 = 3;
																										end
																										if (v302 == 1) then
																											v117[v119[2]] = v55[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v307 = v119[2];
																											v302 = 2;
																										end
																										if (v302 == 5) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v307 = v119[2];
																											v304, v305 = v110(v117[v307](v21(v117, v307 + 1, v119[3])));
																											v302 = 6;
																										end
																										if (v302 == 7) then
																											v119 = v107[v111];
																											v307 = v119[2];
																											v117[v307] = v117[v307](v21(v117, v307 + 1, v112));
																											v111 = v111 + 1;
																											v302 = 8;
																										end
																										if (v302 == 8) then
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[1058 - (87 + 968)]][v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v302 = 9;
																										end
																										if (v302 == 0) then
																											v303 = nil;
																											v304, v305 = nil;
																											v306 = nil;
																											v307 = nil;
																											v302 = 1;
																										end
																										if (v302 == 9) then
																											v55[v119[3]] = v117[v119[8 - 6]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v55[v119[3]];
																											break;
																										end
																										if (v302 == 4) then
																											v117[v119[2]] = v119[3];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2 + 0]] = v119[3];
																											v302 = 5;
																										end
																										if (6 == v302) then
																											v112 = (v305 + v307) - 1;
																											v303 = 0;
																											for v662 = v307, v112 do
																												local v663 = 0;
																												local v664;
																												while true do
																													if (v663 == 0) then
																														v664 = 0;
																														while true do
																															if (v664 == 0) then
																																v303 = v303 + 1;
																																v117[v662] = v304[v303];
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																											v111 = v111 + 1;
																											v302 = 7;
																										end
																									end
																								else
																									local v308 = 0;
																									local v309;
																									local v310;
																									local v311;
																									local v312;
																									local v313;
																									while true do
																										if (v308 == 12) then
																											v117[v119[2]] = v119[3];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[256 - (163 + 91)]] = v119[3];
																											v111 = v111 + (1931 - (1869 + 61));
																											v119 = v107[v111];
																											v313 = v119[2];
																											v310, v311 = v110(v117[v313](v21(v117, v313 + 1, v119[1 + 2])));
																											v112 = (v311 + v313) - 1;
																											v308 = 13;
																										end
																										if (v308 == 3) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v117[v313] = v117[v313](v21(v117, v313 + 1, v119[3]));
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2 - 0]] = v55[v119[3]];
																											v111 = v111 + (2 - 1);
																											v119 = v107[v111];
																											v308 = 4;
																										end
																										if (v308 == 1) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v54[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[1415 - (447 + 966)]] = v117[v119[3]] / v117[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v308 = 2;
																										end
																										if (v308 == 13) then
																											v309 = 0 - 0;
																											for v665 = v313, v112 do
																												local v666 = 0;
																												local v667;
																												while true do
																													if (v666 == 0) then
																														v667 = 0;
																														while true do
																															if (0 == v667) then
																																v309 = v309 + (1 - 0);
																																v117[v665] = v310[v309];
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v117[v313] = v117[v313](v21(v117, v313 + 1, v112));
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]][v119[4]];
																											v308 = 14;
																										end
																										if (5 == v308) then
																											v117[v119[2]] = v117[v119[3]][v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v117[v313] = v117[v313](v21(v117, v313 + 1, v119[3]));
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v312 = v117[v119[3]];
																											v308 = 6;
																										end
																										if (v308 == 15) then
																											v117[v313](v117[v313 + 1]);
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v111 = v119[3];
																											break;
																										end
																										if (v308 == 10) then
																											v117[v119[2]] = v54[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]][v119[3]] = v117[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[1182 - (1123 + 57)]] = v55[v119[3 + 0]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v308 = 11;
																										end
																										if (v308 == 8) then
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]] * v117[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]] * v119[14 - 10];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v310, v311 = v110(v117[v313](v117[v313 + 1]));
																											v308 = 9;
																										end
																										if (v308 == 14) then
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v312 = v117[v119[3]];
																											v117[v313 + 1] = v312;
																											v117[v313] = v312[v119[4]];
																											v111 = v111 + 1 + 0;
																											v119 = v107[v111];
																											v313 = v119[2 - 0];
																											v308 = 15;
																										end
																										if (v308 == 6) then
																											v117[v313 + 1] = v312;
																											v117[v313] = v312[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[4 - 2]] = v55[v119[17 - (9 + 5)]];
																											v111 = v111 + (377 - (85 + 291));
																											v308 = 7;
																										end
																										if (v308 == 2) then
																											v312 = v117[v119[3]];
																											v117[v313 + (2 - 1)] = v312;
																											v117[v313] = v312[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v54[v119[3]];
																											v111 = v111 + (1818 - (1703 + 114));
																											v119 = v107[v111];
																											v117[v119[703 - (376 + 325)]] = v117[v119[3]];
																											v308 = 3;
																										end
																										if (v308 == 9) then
																											v112 = (v311 + v313) - 1;
																											v309 = 0;
																											for v668 = v313, v112 do
																												local v669 = 0;
																												local v670;
																												while true do
																													if (v669 == 0) then
																														v670 = 0;
																														while true do
																															if (v670 == 0) then
																																v309 = v309 + 1 + 0;
																																v117[v668] = v310[v309];
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v313 = v119[2];
																											v117[v313] = v117[v313](v21(v117, v313 + 1, v112));
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v308 = 10;
																										end
																										if (v308 == 11) then
																											v313 = v119[2];
																											v312 = v117[v119[3]];
																											v117[v313 + 1] = v312;
																											v117[v313] = v312[v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v54[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v308 = 12;
																										end
																										if (4 == v308) then
																											v117[v119[2]] = v117[v119[3]][v119[2 + 2]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]][v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v54[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v308 = 5;
																										end
																										if (v308 == 0) then
																											v309 = nil;
																											v310, v311 = nil;
																											v312 = nil;
																											v313 = nil;
																											v313 = v119[2 + 0];
																											v117[v313] = v117[v313]();
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[4 - 2]] = v117[v119[3]] - v117[v119[4]];
																											v308 = 1;
																										end
																										if (v308 == 7) then
																											v119 = v107[v111];
																											v117[v119[2]] = v117[v119[3]][v119[4]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[2]] = v55[v119[3]];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v117[v119[1267 - (243 + 1022)]] = v117[v119[3]][v119[4]];
																											v111 = v111 + 1;
																											v308 = 8;
																										end
																									end
																								end
																							elseif (v120 == 52) then
																								local v314 = 0;
																								local v315;
																								while true do
																									if (v314 == 0) then
																										v315 = v119[2];
																										v117[v315] = v117[v315](v21(v117, v315 + 1, v112));
																										break;
																									end
																								end
																							else
																								v117[v119[2]]();
																							end
																						elseif (v120 <= 55) then
																							if (v120 > 54) then
																								v117[v119[2]] = v117[v119[3]] % v117[v119[4 + 0]];
																							elseif v117[v119[2]] then
																								v111 = v111 + (1475 - (1329 + 145));
																							else
																								v111 = v119[3];
																							end
																						elseif (v120 == 56) then
																							local v317 = 0;
																							local v318;
																							local v319;
																							local v320;
																							local v321;
																							while true do
																								if (v317 == 7) then
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									if v117[v119[2]] then
																										v111 = v111 + 1;
																									else
																										v111 = v119[1853 - (1409 + 441)];
																									end
																									break;
																								end
																								if (v317 == 5) then
																									v318 = 0;
																									for v671 = v321, v112 do
																										local v672 = 0;
																										local v673;
																										while true do
																											if (v672 == 0) then
																												v673 = 0;
																												while true do
																													if (v673 == 0) then
																														v318 = v318 + 1;
																														v117[v671] = v319[v318];
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end
																									v111 = v111 + 1;
																									v317 = 6;
																								end
																								if (4 == v317) then
																									v321 = v119[2];
																									v319, v320 = v110(v117[v321](v21(v117, v321 + 1, v119[3])));
																									v112 = (v320 + v321) - 1;
																									v317 = 5;
																								end
																								if (v317 == 0) then
																									v318 = nil;
																									v319, v320 = nil;
																									v321 = nil;
																									v317 = 1;
																								end
																								if (v317 == 3) then
																									v117[v119[2]] = v119[3];
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v317 = 4;
																								end
																								if (v317 == 1) then
																									v117[v119[2]] = v54[v119[3]];
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v317 = 2;
																								end
																								if (6 == v317) then
																									v119 = v107[v111];
																									v321 = v119[2];
																									v117[v321] = v117[v321](v21(v117, v321 + (972 - (140 + 831)), v112));
																									v317 = 7;
																								end
																								if (v317 == 2) then
																									v117[v119[2]] = v119[3];
																									v111 = v111 + 1;
																									v119 = v107[v111];
																									v317 = 3;
																								end
																							end
																						else
																							local v322 = 0;
																							local v323;
																							local v324;
																							local v325;
																							local v326;
																							local v327;
																							local v328;
																							while true do
																								if (v322 == 0) then
																									v323 = 0;
																									v324 = nil;
																									v322 = 1;
																								end
																								if (v322 == 3) then
																									while true do
																										if (v323 == 6) then
																											local v763 = 0;
																											while true do
																												if (v763 == 0) then
																													v117[v328] = v117[v328](v21(v117, v328 + 1, v112));
																													v111 = v111 + (689 - (198 + 490));
																													v763 = 1;
																												end
																												if (v763 == 1) then
																													v119 = v107[v111];
																													v117[v119[2]]();
																													v763 = 2;
																												end
																												if (2 == v763) then
																													v111 = v111 + 1;
																													v323 = 7;
																													break;
																												end
																											end
																										end
																										if (v323 == 2) then
																											local v764 = 0;
																											while true do
																												if (v764 == 2) then
																													v327 = v117[v119[3]];
																													v323 = 3;
																													break;
																												end
																												if (0 == v764) then
																													v117[v119[720 - (15 + 703)]] = v55[v119[3]];
																													v111 = v111 + 1;
																													v764 = 1;
																												end
																												if (v764 == 1) then
																													v119 = v107[v111];
																													v328 = v119[2];
																													v764 = 2;
																												end
																											end
																										end
																										if (5 == v323) then
																											local v765 = 0;
																											while true do
																												if (v765 == 1) then
																													v111 = v111 + 1;
																													v119 = v107[v111];
																													v765 = 2;
																												end
																												if (v765 == 0) then
																													v324 = 0;
																													for v1092 = v328, v112 do
																														local v1093 = 0;
																														while true do
																															if (v1093 == 0) then
																																v324 = v324 + (439 - (262 + 176));
																																v117[v1092] = v325[v324];
																																break;
																															end
																														end
																													end
																													v765 = 1;
																												end
																												if (v765 == 2) then
																													v328 = v119[1723 - (345 + 1376)];
																													v323 = 6;
																													break;
																												end
																											end
																										end
																										if (v323 == 0) then
																											local v766 = 0;
																											while true do
																												if (0 == v766) then
																													v324 = nil;
																													v325, v326 = nil;
																													v766 = 1;
																												end
																												if (v766 == 2) then
																													v55[v119[3]] = v117[v119[2]];
																													v323 = 1;
																													break;
																												end
																												if (1 == v766) then
																													v327 = nil;
																													v328 = nil;
																													v766 = 2;
																												end
																											end
																										end
																										if (v323 == 1) then
																											local v767 = 0;
																											while true do
																												if (v767 == 2) then
																													v119 = v107[v111];
																													v323 = 2;
																													break;
																												end
																												if (0 == v767) then
																													v111 = v111 + 1;
																													v119 = v107[v111];
																													v767 = 1;
																												end
																												if (v767 == 1) then
																													v117[v119[2]] = v55[v119[3]];
																													v111 = v111 + 1;
																													v767 = 2;
																												end
																											end
																										end
																										if (v323 == 7) then
																											v119 = v107[v111];
																											v117[v119[2]] = v119[3];
																											v111 = v111 + 1;
																											v119 = v107[v111];
																											v55[v119[13 - 10]] = v117[v119[4 - 2]];
																											break;
																										end
																										if (v323 == 3) then
																											local v773 = 0;
																											while true do
																												if (v773 == 1) then
																													v111 = v111 + 1;
																													v119 = v107[v111];
																													v773 = 2;
																												end
																												if (v773 == 0) then
																													v117[v328 + 1] = v327;
																													v117[v328] = v327[v119[4]];
																													v773 = 1;
																												end
																												if (v773 == 2) then
																													v117[v119[2]] = v119[3];
																													v323 = 4;
																													break;
																												end
																											end
																										end
																										if (v323 == 4) then
																											local v774 = 0;
																											while true do
																												if (v774 == 2) then
																													v112 = (v326 + v328) - 1;
																													v323 = 5;
																													break;
																												end
																												if (0 == v774) then
																													v111 = v111 + 1 + 0;
																													v119 = v107[v111];
																													v774 = 1;
																												end
																												if (v774 == 1) then
																													v328 = v119[2];
																													v325, v326 = v110(v117[v328](v21(v117, v328 + 1, v119[3])));
																													v774 = 2;
																												end
																											end
																										end
																									end
																									break;
																								end
																								if (v322 == 2) then
																									v327 = nil;
																									v328 = nil;
																									v322 = 3;
																								end
																								if (v322 == 1) then
																									v325 = nil;
																									v326 = nil;
																									v322 = 2;
																								end
																							end
																						end
																					elseif (v120 <= 61) then
																						if (v120 <= 59) then
																							if (v120 == 58) then
																								local v329 = 0;
																								local v330;
																								local v331;
																								local v332;
																								local v333;
																								while true do
																									if (v329 == 2) then
																										v119 = v107[v111];
																										v117[v119[2]] = v119[3];
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v329 = 3;
																									end
																									if (0 == v329) then
																										v330 = nil;
																										v331, v332 = nil;
																										v333 = nil;
																										v117[v119[2]] = v117[v119[3]];
																										v329 = 1;
																									end
																									if (v329 == 3) then
																										v333 = v119[2];
																										v331, v332 = v110(v117[v333](v21(v117, v333 + 1, v119[3])));
																										v112 = (v332 + v333) - 1;
																										v330 = 0;
																										v329 = 4;
																									end
																									if (v329 == 4) then
																										for v674 = v333, v112 do
																											local v675 = 0;
																											local v676;
																											while true do
																												if (v675 == 0) then
																													v676 = 0;
																													while true do
																														if (v676 == 0) then
																															v330 = v330 + 1;
																															v117[v674] = v331[v330];
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																										v111 = v111 + (1 - 0);
																										v119 = v107[v111];
																										v333 = v119[1264 - (1091 + 171)];
																										v329 = 5;
																									end
																									if (v329 == 1) then
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										v117[v119[1208 - (696 + 510)]] = v119[3];
																										v111 = v111 + 1;
																										v329 = 2;
																									end
																									if (v329 == 5) then
																										v117[v333] = v117[v333](v21(v117, v333 + 1 + 0, v112));
																										v111 = v111 + 1;
																										v119 = v107[v111];
																										if v117[v119[2]] then
																											v111 = v111 + 1;
																										else
																											v111 = v119[3];
																										end
																										break;
																									end
																								end
																							else
																								local v334 = 0;
																								local v335;
																								local v336;
																								local v337;
																								local v338;
																								local v339;
																								while true do
																									if (v334 == 2) then
																										v339 = nil;
																										while true do
																											if (v335 == 13) then
																												v112 = (v338 + v339) - 1;
																												v336 = 202 - (14 + 188);
																												for v804 = v339, v112 do
																													local v805 = 0;
																													while true do
																														if (v805 == 0) then
																															v336 = v336 + 1;
																															v117[v804] = v337[v336];
																															break;
																														end
																													end
																												end
																												v111 = v111 + (676 - (534 + 141));
																												v119 = v107[v111];
																												v339 = v119[2];
																												v117[v339](v21(v117, v339 + 1, v112));
																												break;
																											end
																											if (v335 == 9) then
																												local v777 = 0;
																												while true do
																													if (v777 == 1) then
																														v117[v119[2]] = v117[v119[3]] + v119[4];
																														v111 = v111 + 1;
																														v777 = 2;
																													end
																													if (v777 == 2) then
																														v119 = v107[v111];
																														v339 = v119[2];
																														v777 = 3;
																													end
																													if (v777 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v777 = 1;
																													end
																													if (v777 == 3) then
																														v337, v338 = v110(v117[v339](v21(v117, v339 + 1, v119[3])));
																														v335 = 10;
																														break;
																													end
																												end
																											end
																											if (1 == v335) then
																												local v778 = 0;
																												while true do
																													if (3 == v778) then
																														v111 = v111 + 1;
																														v335 = 2;
																														break;
																													end
																													if (2 == v778) then
																														v119 = v107[v111];
																														v117[v119[2]] = v54[v119[3]];
																														v778 = 3;
																													end
																													if (v778 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v778 = 1;
																													end
																													if (v778 == 1) then
																														v117[v119[2]] = v54[v119[3]];
																														v111 = v111 + 1;
																														v778 = 2;
																													end
																												end
																											end
																											if (v335 == 12) then
																												local v779 = 0;
																												while true do
																													if (v779 == 2) then
																														v119 = v107[v111];
																														v339 = v119[2];
																														v779 = 3;
																													end
																													if (v779 == 3) then
																														v337, v338 = v110(v117[v339](v117[v339 + 1]));
																														v335 = 13;
																														break;
																													end
																													if (v779 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v779 = 1;
																													end
																													if (v779 == 1) then
																														v117[v119[2]] = v117[v119[3]] % v119[4];
																														v111 = v111 + 1;
																														v779 = 2;
																													end
																												end
																											end
																											if (v335 == 11) then
																												local v780 = 0;
																												while true do
																													if (v780 == 3) then
																														v117[v339] = v117[v339](v21(v117, v339 + 1, v112));
																														v335 = 12;
																														break;
																													end
																													if (0 == v780) then
																														v112 = (v338 + v339) - 1;
																														v336 = 0;
																														v780 = 1;
																													end
																													if (v780 == 1) then
																														for v1098 = v339, v112 do
																															local v1099 = 0;
																															local v1100;
																															while true do
																																if (v1099 == 0) then
																																	v1100 = 0;
																																	while true do
																																		if (v1100 == 0) then
																																			v336 = v336 + 1;
																																			v117[v1098] = v337[v336];
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																														end
																														v111 = v111 + 1;
																														v780 = 2;
																													end
																													if (v780 == 2) then
																														v119 = v107[v111];
																														v339 = v119[2];
																														v780 = 3;
																													end
																												end
																											end
																											if (v335 == 0) then
																												local v781 = 0;
																												while true do
																													if (v781 == 3) then
																														v117[v119[2]] = v54[v119[3]];
																														v335 = 1;
																														break;
																													end
																													if (1 == v781) then
																														v339 = nil;
																														v117[v119[2]] = v117[v119[3]];
																														v781 = 2;
																													end
																													if (v781 == 2) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v781 = 3;
																													end
																													if (v781 == 0) then
																														v336 = nil;
																														v337, v338 = nil;
																														v781 = 1;
																													end
																												end
																											end
																											if (v335 == 6) then
																												local v782 = 0;
																												while true do
																													if (v782 == 0) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v782 = 1;
																													end
																													if (v782 == 3) then
																														v111 = v111 + 1;
																														v335 = 7;
																														break;
																													end
																													if (2 == v782) then
																														v119 = v107[v111];
																														v117[v119[2]] = #v117[v119[3]];
																														v782 = 3;
																													end
																													if (1 == v782) then
																														v117[v119[2]] = v117[v119[3]];
																														v111 = v111 + 1;
																														v782 = 2;
																													end
																												end
																											end
																											if (v335 == 5) then
																												local v783 = 0;
																												while true do
																													if (v783 == 1) then
																														v119 = v107[v111];
																														v117[v119[2]] = v54[v119[377 - (123 + 251)]];
																														v783 = 2;
																													end
																													if (v783 == 0) then
																														v117[v339] = v117[v339](v21(v117, v339 + 1, v112));
																														v111 = v111 + 1;
																														v783 = 1;
																													end
																													if (v783 == 2) then
																														v111 = v111 + (4 - 3);
																														v119 = v107[v111];
																														v783 = 3;
																													end
																													if (v783 == 3) then
																														v117[v119[2]] = v54[v119[3]];
																														v335 = 6;
																														break;
																													end
																												end
																											end
																											if (v335 == 8) then
																												local v784 = 0;
																												while true do
																													if (v784 == 3) then
																														v117[v119[2]] = v119[3] + v117[v119[4]];
																														v335 = 9;
																														break;
																													end
																													if (v784 == 2) then
																														v111 = v111 + 1 + 0;
																														v119 = v107[v111];
																														v784 = 3;
																													end
																													if (v784 == 0) then
																														v117[v119[1 + 1]] = #v117[v119[3]];
																														v111 = v111 + 1;
																														v784 = 1;
																													end
																													if (1 == v784) then
																														v119 = v107[v111];
																														v117[v119[838 - (660 + 176)]] = v117[v119[3]] % v117[v119[4]];
																														v784 = 2;
																													end
																												end
																											end
																											if (v335 == 10) then
																												local v785 = 0;
																												while true do
																													if (3 == v785) then
																														v337, v338 = v110(v117[v339](v21(v117, v339 + 1, v112)));
																														v335 = 11;
																														break;
																													end
																													if (v785 == 0) then
																														v112 = (v338 + v339) - 1;
																														v336 = 0;
																														v785 = 1;
																													end
																													if (v785 == 2) then
																														v119 = v107[v111];
																														v339 = v119[2];
																														v785 = 3;
																													end
																													if (v785 == 1) then
																														for v1101 = v339, v112 do
																															local v1102 = 0;
																															local v1103;
																															while true do
																																if (v1102 == 0) then
																																	v1103 = 0;
																																	while true do
																																		if (v1103 == 0) then
																																			v336 = v336 + 1;
																																			v117[v1101] = v337[v336];
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																														end
																														v111 = v111 + 1;
																														v785 = 2;
																													end
																												end
																											end
																											if (v335 == 4) then
																												local v786 = 0;
																												while true do
																													if (0 == v786) then
																														v337, v338 = v110(v117[v339](v21(v117, v339 + 1, v119[3])));
																														v112 = (v338 + v339) - 1;
																														v786 = 1;
																													end
																													if (v786 == 2) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v786 = 3;
																													end
																													if (v786 == 3) then
																														v339 = v119[2];
																														v335 = 5;
																														break;
																													end
																													if (v786 == 1) then
																														v336 = 0;
																														for v1104 = v339, v112 do
																															local v1105 = 0;
																															local v1106;
																															while true do
																																if (v1105 == 0) then
																																	v1106 = 0;
																																	while true do
																																		if (v1106 == 0) then
																																			v336 = v336 + 1;
																																			v117[v1104] = v337[v336];
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																														end
																														v786 = 2;
																													end
																												end
																											end
																											if (v335 == 3) then
																												local v787 = 0;
																												while true do
																													if (v787 == 0) then
																														v117[v119[6 - 4]] = v117[v119[3]];
																														v111 = v111 + 1;
																														v787 = 1;
																													end
																													if (3 == v787) then
																														v339 = v119[2];
																														v335 = 4;
																														break;
																													end
																													if (v787 == 1) then
																														v119 = v107[v111];
																														v117[v119[2]] = v117[v119[3]] + v119[4];
																														v787 = 2;
																													end
																													if (2 == v787) then
																														v111 = v111 + (3 - 2);
																														v119 = v107[v111];
																														v787 = 3;
																													end
																												end
																											end
																											if (v335 == 7) then
																												local v788 = 0;
																												while true do
																													if (v788 == 2) then
																														v117[v119[700 - (208 + 490)]] = v119[3] + v117[v119[4]];
																														v111 = v111 + 1 + 0;
																														v788 = 3;
																													end
																													if (v788 == 3) then
																														v119 = v107[v111];
																														v335 = 8;
																														break;
																													end
																													if (v788 == 1) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v788 = 2;
																													end
																													if (v788 == 0) then
																														v119 = v107[v111];
																														v117[v119[2]] = v117[v119[3]] % v117[v119[4]];
																														v788 = 1;
																													end
																												end
																											end
																											if (v335 == 2) then
																												local v789 = 0;
																												while true do
																													if (1 == v789) then
																														v111 = v111 + 1;
																														v119 = v107[v111];
																														v789 = 2;
																													end
																													if (v789 == 2) then
																														v117[v119[2]] = v117[v119[3]];
																														v111 = v111 + 1;
																														v789 = 3;
																													end
																													if (v789 == 3) then
																														v119 = v107[v111];
																														v335 = 3;
																														break;
																													end
																													if (v789 == 0) then
																														v119 = v107[v111];
																														v117[v119[2]] = v54[v119[3]];
																														v789 = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (v334 == 1) then
																										v337 = nil;
																										v338 = nil;
																										v334 = 2;
																									end
																									if (v334 == 0) then
																										v335 = 0;
																										v336 = nil;
																										v334 = 1;
																									end
																								end
																							end
																						elseif (v120 > 60) then
																							v117[v119[2]] = v117[v119[3]];
																						else
																							v117[v119[2]] = v117[v119[3]][v117[v119[4]]];
																						end
																					elseif (v120 <= 63) then
																						if (v120 > 62) then
																							do
																								return;
																							end
																						else
																							local v344 = 0;
																							local v345;
																							local v346;
																							local v347;
																							local v348;
																							while true do
																								if (v344 == 2) then
																									for v677 = v345, v112 do
																										local v678 = 0;
																										local v679;
																										while true do
																											if (0 == v678) then
																												v679 = 0;
																												while true do
																													if (v679 == 0) then
																														v348 = v348 + 1;
																														v117[v677] = v346[v348];
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end
																									break;
																								end
																								if (v344 == 1) then
																									v112 = (v347 + v345) - (1 + 0);
																									v348 = 0 + 0;
																									v344 = 2;
																								end
																								if (0 == v344) then
																									v345 = v119[1 + 1];
																									v346, v347 = v110(v117[v345](v21(v117, v345 + 1, v112)));
																									v344 = 1;
																								end
																							end
																						end
																					elseif (v120 <= 64) then
																						local v349 = 0;
																						local v350;
																						local v351;
																						local v352;
																						while true do
																							if (v349 == 1) then
																								v352 = 0;
																								for v680 = v350, v119[4] do
																									local v681 = 0;
																									local v682;
																									while true do
																										if (v681 == 0) then
																											v682 = 0;
																											while true do
																												if (v682 == 0) then
																													v352 = v352 + 1;
																													v117[v680] = v351[v352];
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																								break;
																							end
																							if (v349 == 0) then
																								v350 = v119[2];
																								v351 = {v117[v350](v21(v117, v350 + 1, v112))};
																								v349 = 1;
																							end
																						end
																					elseif (v120 > 65) then
																						local v369 = 0;
																						local v370;
																						local v371;
																						local v372;
																						local v373;
																						local v374;
																						local v375;
																						while true do
																							if (v369 == 0) then
																								v370 = 0;
																								v371 = nil;
																								v369 = 1;
																							end
																							if (v369 == 3) then
																								while true do
																									if (v370 == 3) then
																										local v810 = 0;
																										while true do
																											if (v810 == 1) then
																												v117[v119[2]] = v119[3];
																												v111 = v111 + 1;
																												v810 = 2;
																											end
																											if (v810 == 0) then
																												v111 = v111 + (1 - 0);
																												v119 = v107[v111];
																												v810 = 1;
																											end
																											if (v810 == 3) then
																												v370 = 4;
																												break;
																											end
																											if (v810 == 2) then
																												v119 = v107[v111];
																												v117[v119[2]] = v119[3];
																												v810 = 3;
																											end
																										end
																									end
																									if (v370 == 1) then
																										local v811 = 0;
																										while true do
																											if (v811 == 2) then
																												v119 = v107[v111];
																												v375 = v119[2];
																												v811 = 3;
																											end
																											if (v811 == 3) then
																												v370 = 2;
																												break;
																											end
																											if (0 == v811) then
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v811 = 1;
																											end
																											if (v811 == 1) then
																												v117[v119[2]] = v55[v119[3]];
																												v111 = v111 + 1;
																												v811 = 2;
																											end
																										end
																									end
																									if (v370 == 4) then
																										local v812 = 0;
																										while true do
																											if (v812 == 3) then
																												v370 = 5;
																												break;
																											end
																											if (v812 == 0) then
																												v111 = v111 + 1;
																												v119 = v107[v111];
																												v812 = 1;
																											end
																											if (v812 == 1) then
																												v375 = v119[2];
																												v372, v373 = v110(v117[v375](v21(v117, v375 + 1, v119[3])));
																												v812 = 2;
																											end
																											if (v812 == 2) then
																												v112 = (v373 + v375) - (2 - 1);
																												v371 = 0;
																												v812 = 3;
																											end
																										end
																									end
																									if (v370 == 5) then
																										local v813 = 0;
																										while true do
																											if (v813 == 2) then
																												v117[v375] = v117[v375](v21(v117, v375 + 1, v112));
																												v111 = v111 + 1;
																												v813 = 3;
																											end
																											if (v813 == 0) then
																												for v1145 = v375, v112 do
																													local v1146 = 0;
																													while true do
																														if (v1146 == 0) then
																															v371 = v371 + 1;
																															v117[v1145] = v372[v371];
																															break;
																														end
																													end
																												end
																												v111 = v111 + 1;
																												v813 = 1;
																											end
																											if (v813 == 3) then
																												v370 = 6;
																												break;
																											end
																											if (v813 == 1) then
																												v119 = v107[v111];
																												v375 = v119[2];
																												v813 = 2;
																											end
																										end
																									end
																									if (v370 == 0) then
																										local v814 = 0;
																										while true do
																											if (v814 == 1) then
																												v374 = nil;
																												v375 = nil;
																												v814 = 2;
																											end
																											if (v814 == 0) then
																												v371 = nil;
																												v372, v373 = nil;
																												v814 = 1;
																											end
																											if (v814 == 3) then
																												v370 = 1;
																												break;
																											end
																											if (2 == v814) then
																												v375 = v119[2];
																												v117[v375](v21(v117, v375 + 1, v119[6 - 3]));
																												v814 = 3;
																											end
																										end
																									end
																									if (v370 == 7) then
																										v117[v375 + 1] = v374;
																										v117[v375] = v374[v119[4]];
																										break;
																									end
																									if (v370 == 6) then
																										local v818 = 0;
																										while true do
																											if (v818 == 0) then
																												v119 = v107[v111];
																												v117[v119[2]] = v117[v119[3]][v119[4]];
																												v818 = 1;
																											end
																											if (v818 == 1) then
																												v111 = v111 + 1 + 0;
																												v119 = v107[v111];
																												v818 = 2;
																											end
																											if (v818 == 3) then
																												v370 = 7;
																												break;
																											end
																											if (v818 == 2) then
																												v375 = v119[2];
																												v374 = v117[v119[3]];
																												v818 = 3;
																											end
																										end
																									end
																									if (v370 == 2) then
																										local v819 = 0;
																										while true do
																											if (v819 == 3) then
																												v370 = 3;
																												break;
																											end
																											if (v819 == 2) then
																												v119 = v107[v111];
																												v117[v119[2]] = v117[v119[3]];
																												v819 = 3;
																											end
																											if (v819 == 1) then
																												v117[v375] = v374[v119[4]];
																												v111 = v111 + 1;
																												v819 = 2;
																											end
																											if (v819 == 0) then
																												v374 = v117[v119[3]];
																												v117[v375 + 1] = v374;
																												v819 = 1;
																											end
																										end
																									end
																								end
																								break;
																							end
																							if (v369 == 2) then
																								v374 = nil;
																								v375 = nil;
																								v369 = 3;
																							end
																							if (v369 == 1) then
																								v372 = nil;
																								v373 = nil;
																								v369 = 2;
																							end
																						end
																					else
																						v117[v119[2 + 0]] = v119[3] + v117[v119[4]];
																					end
																					v111 = v111 + 1;
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																break;
															end
														end
													end;
												end
											end
										end
										v47 = 1;
									end
									if (v47 == 1) then
										return v43(v42(), {}, v29)(...);
									end
								end
							end
							v45 = 2;
						end
						if (2 == v45) then
							if (3 == v31) then
								local v48 = 0;
								while true do
									if (v48 == 0) then
										function v38()
											local v60 = 0;
											local v61;
											local v62;
											local v63;
											local v64;
											local v65;
											local v66;
											local v67;
											while true do
												if (v60 == 0) then
													v61 = 0;
													v62 = nil;
													v60 = 1;
												end
												if (v60 == 1) then
													v63 = nil;
													v64 = nil;
													v60 = 2;
												end
												if (v60 == 2) then
													v65 = nil;
													v66 = nil;
													v60 = 3;
												end
												if (v60 == 3) then
													v67 = nil;
													while true do
														local v121 = 0;
														while true do
															if (v121 == 0) then
																if (1 == v61) then
																	local v131 = 0;
																	while true do
																		if (v131 == 0) then
																			v64 = 1;
																			v65 = (v34(v63, 1, 20) * (2 ^ 32)) + v62;
																			v131 = 1;
																		end
																		if (v131 == 1) then
																			v61 = 2;
																			break;
																		end
																	end
																end
																if (v61 == 3) then
																	local v132 = 0;
																	while true do
																		if (v132 == 0) then
																			if (v66 == 0) then
																				if (v65 == 0) then
																					return v67 * 0;
																				else
																					local v160 = 0;
																					local v161;
																					while true do
																						if (v160 == 0) then
																							v161 = 0;
																							while true do
																								if (v161 == 0) then
																									v66 = 1;
																									v64 = 0;
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end
																			elseif (v66 == 2047) then
																				return ((v65 == 0) and (v67 * (1 / 0))) or (v67 * NaN);
																			end
																			return v16(v67, v66 - 1023) * (v64 + (v65 / (2 ^ 52)));
																		end
																	end
																end
																v121 = 1;
															end
															if (v121 == 1) then
																if (2 == v61) then
																	local v133 = 0;
																	while true do
																		if (v133 == 0) then
																			v66 = v34(v63, 21, 31);
																			v67 = ((v34(v63, 651 - (555 + 64)) == 1) and -1) or 1;
																			v133 = 1;
																		end
																		if (v133 == 1) then
																			v61 = 3;
																			break;
																		end
																	end
																end
																if (v61 == 0) then
																	local v134 = 0;
																	while true do
																		if (v134 == 1) then
																			v61 = 1;
																			break;
																		end
																		if (v134 == 0) then
																			v62 = v37();
																			v63 = v37();
																			v134 = 1;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
										end
										v39 = nil;
										v48 = 1;
									end
									if (v48 == 2) then
										v31 = 4;
										break;
									end
									if (1 == v48) then
										function v39(v68)
											local v69 = 0;
											local v70;
											local v71;
											while true do
												if (v69 == 1) then
													v70 = v11(v28, v32, (v32 + v68) - 1);
													v32 = v32 + v68;
													v69 = 2;
												end
												if (2 == v69) then
													v71 = {};
													for v122 = 1, #v70 do
														v71[v122] = v10(v9(v11(v70, v122, v122)));
													end
													v69 = 3;
												end
												if (0 == v69) then
													v70 = nil;
													if not v68 then
														local v126 = 0;
														while true do
															if (v126 == 0) then
																v68 = v37();
																if (v68 == 0) then
																	return "";
																end
																break;
															end
														end
													end
													v69 = 1;
												end
												if (3 == v69) then
													return v14(v71);
												end
											end
										end
										v40 = v37;
										v48 = 2;
									end
								end
							end
							if (v31 == 2) then
								local v49 = 0;
								while true do
									if (v49 == 2) then
										v31 = 3;
										break;
									end
									if (v49 == 0) then
										function v36()
											local v72 = 0;
											local v73;
											local v74;
											local v75;
											while true do
												if (0 == v72) then
													v73 = 0;
													v74 = nil;
													v72 = 1;
												end
												if (v72 == 1) then
													v75 = nil;
													while true do
														local v124 = 0;
														while true do
															if (v124 == 0) then
																if (v73 == 1) then
																	return (v75 * 256) + v74;
																end
																if (v73 == 0) then
																	local v135 = 0;
																	while true do
																		if (v135 == 1) then
																			v73 = 1;
																			break;
																		end
																		if (v135 == 0) then
																			v74, v75 = v9(v28, v32, v32 + 2);
																			v32 = v32 + 2;
																			v135 = 1;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
										end
										v37 = nil;
										v49 = 1;
									end
									if (v49 == 1) then
										function v37()
											local v76 = 0;
											local v77;
											local v78;
											local v79;
											local v80;
											while true do
												if (v76 == 0) then
													v77, v78, v79, v80 = v9(v28, v32, v32 + 3);
													v32 = v32 + 4;
													v76 = 1;
												end
												if (1 == v76) then
													return (v80 * 16777216) + (v79 * 65536) + (v78 * 256) + v77;
												end
											end
										end
										v38 = nil;
										v49 = 2;
									end
								end
							end
							break;
						end
						if (v45 == 0) then
							if (v31 == 1) then
								local v50 = 0;
								while true do
									if (v50 == 2) then
										v31 = 2;
										break;
									end
									if (v50 == 0) then
										function v34(v81, v82, v83)
											if v83 then
												local v99 = 0;
												local v100;
												while true do
													if (v99 == 0) then
														v100 = (v81 / (2 ^ (v82 - 1))) % (2 ^ (((v83 - 1) - (v82 - 1)) + 1));
														return v100 - (v100 % 1);
													end
												end
											else
												local v101 = 0;
												local v102;
												while true do
													if (v101 == 0) then
														v102 = 2 ^ (v82 - (2 - 1));
														return (((v81 % (v102 + v102)) >= v102) and (1 - 0)) or 0;
													end
												end
											end
										end
										v35 = nil;
										v50 = 1;
									end
									if (v50 == 1) then
										function v35()
											local v84 = 0;
											local v85;
											while true do
												if (v84 == 1) then
													return v85;
												end
												if (0 == v84) then
													v85 = v9(v28, v32, v32);
													v32 = v32 + (2 - 1);
													v84 = 1;
												end
											end
										end
										v36 = nil;
										v50 = 2;
									end
								end
							end
							if (v31 == 4) then
								local v51 = 0;
								while true do
									if (v51 == 2) then
										v31 = 5;
										break;
									end
									if (v51 == 1) then
										v42 = nil;
										function v42()
											local v86 = 0;
											local v87;
											local v88;
											local v89;
											local v90;
											local v91;
											local v92;
											local v93;
											while true do
												if (v86 == 1) then
													v89 = nil;
													v90 = nil;
													v86 = 2;
												end
												if (v86 == 2) then
													v91 = nil;
													v92 = nil;
													v86 = 3;
												end
												if (v86 == 3) then
													v93 = nil;
													while true do
														local v125 = 0;
														while true do
															if (v125 == 1) then
																if (v87 == 2) then
																	local v136 = 0;
																	while true do
																		if (v136 == 1) then
																			for v148 = 1, v37() do
																				local v149 = 0;
																				local v150;
																				while true do
																					if (v149 == 0) then
																						v150 = v35();
																						if (v34(v150, 928 - (214 + 713), 1) == 0) then
																							local v164 = 0;
																							local v165;
																							local v166;
																							local v167;
																							local v168;
																							while true do
																								if (v164 == 1) then
																									v167 = nil;
																									v168 = nil;
																									v164 = 2;
																								end
																								if (v164 == 2) then
																									while true do
																										if (v165 == 1) then
																											local v172 = 0;
																											while true do
																												if (v172 == 1) then
																													v165 = 2;
																													break;
																												end
																												if (v172 == 0) then
																													v168 = {v36(),v36(),nil,nil};
																													if (v166 == (0 + 0)) then
																														local v645 = 0;
																														while true do
																															if (v645 == 0) then
																																v168[1 + 2] = v36();
																																v168[4] = v36();
																																break;
																															end
																														end
																													elseif (v166 == 1) then
																														v168[3] = v37();
																													elseif (v166 == 2) then
																														v168[3] = v37() - (2 ^ 16);
																													elseif (v166 == 3) then
																														local v1050 = 0;
																														local v1051;
																														while true do
																															if (v1050 == 0) then
																																v1051 = 0;
																																while true do
																																	if (v1051 == 0) then
																																		v168[3] = v37() - (2 ^ 16);
																																		v168[4] = v36();
																																		break;
																																	end
																																end
																																break;
																															end
																														end
																													end
																													v172 = 1;
																												end
																											end
																										end
																										if (v165 == 2) then
																											local v173 = 0;
																											while true do
																												if (v173 == 1) then
																													v165 = 3;
																													break;
																												end
																												if (v173 == 0) then
																													if (v34(v167, 878 - (282 + 595), 1) == 1) then
																														v168[2] = v93[v168[2]];
																													end
																													if (v34(v167, 2, 2) == 1) then
																														v168[1640 - (1523 + 114)] = v93[v168[3]];
																													end
																													v173 = 1;
																												end
																											end
																										end
																										if (v165 == 3) then
																											if (v34(v167, 3, 3) == 1) then
																												v168[4 + 0] = v93[v168[4]];
																											end
																											v88[v148] = v168;
																											break;
																										end
																										if (0 == v165) then
																											local v175 = 0;
																											while true do
																												if (v175 == 1) then
																													v165 = 1;
																													break;
																												end
																												if (v175 == 0) then
																													v166 = v34(v150, 2, 3);
																													v167 = v34(v150, 4, 6);
																													v175 = 1;
																												end
																											end
																										end
																									end
																									break;
																								end
																								if (v164 == 0) then
																									v165 = 0;
																									v166 = nil;
																									v164 = 1;
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			v87 = 3;
																			break;
																		end
																		if (v136 == 0) then
																			for v151 = 1, v92 do
																				local v152 = 0;
																				local v153;
																				local v154;
																				local v155;
																				while true do
																					if (v152 == 0) then
																						v153 = 0;
																						v154 = nil;
																						v152 = 1;
																					end
																					if (v152 == 1) then
																						v155 = nil;
																						while true do
																							if (v153 == 1) then
																								if (v154 == 1) then
																									v155 = v35() ~= 0;
																								elseif (v154 == 2) then
																									v155 = v38();
																								elseif (v154 == (571 - (367 + 201))) then
																									v155 = v39();
																								end
																								v93[v151] = v155;
																								break;
																							end
																							if (v153 == 0) then
																								local v171 = 0;
																								while true do
																									if (0 == v171) then
																										v154 = v35();
																										v155 = nil;
																										v171 = 1;
																									end
																									if (v171 == 1) then
																										v153 = 1;
																										break;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			v91[3] = v35();
																			v136 = 1;
																		end
																	end
																end
																if (v87 == 1) then
																	local v137 = 0;
																	while true do
																		if (v137 == 0) then
																			v91 = {v88,v89,nil,v90};
																			v92 = v37();
																			v137 = 1;
																		end
																		if (v137 == 1) then
																			v93 = {};
																			v87 = 2;
																			break;
																		end
																	end
																end
																break;
															end
															if (v125 == 0) then
																if (v87 == 3) then
																	local v138 = 0;
																	while true do
																		if (0 == v138) then
																			for v156 = 1, v37() do
																				v89[v156 - 1] = v42();
																			end
																			return v91;
																		end
																	end
																end
																if (v87 == 0) then
																	local v139 = 0;
																	while true do
																		if (v139 == 1) then
																			v90 = {};
																			v87 = 1;
																			break;
																		end
																		if (0 == v139) then
																			v88 = {};
																			v89 = {};
																			v139 = 1;
																		end
																	end
																end
																v125 = 1;
															end
														end
													end
													break;
												end
												if (v86 == 0) then
													v87 = 0;
													v88 = nil;
													v86 = 1;
												end
											end
										end
										v51 = 2;
									end
									if (v51 == 0) then
										v41 = nil;
										function v41(...)
											return {...}, v20("#", ...);
										end
										v51 = 1;
									end
								end
							end
							v45 = 1;
						end
					end
				end
				break;
			end
		end
	end
	v23("LOL!3D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E736572742O033O00706C7203043O0067616D65030A3O004765745365727669636503073O00067FA4A715246003053O00705613C5DE030B3O004C6F63616C506C6179657203093O0063686172616374657203093O004368617261637465722O033O0075697303103O00E825F95251EB56C822CF456AF34FDE3303073O0026BD569C20188503043O006861747303053O00634C657270030A3O006C6F6164737472696E6703073O00482O7470476574035B3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F6465783474772F52656A65637443686172616374657244656C6574696F6E732F6D61696E2F412O63652O736F72794E65746C652O732E6C756103053O00696E646578028O0003053O007061697273030B3O004765744368696C6472656E2O033O0049734103093O00897E7F2D0067F551B103083O0023C81D1C4873149A026O00F03F03043O0053697A6503063O0048616E646C65030C3O005472616E73706172656E6379030A3O0043616E436F2O6C6964652O0103063O00434672616D6503103O0048756D616E6F6964522O6F7450617274030C3O00546F576F726C6453706163652O033O006E6577026O0014C0027O0040030B3O00427265616B4A6F696E747303083O00496E7374616E636503043O0029BEC3CB03073O005479DFB1BFED4C03093O00776F726B737061636503043O004E616D65030B3O008842DBA9345706C0B743CC03083O00A1DB36A9C05A305003053O00405128245D03043O004529226003083O0048756D616E6F696403043O004469656403073O00436F2O6E656374030A3O00F92O29D5DBB8DD3524E303063O00CAAB5C4786BE03093O00486561727462656174009F3O0012143O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A000100010004273O000A0001001201000300063O00200C000400030007001201000500083O00200C000500050009001201000600083O00200C00060006000A00061A00073O000100062O003D3O00064O003D8O003D3O00044O003D3O00014O003D3O00024O003D3O00053O0012320008000C3O00202O00080008000D4O000A00073O00122O000B000E3O00122O000C000F6O000A000C6O00083O000200202O00080008001000122O0008000B3O00122O0008000B3O00200C00080008001200122E000800113O00122O0008000C3O00202O00080008000D4O000A00073O00122O000B00143O00122O000C00156O000A000C6O00083O000200122O000800136O00085O001224000800163O00061A00080001000100012O003D3O00073O001239000800173O00122O000800183O00122O0009000C3O00202O00090009001900122O000B001A6O0009000B6O00083O00024O00080001000100122O0008001C3O00122O0008001B3O00122A0008001D3O00122O000900113O00202O00090009001E4O0009000A6O00083O000A00044O0089000100200F000D000C001F2O003A000F00073O00122O001000203O00122O001100216O000F00116O000D3O000200062O000D008900013O0004273O0089000100121C000D001C4O000A000E000F3O002622000D005D000100220004273O005D000100200C0010000C002400200800100010002300102O000E0023001000302O000E0025002200302O000E0026002700122O0010000B3O00202O00100010001200202O00100010002900202O00100010002800202O00100010002A00122O001200283O00200C00120012002B0012230013001C3O00122O0014001C3O00122O0015002C6O001200156O00103O000200102O000E0028001000122O000D002D3O002622000D00710001001C0004273O007100010012010010001B3O00201500100010002200122O0010001B3O00202O0010000C002400202O00100010002E4O00100002000100122O0010002F3O00202O00100010002B4O001100073O00122O001200303O00122O001300314O001100110013000200122F001200326O0010001200024O000E00103O00202O0010000C003300102O000E0033001000122O000D00223O002622000D00480001002D0004273O004800010012010010002F3O00202D00100010002B4O001100073O00122O001200343O00122O001300356O0011001300024O0012000E6O0010001200024O000F00106O001000073O00122O001100363O00121C001200374O001300100012000200102O000F0033001000122O001000083O00202O00100010000A00122O001100163O00122O0012001B6O0013000C6O00100013000100044O008900010004273O004800010006210008003E000100020004273O003E00010012010008000B3O00200C00080008001200200C00080008003800200C00080008003900200F00080008003A00061A000A0002000100012O003D3O00074O00420008000A000100122O0008000C3O00202O00080008000D4O000A00073O00122O000B003B3O00122O000C003C6O000A000C6O00083O000200202O00080008003D00202O00080008003A000231000A00034O00120008000A00012O003F3O00013O00043O00023O00026O00F03F026O00704002264O002C00025O00122O000300016O00045O00122O000500013O00042O0003002100012O000B00076O003B000800026O000900016O000A00026O000B00036O000C00046O000D8O000E00063O00202O000F000600014O000C000F6O000B3O00024O000C00036O000D00046O000E00016O000F00016O000F0006000F00102O000F0001000F4O001000016O00100006001000102O00100001001000202O0010001000014O000D00106O000C8O000A3O000200202O000A000A00024O0009000A6O00073O000100040D0003000500012O000B000300054O003D000400024O0030000300044O002800036O003F3O00017O00023O0003093O00636F726F7574696E6503043O0077726170030A3O001201000300013O00200C00030003000200061A00043O000100042O003D8O003D3O00024O003D3O00014O000B8O0030000300044O002800036O003F3O00013O00013O00123O00028O00026O00F03F03043O007469636B03063O00434672616D6503043O004C6572702O033O006E657703083O00506F736974696F6E03043O006C65727003043O006D6174682O033O0073696E03023O007069026O00E03F03043O0067616D65030A3O0047657453657276696365030A3O00CE42A975F945B14FFF5203043O00269C37C703093O0048656172746265617403043O005761697400503O00121C3O00014O000A000100033O000E0700010007000100010004273O0007000100121C000100014O000A000200023O00121C000100023O00262200010002000100020004273O000200012O000A000300033O000E070001001A000100010004273O001A000100121C000400013O00262200040015000100010004273O00150001001201000500034O001E0005000100024O000200056O00055O00202O00030005000400122O000400023O0026220004000D000100020004273O000D000100121C000100023O0004273O001A00010004273O000D00010026220001000A000100020004273O000A0001001201000400034O001F0004000100022O00250004000400022O000B000500013O00060E00040048000100050004273O00480001001201000400034O00330004000100024O0004000400024O000500016O00050004000500202O0006000300054O000800026O000900056O00060009000200122O000700043O00202O00070007000600202O0008000600074O000900023O00202O0009000900074O00070009000200202O0007000700084O000900063O00122O000A00093O00202O000A000A000A00122O000B00093O00202O000B000B000B4O000B0005000B00202O000B000B000C4O000A000B6O00073O00024O00085O00102O00080004000700122O0008000D3O00202O00080008000E4O000A00033O00122O000B000F3O00122O000C00106O000A000C6O00083O000200202O00080008001100202O0008000800124O00080002000100044O001C00012O000B00046O000B000500023O0010030004000400050004273O004F00010004273O000A00010004273O004F00010004273O000200012O003F3O00017O000A3O0003053O00706169727303093O00776F726B7370616365030B3O004765744368696C6472656E2O033O0049734103043O008CC2C51E03063O004BDCA3B76A62030E3O0046696E6446697273744368696C6403053O000BA9A336CD03053O00B962DAEB5703073O0044657374726F79001B3O00122A3O00013O00122O000100023O00202O0001000100034O000100029O00000200044O0018000100200F0005000400042O003800075O00122O000800053O00122O000900066O000700096O00053O000200062O0005001800013O0004273O0018000100200F0005000400072O003800075O00122O000800083O00122O000900096O000700096O00053O000200062O0005001800013O0004273O0018000100200F00050004000A2O00090005000200010006213O0006000100020004273O000600012O003F3O00017O00083O0003053O00706169727303043O006861747303053O00634C65727003063O0048616E646C6503093O00776F726B737061636503043O004E616D6503063O00434672616D65028O0001103O001201000100013O001201000200024O00020001000200030004273O000D0001001201000600033O00201D00070005000400122O000800053O00202O0009000500064O00080008000900202O00080008000700122O000900086O0006000900024O00060001000100062100010004000100020004273O000400012O003F3O00017O00", v17(), ...);
end
