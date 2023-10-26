create database Produtos character set utf8mb4 collate utf8mb4_unicode_ci;
use Produtos;

create table produtos(
referencia varchar(3) primary key,
descocao varchar(50) unique,
estoque int not null default 0);

INSERT INTO produtos VALUES ('001','Feijão',10);
INSERT INTO produtos VALUES ('002','Arroz',5);
INSERT INTO produtos VALUES ('003','Farinha',15);


select * from produtos;

create table itensvenda(
Venda INT,
produto VARCHAR(3),
quantidade INT);

INSERT INTO itensvenda VALUES(1,'001',3);
INSERT INTO itensvenda VALUES(1,'002',1);
INSERT INTO itensvenda VALUES(1,'003',5);


SELECT * FROM itensvenda;
DELETE from itensvenda where 'descocao' = 'Feijão';
SELECT * FROM produtos;

DELIMITER $
CREATE TRIGGER Tgr_ItensVenda_Insert AFTER INSERT
ON itensvenda
FOR EACH ROW
BEGIN
UPDATE produtos SET estoque = estoque - NEW.quantidade
WHERE referencia = NEW.produto;
END$


CREATE TRIGGER Trg_ItensVenda_Insert AFTER DELETE
ON itensvenda
FOR EACH ROW
BEGIN
	UPDATE produtos SET estoque = estoque + OLD.quantidade
WHERE referencia = OLD.produto;
END$
DELIMITER ;
