DIM row(1 TO 7) AS INTEGER, column(1 TO 7) AS INTEGER, colorfor(-1 TO 1) AS INTEGER
colorfor(-1) = 4
colorfor(1) = 7
player% = 1
  row(1) = 190
    row(2) = 255
      row(3) = 320
        row(4) = 385
          row(5) = 450
            row(6) = 515
              row(7) = 580
SCREEN 12
Newgame: moves$ = ""
  column(1) = 420
    column(2) = 420
      column(3) = 420
        column(4) = 420
          column(5) = 420
            column(6) = 420
              column(7) = 420
FOR j% = 95 TO 420 STEP 65
  FOR i% = 190 TO 580 STEP 65
    CIRCLE (i%, j%), 28, 13
  NEXT
NEXT
Showmoves: COLOR colorfor(player%)
LOCATE 2, 24
PRINT ">1<     >2<     >3<     >4<     >5<     >6<     >7<", "Moves= "; moves$
Getinput: LOCATE 1, 1
INPUT j%
SELECT CASE j%
  CASE IS >= 1000: CLS
                   GOTO Newgame
  CASE 1 TO 7: IF column(j%) < 31 THEN GOTO Getinput
               player% = -player%
               moves$ = moves$ + CHR$(j% + 48)
               PAINT (row(j%), column(j%)), , 13
               column(j%) = column(j%) - 65
               GOTO Showmoves
  CASE IS < 0: END
END SELECT
GOTO Getinput
