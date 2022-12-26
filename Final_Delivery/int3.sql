.mode columns
.headers on
.nullvalue NULL

SELECT Estatística.Número as Valorização, Jogador.Nome FROM Jogador, Estatística, EstatísticaJogador
  WHERE EstatísticaJogador.id_Jogador = Jogador.id_Jogador AND EstatísticaJogador.id_Estatística = Estatística.id_Estatística AND Estatística.Tipo = 'Valorização' AND Estatística.Número >= 10 ORDER BY 1,2;
