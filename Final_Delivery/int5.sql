.mode columns
.headers on
.nullvalue NULL

SELECT nome, min(Altura) FROM Jogador WHERE id_Jogador IN (SELECT id_Jogador FROM JogadoresNoClube WHERE id_Clube = 1);