-- SQL script that ranks country origins of bands
-- Ordered by the number of (non-unique) fans.
SOURCE metal_bands.sql

CREATE INDEX idx_origin ON metal_bands(origin);
CREATE INDEX idx_nb_fans ON metal_bands(nb_fans);

SELECT origin, SUM(nb_fans) AS total_fans
FROM metal_bands
GROUP BY origin
ORDER BY total_fans;
