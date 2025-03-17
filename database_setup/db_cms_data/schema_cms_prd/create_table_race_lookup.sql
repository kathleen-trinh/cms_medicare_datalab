CREATE TABLE cms_prd.race_lookup (
    race_cd INT PRIMARY KEY,
    race_desc VARCHAR(100)
);

INSERT INTO cms_prd.race_lookup (race_cd, race_desc) VALUES
(1, 'Caucasian or White'),
(2, 'African American or Black'),
(3, 'Asian'),
(4, 'American Indian or Alaska Native'),
(5, 'Native Hawaiian or Other Pacific Islander'),
(6, 'Other Race'),
(7, 'Mixed Race');