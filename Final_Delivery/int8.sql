.mode columns
.headers on
.nullvalue NULL

-- Jogadores que não jogaram nenhum minuto

SELECT Nome FROM Jogador, Estatística, EstatísticaJogador
WHERE EstatísticaJogador.id_Jogador = Jogador.id_Jogador
AND EstatísticaJogador.id_Estatística = Estatística.id_Estatística
AND Estatística.Tipo = "Minutos"
AND Estatística.Número = 0;
