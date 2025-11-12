DIM colorfor(-1 TO 1) AS INTEGER
colorfor(-1) = 4
colorfor(1) = 2
player% = 1
SCREEN 12
Showmove: LOCATE 28, 25
COLOR colorfor(player%)
PRINT "205     270     335     400     465     530     595"
Getinput: LOCATE 1, 1
INPUT entry%
SELECT CASE entry%
 CASE 400, 335, 465, 270, 530, 205, 595: IF POINT(entry%, 32) THEN GOTO Getinput
                                         FOR j% = 357 TO 32 STEP -65
                                          IF POINT(entry%, j%) = 0 THEN
                                           player% = -player%
                                           CIRCLE (entry%, j% + 28), 28
                                           GOTO Showmove
                                          END IF
                                         NEXT
 CASE IS >= 1000: CLS
                  GOTO Showmove
 CASE IS < 0: END
END SELECT
GOTO Getinput
