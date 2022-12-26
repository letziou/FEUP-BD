-- Tentar inserir um árbitro já existente na base de dados

SELECT Count(*) AS NumArbitroJogo FROM ÁrbitrosnoJogo;

INSERT INTO ÁrbitrosnoJogo values (20,3);

SELECT Count(*) AS NumArbitroJogo_AfterINSERT FROM ÁrbitrosnoJogo;
