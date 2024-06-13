-- Ranks country origins of bands
-- Ordered by the number of (non-unique) fans
-- Column names must be: origin and nb_fans

CREATE
OR REPLACE
VIEW my_v2
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fabs DESC;
SELECT * FROM my_v2;