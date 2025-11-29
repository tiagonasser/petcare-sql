-- DONO
INSERT INTO Dono (nome, cpf, telefone, endereco)
VALUES ('Carlos Silva', '12345678900', '32999999999', 'Rua A, 100'),
       ('Maria Souza', '98765432100', '32988888888', 'Av. B, 200');

-- ANIMAL
INSERT INTO Animal (id_dono, nome, especie, raca, idade, peso)
VALUES (1, 'Rex', 'Cachorro', 'Labrador', 5, 30.5),
       (2, 'Mimi', 'Gato', 'Persa', 3, 4.2);

-- VETERINÁRIO
INSERT INTO Veterinario (nome, crmv, especialidade)
VALUES ('Dr. João', 'CRMV1234', 'Clínico Geral'),
       ('Dra. Ana', 'CRMV5678', 'Dermatologia');

-- CONSULTA
INSERT INTO Consulta (id_animal, id_vet, data, hora, diagnostico)
VALUES (1, 1, '2025-11-20', '10:00', 'Check-up geral'),
       (2, 2, '2025-11-21', '14:00', 'Problema de pele');

-- EXAME
INSERT INTO Exame (id_consulta, tipo, resultado)
VALUES (1, 'Hemograma', 'Normal'),
       (2, 'Biópsia', 'Inflamação leve');

-- TRATAMENTO
INSERT INTO Tratamento (id_consulta, descricao, medicamento, duracao)
VALUES (2, 'Tratamento dermatológico', 'Pomada X', '7 dias');

-- PAGAMENTO
INSERT INTO Pagamento (id_consulta, valor, data_pagamento, forma_pagamento)
VALUES (1, 150.00, '2025-11-20', 'Cartão'),
       (2, 200.00, '2025-11-21', 'Dinheiro');
