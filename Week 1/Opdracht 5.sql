-- De accountants die bezig zijn met het vaststellen van de budgetten hebben het gemiddelde salaris van de
-- medewerkers en het totaal van alle salarissen nodig. De resultaattabel moet twee kolommen bevatten
-- op basis van een query. Geef de kolommen zinvolle namen.
SELECT 
  SUM(personeel.pers_salaris) as totaal_salaris, 
  AVG(personeel.pers_salaris) as gemiddeld_salaris
FROM 
  personeel