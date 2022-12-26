.mode columns
.headers on
.nullvalue NULL

SELECT A.Nome as Visitado, C.Número as Pontos_Visitado, D.Número as Pontos_Visitante, B.Nome as Visitante FROM Jogo, Clube A, Estatística C, EstatísticaClube E, Clube B, Estatística D, EstatísticaClube F
WHERE A.id_Clube = Jogo.id_ClubeVisitado AND B.id_Clube = Jogo.id_ClubeVisitante AND E.id_Clube = A.id_Clube AND E.id_Estatística = C.id_Estatística AND C.Tipo = "Pontos" AND F.id_Clube = B.id_Clube AND F.id_Estatística = D.id_Estatística AND D.Tipo = "Pontos";
