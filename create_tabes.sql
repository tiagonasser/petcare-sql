-- Tabela Dono
CREATE TABLE Dono (
  id_dono SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  cpf VARCHAR(11),
  telefone VARCHAR(15),
  endereco VARCHAR(150)
);

-- Tabela Animal
CREATE TABLE Animal (
  id_animal SERIAL PRIMARY KEY,
  id_dono INT REFERENCES Dono(id_dono),
  nome VARCHAR(50),
  especie VARCHAR(50),
  raca VARCHAR(50),
  idade INT,
  peso DECIMAL(5,2)
);

-- Tabela Veterinario
CREATE TABLE Veterinario (
  id_vet SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  crmv VARCHAR(20),
  especialidade VARCHAR(50)
);

-- Tabela Consulta
CREATE TABLE Consulta (
  id_consulta SERIAL PRIMARY KEY,
  id_animal INT REFERENCES Animal(id_animal),
  id_vet INT REFERENCES Veterinario(id_vet),
  data DATE,
  hora TIME,
  diagnostico TEXT
);

-- Tabela Exame
CREATE TABLE Exame (
  id_exame SERIAL PRIMARY KEY,
  id_consulta INT REFERENCES Consulta(id_consulta),
  tipo VARCHAR(50),
  resultado TEXT
);

-- Tabela Tratamento
CREATE TABLE Tratamento (
  id_tratamento SERIAL PRIMARY KEY,
  id_consulta INT REFERENCES Consulta(id_consulta),
  descricao TEXT,
  medicamento VARCHAR(50),
  duracao VARCHAR(20)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
  id_pagamento SERIAL PRIMARY KEY,
  id_consulta INT REFERENCES Consulta(id_consulta),
  valor DECIMAL(8,2),
  data_pagamento DATE,
  forma_pagamento VARCHAR(30)
);
