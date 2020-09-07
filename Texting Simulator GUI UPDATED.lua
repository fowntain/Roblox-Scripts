--[[
IronBrew:tm: obfuscation; Version 2.7.0

........................................................................................................................................................................................................
........................................................................................................................................................................................................
.....,,...,.............................................................................................................................................................................................
.... MMMMM,.............................................................................................................................................................................................
....MMMMMMM,............................................................................................................................................................................................
....MMMMMMM,............................................................................................................................................................................................
....,MMMMMO.............................................................................................................................................................................................
......,.................................................................................................................................................................................................
..................................................,,,,,,............................................Z$$.................................................................................................
...................................................:::::............................................MMMO................................................................................................
.....:???? ,.......:????....,.8MMMMM,.......,,,MMMMI???INMMM.,................,.?ZMMMMDI:,,.........MMM$................................................................................................
.....MMMMM?,.......MMMMM,,.OMMMMMMMM......, 7MM+?+++++++++?+DM$ .............MMMMMMMMMMMMMM ,,......MMM$................................................................................................
.....MMMMM?,.......MMMMM..NMMMMMMMMM.,...,$M7++++++++++++++++++M$ .........MMMMMMMMMMMMMMMMMN .,....MMM$................................................................................................
.....MMMMM?,.......MMMMMMMMMMM8..,,,.,..,MM?++++++++++++++++++++MM,,......MMMMMMMM~,.+MMMMMMMM......MMM$................................................................................................
.....MMMMM?,.......MMMMMMMMZ ,,.......MMMMMMMMMMMMMDZZZZMMMMMMMMMMMMM ...MMMMMM,,,....., MMMMMM.....MMM$................................,.,,............................................................
.....MMMMM?,.......MMMMMMM:............MMMMMMMMMMMMMMMMMMMMMMMMMMMMM....MMMMMD,...........MMMMMM.,..MMM$...:MMMMMMMM:,........8MMM:.,DMMMMM,......?MMMMMMMMI.........MMMM......... MMM,.........MMMI....
.....MMMMM?,.......MMMMMM+............,M?+MMMMMMMMMM++?DMMMMMMMMM?+M,...MMMMM,.............MMMMM,,..MMM$,NMMMMMMMMMMMM8,.,....MMMM,NMMMMMMM,..,,MMMMMMMMMMMMMM.,.....MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMMM,............,M?++MMMMMMMM7++++MMMMMMMM$??MM,,+MMMMM,.............MMMMM=...MMM$,MMMZ...,?MMMMMM,.....MMMMMMMMM,......DMMMMM:,....MMMMMN,....MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMMM.............MM+??+MMMMMMM?++++MMMMMMMD??+$M,.MMMMM?.............,MMMMM?...MMM$,M,.,...,,,,MMMMM,....MMMMMM,,,,....,MMMMM,..,....,.MDNN$....MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMM?,............MM??++???????++++++?????+++++7M..$MMMM,.............,?MMMM.,..MMM$.............OMMMM....MMMMM.........$MMMM,....... MMMMMM.,...MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMM=,............NM?+++++++++++++++++++++++++?$M..MMMMM+,............,+MMMM+,..NMN$..............MMMM+,..MMMMM.........MMMM......,?MMMMM?.,.....MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMM,,............,M+?+++++++?++++++++?+?++++++M7,,DMMMM:...............MMMM:,..MMMN.,............$MMM7...MMMM=.........MMMM....,DMMMMM..........MMMM.........7MMM7.........MMM$....
.....MMMMM?,.......MMMMM,,............:M$?++++?MM+++++++++DM?+++++?M,,,DMMMM+,..............MMMM+,..MMMM.,............?NMM?,..ZMMM,,........MMMM.,.MMMMMM,,..........MMMM,........7MMM7.........MMM$....
.....MMMMM?,.......MMMMM,,.............,M=++++++DMD++?++DMM+++++++M:...$MMMM.,..............MMMM ,..MMMM..............OMMM,,..OMMM,,........MMMM.,MMMM?,,......MNZ,,,MMMM.........IMMM?,........MMM?....
.....MMMMM?,.......MMMMM,,...............M+?+++++?+ZMMMN+++?+++++M7,...$MMMM................MMMM.,..=MMMN,..........,,MNMM.,..OMMM,.........?MMMI.,M..........,MMM,.,NMMM,........IMMMI.........MMM?....
.....MMMMM?,.......MMMMM,,................M7+?+++++++++++++++++IM,,....$MMMM,...............MMMM,....MMMMN.,......,,.MMMM,....OMMM,,........,MMMMN..........,+MMM,...,MMMN,.....,,MMMMM,,,.....MMMM.....
.....MMMMM?,.......MMMMM,,................,MM++++?++++++++????MM.......$MMMM,...............MMMM,.....MNMMM$,......MMMMM .....OMMM,,..........MMMMM~......,,MMMM ,....MMMMM,,,..~MMMMMMM~,,,.,MMMMM.....
.....MMMMM?,.......MMMMM,,.................,,MMD+++++++++++$MM,.,......$MMMM,...............MMMM,.....,+NMMMMMMMMMMMMMM..,....OMMM,,.......... +NMMMMMMMMMMMMMM,.......MMMMMMMMMMMMN,NMMMMMMMMMMMN,.....
.....MMMMM?........MMMMM,,.....................::MMMMMMMMM$.,.........,ZMMMM,,..............MMMM,,......, MMMMMMMMMM:.,,......+MMM................MMMMMMMMMM7,,,......,.,MMMMMMMMN.:...MMMMMMMMM,,......
..........,.......,,.....,.........................,,,,.,...................................................,.,,.,,,...........,,,..................,,..,,,,..............,,..,,,.......,,.,,,,.........
........................................................................................................................................................................................................
]]

