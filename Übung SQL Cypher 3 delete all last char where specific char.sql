UPDATE CY_Ability
SET A_Name = SUBSTR(A_Name, 1, LENGTH(A_Name) - 1) WHERE SUBSTR(A_Name, -1) = ' '
