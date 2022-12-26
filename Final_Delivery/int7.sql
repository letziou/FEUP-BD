.mode columns
.headers on
.nullvalue NULL

SELECT count(*) AS NPort FROM Jogador WHERE id_Jogador in (SELECT id_Jogador FROM JogadoresNoClube WHERE id_Clube = 6) AND Jogador.Nacionalidade = 'Portuguesa';