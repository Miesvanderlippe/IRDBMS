-- Er is een lijst nodig met alle patiënten uit het postcodegebied 6202 JK.
-- De resultatentabel moet de achternaam, voornaam en postcode tonen.

SELECT
  patient.patient_achternaam,
  patient.patient_voornaam,
  patient.patient_postcode
FROM
  patient
WHERE
  patient.patient_postcode = '6202 JH';