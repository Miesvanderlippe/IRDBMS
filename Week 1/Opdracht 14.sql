-- Pas de query bij 13 aan, zodat de patiënten getoond worden die nog niet aan een bednummer gekoppeld zijn.

SELECT
  patient.patient_voornaam
FROM
  patient
WHERE
  patient.patient_bed_nr ISNULL