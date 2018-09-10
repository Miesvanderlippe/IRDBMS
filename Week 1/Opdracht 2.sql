-- Iemand van Personeelszaken heeft een query nodig die het aantal medewerkers van het ziekenhuis telt.
-- Geef de kolommen zinvolle namen

SELECT
  personeel.pers_kantoor_locatie,
  count(*) as Aantal_op_locatie
FROM
  personeel
GROUP BY
  personeel.pers_kantoor_locatie
