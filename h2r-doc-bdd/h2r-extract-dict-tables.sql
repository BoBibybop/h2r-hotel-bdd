-- ============================================================================
-- file : h2r-extract-dict-tables.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Extract comments of the database colums dictionary database
-- result file: h2r_dict-tables.html
-- ============================================================================

-- Ordre SQL pour supprimer les tables qui sont dans la corbeille 
purge recyclebin; 

SET PAGESIZE 80
SET FEEDBACK OFF
SET SQLFORMAT HTML

SPOOL h2r_dict-tables.html

PROMPT <html>
PROMPT <head>
PROMPT <title>Table description</title>
PROMPT <style type="text/css">
PROMPT table.myTable { border-collapse: collapse; width: 100%; }
PROMPT table.myTable td, table.myTable th { border: 1px solid black; padding: 5px; text-align: left; }
PROMPT </style>
PROMPT </head>
PROMPT <body>
PROMPT <h3>Description of database relationships: h2r Hotel</h3>

SELECT 
    table_name AS "Table Name", 
    NVL(comments, 'No description available') AS "Description"
FROM 
    user_tab_comments
ORDER BY 
    table_name;

SPOOL OFF

SET SQLFORMAT DEFAULT

