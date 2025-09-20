DIM colorfor(-1 TO 1) AS INTEGER
player% = 1
entry% = 1012
SCREEN 12
GOTO FirstRun
Showmoves:
LOCATE 28, 26
COLOR colorfor(player%)
PRINT "\1\     \2\     \3\     \4\     \5\     \6\     \7\", moves$;
Getinput:
LOCATE 1, 1
INPUT entry%
FirstRun:
SELECT CASE entry%
  CASE 1 TO 7: i% = entry% * 65 + 140
               IF POINT(i%, 32) THEN GOTO Getinput
               FOR j% = 357 TO 32 STEP -65
                 IF POINT(i%, j%) = 0 THEN
                   moves$ = moves$ + CHR$(entry% + 48)
                   player% = -player%
                   CIRCLE (i%, j% + 28), 28
                   GOTO Showmoves
                 END IF
               NEXT
  CASE IS >= 1000: i% = entry% MOD 13 + 1
                   colorfor(-1) = i%
                   colorfor(1) = i% + 2
                   moves$ = "Moves= "
                   CLS
                   GOTO Showmoves
  CASE IS < 0: END
END SELECT
GOTO Getinput
