DIM column(1 TO 7) AS INTEGER, colorfor(-1 TO 0) AS INTEGER
colorfor(-1) = 4
colorfor(0) = 7
player% = 0
SCREEN 12
Newgame: moves$ = ""
FOR j% = 1 TO 7
  column(j%) = 417
NEXT
CLS
FOR j% = 92 TO 417 STEP 65
  FOR i% = 125 TO 515 STEP 65
    CIRCLE (i%, j%), 28, 13
  NEXT
NEXT
Showmoves: COLOR colorfor(player%)
LOCATE 2, 16
PRINT "(1)     (2)     (3)     (4)     (5)     (6)     (7)", "Moves= "; moves$
Getinput: LOCATE 1, 1
INPUT j%
SELECT CASE j%
  CASE IS >= 100: GOTO Newgame
  CASE 1 TO 7: IF column(j%) < 28 THEN GOTO Getinput
               PAINT (j% * 65 + 60, column(j%)), , 13
               column(j%) = column(j%) - 65
               player% = NOT player%
               moves$ = moves$ + CHR$(j% + 48)
               GOTO Showmoves
  CASE IS < 0: END
END SELECT
GOTO Getinput
