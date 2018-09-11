-- Het bed nummer zegt de centrale info niet zoveel. Breidt de query
-- uit dat het kamernummer getoond wordt. Toon ook de kameromschrijving.
SELECT
  patient.patient_voornaam,
  patient.patient_tussenvoegsel,
  patient.patient_achternaam,
  patient.patient_bed_nr,
  b.bed_kamer_nr,
  k.kamer_omschrijving
FROM
  patient
LEFT JOIN
  bed b ON
  patient.patient_bed_nr = b.bed_nr
LEFT JOIN
  kamer k ON
  b.bed_kamer_nr = k.kamer_nr
WHERE
  patient.patient_bed_nr NOTNULL
ORDER BY
  patient.patient_achternaam