SELECT count(*) as Numero_Árbitros FROM Árbitro;
SELECT count(*) as Numero_Árbitros_Jogo FROM ÁrbitrosnoJogo;

DELETE FROM Árbitro WHERE Árbitro.id_Árbitro = 1;

SELECT count(*) as Numero_Árbitros_After_Delete FROM Árbitro;
SELECT count(*) as Numero_Árbitros_Jogo_After_Delete FROM ÁrbitrosnoJogo;
