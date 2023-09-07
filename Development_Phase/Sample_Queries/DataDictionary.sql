SELECT 
    cols.table_schema,
    cols.table_name,
    cols.column_name,
    cols.data_type,
	cols.column_default,
    cols.is_nullable,
    CASE 
        WHEN cons.constraint_type = 'PRIMARY KEY' THEN 'PK'
        WHEN cons.constraint_type = 'FOREIGN KEY' THEN 'FK'
        WHEN cons.constraint_type = 'UNIQUE' THEN 'UK'
        ELSE ''
    END AS key_type
FROM information_schema.columns cols
LEFT JOIN (
    SELECT 
        tc.table_schema,
        tc.table_name,
        kcu.column_name,
        tc.constraint_type
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu 
        ON tc.constraint_name = kcu.constraint_name
        AND tc.table_schema = kcu.table_schema
) cons ON cols.table_schema = cons.table_schema AND cols.table_name = cons.table_name AND cols.column_name = cons.column_name
WHERE cols.table_schema = 'airbnb'  -- Adjust the schema name as needed
ORDER BY cols.table_schema, cols.table_name, cols.ordinal_position;
