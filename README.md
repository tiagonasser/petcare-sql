# 🐾 Sistema de Gestão da Clínica Veterinária PetCare

## 📌 Descrição
Este projeto acadêmico implementa um banco de dados relacional para uma clínica veterinária, integrando modelagem lógica, normalização (1FN, 2FN e 3FN) e manipulação de dados com SQL.  
O objetivo é aplicar comandos de **DML (INSERT, SELECT, UPDATE, DELETE)** em um mini-mundo realista, garantindo integridade referencial e ausência de redundâncias.

---

## 🚀 Como executar

1. Abra o **pgAdmin 4** e conecte-se ao servidor PostgreSQL.
2. Crie o banco de dados com o nome `petcare_db`.
3. Execute o script de criação das tabelas (`create_tables.sql`).
4. Execute o script `inserts.sql` para povoar as tabelas com dados fictícios.
5. Execute o script `selects.sql` para realizar consultas.
6. Execute o script `updates_deletes.sql` para manipulação de dados.

---

## 📂 Estrutura do repositório

- `create_tables.sql` → criação das tabelas com PKs e FKs.
- `inserts.sql` → comandos **INSERT** para povoar as tabelas principais.
- `selects.sql` → consultas **SELECT** (JOIN, WHERE, ORDER BY, LIMIT).
- `updates_deletes.sql` → comandos **UPDATE** e **DELETE** com condições.
- `README.md` → documentação e instruções de execução.

---

## 🧠 Exemplos de comandos


```sql
INSERT

INSERT INTO Dono (nome, cpf, telefone, endereco)
VALUES ('Carlos Silva', '12345678900', '32999999999', 'Rua A, 100');

SELECT

SELECT a.nome AS Animal, a.especie, d.nome AS Dono
FROM Animal a
JOIN Dono d ON a.id_dono = d.id_dono;



UPDATE

UPDATE Dono SET telefone = '32977777777' WHERE id_dono = 1;



DELETE

DELETE FROM Exame WHERE id_exame = 2;

---

✅ Objetivos de Aprendizagem
- Aplicar comandos SQL em um banco de dados real.
- Integrar conceitos de modelagem lógica e normalização com manipulação de dados.
- Utilizar ferramentas de administração (pgAdmin 4) para testes e execução.
- Versionar e compartilhar código em repositório público no GitHub.

👨‍💻 Autor
Projeto desenvolvido por Tiago.
