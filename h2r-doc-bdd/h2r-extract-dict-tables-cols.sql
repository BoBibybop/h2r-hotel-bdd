-- ============================================================================
-- file : h2r-extract-dict-tables-cols.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Extract comments of the database colums dictionary database
-- result file: h2r_dict-tables-cols.html
-- ============================================================================

-- Ordre SQL pour supprimer les tables qui sont dans la corbeille 
purge recyclebin; 

-- Extraction du dictionnaire des tables en HTML 
SET PAGESIZE 80
SET FEEDBACK OFF
SET SQLFORMAT HTML

SPOOL h2r_dict-tables-cols.html

PROMPT <html>
PROMPT <head>
PROMPT <title>Description of table columns</title>
PROMPT <style type="text/css">
PROMPT table.myTable { border-collapse: collapse; width: 100%; }
PROMPT table.myTable td, table.myTable th { border: 1px solid black; padding: 5px; text-align: left; }
PROMPT </style>
PROMPT </head>
PROMPT <body>
PROMPT <h3>Description of database table columns: h2r hotel</h3>

select  TABLE_NAME as "Table",
        COLUMN_NAME as "Column",
        DATA_TYPE as "Type",
        DATA_LENGTH as "Size",
        case 
            when NULLABLE = 'N' then 'O'
            when NULLABLE = 'Y' then 'F'
        end "O/F",
        COMMENTS as "Description"         
from    USER_TAB_COLUMNS NATURAL JOIN USER_COL_COMMENTS
order by TABLE_NAME, USER_TAB_COLUMNS.COLUMN_ID;


SPOOL OFF

SET SQLFORMAT DEFAULT
