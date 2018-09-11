-- Maak een query die een lijst toont van alle patiënten die zijn toegewezen aan bed.
-- De resultatentabel moet de naam, het bednummer en het bedtype bevatten.

SELECT
  patient.patient_voornaam,
  patient.patient_bed_nr,
  bt.bed_type_omschrijving
FROM
  patient
LEFT JOIN
  bed b on patient.patient_bed_nr = b.bed_nr
LEFT JOIN
  bed_type bt on b.bed_type_nr = bt.bed_type_nr
WHERE
  patient.patient_bed_nr NOTNULL