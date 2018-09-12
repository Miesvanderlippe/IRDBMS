-- Maak een view die van een patiënt alleen de adresgegevens laat zien.

-- Drop old view
DROP VIEW IF EXISTS adresgegevens;

-- Create new view
CREATE VIEW adresgegevens AS
  SELECT
    patient.patient_nr,
    patient.patient_adres,
    patient.patient_postcode
  FROM
    patient;

-- Select from view
SELECT * from adresgegevens