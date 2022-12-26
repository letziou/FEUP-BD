.mode columns
.headers on
.nullvalue NULL

SELECT nome FROM Jogador WHERE Jogador.Altura < (SELECT avg(altura) FROM Jogador) ORDER BY 1;