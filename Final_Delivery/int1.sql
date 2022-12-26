.mode columns
.headers on
.nullvalue NULL

SELECT Jogador.Nome, MAX(Estatística.Número) as Max_Pontos FROM Jogador, Estatística, EstatísticaJogador
  WHERE EstatísticaJogador.id_Jogador = Jogador.id_Jogador AND EstatísticaJogador.id_Estatística = Estatística.id_Estatística AND Estatística.Tipo = 'Pontos';
