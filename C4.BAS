DIM row(1 TO 7) AS INTEGER, column(1 TO 7) AS INTEGER, colorfor(-1 TO 0) AS INTEGER
colorfor(-1) = 2
colorfor(0) = 4
player% = 0
row(1) = 205
row(2) = 270
row(3) = 335
row(4) = 400
row(5) = 465
row(6) = 530
row(7) = 595
SCREEN 12
NewGame: moves$ = "Moves= "
column(1) = 385
column(2) = 385
column(3) = 385
column(4) = 385
column(5) = 385
column(6) = 385
column(7) = 385
ShowStatus: LOCATE 28, 27
COLOR colorfor(player%)
PRINT "1       2       3       4       5       6       7", moves$;
GetInput: LOCATE 1, 1
INPUT j%
SELECT CASE j%
 CASE 1 TO 7: IF column(j%) < 0 THEN GOTO GetInput
              moves$ = moves$ + CHR$(j% + 48)
              player% = NOT player%
              CIRCLE (row(j%), column(j%)), 28
              column(j%) = column(j%) - 65
              GOTO ShowStatus
 CASE IS >= 1000: CLS
                  GOTO NewGame
 CASE IS < 0: END
END SELECT
GOTO GetInput
