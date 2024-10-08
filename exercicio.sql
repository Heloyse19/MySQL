-- CRIANDO O BANCO --
create database heloBD;
use heloBD;

-- CRIANDO A TABELA VENDAS --
create table vendas(
	id int auto_increment primary key,
    produto varchar(100),
    categoria varchar(50),
    quantidade int,
    preco decimal(4,2),
    data_venda date
);
-- INSERINDO VALORES --
insert into vendas(produto,categoria,quantidade,preco,data_venda) values
('arroz','alimentos','5','10.00','2024-09-01'),
('feijao','alimentos','3','7.40','2024-09-02'),
('sabao','limpeza','2','12.00','2024-09-02'),
('cafe','alimentos','6','8.00','2024-09-03'),
('detergente','limpeza','4','5.00','2024-09-03'),
('leite','alimentos','10','4.50','2024-09-04'),
('sabonete','higiene','6','3.00','2024-09-04'),
('pao','alimentos','15','1.50','2024-09-05'),
('shampoo','higiene','1','15.00','2024-09-05'),
('creme dental','higiene','3','8.00','2024-09-06');

-- USANDO A FUNÇÃO COUNT --
SELECT categoria, COUNT(*) AS quantidade
FROM vendas
GROUP BY categoria;

-- Total VENDAS DA CATEGORIA ALIMENTOS --	
SELECT SUM(quantidade) AS total
FROM vendas
WHERE categoria = 'alimentos'
GROUP BY categoria;

-- TOTAL DAS VENDAS --
SELECT SUM(quantidade) AS total_vendas
FROM vendas;

-- MEDIA DOS PREÇOS --
SELECT 
AVG(preco) AS media_precos,
AVG(quantidade) AS media_quantidade
FROM vendas;

select produto,
avg(preco_unidade) as preco_medio
from vendas group by produto;

select avg(quantidade) as medida_produtos_por_venda
from vendas;

select MIN(preco) as preco_min
from vendas;

select MAX(preco) as preco_max
from vendas;

-- Maior quantidade de produtos vendidos em uma venda
SELECT SUM(quantidade) AS total_quantidade
FROM vendas;

-- Menor quantidade de produtos vendidos em uma venda
SELECT 
id, 
SUM(quantidade) AS total_quantidade
FROM vendas GROUP BY  id
ORDER BY quantidade ASC
LIMIT 1;

SELECT produto, AVG (preco)AS preco_total
FROM vendas
WHERE categoria = 'higiene'
GROUP BY produto;

select MAX(preco) as preco_maximo
from vendas;
