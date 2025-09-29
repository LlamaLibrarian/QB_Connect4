DIM colorfor(-1 TO 1) AS INTEGER
player% = 1
entry% = 1005
SCREEN 12
GOTO FirstRun
ShowMove: LOCATE 28, 26
COLOR colorfor(player%)
PRINT "\1\     \2\     \3\     \4\     \5\     \6\     \7\", moves$;
GetInput: LOCATE 1, 1
INPUT entry%
SELECT CASE entry%
  CASE 1 TO 7: i% = entry% * 65 + 140
               IF POINT(i%, 32) THEN GOTO GetInput
               FOR j% = 357 TO 32 STEP -65
                 IF POINT(i%, j%) = 0 THEN
                   moves$ = moves$ + CHR$(entry% + 48)
                   player% = -player%
                   CIRCLE (i%, j% + 28), 28
                   GOTO ShowMove
                 END IF
               NEXT
  CASE IS >= 1000: CLS
                   FirstRun: colorfor(-1) = entry% MOD 13 + 1
                   colorfor(1) = colorfor(-1) + 2
                   moves$ = "Moves= "                
                   GOTO ShowMove
  CASE IS < 0: END
END SELECT
GOTO GetInput
