-- Je moet een query creëren die de behandelgeschiedenis van de ziekenhuispatienten toont.
-- De resultatentabel moet de kolommen patient_nr en patient_achternaam van de tabel patiënt en de kolom
-- pn_notitie_commentaar van de tabel patient_notitie bevatten.
SELECT
  patient.patient_nr,
  patient.patient_achternaam,
  patient_notitie.pn_notitie_commentaar
FROM
  patient_notitie
LEFT JOIN
  patient
ON
  patient_notitie.pn_patient_nr = patient.patient_nr
ORDER BY
  patient.patient_nr
