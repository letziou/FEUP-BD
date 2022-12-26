-- Adicionar trigger que verifica antes de inserir as faltas cometidas se são maiores ou iguais a 0 e menores que 5

CREATE TRIGGER CheckFouls
BEFORE INSERT ON Estatística
  FOR EACH ROW
  WHEN (new.Número < 0 OR new.Número > 5)
	BEGIN
      SELECT raise(Abort, 'Um jogador só tem no máximo 5 faltas.');
END;
