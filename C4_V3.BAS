DIM colorfor(-1 TO 1) AS INTEGER
colorfor(-1) = 4
colorfor(1) = 7
player% = 1
SCREEN 12
Showmoves: LOCATE 28, 24
COLOR colorfor(player%)
PRINT "190     255     320     385     450     515     580"
Getinput: LOCATE 1, 1
INPUT entry%
SELECT CASE entry%
 CASE IS >= 1000: CLS
                  GOTO Showmoves
 CASE IS < 0: END
 CASE ELSE: IF POINT(entry%, 32) THEN GOTO Getinput
            FOR j% = 357 TO 32 STEP -65
             IF POINT(entry%, j%) = 0 THEN
              player% = -player%
              CIRCLE (entry%, j% + 28), 28
              GOTO Showmoves
             END IF
            NEXT
END SELECT
GOTO Getinput

