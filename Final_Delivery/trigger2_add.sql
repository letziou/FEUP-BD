CREATE TRIGGER RemoveReferee
AFTER DELETE ON Árbitro
FOR EACH ROW
BEGIN
  DELETE FROM ÁrbitrosnoJogo WHERE ÁrbitrosnoJogo.id_Árbitro = Old.id_Árbitro;
END;
