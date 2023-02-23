DROP TABLE IF EXISTS temp_table;

CREATE TEMPORARY TABLE temp_table AS
SELECT Focus, SUBSTR(Focus, 1, INSTR(Focus, ' or ') - 1) AS first_part,
SUBSTR(Focus, INSTR(Focus, ' or ') + LENGTH(' or ')) AS second_part
FROM CY_Focus
WHERE Focus LIKE '% or %';


INSERT INTO CY_Focus (Focus)
SELECT second_part FROM temp_table;


UPDATE CY_Focus
SET Focus = temp_table.first_part
FROM temp_table
WHERE CY_Focus.Focus=temp_table.Focus;


DROP TABLE temp_table;