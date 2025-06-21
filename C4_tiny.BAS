DIM row(1 TO 7) AS INTEGER, column(1 TO 7) AS INTEGER, colorfor(-1 TO 1) AS INTEGER
colorfor(-1) = 12
colorfor(1) = 10
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
  column(1) = 385
    column(2) = 385
      column(3) = 385
        column(4) = 385
          column(5) = 385
            column(6) = 385
              column(7) = 385
Showmoves: LOCATE 28, 24
COLOR colorfor(player%)
PRINT "\1\     \2\     \3\     \4\     \5\     \6\     \7\", "Moves= "; moves$;
Getinput: LOCATE 1, 1
INPUT j%
SELECT CASE j%
  CASE 1 TO 7: IF column(j%) < 0 THEN GOTO Getinput
               player% = -player%
               moves$ = moves$ + CHR$(j% + 48)
               CIRCLE (row(j%), column(j%)), 28
               column(j%) = column(j%) - 65
               GOTO Showmoves
  CASE IS >= 1000: CLS
                   GOTO Newgame
  CASE IS < 0: END
END SELECT
GOTO Getinput
