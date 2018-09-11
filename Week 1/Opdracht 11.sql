-- Voeg jezelf toe als patient aan de tabel patient_archief om deze testen.
-- Gebruik SYSDATE om de kolom lst_bijwerkdatum te vullen.
INSERT INTO patient_archief (patient_nr, patient_sofi_nr, patient_voornaam, patient_achternaam,
  patient_tussenvoegsel, patient_adres, patient_plaats, patient_postcode, patient_geboortedatum
  , patient_tel_nr, lst_bijwerkdat
) VALUES (
  1,100, 'Mies', 'Lippe', 'van der', 'Nepstraat 22', 'Leiden',  '1234AB',  make_date(2000, 1, 1),
  '345678', current_date
);