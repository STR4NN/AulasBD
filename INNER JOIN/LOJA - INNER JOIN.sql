create database IF NOT EXISTS lojaRenault;
use lojaRenault;

CREATE TABLE IF NOT EXISTS Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Carros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    carro VARCHAR(100),
    ano INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

INSERT INTO Clientes (nome, email, pais) VALUES
('ADILSON KINA', 'adilson.kina@email.com', 'Japão'),
('ARTHUR MOURA', 'arthur.moura@email.com', 'Portugal'),
('DANIEL', 'daniel@email.com', 'Brasil'),
('DIANA BRAITE', 'diana@email.com', 'Alemanha'),
('GABRIEL ANTONIO', 'gabriel.antonio@email.com', 'Brasil'),
('JOAO VITOR', 'joao.vitor@email.com', 'Brasil'),
('JOAO NATSUMI', 'joao.natsumi@email.com', 'Brasil'),
('GABRIELA HOLANDA', 'gabriela@email.com', 'Holanda'),
('JULIA PERES', 'julia.peres@email.com', 'EUA'),
('FABRICIO PISNI', 'fabricio.pisni@email.com', 'Argentina'),
('DAVI RAMOS', 'davi.ramos@email.com', 'Italial'),
('DAVI TAKEDI', 'davi.takedi@email.com', 'Brasil'),
('GABRIEL TOMAZINE', 'gabriel.tomazine@email.com', 'Espanha'),
('HENRIK BASTOS', 'henrik.bastos@email.com', 'Portugal'),
('GUSTAVO LOPES', 'gustavo.lopes@email.com', 'Brasil'),
('GUSTAVO GOMES', 'gustavo.gomes@email.com', 'Lituania'),
('FABIO HENRIQUE', 'fabio.henrique@email.com', 'PERU'),
('IAN RAÇANO', 'ian.racano@email.com', 'CHILE'),
('JOAO GERMANO', 'joao,germano@email.com', 'Alemanha'),
('GABRIEL POSSATO', 'gabriel.possato@email.com', 'França');

INSERT INTO Carros (cliente_id, carro, ano) VALUES
(5, 'DUSTER', 2021),
(12, 'SANDERO', 2020),
(3, 'STEPWAY', 2022),
(8, 'LOGAN', 2019),
(10, 'KWID', 2023),
(6, 'NOVA MASTER', 2018),
(1, 'DUSTER OROCH', 2020),
(15, 'MEGANE', 2021),
(9, 'KWID-E', 2019),
(4, 'KARDIAN', 2023),
(7, 'DUSTER', 2022),
(16, 'SANDERO', 2021),
(11, 'STEPWAY', 2020),
(17, 'LOGAN', 2018),
(2, 'KWID', 2022),
(13, 'NOVA MASTER', 2023),
(18, 'DUSTER OROCH', 2019),
(14, 'MEGANE', 2020),
(19, 'KWID-E', 2021),
(20, 'KARDIAN', 2022);

-- DUSTER
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'DUSTER';

-- SANDERO
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'SANDERO';

-- STEPWAY
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'STEPWAY';

-- LOGAN
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'LOGAN';

-- KWID
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'KWID';

-- NOVA MASTER
SELECT DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'NOVA MASTER';

-- DUSTER OROCH
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'DUSTER OROCH';

-- MEGANE
SELECT  DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'MEGANE';

-- KWID-E
SELECT DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'KWID-E';

-- KARDIAN
SELECT DISTINCT c.nome, c.email, car.carro
FROM Clientes c
INNER JOIN Carros car ON c.id = car.cliente_id
WHERE car.carro = 'KARDIAN';

