-- Schrijf een view die alle verrichtingen van het laboratorium1 met 10% verhoogd.
DROP VIEW IF EXISTS patientprijzen;

-- Create new view
CREATE VIEW patientprijzen AS
  SELECT
    verrichting.*,
    round(verrichting.verrichting_rek_totaal * 1.1, 2) AS klant_prijs
  FROM
    verrichting;

-- Select from view
SELECT * from patientprijzen;