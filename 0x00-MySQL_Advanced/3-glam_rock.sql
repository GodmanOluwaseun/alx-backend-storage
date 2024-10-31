-- Lists all bands whoose style is Glam rock, ranked by their longevity til 2022.
SELECT band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
