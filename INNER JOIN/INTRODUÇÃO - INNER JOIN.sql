create database if not exists loja;
use loja;

CREATE TABLE if not exists clientes (
  id INT auto_increment PRIMARY KEY,
  nome varchar (100) NOT NULL,
  email VARCHAR(100) NOT NULL
);
CREATE TABLE if not exists pedidos(
 id INT AUTO_INCREMENT PRIMARY KEY,
 id_cliente INT,
 data_pedido DATE NOT NULL,
 valor DECIMAL (10, 2) NOT NULL,
 FOREIGN KEY (id_cliente) references clientes(id)
);

INSERT INTO clientes (nome,email) VALUES 
('João Silva', 'joao@gmail.com'),
('Maria Souza','maria@gmail.com'),
('Carlos Oliveira', 'carlos@gmail.com'),
('Sonia Lopes', 'sonia@gmail.com'),
('Pedro Albuquerque', 'pedro@gmail.com'),
('Roberto Martins','roberto@gmail.com');

INSERT INTO pedidos (id_cliente,data_pedido, valor) VALUES
(1,'2024-09-01', 150.00),
(1, '2024-09-15' ,200.00),
(2, '2024-09-05', 100.00),
(3, '2023-05-19' ,210.00),
(5, 2025-03-12, 300.00),
(4, '2022-09-02', 400.00);

SELECT  DISTINCT
c.nome,
c.email,
p.data_pedido,
p.valor
FROM
clientes c
INNER JOIN 
pedidos p ON c.id = p.id_cliente;