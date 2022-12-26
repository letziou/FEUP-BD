.mode columns
.headers on
.nullvalue NULL

-- Clubes com pontos inferiores à media da liga

DROP VIEW IF EXISTS mediaPontosClubes;
CREATE VIEW mediaPontosClubes AS
  SELECT AVG(A.Número) AS Result FROM

  (SELECT Número FROM Estatística, EstatísticaClube
  WHERE Estatística.id_Estatística = EstatísticaClube.id_Estatística
  AND Estatística.Tipo = "Pontos") A;

SELECT Nome FROM Clube, Estatística, EstatísticaClube, mediaPontosClubes
WHERE Clube.id_Clube = EstatísticaClube.id_Clube
AND Estatística.id_Estatística = EstatísticaClube.id_Estatística
AND Estatística.Tipo = "Pontos"
AND Estatística.Número < Result;