local t=string.byte;local r=string.char;local c=string.sub;local S=table.concat;local i=math.ldexp;local Q=getfenv or function()return _ENV end;local l=setmetatable;local J=select;local f=unpack;local Z=tonumber;local function N(f)local e,o,d="","",{}local n=256;local a={}for l=0,n-1 do a[l]=r(l)end;local l=1;local function t()local e=Z(c(f,l,l),36)l=l+1;local o=Z(c(f,l,l+e-1),36)l=l+e;return o end;e=r(t())d[1]=e;while l<#f do local l=t()if a[l]then o=a[l]else o=e..c(e,1,1)end;a[n]=e..c(o,1,1)d[#d+1],e,n=o,o,n+1 end;return table.concat(d)end;local Z=N('25V24Z27525R25721V22426E25727525N24J27927E27525M25723N24Z25N27C24Z25F24327G24327526627O27N27I27T27M27Z25Q24Z27T25N27524Z25Q25728427O25M24Z26B27M28625E24Z24J28F27525E23N25F24Z25J27L24Z25M24R27T25Z24R27525I28D28K24Z26628I29126623N21F27M28R25I28U27M28X24Z25E24J1Z27M28J24Z26326B27G28E29F24R28J25N29E25E2571327M27O26325V27G27424Z25Z24Z27927028G24328J26M27Z29V29X25C29Z26327925I26327525Z27822427027O25E2AA24Z2AC28L29W24Z2AG27526325F2AJ28O2A427F2AP29K2AS2AB2AD2AX2AZ29L25N2AJ2852A424R2A729U2AT2AV29F2BC29Z21F2AJ2982A427R2AP2AD2BM2BB2AF29Z21N2AJ21N2AM24B2A724B28L2BY2AW2C02B01Z2AJ29I2A423N2A728R2B928S2AD2902BH24Z2622942CP26223N23N24Y25N2CK29C29T27U24R29X2D12A41J27G1J27525V23V2A723V27U2CA2922D32AY29E25Z1R2AJ1R2DA26R2A726R2DF2BA2D22AF2DK132AJ29X24Z25V26Z2A726Z2DT2AU27Z2662DI25C2DK1B2AJ1B2DA29N2AP29P2662DG2E92DW2AM2372AJ2372DA26J2A726J2E62BN2EM2DJ2AM23F2AJ23F2DA2A12AP2A32EK2DU2DH2EN2A422R2AJ22R2DA2AI2AP2AL2922EL2EA2DK22Z2AJ22Z2DA2B22AP2B42F82CM27U2CO28625Y2CS2FZ23N2372CX28R2E928429E26224322R2CX27Z2A127G21V27526N2BF2AP2BH2GA2F92GA21V24Y25C2GE24Z21U22428Z24Y24Z26N2BR2AP2BT2GN2E727528827526B27O27Z24Z24Y25528626726425U25Z25C25J25D26226525W24Y25328625W25U26625Y24Y25028626Z25J25J25F26S25Y25J24Y2422862632I125F25C23T24C24C25F25U2HK25Y25T2HN24D25S26426624C25D25U25G24C23O26H23P26F25L26T26525H24Y25B28626O25D25Y25U25J25Y26C2HN25Z26425G2HQ2862JB25N2I627O24Z26Q25I25J26425X25U25D2662HX2J62J825Z26225J25C24Y2JN26Q25Z25Z27325U25T25Y26724Y24V28625F25Y25D25C26426523T24325C25S2HM25F25J2HN25W25525G25U26726725M2KN26E26Y25524Y2562862K625Z26P2JQ2JR26524Y25928626B2632KL25Y2432JP2JR2JT2JV24Y25828626F2KA2672I52LM2JQ2JS2JU2JW24I28626S2HU2LL26P26425M2LY2LO2M12LR2862K92KS26427Q2LN2M02LQ29K24Z26V2622HU2KL25Z2MB2ML2JW25A2J62642HN2MU2LP2M228626Y26525X2HN2K12LL26O25I25D2J826525S25M2L62LT2KC25Y25F26425D2K22J42862MP2MR2652MT26Q2J825U2K428626D26Y26B2432K92NU2HD2M42IS25C2GS2O525Z24Y25128626T2NN25Y2HK2NI27526T2KY26724326O2K12NH2OF2OM2JQ2NC2HW2522L82NO26225S2JX2OM25U26525J2II2NH2OZ2752722622KP2K32L72752L926F26425W25W2LW2O727526825I2KH25D24326X25I26625F2OE2L82K72M825N2OL24Z26C2KY2602682KH25Y2A52M32752MN27727925G27W2B627H28S27K29Y27525J2AO27X24Z25O2DQ22425N2DS21F2OP27923Z2E824328E23U2R427425N2R428O2RA2DF2982RD2A42E32QX2E52DH29S29E2672EH25N2EJ25729S27O25O1R22422426S2RW25O2H728D27O2HE27524X28628621V23W2JI27U2JA2632SC29L25I25W2HW2HR2752HT2HV24Y2QE24Z2692NL2672P22JA2QC2682JR2IS2SJ2Q027526U25H25Y2P72PG2862682T625Z26F25Y2JL2K32S524Z26T2622J82TA25D2T525D24Y2PB28D2LJ2652SK2862KX2K12S82942762AO2QJ27D2QL29K27J27L2QT2QR27G2RU2QW2QY24Z2R02BV2R32DF2R62R82802DF2RC2R42RF27Z25Z2RI25N2RK2E92RM2752RO29O27U2RS2QP2QU2RW2RY2S02S22H92752TH2S72TZ2SA2SG2662SE2SG2632SI2TV2SM2M62SP2862SS25F2SU25S2SW25Z2SY2NN25U2T12OU24Z2T42T62NP2PH24Z2TA2NU2TD2TF2PP2TI2TK25Y2TM2TO2T224Z2LU25T2LW2I62SL24Z2TX25J2TZ2QG2U22QK27G2U62QO2U92QS2UC27G2QZ2R12242UI2FK2UK2DF2R92RB2UM2FK2UQ2AM2UT2UV29R29D2UY2RP2RR2RT2752RV2RX2RZ2242S127O2V924Z2VB2TZ2A62SB2WN2VG25J2SF2WN2VJ2T12WN2SN2HW2SQ2VQ2VS2VU2VW2T02HW2W02W22T72Q52W72TC2TE2NP2TH2TJ2TL2KI2WG2WN2M52SO2WN2WP2TZ2SQ2QH2242U329J2WV27I2WX27O2UA2QX2RU2XF2UF2X32X52EK28E26N2UL2RG2EK2UO2RE2XB2US27G2XG2UX24Z2UZ2QX29P2632WZ27U24J29S29K25O1J2XP31042XS2H82S42862VC2S82VE2Y02VH2Y42VK2SG2Y82VO2752YB2SV2JB2VV2SZ2VY2YG2862YI2W42T92TB2W92YO2OG2WD2WF2KI2NZ27526O2IP25F2JQ31132YX25U2TY2S82I82U12R22WU2GW29K25Q24J27T26Y29K25P2FQ2E12FQ21F25O2FD2242602FF21F25R2BJ2X429E2RA27926827Z27J28E2QT27J2R928B2572RC28B29K2QM2822DS2CP25O2GK25N28521F2GA29825S27Z26126329I26V2AL311U2F526027421F2632UH27Z26224B2D925F2C82CQ24B2D4313D31392ER25N313H24B2FF313K2AM2FS25N2B425Y2CI29927525U27T2GD27525Y311M29J27526225F2R92B42ZX2UB2AM2C22QX2C42CQ310031432872832JO28625O2632RX260314N25O25O223225311X314T31072S32752SQ2SG2WP24X23I23J315531562SB2TR2IH2TK2K32Y72VN2W525G2NN26025C2IH25S2HW2W52I42662QA2IT2652K32542M42I526O26326226725Z2NE2SG2712VN2TR315Q25G2LE2HY2H826725U25M2KI315T2MF2642VT2RO316C316E2TP2W5315X2JU25U25S2JB2TP2MN26Z2PX2P62MZ25Z26926426425J26B2JU2I62W026O26T2IS2SO24W2862TU2JH2JN26B26425C2K12622KL24X215216317Q317Q23E23W2TZ311F24Z2Z123Z311I25I311K3142311O275311Q2DA311T311V279311Y2UF31212R231242BV31272Z6312A312E312D2Z6312G27I312I311K24Z312L314L312O312Q312S24Z312U275312W312Y313025O3132313431362R23138313A27P313L313G314424B313J313L313N313D25Z313Q313S313U2CY313W313Y2RG314128429K314531472B02ZY2A4314C25N314E262314G312J314J26Q314L314N311X314Q314S314U260314W2V827O3150311B2K13153315631572TQ2KG311C2KJ310I315E2TW315H315J316R2HW2TH31162HN3167315S24Y315U2752I425J315X315Z31612T6316331652T92IH31682P428D316L316F31B3316H316J26B31BJ316N2J6263316Q316S3113316V316X265316Z3171317331752NO2WH3179317B2HW317D275317F311428D317J317L317N317P317R216317T2YZ2862Z123N27W319X2Z92QT25F319X2672U52DF2U82UR2BV2ZK2D029E2ZG2XB2EK2X931442432ZM24Z25U2862CP26M31CO27526I318P27526E31242G923N29S28R2S22QT316A24Z2S721F22B23O25M23426Q26O31AR2SO2TH31B62WF2P22Y92VP2ST310N2SX310Q2VZ310T2T52YJ2LG2752TD2JV2HN2KY2SS2KX25D2OD2YP31112YS2KI2TZ2MX311G2242ZX2H6314J2CP2822U8286312K291282312A31DC2CI2QX28R27J318N28P2UD2DS27P2ZC2ZT2XK27Y28428131DN313V28731DF2XV28631E22HW31DS31BO316D31BK31B424Z273316I2KY31G0316M2Q5316P2IS31BU316U2HZ31BX31BZ31723174317631C4317A2VN31C824Z317F24X23524G25L22623E22G25E23724X22K23R26525E26H26522M23W24X26I23522X24R24O25X21J2ER2S831EX317X2AO31F0314I28431F624Z31F531F1318S31F131FA27D31FC319N2QN31FG25J31FI27525F31FL2ZU2RQ31FO2XB25Q31FR31HY31DQ310927531FX31BH31G831G231BM31G731BP31GA31BS31GC316T24Y31BW2VG31BY262317031GI31C231772J631GM317C317E25Y25G24X21M26Q25V22E22R22125V31GZ31J731J922R22926126R24X25G1D21824P24C22626X31HH28624L31CL2AO26127O28231HO31F131HR314I31HT314I31HV29927G31FE312F2V331I12X131I331I531FN29L2ET2QX2EV2A42F525N2A325V31KN2A326N31KR27526J31KJ25N31KL26F31KU28D31L127331L126Z31KX31KL25M313627M2FJ31IA31DO2H631FU2J531IF315D2SO31FZ31BP316G27531G531BN31IM316O31IO316R31IQ31IS316Y31IV31C031GJ31C3317831J131C731J331J522925Y23Z24Z21726926Q31JK24V1224L21821D24R31JJ24X25I23Z25X1J21T24825I31JK2XX2SA310B2XX2S831JV31EY31JY31F131K1314I31K331F731F32FY31HW31K9318M31KC31I231FK2ZQ2XJ2V031KI27G31KL25Z31L131KQ2A22GI31L131KW31NK31EJ31L126B31L331L531L727I31LA25N31LC31IB31DP31LG31FW31LJ31FY2LH31LM31BL31LO31G6316K31G131BQ311531LT31GD31IR31GF31IT31GH31C131GK31M231C624Y31GO31GQ24M21Q161C23K25R25W31JK27324Q23V1J24626E26731JK23Z1I22S21821J23221D31MU2VD31H831MY2XX31N031HK27931N231HN31F831HQ31PT31K531F92912CY31NB31HZ31ND31KE31NF2RJ31NH2ZV2B031NZ31KM31NP2E131L131KT31QB31NS31KK31NU31QB31NW31QB31L431QB31L631NT28S31O131O331LE31FT27D27O31LH2HC31O831IH31OB31G331LP31IL31OG31IN31BT31LV31OM31LX31IW31OP31M131J031OS31OU31J424X1022N26Y25V1025W25Q31P331P531P731P931JK1K101W23626A1P21O31PJ310C31PL31PM31MZ31JW31PQ31JZ31F231HP31N6318R31PT31K731PZ31FD31NC2U931NE31I431NG31FM31NI26331Q931NM31QB31NO2QX31KS31NR31Q931L031QJ31NX31QN31Q931L928431QS31FS31ID27531QX31IG31LL31OG31LN31G431OE31II31OH24Z31GB31LU31BV31R931IU31RB31M031IZ311531M331OT31M524X26722L22J25O22Y24821G31RQ31P631P831PA24X25D23K23321F21O26021031S22S931S431S527531PO2Z131PR31K031PT31SC31PW31N931K831SH31Q131SJ31Q331SL31Q531SN31Q731NJ31QH31QA31SU2F431QB31QE31V424Z31QG31KY31QI31V831QK31V831QM31V831QO31V231T331LB2H631O431LF31QV31T831O72HS2VN31TB316M31TD31R331OF31G931LS31R731TL275316W31ON31LY31IX31OQ31RE31GN31TU25424724B25P25B27031S124X31P431U431RT24X1522324N24Z23421D21931UF27531MW31UI31JU31S722431UM31SA31K231PV31SE31PY31HX31KA31I031SK31KG31SO31SQ31NN31QD31SW31QP31SY31VD31T031VH31T231QR31VM31QT31T724Z31T931QZ31VU31IJ31OD31LQ31R531W031IP31W224Z31W431RA31LZ31IY31GL31RF31TU26021U24A24Z21H21821231U331RS31U626G25R25521F25U2141G31WV2XY31MX31S52LS31QV27926A312E28A31I331222D528T2G82Z6312L312E318J2Z6318L24Z25P31DL2UF25O2B626028J21F31KD2GW31FJ25H2V223L27C311U2A6311X27531ZL2RI25I2RK25M23V27T2722DE31QU314Y24Z2W531IG31E42I531E6315L31R031TC31OC31TE31XY31VZ31BR31W12TP2JN31Y431TN2Q52PW2PY317I25G2KI31YU24Z26I31YS26Y26R2GY2862SQ25L2B425V28O311U2FH314P2UF2Z9317Z28Y314226D29K26731Z329E29B31Z624Z3181312L29K3181312A321S24J2R929K25F31NE29329I2CP29G319S27525D2V227X31ZT318A31ZW25F2EH25I29P25I23V27L320431VO32072TH320A315V25J320D31O9316B320G31R231TF31LR320L31Y1320N31TM316Z2Q52Q72672Q92QB2OD2JN2LD2PX2KB2TP2WN310Y320X23N31UF');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,e,c,a=t(Z,l,l+3);o=n(o,179)e=n(e,179)c=n(c,179)a=n(a,179)l=l+4;return(a*16777216)+(c*65536)+(e*256)+o;end;local function d()local e=n(t(Z,l,l),179);l=l+1;return e;end;local function N()local n=o();local l=o();local c=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then if(n==0)then return l*0;else o=1;c=0;end;elseif(o==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return i(l,o-1023)*(c+(n/(2^52)));end;local a=o;local function i(e)local o;if(not e)then e=a();if(e==0)then return'';end;end;o=c(Z,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=r(n(t(c(o,l,l)),179))end return S(e);end;local l=o;local function Z(...)return{...},J('#',...)end local function K()local t={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local l={};local a={t,nil,f,nil,l};for a=1,o()do local c=n(o(),125);local o=n(o(),120);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;t[a]=l;end;local l=o()local n={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,l do local e=d();local l;if(e==0)then l=(d()~=0);elseif(e==2)then l=N();elseif(e==1)then l=i();end;n[o]=l;end;a[2]=n a[4]=d();for l=1,o()do f[l-1]=K();end;return a;end;local function F(l,e,t)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local n=n;local c=e;local K=o;local a=l;local S=Z local e=1;local d=-1;local N={};local r={...};local Z=J('#',...)-1;local l={};local o={};for l=0,Z do if(l>=a)then N[l-a]=r[l+1];else o[l]=r[l+1];end;end;local l=Z-a+1 local l;local a;while true do l=n[e];a=l[1];if a<=36 then if a<=17 then if a<=8 then if a<=3 then if a<=1 then if a>0 then local N;local J;local Z;local t;local r;local a;a=l[2];r={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;r[t]=o[l];end;o[a](f(r,1,Z-a));d=a;e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];a=l[2];r={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;r[t]=o[l];end;N={o[a](f(r,1,Z-a))};Z=a+l[5]-2;t=0;for l=a,Z do t=t+1;o[l]=N[t];end;d=Z;e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];else o[l[2]]();d=A;end;elseif a==2 then local a;local N,a;local r;local Z;local J;local i;local a;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N,r=S(o[a](f(J,1,r-a)));r=r+a-1;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];a=l[2];J={};Z=0;r=d;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];e=e+l[3];else o[l[2]]=F(K[l[3]],nil,t);end;elseif a<=5 then if a==4 then e=e+l[3];else local n=l[2];local c={};local e=0;local a=d;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](f(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=6 then local n=l[2];o[n]=o[n]-o[n+2];e=e+l[3];elseif a==7 then local a;o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];o[a]=o[a]-o[a+2];e=e+l[3];else local N;local r;local Z;local J;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;o[a](f(J,1,r-a));d=a;end;elseif a<=12 then if a<=10 then if a>9 then o[l[2]]=o[l[3]][c[l[5]]];else local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;end;elseif a==11 then local e=l[2];local n=o[l[3]];o[e+1]=n;o[e]=n[c[l[5]]];else o[l[2]][c[l[3]]]=c[l[5]];end;elseif a<=14 then if a==13 then o[l[2]]=c[l[3]];else local e=l[2];local c,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=c[l];end;d=n;end;elseif a<=15 then local a;o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];o[a]=o[a]-o[a+2];e=e+l[3];elseif a==16 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else local n=l[2];local a=o[n+2];local c=o[n]+a;o[n]=c;if a>0 then if c<=o[n+1]then e=e+l[3];o[n+3]=c;end;elseif c>=o[n+1]then e=e+l[3];o[n+3]=c;end;end;elseif a<=26 then if a<=21 then if a<=19 then if a==18 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else e=e+l[3];end;elseif a>20 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else local n=l[2];local c={};local e=0;local a=d;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](f(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=23 then if a==22 then local r;local Z;local J;local N;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;o[a](f(J,1,r-a));d=a;e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]();d=a;else local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=S(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=24 then if o[l[2]]then e=e+1;else e=e+l[3];end;elseif a>25 then o[l[2]]=t[c[l[3]]];else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=31 then if a<=28 then if a>27 then local J;local N;local Z;local t;local r;local a;a=l[2];r={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;r[t]=o[l];end;N={o[a](f(r,1,Z-a))};Z=a+l[5]-2;t=0;for l=a,Z do t=t+1;o[l]=N[t];end;d=Z;e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];a=l[2];r={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;r[t]=o[l];end;N={o[a](f(r,1,Z-a))};Z=a+l[5]-2;t=0;for l=a,Z do t=t+1;o[l]=N[t];end;d=Z;e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];r={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;r[t]=o[l];end;o[a](f(r,1,Z-a));d=a;e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];else o[l[2]]=o[l[3]][c[l[5]]];end;elseif a<=29 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=S(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;elseif a==30 then local a;o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];o[a]=o[a]-o[a+2];e=e+l[3];else local e=l[2];local c,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=c[l];end;d=n;end;elseif a<=33 then if a==32 then o[l[2]]=c[l[3]];else o[l[2]]();d=A;end;elseif a<=34 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;elseif a==35 then o[l[2]][c[l[3]]]=o[l[5]];else local J;local Z;local r;local N;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];r={};Z=0;J=a+l[3]-1;for l=a+1,J do Z=Z+1;r[Z]=o[l];end;o[a](f(r,1,J-a));d=a;e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];r={};Z=0;J=a+l[3]-1;for l=a+1,J do Z=Z+1;r[Z]=o[l];end;o[a](f(r,1,J-a));d=a;end;elseif a<=55 then if a<=45 then if a<=40 then if a<=38 then if a>37 then local r;local Z;local J;local N;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;o[a](f(J,1,r-a));d=a;e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]();d=a;else local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](f(c,1,l-e));d=e;end;elseif a==39 then local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](f(c,1,l-e));d=e;else do return end;end;elseif a<=42 then if a==41 then local i;local r;local Z;local J;local N;local a;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;i={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=i[Z];end;d=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;else local n=l[2];o[n]=o[n]-o[n+2];e=e+l[3];end;elseif a<=43 then local a;local N,a;local r;local Z;local J;local i;local a;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N,r=S(o[a](f(J,1,r-a)));r=r+a-1;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];a=l[2];J={};Z=0;r=d;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];e=e+l[3];elseif a==44 then o[l[2]]=(l[3]~=0);else local a;local J,a;local r;local Z;local i;local N;local a;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];a=l[2];i={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;i[Z]=o[l];end;J,r=S(o[a](f(i,1,r-a)));r=r+a-1;Z=0;for l=a,r do Z=Z+1;o[l]=J[Z];end;d=r;e=e+1;l=n[e];a=l[2];i={};Z=0;r=d;for l=a+1,r do Z=Z+1;i[Z]=o[l];end;J={o[a](f(i,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=J[Z];end;d=r;e=e+1;l=n[e];a=l[2];J,r={o[a]()};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=J[Z];end;d=r;e=e+1;l=n[e];a=l[2];N=o[l[3]];o[a+1]=N;o[a]=N[c[l[5]]];e=e+1;l=n[e];o[l[2]]={};end;elseif a<=50 then if a<=47 then if a>46 then o[l[2]]=o[l[3]];else local N;local r;local Z;local J;local i;local a;a=l[2];i=o[l[3]];o[a+1]=i;o[a]=i[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=48 then local N;local r;local Z;local t;local J;local a;a=l[2];J={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;J[t]=o[l];end;o[a](f(J,1,Z-a));d=a;e=e+1;l=n[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[c[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][c[l[3]]]=c[l[5]];e=e+1;l=n[e];a=l[2];J={};t=0;Z=a+l[3]-1;for l=a+1,Z do t=t+1;J[t]=o[l];end;N={o[a](f(J,1,Z-a))};Z=a+l[5]-2;t=0;for l=a,Z do t=t+1;o[l]=N[t];end;d=Z;e=e+1;l=n[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];elseif a>49 then do return end;else local n=l[2];local c={};local e=0;local a=n+l[3]-1;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](f(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=52 then if a>51 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else if(o[l[2]]==c[l[5]])then e=e+1;else e=e+l[3];end;end;elseif a<=53 then o[l[2]][c[l[3]]]=o[l[5]];elseif a>54 then o[l[2]]=F(K[l[3]],nil,t);else local n=l[2];local c={};local e=0;local a=n+l[3]-1;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](f(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=64 then if a<=59 then if a<=57 then if a==56 then local N;local r;local Z;local J;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;N={o[a](f(J,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=N[Z];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];J={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;J[Z]=o[l];end;o[a](f(J,1,r-a));d=a;else local n=l[2];local a=l[5];local l=n+2;local c={o[n](o[n+1],o[l])};for e=1,a do o[l+e]=c[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;end;elseif a>58 then o[l[2]]=o[l[3]];else o[l[2]]=(l[3]~=0);end;elseif a<=61 then if a>60 then o[l[2]]={};else if(o[l[2]]==c[l[5]])then e=e+1;else e=e+l[3];end;end;elseif a<=62 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;elseif a>63 then o[l[2]]={};else local n=l[2];local a=o[n+2];local c=o[n]+a;o[n]=c;if a>0 then if c<=o[n+1]then e=e+l[3];o[n+3]=c;end;elseif c>=o[n+1]then e=e+l[3];o[n+3]=c;end;end;elseif a<=69 then if a<=66 then if a==65 then local J;local Z;local N;local r;local a;o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];N={};Z=0;J=a+l[3]-1;for l=a+1,J do Z=Z+1;N[Z]=o[l];end;o[a](f(N,1,J-a));d=a;e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]();d=a;else local n=l[2];local a=l[5];local l=n+2;local c={o[n](o[n+1],o[l])};for e=1,a do o[l+e]=c[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;end;elseif a<=67 then local a;o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];o[a]=o[a]-o[a+2];e=e+l[3];elseif a==68 then o[l[2]]=t[c[l[3]]];else o[l[2]][c[l[3]]]=c[l[5]];end;elseif a<=71 then if a==70 then local n=l[2];local e=o[l[3]];o[n+1]=e;o[n]=e[c[l[5]]];else if not o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=72 then local i;local r;local Z;local N;local J;local a;o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];a=l[2];N={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;N[Z]=o[l];end;i={o[a](f(N,1,r-a))};r=a+l[5]-2;Z=0;for l=a,r do Z=Z+1;o[l]=i[Z];end;d=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];a=l[2];J=o[l[3]];o[a+1]=J;o[a]=J[c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];a=l[2];N={};Z=0;r=a+l[3]-1;for l=a+1,r do Z=Z+1;N[Z]=o[l];end;o[a](f(N,1,r-a));d=a;e=e+1;l=n[e];do return end;elseif a==73 then local N;local r;local a;local J;local Z;o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=t[c[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][c[l[5]]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];o[l[2]]=c[l[3]];e=e+1;l=n[e];Z=l[2];J={};a=0;r=Z+l[3]-1;for l=Z+1,r do a=a+1;J[a]=o[l];end;N={o[Z](f(J,1,r-Z))};r=Z+l[5]-2;a=0;for l=Z,r do a=a+1;o[l]=N[a];end;d=r;e=e+1;l=n[e];o[l[2]][c[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else if not o[l[2]]then e=e+1;else e=e+l[3];end;end;e=e+1;end;end;end;return F(K(),{},Q())();