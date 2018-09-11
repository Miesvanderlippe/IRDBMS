-- Breidt bovenstaande query uit door alle behandelingen die niet vaker dan 1 keer voorkomen
-- niet te tonen. Sorteer op aantal behandelingen (de vaakst voorkomende bovenaan), gevolgd
-- door verrichting omschrijving op alfabet

SELECT
  count(*) as aantal_per_verrichting,
  v.verrichting_omschrijving
FROM behandeling
LEFT JOIN
  verrichting v ON
  behandeling.behandeling_verrichting_nr = v.verrichting_nr
GROUP BY
  v.verrichting_nr
HAVING
  count(*) > 1
ORDER BY
  count(*), v.verrichting_omschrijving
