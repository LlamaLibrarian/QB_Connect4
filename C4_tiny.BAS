DIM row(1 TO 7) AS INTEGER, column(1 TO 7) AS INTEGER, colorfor(-1 TO 1) AS INTEGER
colorfor(-1) = 4
colorfor(1) = 2
player% = 1
  row(1) = 205
    row(2) = 270
      row(3) = 335
        row(4) = 400
          row(5) = 465
            row(6) = 530
              row(7) = 595
SCREEN 12
Newgame: moves$ = "Moves= "
  column(1) = 385
    column(2) = 385
      column(3) = 385
        column(4) = 385
          column(5) = 385
            column(6) = 385
              column(7) = 385
Showmove: LOCATE 28, 26
COLOR colorfor(player%)
PRINT "\1\     \2\     \3\     \4\     \5\     \6\     \7\", moves$;
Getinput: LOCATE 1, 1
INPUT j%
SELECT CASE j%
  CASE 1 TO 7: IF column(j%) < 0 THEN GOTO Getinput
               moves$ = moves$ + CHR$(j% + 48)
               player% = -player%
               CIRCLE (row(j%), column(j%)), 28
               column(j%) = column(j%) - 65
               GOTO Showmove
  CASE IS >= 1000: CLS
                   GOTO Newgame
  CASE IS < 0: END
END SELECT
GOTO Getinput
