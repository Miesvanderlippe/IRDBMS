-- Voor een voorschrift moet het ziekenhuis een overzicht leveren van het aantal verrichtingen per categorie.
-- Toon het verrichting_cat_nr en het aantal verrichtingen.
SELECT
  verrichting.verrichting_cat_nr,
  count(*) as aantal_verrichtingen
FROM
  verrichting
GROUP BY
  verrichting_cat_nr