Create Trigger VerificarArbitro 
Before Insert on ÁrbitrosnoJogo 
For each Row 
When exists (SELECT * FROM ÁrbitrosnoJogo WHERE ÁrbitrosnoJogo.id_Árbitro = new.id_Árbitro AND ÁrbitrosnoJogo.id_Jogo = new.id_Jogo)
Begin 
SELECT raise(ignore);
END;