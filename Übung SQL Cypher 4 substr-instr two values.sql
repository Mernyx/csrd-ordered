UPDATE CY_Ability
SET A_Name = SUBSTR(Ability, 1, 
    CASE 
        WHEN INSTR(Ability, '(') > 0 AND INSTR(Ability, '(') < INSTR(Ability, ':') 
            THEN INSTR(Ability, '(') - 1
        ELSE INSTR(Ability, ':') - 1
	END
)