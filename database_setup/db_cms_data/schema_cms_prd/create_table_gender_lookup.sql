CREATE TABLE cms_prd.gender_lookup (
    gender_cd INT PRIMARY KEY,
    gender_desc VARCHAR(100),
    gender_abbr CHAR(1)
);

INSERT INTO cms_prd.gender_lookup (gender_cd, gender_desc, gender_abbr) VALUES
(1, 'Male', 'M'),
(2, 'Female', 'F');