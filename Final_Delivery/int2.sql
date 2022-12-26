.mode columns
.headers on
.nullvalue NULL

SELECT (SELECT count(*) FROM Jogador) as Jogadores_da_Liga ,
       (SELECT count(Jogador.Nacionalidade) FROM Jogador WHERE Jogador.Nacionalidade = 'Portuguesa') as Jogadores_Portugueses,
       (SELECT count(Jogador.Nacionalidade) FROM Jogador WHERE Jogador.Nacionalidade <> 'Portuguesa') as Jogadores_Estrangeiros;
