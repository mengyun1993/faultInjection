# edf2bench v0.8
#   (!) 1997-2003 Giovanni Squillero <giovanni.squillero@polito.it>
#
# Edf source: "b03/b03.edf"
# 4 inputs
# 4 outputs
# 30 D-type flipflops
# 16 inverters
# 144 gates (2 and, 102 nand, 2 or, 16 not)


input REQUEST1,REQUEST2,REQUEST3,REQUEST4;

output GRANT_O_REG_0_,GRANT_O_REG_1_,GRANT_O_REG_2_,GRANT_O_REG_3_;

STATO_REG_0_ = DFF(U203)
CODA0_REG_2_ = DFF(U217)
CODA0_REG_1_ = DFF(U216)
CODA0_REG_0_ = DFF(U215)
CODA1_REG_2_ = DFF(U214)
CODA1_REG_1_ = DFF(U213)
CODA1_REG_0_ = DFF(U212)
CODA2_REG_2_ = DFF(U211)
CODA2_REG_1_ = DFF(U210)
CODA2_REG_0_ = DFF(U209)
CODA3_REG_2_ = DFF(U208)
CODA3_REG_1_ = DFF(U207)
CODA3_REG_0_ = DFF(U206)
GRANT_REG_3_ = DFF(U229)
GRANT_REG_2_ = DFF(U230)
GRANT_REG_1_ = DFF(U231)
GRANT_REG_0_ = DFF(U232)
GRANT_O_REG_3_ = DFF(U233)
GRANT_O_REG_2_ = DFF(U234)
GRANT_O_REG_1_ = DFF(U235)
GRANT_O_REG_0_ = DFF(U236)
RU3_REG = DFF(U237)
FU1_REG = DFF(U205)
FU3_REG = DFF(U238)
RU1_REG = DFF(U204)
RU4_REG = DFF(U239)
FU2_REG = DFF(U240)
FU4_REG = DFF(U241)
RU2_REG = DFF(U242)
STATO_REG_1_ = DFF(STATO_REG_0_)
U201 = AND(U223, U218)
U202 = AND(STATO_REG_1_, U223)
U203 = NOT(STATO_REG_0_)
U204 = NAND(U222, U292)
U205 = NAND(U222, U291)
U206 = NAND(U290, U289)
U207 = NAND(U288, U287)
U208 = NAND(U286, U285)
U209 = NAND(U283, U282, U284)
U210 = NAND(U280, U279, U281)
U211 = NAND(U277, U276, U278)
U212 = NAND(U274, U273, U275)
U213 = NAND(U271, U270, U272)
U214 = NAND(U268, U267, U269)
U215 = NAND(U265, U264, U266)
U216 = NAND(U262, U261, U263)
U217 = NAND(U259, U258, U260)
U218 = NOT(STATO_REG_1_)
U219 = NOT(RU3_REG)
U220 = NAND(RU3_REG, U243)
U221 = NOT(RU1_REG)
U222 = NAND(RU1_REG, STATO_REG_0_)
U223 = NAND(U254, U244, U253)
U224 = NOT(CODA0_REG_2_)
U225 = NOT(CODA0_REG_1_)
U226 = NOT(CODA0_REG_0_)
U227 = NOT(FU1_REG)
U228 = NOT(FU2_REG)
U229 = NAND(U296, U295)
U230 = NAND(U298, U297)
U231 = NAND(U300, U299)
U232 = NAND(U302, U301)
U233 = NAND(U304, U303)
U234 = NAND(U306, U305)
U235 = NAND(U308, U307)
U236 = NAND(U310, U309)
U237 = NAND(U312, U311)
U238 = NAND(U314, U313)
U239 = NAND(U316, U315)
U240 = NAND(U318, U317)
U241 = NAND(U320, U319)
U242 = NAND(U322, U321)
U243 = NOT(RU2_REG)
U244 = NAND(STATO_REG_1_, U248)
U245 = NOT(FU3_REG)
U246 = NOT(FU4_REG)
U247 = NOT(U222)
U248 = OR(FU3_REG, FU2_REG, FU1_REG, FU4_REG)
U249 = NOT(U244)
U250 = NOT(U220)
U251 = NAND(U250, U245)
U252 = NAND(U294, U293, U251)
U253 = NAND(U221, STATO_REG_0_, U252)
U254 = NAND(U247, U227)
U255 = NOT(U223)
U256 = OR(RU2_REG, RU3_REG)
U257 = NAND(U221, U256)
U258 = NAND(U201, U257)
U259 = NAND(CODA1_REG_2_, U202)
U260 = NAND(CODA0_REG_2_, U255)
U261 = NAND(U220, U221, U201)
U262 = NAND(CODA1_REG_1_, U202)
U263 = NAND(CODA0_REG_1_, U255)
U264 = NAND(U221, U243, U201)
U265 = NAND(CODA1_REG_0_, U202)
U266 = NAND(CODA0_REG_0_, U255)
U267 = NAND(CODA2_REG_2_, U202)
U268 = NAND(CODA0_REG_2_, U201)
U269 = NAND(U255, CODA1_REG_2_)
U270 = NAND(CODA2_REG_1_, U202)
U271 = NAND(CODA0_REG_1_, U201)
U272 = NAND(CODA1_REG_1_, U255)
U273 = NAND(CODA2_REG_0_, U202)
U274 = NAND(CODA0_REG_0_, U201)
U275 = NAND(CODA1_REG_0_, U255)
U276 = NAND(CODA3_REG_2_, U202)
U277 = NAND(CODA1_REG_2_, U201)
U278 = NAND(CODA2_REG_2_, U255)
U279 = NAND(CODA3_REG_1_, U202)
U280 = NAND(CODA1_REG_1_, U201)
U281 = NAND(CODA2_REG_1_, U255)
U282 = NAND(CODA3_REG_0_, U202)
U283 = NAND(CODA1_REG_0_, U201)
U284 = NAND(CODA2_REG_0_, U255)
U285 = NAND(CODA2_REG_2_, U201)
U286 = NAND(CODA3_REG_2_, U255)
U287 = NAND(CODA2_REG_1_, U201)
U288 = NAND(CODA3_REG_1_, U255)
U289 = NAND(CODA2_REG_0_, U201)
U290 = NAND(CODA3_REG_0_, U255)
U291 = NAND(FU1_REG, U203)
U292 = NAND(REQUEST1, U203)
U293 = NAND(RU2_REG, U228)
U294 = NAND(U219, U246, RU4_REG, U243)
U295 = NAND(GRANT_REG_3_, U244)
U296 = NAND(U226, U225, CODA0_REG_2_, U249)
U297 = NAND(GRANT_REG_2_, U244)
U298 = NAND(U226, U224, CODA0_REG_1_, U249)
U299 = NAND(GRANT_REG_1_, U244)
U300 = NAND(U225, U224, CODA0_REG_0_, U249)
U301 = NAND(GRANT_REG_0_, U244)
U302 = NAND(CODA0_REG_1_, CODA0_REG_2_, CODA0_REG_0_, U249)
U303 = NAND(GRANT_O_REG_3_, U203)
U304 = NAND(GRANT_REG_3_, STATO_REG_0_)
U305 = NAND(GRANT_O_REG_2_, U203)
U306 = NAND(GRANT_REG_2_, STATO_REG_0_)
U307 = NAND(GRANT_O_REG_1_, U203)
U308 = NAND(GRANT_REG_1_, STATO_REG_0_)
U309 = NAND(GRANT_O_REG_0_, U203)
U310 = NAND(GRANT_REG_0_, STATO_REG_0_)
U311 = NAND(REQUEST3, U203)
U312 = NAND(RU3_REG, STATO_REG_0_)
U313 = NAND(FU3_REG, U203)
U314 = NAND(RU3_REG, STATO_REG_0_)
U315 = NAND(REQUEST4, U203)
U316 = NAND(RU4_REG, STATO_REG_0_)
U317 = NAND(FU2_REG, U203)
U318 = NAND(RU2_REG, STATO_REG_0_)
U319 = NAND(FU4_REG, U203)
U320 = NAND(RU4_REG, STATO_REG_0_)
U321 = NAND(REQUEST2, U203)
U322 = NAND(RU2_REG, STATO_REG_0_)

