# edf2bench v0.8
#   (!) 1997-2003 Giovanni Squillero <giovanni.squillero@polito.it>
#
# Edf source: "b13/b13.edf"
# 10 inputs
# 10 outputs
# 53 D-type flipflops
# 52 inverters
# 310 gates (9 and, 218 nand, 10 or, 52 not)


input EOC,DATA_IN_0_,DATA_IN_1_,DATA_IN_2_,DATA_IN_3_,DATA_IN_4_,DATA_IN_5_,DATA_IN_6_,DATA_IN_7_,DSR;

output SOC_REG,LOAD_DATO_REG,ADD_MPX2_REG,CANALE_REG_0_,CANALE_REG_1_,CANALE_REG_2_,CANALE_REG_3_,MUX_EN_REG,ERROR_REG,DATA_OUT_REG;

CANALE_REG_3_ = DFF(U416)
CANALE_REG_2_ = DFF(U415)
CANALE_REG_1_ = DFF(U414)
CANALE_REG_0_ = DFF(U413)
CONTA_TMP_REG_3_ = DFF(U417)
CONTA_TMP_REG_2_ = DFF(U412)
CONTA_TMP_REG_1_ = DFF(U411)
CONTA_TMP_REG_0_ = DFF(U410)
ITFC_STATE_REG_1_ = DFF(U452)
ITFC_STATE_REG_0_ = DFF(U409)
OUT_REG_REG_7_ = DFF(U453)
OUT_REG_REG_6_ = DFF(U454)
OUT_REG_REG_5_ = DFF(U455)
OUT_REG_REG_4_ = DFF(U456)
OUT_REG_REG_3_ = DFF(U457)
OUT_REG_REG_2_ = DFF(U458)
OUT_REG_REG_1_ = DFF(U459)
OUT_REG_REG_0_ = DFF(U460)
NEXT_BIT_REG_3_ = DFF(U461)
NEXT_BIT_REG_2_ = DFF(U408)
NEXT_BIT_REG_1_ = DFF(U407)
NEXT_BIT_REG_0_ = DFF(U462)
TX_CONTA_REG_9_ = DFF(U406)
TX_CONTA_REG_8_ = DFF(U405)
TX_CONTA_REG_7_ = DFF(U404)
TX_CONTA_REG_6_ = DFF(U403)
TX_CONTA_REG_5_ = DFF(U402)
TX_CONTA_REG_4_ = DFF(U401)
TX_CONTA_REG_3_ = DFF(U400)
TX_CONTA_REG_2_ = DFF(U399)
TX_CONTA_REG_1_ = DFF(U398)
TX_CONTA_REG_0_ = DFF(U397)
LOAD_REG = DFF(U396)
SEND_DATA_REG = DFF(U395)
SEND_EN_REG = DFF(U394)
MUX_EN_REG = DFF(U393)
TRE_REG = DFF(U392)
LOAD_DATO_REG = DFF(U391)
SOC_REG = DFF(U450)
SEND_REG = DFF(U390)
MPX_REG = DFF(U389)
CONFIRM_REG = DFF(U388)
SHOT_REG = DFF(U387)
ADD_MPX2_REG = DFF(U386)
RDY_REG = DFF(U385)
ERROR_REG = DFF(U451)
S1_REG_2_ = DFF(U383)
S1_REG_1_ = DFF(U464)
S1_REG_0_ = DFF(U384)
S2_REG_1_ = DFF(U463)
S2_REG_0_ = DFF(U382)
TX_END_REG = DFF(U381)
DATA_OUT_REG = DFF(U380)
GT_255_U10 = OR(TX_CONTA_REG_4_, GT_255_U7)
GT_255_U9 = OR(TX_CONTA_REG_2_, TX_CONTA_REG_0_, TX_CONTA_REG_1_)
GT_255_U8 = AND(TX_CONTA_REG_5_, TX_CONTA_REG_6_, GT_255_U10)
U375 = AND(SEND_EN_REG, U420)
U376 = AND(U493, U509)
U377 = AND(NEXT_BIT_REG_2_, NEXT_BIT_REG_1_)
U378 = AND(NEXT_BIT_REG_1_, U446)
U379 = AND(CONTA_TMP_REG_1_, CONTA_TMP_REG_0_)
U380 = NAND(U599, U598, U474)
U381 = AND(U473, U445, U475)
U382 = NAND(U439, U472)
U383 = NAND(U434, U561)
U384 = NAND(U605, U604, S1_REG_0_)
U385 = NAND(U472, U507)
U386 = OR(U467, ADD_MPX2_REG)
U387 = NAND(U505, U504)
U388 = NAND(U502, U501)
U389 = NAND(U466, U499)
U390 = NAND(U497, U496)
U391 = NAND(U489, U494)
U392 = OR(TRE_REG, TX_END_REG, LOAD_REG)
U393 = NAND(U491, U490)
U394 = NAND(U488, U487)
U395 = NAND(U486, U485)
U396 = NAND(U482, U481)
U397 = NAND(U479, U478)
U398 = NAND(U477, U476)
U399 = NAND(U548, U547)
U400 = NAND(U546, U545)
U401 = NAND(U544, U543)
U402 = NAND(U542, U541)
U403 = NAND(U540, U539)
U404 = NAND(U538, U537)
U405 = NAND(U536, U535)
U406 = NAND(U534, U533)
U407 = NAND(U529, U528)
U408 = NAND(U593, U592, U448)
U409 = NAND(U526, U525)
U410 = NAND(U444, U522)
U411 = NAND(U468, U521)
U412 = NAND(U469, U519)
U413 = NAND(U444, U516)
U414 = NAND(U515, U468, U514)
U415 = NAND(U512, U469, U513)
U416 = NAND(U511, U510)
U417 = AND(CONTA_TMP_REG_3_, U517)
U418 = NOT(CONTA_TMP_REG_0_)
U419 = NOT(SEND_EN_REG)
U420 = NOT(GT_255_U6)
U421 = NAND(GT_255_U6, SEND_EN_REG)
U422 = NOT(NEXT_BIT_REG_0_)
U423 = NAND(NEXT_BIT_REG_0_, U474)
U424 = OR(NEXT_BIT_REG_3_, NEXT_BIT_REG_2_)
U425 = NOT(ITFC_STATE_REG_0_)
U426 = NOT(LOAD_REG)
U427 = NOT(S1_REG_0_)
U428 = NOT(S1_REG_1_)
U429 = NOT(S1_REG_2_)
U430 = NOT(RDY_REG)
U431 = NAND(RDY_REG, S1_REG_1_)
U432 = NOT(SEND_REG)
U433 = NOT(TRE_REG)
U434 = NAND(S1_REG_1_, U427)
U435 = NOT(ITFC_STATE_REG_1_)
U436 = NOT(S2_REG_1_)
U437 = NOT(CONFIRM_REG)
U438 = NOT(MPX_REG)
U439 = NAND(S2_REG_1_, U441, CONFIRM_REG)
U440 = NOT(TX_END_REG)
U441 = NOT(S2_REG_0_)
U442 = NOT(CONTA_TMP_REG_1_)
U443 = NAND(U492, S1_REG_2_)
U444 = NAND(U376, U418)
U445 = NOT(NEXT_BIT_REG_1_)
U446 = NOT(NEXT_BIT_REG_2_)
U447 = NOT(NEXT_BIT_REG_3_)
U448 = NAND(NEXT_BIT_REG_2_, U445)
U449 = NOT(EOC)
U450 = NAND(U566, U565)
U451 = NAND(U571, U570)
U452 = NAND(U573, U572)
U453 = NAND(U575, U574)
U454 = NAND(U577, U576)
U455 = NAND(U579, U578)
U456 = NAND(U581, U580)
U457 = NAND(U583, U582)
U458 = NAND(U585, U584)
U459 = NAND(U587, U586)
U460 = NAND(U589, U588)
U461 = NAND(U591, U590)
U462 = NAND(U597, U596)
U463 = NAND(U601, U600)
U464 = NAND(U603, U602)
U465 = NAND(LOAD_REG, U433)
U466 = NAND(U498, U438)
U467 = NOT(U466)
U468 = NAND(CONTA_TMP_REG_0_, U442, U376)
U469 = NAND(U376, U379)
U470 = NOT(U444)
U471 = NOT(U448)
U472 = NAND(U441, U436, SEND_DATA_REG)
U473 = NOT(U424)
U474 = NOT(U421)
U475 = NOT(U423)
U476 = NAND(ADD_291_U29, U375)
U477 = NAND(TX_CONTA_REG_1_, U419)
U478 = NAND(ADD_291_U5, U375)
U479 = NAND(TX_CONTA_REG_0_, U419)
U480 = NAND(ITFC_STATE_REG_0_, U435)
U481 = NAND(U425, U435, SHOT_REG)
U482 = NAND(LOAD_REG, U480)
U483 = NOT(U431)
U484 = NAND(U483, S1_REG_0_)
U485 = NAND(S1_REG_1_, S1_REG_0_, S1_REG_2_)
U486 = NAND(SEND_DATA_REG, U484)
U487 = NAND(TRE_REG, SEND_REG, DSR)
U488 = NAND(SEND_EN_REG, U440)
U489 = NAND(S1_REG_2_, S1_REG_0_, U428, U449)
U490 = OR(S1_REG_2_, S1_REG_1_, S1_REG_0_)
U491 = NAND(MUX_EN_REG, U489)
U492 = NOT(U434)
U493 = NOT(U443)
U494 = NAND(LOAD_DATO_REG, U443)
U495 = NAND(ITFC_STATE_REG_1_, U425)
U496 = NAND(SEND_REG, U495)
U497 = NAND(ITFC_STATE_REG_0_, U435)
U498 = NOT(U439)
U499 = NAND(MPX_REG, U439)
U500 = OR(ITFC_STATE_REG_0_, ITFC_STATE_REG_1_)
U501 = NAND(ITFC_STATE_REG_1_, ITFC_STATE_REG_0_, TX_END_REG)
U502 = NAND(CONFIRM_REG, U500)
U503 = NAND(U441, U437, S2_REG_1_)
U504 = NAND(SHOT_REG, U503)
U505 = NAND(S2_REG_0_, U436)
U506 = NAND(U498, MPX_REG)
U507 = NAND(RDY_REG, U506)
U508 = NAND(DSR, TRE_REG)
U509 = NAND(U379, CONTA_TMP_REG_2_)
U510 = NAND(CONTA_TMP_REG_3_, U376)
U511 = NAND(CANALE_REG_3_, U443)
U512 = NAND(U376, CONTA_TMP_REG_2_)
U513 = NAND(CANALE_REG_2_, U443)
U514 = NAND(U470, CONTA_TMP_REG_1_)
U515 = NAND(CANALE_REG_1_, U443)
U516 = NAND(CANALE_REG_0_, U443)
U517 = NAND(U379, CONTA_TMP_REG_2_, U493)
U518 = NAND(U493, U379)
U519 = NAND(U518, CONTA_TMP_REG_2_)
U520 = NAND(U493, CONTA_TMP_REG_0_)
U521 = NAND(CONTA_TMP_REG_1_, U520)
U522 = NAND(CONTA_TMP_REG_0_, U443)
U523 = NAND(TX_END_REG, ITFC_STATE_REG_1_)
U524 = NAND(TX_END_REG, ITFC_STATE_REG_0_)
U525 = NAND(ITFC_STATE_REG_1_, U524)
U526 = NAND(SHOT_REG, U425)
U527 = NOT(U465)
U528 = NAND(U595, U594, U474)
U529 = NAND(NEXT_BIT_REG_1_, U423)
U530 = OR(NEXT_BIT_REG_1_, NEXT_BIT_REG_2_)
U531 = NAND(U530, U422)
U532 = NAND(U447, U531)
U533 = NAND(ADD_291_U21, U375)
U534 = NAND(TX_CONTA_REG_9_, U419)
U535 = NAND(ADD_291_U22, U375)
U536 = NAND(TX_CONTA_REG_8_, U419)
U537 = NAND(ADD_291_U23, U375)
U538 = NAND(TX_CONTA_REG_7_, U419)
U539 = NAND(ADD_291_U24, U375)
U540 = NAND(TX_CONTA_REG_6_, U419)
U541 = NAND(ADD_291_U25, U375)
U542 = NAND(TX_CONTA_REG_5_, U419)
U543 = NAND(ADD_291_U26, U375)
U544 = NAND(TX_CONTA_REG_4_, U419)
U545 = NAND(ADD_291_U27, U375)
U546 = NAND(TX_CONTA_REG_3_, U419)
U547 = NAND(ADD_291_U28, U375)
U548 = NAND(TX_CONTA_REG_2_, U419)
U549 = NAND(U378, OUT_REG_REG_6_)
U550 = NAND(U377, OUT_REG_REG_2_)
U551 = NAND(U473, U445)
U552 = NAND(U471, OUT_REG_REG_4_)
U553 = NAND(NEXT_BIT_REG_3_, OUT_REG_REG_0_)
U554 = NAND(U550, U549, U551, U553, U552)
U555 = NAND(U378, OUT_REG_REG_7_)
U556 = NAND(U377, OUT_REG_REG_3_)
U557 = NAND(U471, OUT_REG_REG_5_)
U558 = NAND(NEXT_BIT_REG_3_, OUT_REG_REG_1_)
U559 = NAND(U558, U557, U556, U555)
U560 = NAND(CONFIRM_REG, U438)
U561 = NAND(S1_REG_2_, S1_REG_0_)
U562 = NAND(U431, U429)
U563 = OR(EOC, S1_REG_1_)
U564 = NAND(U563, U562)
U565 = NAND(U492, U429)
U566 = NAND(SOC_REG, U434)
U567 = NAND(ERROR_REG, U426)
U568 = NAND(TRE_REG, LOAD_REG)
U569 = NAND(U568, U567)
U570 = NAND(SEND_REG, U508)
U571 = NAND(U569, U432)
U572 = NAND(ITFC_STATE_REG_1_, U425)
U573 = NAND(ITFC_STATE_REG_0_, U523)
U574 = NAND(OUT_REG_REG_7_, U465)
U575 = NAND(DATA_IN_7_, U527)
U576 = NAND(OUT_REG_REG_6_, U465)
U577 = NAND(DATA_IN_6_, U527)
U578 = NAND(OUT_REG_REG_5_, U465)
U579 = NAND(DATA_IN_5_, U527)
U580 = NAND(OUT_REG_REG_4_, U465)
U581 = NAND(DATA_IN_4_, U527)
U582 = NAND(OUT_REG_REG_3_, U465)
U583 = NAND(DATA_IN_3_, U527)
U584 = NAND(OUT_REG_REG_2_, U465)
U585 = NAND(DATA_IN_2_, U527)
U586 = NAND(OUT_REG_REG_1_, U465)
U587 = NAND(DATA_IN_1_, U527)
U588 = NAND(OUT_REG_REG_0_, U465)
U589 = NAND(DATA_IN_0_, U527)
U590 = NAND(NEXT_BIT_REG_3_, U423)
U591 = NAND(U377, U475)
U592 = NAND(NEXT_BIT_REG_2_, U423)
U593 = NAND(U378, U475)
U594 = NAND(NEXT_BIT_REG_0_, U448)
U595 = NAND(U424, U422)
U596 = NAND(NEXT_BIT_REG_0_, U421)
U597 = NAND(U474, U532)
U598 = NAND(NEXT_BIT_REG_0_, U554)
U599 = NAND(U559, U422)
U600 = NAND(S2_REG_1_, U560, U441)
U601 = NAND(S2_REG_0_, U436)
U602 = NAND(S1_REG_2_, U427)
U603 = NAND(S1_REG_0_, U564)
U604 = NAND(EOC, S1_REG_2_, U428)
U605 = NAND(U429, U430, S1_REG_1_)
GT_255_U7 = AND(TX_CONTA_REG_3_, GT_255_U9)
ADD_291_U5 = NOT(TX_CONTA_REG_0_)
ADD_291_U6 = NOT(TX_CONTA_REG_1_)
ADD_291_U7 = NAND(TX_CONTA_REG_1_, TX_CONTA_REG_0_)
ADD_291_U8 = NOT(TX_CONTA_REG_2_)
ADD_291_U9 = NAND(TX_CONTA_REG_2_, ADD_291_U32)
ADD_291_U10 = NOT(TX_CONTA_REG_3_)
ADD_291_U11 = NAND(TX_CONTA_REG_3_, ADD_291_U33)
ADD_291_U12 = NOT(TX_CONTA_REG_4_)
ADD_291_U13 = NAND(TX_CONTA_REG_4_, ADD_291_U34)
ADD_291_U14 = NOT(TX_CONTA_REG_5_)
ADD_291_U15 = NAND(TX_CONTA_REG_5_, ADD_291_U35)
ADD_291_U16 = NOT(TX_CONTA_REG_6_)
ADD_291_U17 = NAND(TX_CONTA_REG_6_, ADD_291_U36)
ADD_291_U18 = NOT(TX_CONTA_REG_7_)
ADD_291_U19 = NAND(TX_CONTA_REG_7_, ADD_291_U37)
ADD_291_U20 = NOT(TX_CONTA_REG_8_)
ADD_291_U21 = NAND(ADD_291_U41, ADD_291_U40)
ADD_291_U22 = NAND(ADD_291_U43, ADD_291_U42)
ADD_291_U23 = NAND(ADD_291_U45, ADD_291_U44)
ADD_291_U24 = NAND(ADD_291_U47, ADD_291_U46)
ADD_291_U25 = NAND(ADD_291_U49, ADD_291_U48)
ADD_291_U26 = NAND(ADD_291_U51, ADD_291_U50)
ADD_291_U27 = NAND(ADD_291_U53, ADD_291_U52)
ADD_291_U28 = NAND(ADD_291_U55, ADD_291_U54)
ADD_291_U29 = NAND(ADD_291_U57, ADD_291_U56)
ADD_291_U30 = NOT(TX_CONTA_REG_9_)
ADD_291_U31 = NAND(TX_CONTA_REG_8_, ADD_291_U38)
ADD_291_U32 = NOT(ADD_291_U7)
ADD_291_U33 = NOT(ADD_291_U9)
ADD_291_U34 = NOT(ADD_291_U11)
ADD_291_U35 = NOT(ADD_291_U13)
ADD_291_U36 = NOT(ADD_291_U15)
ADD_291_U37 = NOT(ADD_291_U17)
ADD_291_U38 = NOT(ADD_291_U19)
ADD_291_U39 = NOT(ADD_291_U31)
ADD_291_U40 = NAND(TX_CONTA_REG_9_, ADD_291_U31)
ADD_291_U41 = NAND(ADD_291_U39, ADD_291_U30)
ADD_291_U42 = NAND(TX_CONTA_REG_8_, ADD_291_U19)
ADD_291_U43 = NAND(ADD_291_U38, ADD_291_U20)
ADD_291_U44 = NAND(TX_CONTA_REG_7_, ADD_291_U17)
ADD_291_U45 = NAND(ADD_291_U37, ADD_291_U18)
ADD_291_U46 = NAND(TX_CONTA_REG_6_, ADD_291_U15)
ADD_291_U47 = NAND(ADD_291_U36, ADD_291_U16)
ADD_291_U48 = NAND(TX_CONTA_REG_5_, ADD_291_U13)
ADD_291_U49 = NAND(ADD_291_U35, ADD_291_U14)
ADD_291_U50 = NAND(TX_CONTA_REG_4_, ADD_291_U11)
ADD_291_U51 = NAND(ADD_291_U34, ADD_291_U12)
ADD_291_U52 = NAND(TX_CONTA_REG_3_, ADD_291_U9)
ADD_291_U53 = NAND(ADD_291_U33, ADD_291_U10)
ADD_291_U54 = NAND(TX_CONTA_REG_2_, ADD_291_U7)
ADD_291_U55 = NAND(ADD_291_U32, ADD_291_U8)
ADD_291_U56 = NAND(TX_CONTA_REG_1_, ADD_291_U5)
ADD_291_U57 = NAND(TX_CONTA_REG_0_, ADD_291_U6)
GT_255_U6 = OR(TX_CONTA_REG_7_, TX_CONTA_REG_9_, TX_CONTA_REG_8_, GT_255_U8)

