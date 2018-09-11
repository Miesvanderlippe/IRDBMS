-- Maak een select statement om te zien welke records in de patiënt tabel in aanmerking komen om
-- gearchiveerd te worden.

SElECT
  patient.patient_voornaam,
  patient.patient_achternaam,
  patient.patient_nr
FROM
  patient
WHERE
  patient.patient_bed_nr ISNULL