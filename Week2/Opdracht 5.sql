-- De directie vraagt of de behandeling ‘Zuurstof’ uit het overzicht gehaald kan worden. Maak dit overzicht.

SELECT
  count(*) as aantal_per_verrichting,
  v.verrichting_omschrijving
FROM behandeling
LEFT JOIN
  verrichting v ON
  behandeling.behandeling_verrichting_nr = v.verrichting_nr
WHERE
  v.verrichting_omschrijving != 'Zuurstof'
GROUP BY
  v.verrichting_nr
HAVING
  count(*) > 1
ORDER BY
  count(*), v.verrichting_omschrijving
