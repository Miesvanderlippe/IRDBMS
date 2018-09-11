-- Creëer een tabel patient_archief. In deze tabel zullen de rijen worden opgeslagen van patienten die
-- niet in behandeling zijn. Deze patiënten zijn gedefinieerd als patienten die de afgelopen 5 jaar
-- niet meer in behandeling zijn. Neem de gegevensstructuur van de tabel patiënt over zonder de kolom bed_nr.

create table patient_archief
(
  patient_nr char(6) not null
    primary key,
  patient_sofi_nr char(9) not null,
  patient_achternaam varchar(50) not null,
  patient_voornaam varchar(50) not null,
  patient_tussenvoegsel varchar(50),
  patient_adres varchar(50),
  patient_plaats varchar(50),
  patient_provincie char(2),
  patient_postcode varchar(7),
  patient_geboortedatum date,
  patient_tel_nr char(10),
lst_bijwerkdat date
)
;

