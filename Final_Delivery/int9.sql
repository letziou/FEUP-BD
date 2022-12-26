.mode columns
.headers on
.nullvalue NULL

-- Percentagem de pontos que o jogador Jaron Hopkins marcou em relação à equipa

SELECT (round(A.Número * 1.0 / B.Número, 4) * 100) || '%' AS Result FROM

(SELECT Número FROM Jogador, Estatística, EstatísticaJogador
WHERE Jogador.id_Jogador = EstatísticaJogador.id_Jogador
AND Estatística.id_Estatística = EstatísticaJogador.id_Estatística
AND Estatística.Tipo = "Pontos"
AND Jogador.id_Jogador = 268963) A,

(SELECT Número FROM Clube, Estatística, EstatísticaClube
WHERE Clube.id_Clube = EstatísticaClube.id_Clube
AND Estatística.id_Estatística = EstatísticaClube.id_Estatística
AND Estatística.Tipo = "Pontos"
AND Clube.id_Clube = (SELECT id_Clube FROM JogadoresNoClube WHERE JogadoresNoClube.id_Jogador = 268963)) B;
