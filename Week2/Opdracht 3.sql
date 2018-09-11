-- Het aantal behandelingen per verrichting. Toon de verrichting omschrijving.

SELECT
  count(*) as aantal_per_verrichting,
  v.verrichting_omschrijving
FROM behandeling
LEFT JOIN
  verrichting v ON
  behandeling.behandeling_verrichting_nr = v.verrichting_nr
GROUP BY
  v.verrichting_nr