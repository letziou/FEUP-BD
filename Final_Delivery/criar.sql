PRAGMA foreign_keys = ON;
.header on
.mode column

drop table if exists Jogador;

create table Jogador(
  id_Jogador INTEGER PRIMARY KEY,
  Nome Text NOT NULL,
  Data_de_nascimento DATE NOT NULL,
  Altura INTEGER NOT NULL,
  Nacionalidade Text NOT NULL
);

drop table if exists Clube;

create table Clube(
  id_Clube INTEGER PRIMARY KEY,
  Nome Text UNIQUE NOT NULL,
  Data_de_Fundação DATE NOT NULL,
  Cores Text NOT NULL,
  id_Pavilhão INTEGER REFERENCES Pavilhão
);

drop table if exists Pavilhão;

create table Pavilhão(
  id_Pavilhão INTEGER PRIMARY KEY,
  Nome Text NOT NULL,
  Morada Text NOT NULL
);

drop table if exists Jogo;

create table Jogo(
  id_Jogo INTEGER PRIMARY KEY,
  Jornada INTEGER NOT NULL,
  Data DATE NOT NULL,
  id_Pavilhão INTEGER REFERENCES Pavilhão,
  id_ClubeVisitado INTEGER REFERENCES Clube,
  id_ClubeVisitante INTEGER REFERENCES Clube
);

drop table if exists Árbitro;

create table Árbitro(
  id_Árbitro INTEGER PRIMARY KEY,
  Nome Text NOT NULL,
  Função Text NOT NULL CHECK (Função in ('Comissário', 'Árbitro Principal', 'Árbitro Auxiliar 1', 'Árbitro Auxiliar 2', 'Marcador', 'Marcador Auxiliar', 'Cronometrista', 'Operador 24 segundos'))
);

drop table if exists Estatística;

create table Estatística(
  id_Estatística INTEGER PRIMARY KEY,
  Tipo Text NOT NULL CHECK (Tipo in ('Pontos', 'Ressaltos', 'FaltasSofridas', 'FaltasCometidas', 'Assistências', 'Valorização', 'Roubos', 'Minutos', 'Bloqueios', 'Substituição')),
  Número INTEGER NOT NULL DEFAULT 0
);

drop table if exists ÁrbitrosnoJogo;

create table ÁrbitrosnoJogo(
  id_Árbitro INTEGER REFERENCES Árbitro,
  id_Jogo INTEGER REFERENCES Jogo,
  PRIMARY KEY (id_Árbitro, id_Jogo)
);

drop table if exists JogadoresNoClube;

create table JogadoresNoClube(
  id_Jogador INTEGER REFERENCES Jogador,
  id_Clube INTEGER REFERENCES Clube,
  PRIMARY KEY (id_Jogador, id_Clube)
);

drop table if exists EstatísticaJogador;

create table EstatísticaJogador(
  id_Jogador INTEGER REFERENCES Jogador,
  id_Estatística INTEGER REFERENCES Estatística,
  PRIMARY KEY (id_Jogador, id_Estatística)
);

drop table if exists EstatísticaJogo;

create table EstatísticaJogo(
  id_Jogo INTEGER REFERENCES Jogo,
  id_Estatística INTEGER REFERENCES Estatística,
  PRIMARY KEY (id_Jogo, id_Estatística)
);

drop table if exists EstatísticaClube;

create table EstatísticaClube(
  id_Clube INTEGER REFERENCES Clube,
  id_Estatística INTEGER REFERENCES Estatística,
  PRIMARY KEY (id_Clube, id_Estatística)
);

drop table if exists Prémio;

create table Prémio(     
  id_Jogador INTEGER REFERENCES Jogador,
  id_Estatística INTEGER REFERENCES Estatística,
  Nome Text UNIQUE NOT NULL CHECK (Nome in ('MVP', 'Melhor Defesa', 'Melhor atacante')),
  PRIMARY KEY (id_Jogador, id_Estatística)
);

drop table if exists EstatísticaSubstituição;

create table EstatísticaSubstituição(
  id_Estatística INTEGER REFERENCES Estatística PRIMARY KEY,
  id_JogadorEntra INTEGER REFERENCES Jogador,
  id_JogadorSai INTEGER REFERENCES Jogador
);

drop table if exists EstatísticaPontos;

create table EstatísticaPontos(
  id_Estatística INTEGER REFERENCES Estatística PRIMARY KEY,
  Quarto INTEGER NOT NULL
);
