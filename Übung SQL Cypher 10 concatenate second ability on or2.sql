UPDATE CY_Focus
SET F_Ability = F_Ability || CHAR(10) || CY_Ability.Ability
FROM CY_Ability
WHERE CY_Ability.A_Name = CY_Focus.or2;