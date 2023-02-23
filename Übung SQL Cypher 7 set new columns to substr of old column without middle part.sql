UPDATE CY_Focus 
SET or1 = substr(Focus, 1, instr(Focus, ' or ') -1),
	or2 = substr(Focus, INSTR(Focus, ' or ') + LENGTH(' or '))
WHERE Focus LIKE '% or %';