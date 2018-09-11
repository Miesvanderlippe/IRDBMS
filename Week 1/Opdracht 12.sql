-- Verwijder de zojuist toegevoegde rij weer.
DELETE FROM
  patient_archief
WHERE
  patient_archief.patient_voornaam = 'Mies'