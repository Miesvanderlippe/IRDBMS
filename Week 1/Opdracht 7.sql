-- Creëer een tabel zoals de tabel personeel. Noem de tabel personeel2.
-- Neem alle voorwaarden over om de gegevensintegriteit af te dwingen.
create table personeel2
(
	pers_nr char(5) not null
		primary key,
	pers_sofi_nr char(9) not null,
	pers_achternaam varchar(50) not null,
	pers_voornaam varchar(50) not null,
	pers_tussenvoegsel varchar(50),
	pers_afd_toegewezen char(5)
		references zh_afdeling,
	pers_kantoor_locatie varchar(10),
	pers_datum_in_dienst date,
	pers_ziekenhuis_titel varchar(50) not null,
	pers_tel_werk char(10),
	pers_tel_doorkies varchar(4),
	pers_reg_nr varchar(20),
	pers_salaris integer,
	pers_tarief numeric(5,2),
	lst_bijwerkdat date
);
