-- Een lijst op patient achternaam, tussenvoegsel en voornaam in welk bed deze patient zich bevindt
-- (bed nummer). Sorteer op achternaam.

SELECT
  patient.patient_voornaam,
  patient.patient_tussenvoegsel,
  patient.patient_achternaam,
  patient.patient_bed_nr
FROM patient
WHERE
  patient.patient_bed_nr NOTNULL
ORDER BY
  patient.patient_achternaam