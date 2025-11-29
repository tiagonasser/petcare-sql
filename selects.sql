-- 1. Animais e seus donos
SELECT a.nome AS Animal, a.especie, d.nome AS Dono
FROM Animal a
JOIN Dono d ON a.id_dono = d.id_dono;

-- 2. Consultas feitas por 'Dr. João'
SELECT c.id_consulta, c.data, c.hora, v.nome AS Veterinario
FROM Consulta c
JOIN Veterinario v ON c.id_vet = v.id_vet
WHERE v.nome = 'Dr. João';

-- 3. Pagamentos ordenados por valor
SELECT id_pagamento, valor, forma_pagamento
FROM Pagamento
ORDER BY valor DESC;

-- 4. Exames realizados por 'Mimi'
SELECT e.tipo, e.resultado
FROM Exame e
JOIN Consulta c ON e.id_consulta = c.id_consulta
JOIN Animal a ON c.id_animal = a.id_animal
WHERE a.nome = 'Mimi';

-- 5. Mostrar os dois primeiros donos cadastrados
SELECT * FROM Dono
LIMIT 2;
