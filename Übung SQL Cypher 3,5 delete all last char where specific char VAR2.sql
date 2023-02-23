UPDATE CY_Focus
SET or2 = SUBSTR(or2, 1, LENGTH(or2) - 1) WHERE SUBSTR(or2, -1) = ' '
