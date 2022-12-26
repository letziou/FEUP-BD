-- Verificar que não há faltas cometidas abaixo de 0 ou acima de 5
SELECT Tipo, Número FROM Estatística, EstatísticaJogador
WHERE Estatística.Tipo = "FaltasCometidas"
AND Estatística.id_Estatística = EstatísticaJogador.id_Estatística;

-- Verificar que dá erro ao tentar introduzir um valor negativo ou acima de 5
INSERT INTO Estatística VALUES (2000, "FaltasCometidas", -1);
INSERT INTO Estatística VALUES (2000, "FaltasCometidas", 6);
