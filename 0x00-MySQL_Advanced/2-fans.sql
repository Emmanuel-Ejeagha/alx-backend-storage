-- Ranks country origins of bands
-- Ordered by the number of (non-unique) fans
-- Column names must be: origin and nb_fans

-- Create or replace the view to aggregate and rank by fans
CREATE OR REPLACE VIEW my_v2 AS
SELECT 
    origin, 
    SUM(fans) AS nb_fans,
    RANK() OVER (ORDER BY SUM(fans) DESC) AS rank
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    nb_fans DESC;

-- Select from the view
SELECT * FROM my_v2;
