SET @dbname = 'alx_book_store';

SET @table_name = (
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = @dbname
    AND table_name = 'books'
);

SET @sql_query = CONCAT(
    'SELECT column_name, column_type, is_nullable, column_default, column_key, extra ',
    'FROM information_schema.columns ',
    'WHERE table_schema = "', @dbname, '" ',
    'AND table_name = "', @table_name, '"'
);

PREPARE stmt FROM @sql_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
