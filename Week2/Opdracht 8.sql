-- Maak een view die alleen de patiënten van de afdeling radiologie laat zien.
-- Drop old view
DROP VIEW IF EXISTS radiologiepatienten;

-- Create new view
CREATE VIEW radiologiepatienten AS
  SELECT
    patient.*,
    v.verrichting_omschrijving
  FROM
    patient
  LEFT JOIN
    behandeling b on patient.patient_nr = b.behandeling_patient_nr
  LEFT JOIN
    verrichting v on b.behandeling_verrichting_nr = v.verrichting_nr
  WHERE
    v.verrichting_cat_nr = 'RAD';

-- Select from view
SELECT * from radiologiepatienten;