SCREEN 12
Showmove: LOCATE 28, 25
IF playcolor% = 2 THEN playcolor% = 4 ELSE playcolor% = 2
COLOR playcolor%
PRINT "205     270     335     400     465     530     595"
Getinput: LOCATE 1, 1
INPUT entry%
SELECT CASE entry%
 CASE 400, 335, 465, 270, 530, 205, 595: IF POINT(entry%, 32) THEN GOTO Getinput
                                         FOR j% = 357 TO 32 STEP -65
                                          IF POINT(entry%, j%) = 0 THEN
                                           CIRCLE (entry%, j% + 28), 28
                                           GOTO Showmove
                                          END IF
                                         NEXT
 CASE IS >= 1000: CLS
                  GOTO Showmove
END SELECT
IF entry% >= 0 THEN GOTO Getinput

REM Lesson learned: Prioritize algorithm correctness and workflow efficiency over everything else.
