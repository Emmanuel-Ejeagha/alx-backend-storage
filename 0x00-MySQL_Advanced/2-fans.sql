-- Step 1: Import the table from the dump file
-- Note: This step is usually done outside of the script using a command line or a database GUI tool
-- Example command to import using MySQL:
-- mysql -u username -p database_name < path/to/metal_bands.sql

-- Step 2: Create the query to rank country origins by the number of fans
SELECT 
    origin, 
    SUM(nb_fans) as total_fans,
    RANK() OVER (ORDER BY SUM(nb_fans) DESC) as rank
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    total_fans DESC;
