-- UPDATE

-- Atualizar telefone do dono
UPDATE Dono SET telefone = '32977777777' WHERE id_dono = 1;

-- Atualizar diagnóstico da consulta
UPDATE Consulta SET diagnostico = 'Revisão anual' WHERE id_consulta = 1;

-- Atualizar valor do pagamento
UPDATE Pagamento SET valor = 180.00 WHERE id_pagamento = 2;

-- DELETE

-- Excluir exame
DELETE FROM Exame WHERE id_exame = 2;

-- Excluir tratamento
DELETE FROM Tratamento WHERE id_tratamento = 1;

-- Excluir pagamento
DELETE FROM Pagamento WHERE id_pagamento = 1;
