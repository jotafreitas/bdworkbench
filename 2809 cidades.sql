create database Mercado character set utf8mb4 collate utf8mb4_unicode_ci;
use Mercado;
create table fornecedor(
cod_fornecedor varchar(10) not null,
nome varchar(30),
cidade_sede varchar(30),
grupo_cod_fornecer varchar(10),
primary key(cod_fornecedor)
);
create table material(
cod_material varchar(10) not null,
cod_fornecedor varchar(10) not null,
nome varchar(30),
descricao varchar(30),
primary key(cod_material),
constraint material foreign key(cod_fornecedor) references fornecedor(cod_fornecedor)
);
insert into fornecedor values('ABC','ABC Materiais Eletronicos','Vitoria',null);
insert into fornecedor values('XYZ','XYZ Materiais de Escritorio','Rio de Janeiro','HiX');
insert into fornecedor values('Hidra','Hidra Materiais Hidraulicos','Sao Paulo','HiX');
insert into fornecedor values('HiX','HidraX Materiais Eletricos H','Sao Paulo',null);
select * from fornecedor;

insert into material values('123','ABC','Tomada eletrica 10A Nova',null);
insert into material values('234','ABC','Disjuntor 25A',null);
insert into material values('345','XYZ','Resma Papel A4',null);
insert into material values('456','XYZ','Toner Imp HR5522',null);
insert into material values('678','Hidra','Cano PVC 1/2',null);
insert into material values('680','Hidra','Cano PVC 3/4',null);
insert into material values('681','Hidra','Joelho 1/2',null);
insert into material values('682','Hidra','Junsta 1/2',null);
insert into material values('1234','ABC','Tomada eletrica 20A Nova',null);
insert into material values('2345','XYZ','Caneta Azul',null);
insert into material values('4567','XYZ','Grampeador',null);
insert into material values('4568','XYZ','Caneta Marca TXT amarela',null);
insert into material values('4569','XYZ','Lapis HB',null);

#ATIVIDADE NOVA ABAIXO#

create database vendas;
use vendas;

CREATE TABLE CIDADE (
    CODCID   INTEGER NOT NULL,
    NOMECID  VARCHAR(60),
    UF       CHAR(2)
);

CREATE TABLE CLIENTE (
    CODCLI    INTEGER NOT NULL,
    NOME      VARCHAR(60),
    ENDERECO  VARCHAR(60),
    CODCID    SMALLINT NOT NULL,
    CEP       CHAR(10),
    CPF       CHAR(20)
);

CREATE TABLE ITEMPEDIDO (
    NUMPED   INTEGER NOT NULL,
    CODPROD  INTEGER NOT NULL,
    QTDADE   SMALLINT
);

CREATE TABLE PEDIDO (
    NUMPED   INTEGER NOT NULL,
    ENTREGA  SMALLINT,
    CODCLI   INTEGER,
    CODVEND  INTEGER
);

CREATE TABLE PRODUTO (
    CODPROD    INTEGER NOT NULL,
    DESCRICAO  VARCHAR(25),
    UNIDADE    CHAR(3),
    VALOR_UN   NUMERIC(10,2)
);

CREATE TABLE SETOR (
    CODSETOR   INTEGER NOT NULL,
    NOMESETOR  VARCHAR(50)
);

CREATE TABLE VENDEDOR (
    CODVEND   INTEGER NOT NULL,
    NOMEVEND  VARCHAR(60),
    CODSETOR  SMALLINT,
    SALARIO   NUMERIC(10,2)
);

INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (1, 'DOURADOS', 'MS');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (2, 'CAMPO GRANDE', 'MS');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (3, 'SÃO PAULO', 'SP');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (4, 'CUIABA', 'MT');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (5, 'FLORIANÓPOLIS', 'SC');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (6, 'SÃO SEBASTIÃO', 'SC');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (7, 'CAARAPÓ', 'MS');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (8, 'BRASÍLIA', 'DF');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (10, 'TUPÃ', 'SP');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (11, 'SÃO JOSÉ DO RIO PRETO', 'SP');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (12, 'APUCARANA', 'PR');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (13, 'JARDIM', 'MS');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (14, 'JATEI', 'MS');
INSERT INTO CIDADE (CODCID, NOMECID, UF) VALUES (15, 'AMAMBAI', 'MS');

COMMIT WORK;

INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (1, 'Nicolash Pereira Rodrigues', 'Rua José Germano, 1456', 1, '13971-150 ', '13971-150           ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (2, 'Cauã Oliveira Azevedo', 'Rua Luís Squilace, 175', 3, '05326-010 ', '855.498.901-51      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (3, 'Martim Melo Araujo', 'Rua de Mizar, 429', 2, '32550-220 ', '421.837.827-49      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (4, 'Matheus Pinto Almeida', 'Travessa Getúlio Vargas, 1426', 4, '54250-382 ', NULL);
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (5, 'Estevan Pereira Cardoso', 'Travessa Maria da Penha Costa, 692', 5, '29707-190 ', '231.416.173-41      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (6, 'Rebeca Sousa Fernandes', 'Avenida da Saudade, 1899', 3, '09030-030 ', NULL);
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (7, 'Thaís Melo Rodrigues', 'Rua N, 1379', 11, '35900-626 ', '884.501.839-36      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (8, 'Matheus Martins Ribeiro', 'Rua Ubaldo Damiano, 1006', 1, '17204-281 ', NULL);
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (9, 'Leonardo Barros Melo', 'Rua Treze de Maio, 808', 2, '65900-220 ', '735.643.235-89      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (10, 'Emilly Rocha Ribeiro', 'Passagem Santa Luzia, 221', 1, '66117-060 ', '613.666.706-12      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (11, 'Luan Goncalves Melo', 'Rua Chapada Velha, 944', 3, '05728-070 ', '656.106.888-25      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (12, 'Júlia Gomes Araujo', 'Rua Alamanda, 751', 3, '06728-320 ', '184.206.138-00      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (13, 'Camila Rodrigues Barbosa', 'Rua dos Cumarus, 1977', 2, '38703-678 ', '973.600.869-06      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (14, 'Melissa Araujo Almeida', 'Rua 104A, 1820', 1, '74083-310 ', '677.324.633-40      ');
INSERT INTO CLIENTE (CODCLI, NOME, ENDERECO, CODCID, CEP, CPF) VALUES (15, 'Laura Barros Rodrigues', 'Rua Doutor Muraí, 697', 3, '03159-080 ', '670.936.770-37      ');

COMMIT WORK;

INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (1, 'JARDIM');
INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (2, 'VENENOS');
INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (3, 'PEÇAS');
INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (4, 'FERRAMENTAS');
INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (5, 'VACINAS');
INSERT INTO SETOR (CODSETOR, NOMESETOR) VALUES (6, 'VESTUÁRIO');

COMMIT WORK;

INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (1, 'ANTONIO CARLOS DA SILVA', 1, 500);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (2, 'ROGERIO SANTOS AMADO', 1, 550);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (3, 'JOÃO FLORISVALDO JESUS', 2, 800);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (4, 'PEDRO CELESTINO VENÂNCIO', 3, 1000);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (5, 'JAIR COSTA', 3, 1000);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (6, 'ELIZA DOS ANJOS', 4, 700);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (7, 'DENIS OTTANO', 5, 600);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (8, 'RONEI ARAÚJO BATISTA', 6, 400);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (9, 'JAMES CHEN VILAREAL', 6, 400);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (10, 'FABIO BENDITO REIS', 4, 700);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (11, 'EDILSON NOGUEIRA', 2, 800);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (12, 'RODOLFO DOS SANTOS', 4, 450);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (13, 'CRISTIANE ANTUNES ROCHA', 3, 450);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (14, 'CRISLAINE RUBENS AZEVEDO', 1, 500);
INSERT INTO VENDEDOR (CODVEND, NOMEVEND, CODSETOR, SALARIO) VALUES (15, 'JADER DE AMARO', 4, 1500);

COMMIT WORK;

INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (1, 5, 1, 3);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (2, 2, 2, 5);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (3, 10, 4, 1);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (4, 20, 1, 2);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (5, 2, 8, 9);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (6, 2, 2, 4);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (7, 10, 5, 7);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (8, 2, 14, 11);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (9, 5, 15, 15);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (10, 5, 15, 4);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (11, 20, 9, 10);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (12, 10, 9, 11);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (13, 1, 5, 6);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (14, 1, 13, 9);
INSERT INTO PEDIDO (NUMPED, ENTREGA, CODCLI, CODVEND) VALUES (15, 20, 12, 5);

COMMIT WORK;

INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (1, 'MATA CUPIM', 'UN ', 25);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (2, 'GLIFOSSATO', 'UN ', 12);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (3, 'RANDAP', 'UN ', 33);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (4, 'SERRA CIRCULAR', 'UN ', 200);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (5, 'ROÇADEIRA', 'UN ', 378);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (6, 'MOTO SERRA', 'UN ', 400);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (7, 'CORTADOR DE GRAMA', 'UN ', 800);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (8, 'PÁ DE PONTA', 'UN ', 70);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (9, 'VACINA BDD', 'CX ', 299);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (10, 'VACINA DDD', 'CX ', 200);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (11, 'MASCARA', 'UN ', 5);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (12, 'MASCARA SILICONE', 'UN ', 10);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (13, 'PINO CORTADOR', 'UN ', 5);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (14, 'ROSCA SERRA 22', 'UN ', 12);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (15, 'MANGUEIRA 04', 'M  ', 25);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (16, 'BICO MANGUEIRA', 'UN ', 3);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (17, 'ROUPA PROTECAO', 'UN ', 53);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (18, 'PULVERIZADOR', 'UN ', 76);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (19, 'CHAPEU DE PALHA', 'UN ', 34);
INSERT INTO PRODUTO (CODPROD, DESCRICAO, UNIDADE, VALOR_UN) VALUES (20, 'LUVA DE BORRACHA', 'UN ', 2);

COMMIT WORK;

INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (1, 1, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (1, 3, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (1, 10, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (2, 4, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (3, 2, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (3, 3, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (4, 9, 5);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (4, 11, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (4, 12, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (5, 2, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (5, 11, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (5, 18, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (5, 20, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (6, 5, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (7, 7, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (8, 8, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (10, 2, 2);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (10, 12, 3);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (10, 17, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (10, 18, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (10, 19, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (13, 8, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (13, 19, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (13, 20, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (14, 13, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (14, 17, 1);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (15, 15, 20);
INSERT INTO ITEMPEDIDO (NUMPED, CODPROD, QTDADE) VALUES (15, 16, 1);

COMMIT WORK;



/******************************************************************************/
/*                                Primary keys                                */
/******************************************************************************/

ALTER TABLE CIDADE ADD CONSTRAINT PK_CIDADE PRIMARY KEY (CODCID);
ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (CODCLI);
ALTER TABLE ITEMPEDIDO ADD CONSTRAINT PK_ITEMPEDIDO PRIMARY KEY (NUMPED, CODPROD);
ALTER TABLE PEDIDO ADD CONSTRAINT PK_PEDIDO PRIMARY KEY (NUMPED);
ALTER TABLE PRODUTO ADD CONSTRAINT PK_PRODUTO PRIMARY KEY (CODPROD);
ALTER TABLE SETOR ADD CONSTRAINT PK_SETOR PRIMARY KEY (CODSETOR);
ALTER TABLE VENDEDOR ADD CONSTRAINT PK_VENDEDOR PRIMARY KEY (CODVEND);


/******************************************************************************/
/*                                Foreign keys                                */
/******************************************************************************/

ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_1 FOREIGN KEY (CODCID) REFERENCES CIDADE (CODCID);
ALTER TABLE ITEMPEDIDO ADD CONSTRAINT FK_ITEMPEDIDO_1 FOREIGN KEY (CODPROD) REFERENCES PRODUTO (CODPROD); #
ALTER TABLE ITEMPEDIDO ADD CONSTRAINT FK_ITEMPEDIDO_2 FOREIGN KEY (NUMPED) REFERENCES PEDIDO (NUMPED);
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_1 FOREIGN KEY (CODCLI) REFERENCES CLIENTE (CODCLI);
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_2 FOREIGN KEY (CODVEND) REFERENCES VENDEDOR (CODVEND);
ALTER TABLE VENDEDOR ADD CONSTRAINT FK_VENDEDOR_1 FOREIGN KEY (CODSETOR) REFERENCES SETOR (CODSETOR); #

#faça as atividades da atividade do TEAMS

#quantas cidades tem cadastradas no banco? 1
select count(CODCID) from CIDADE;
#quantos clientes tem cadastrado no banco? 2
select count(CODCLI) from CLIENTE;
#quantos produtos tem no banco? 3
select count(CODPROD) from PRODUTO;
#quantos setores tem no banco? 4
select count(CODSETOR) from SETOR;
#quantos pedidos tem no banco? 5
select count(NUMPED) from PEDIDO;
#qual é o maior salário dos vendedores? 6
select max(SALARIO) from VENDEDOR;
#quem possui o maior salário? 7
select * from VENDEDOR where SALARIO=1500;
#qual o menor salário dos vendedores? 8
select min(SALARIO) from VENDEDOR;
#quem possui o menor salário? 9
select * from VENDEDOR where SALARIO=400;
#qual pedido teve a maior venda em quantidade? 10
select * from ITEMPEDIDO where NUMPED=15;
select max(NUMPED) from ITEMPEDIDO;
#qual pedido teve a menor venda em quantidade? 11
select * from ITEMPEDIDO where NUMPED=1;
select min(NUMPED) from ITEMPEDIDO;
#qual o produto mais barato? 12
select min(VALOR_UN) from PRODUTO;
select * from PRODUTO where VALOR_UN=2;
#qual o produto mais caro? 13
select max(VALOR_UN) from PRODUTO;
select * from PRODUTO where VALOR_UN=800;
#quantos vendedores existem no setor de ferramentas? 14
SELECT * FROM VENDEDOR WHERE CODSETOR=4;
SELECT COUNT(CODVEND) FROM VENDEDOR WHERE CODSETOR=4;
#quantos pedidos o cliente estevan pereira cardoso fez? 15
SELECT * FROM CLIENTE;
SELECT * FROM PEDIDO WHERE CODCLI=5;
SELECT COUNT(CODCLI) FROM PEDIDO WHERE CODCLI=5;


##################################################################
# EXERCICIO 28/09/2023
#################################################################
create database lojas character set utf8mb4 collate utf8mb4_unicode_ci;
use lojas;
create table clientes (
CPF varchar(14),
Nome varchar(30),
RG varchar(10),
fone varchar(11),
id_estado int,
id_cidade int,
id_sexo int,
id_nacionalidade int,
id_raca int,
id_escolaridade int
);

#CRIEI AS FK
alter table clientes add constraint id_estado foreign key (id_estado) references estado (id_estado);
alter table clientes add constraint fk_cliente_cidade foreign key (id_cidade) references cidade (id_cidade);
alter table clientes add constraint fk_cliente_sexo foreign key (id_sexo) references sexo (id_sexo);
alter table clientes add constraint fk_cliente_nacionalidade foreign key (id_nacionalidade) references Nacionalidade (id_nacionalidade);
alter table clientes add constraint fk_cliente_raca foreign key (id_raca) references Raça (id_raca);
alter table clientes add constraint fk_cliente_escolaridade foreign key (id_escolaridade) references Escolaridade (id_escolaridade);

create table estado (
id_estado int auto_increment primary key,
Estado varchar(30)
);

create table cidade (
id_cidade int auto_increment primary key,
Cidade varchar(30)
);

create table sexo (
id_sexo int auto_increment primary key,
Sexo varchar(20)
);

create table Nacionalidade (
id_nacionalidade int auto_increment primary key,
Nacionalidade varchar(30)
);

create table Raça (
id_raca int auto_increment primary key,
raca varchar(30)
);

create table Escolaridade (
id_escolaridade int auto_increment primary key,
Escolaridade varchar (30)
);


#################################
#tabela criada, agora os inserts que o exercício pede
###################################################

select * from estado;
insert into estado values(null,'Acre');
insert into estado values(null,'Alagoas');
insert into estado values(null,'Amapá');
insert into estado values(null,'Amazonas');
insert into estado values(null,'Bahia');
insert into estado values(null,'Ceará');
insert into estado values(null,'Distrito Federal');
insert into estado values(null,'Espírito Santo');
insert into estado values(null,'Goiás');
insert into estado values(null,'Maranhão');
insert into estado values(null,'Mato Grosso');
insert into estado values(null,'Mato Grosso do Sul');
insert into estado values(null,'Minas Gerais');
insert into estado values(null,'Pará');
insert into estado values(null,'Paraíba');
insert into estado values(null,'Paraná');
insert into estado values(null,'Pernambuco');
insert into estado values(null,'Piauí');
insert into estado values(null,'Rio de Janeiro');
insert into estado values(null,'Rio Grande do Norte');
insert into estado values(null,'Rio Grande do Sul');
insert into estado values(null,'Rondônia');
insert into estado values(null,'Roraima');
insert into estado values(null,'Santa Catarina');
insert into estado values(null,'São Paulo');
insert into estado values(null,'Sergipe');
insert into estado values(null,'Tocantins');

###########################
# 5 cidades do acre #
insert into cidade values(null,'Rio Branco');
insert into cidade values(null,'Cruzeiro do Sul');
insert into cidade values(null,'Sena Madureira');
insert into cidade values(null,'Tarauacá');
insert into cidade values(null,'Feijo');

###########################
# 5 cidades de alagoas #
insert into cidade values(NULL,'Maceió');
insert into cidade values(null,'Arapiraca');
insert into cidade values(null,'Palmeira dos Índios');
insert into cidade values(null,'Penedo');
insert into cidade values(null,'São Miguel dos Campos');

############################
# 5 cidades de amapá
insert into cidade values(NULL,'Macapá');
insert into cidade values(null,'Santana');
insert into cidade values(null,'Laranjal do Jari');
insert into cidade values(null,'Oiapoque');
insert into cidade values(null,'Mazagão');

###############################
# 5 cidades do amazonas
insert into cidade values(null,'Manaus');
insert into cidade values(null,'Parintins');
insert into cidade values(null,'Itacoatiara');
insert into cidade values(null,'Manacapuru');
insert into cidade values(null,'Tefé');

##########################################
#5 cidades da bahia
insert into cidade values(null,'Salvador');
insert into cidade values(null,'Feira de Santana');
insert into cidade values(null,'Vitória da Conquista');
insert into cidade values(null,'Itabuna');
insert into cidade values(null,'Ilhéus');

######################################
#5 cidades de ceará
insert into cidade values(null,'Fortaleza');
insert into cidade values(null,'Caucaia');
insert into cidade values(null,'Juazeiro do Norte');
insert into cidade values(null,'Maracanaú');
insert into cidade values(null,'Sobral');

#############################################
#5 cidades do df
insert into cidade values(null,'Brasília');
insert into cidade values(null,'Taguatinga');
insert into cidade values(null,'Ceilândia');
insert into cidade values(null,'Gama');
insert into cidade values(null,'Planaltina');

############################################
#5 cidades de espirito santo
insert into cidade values(null,'Vitória');
insert into cidade values(null,'Vila Velha');
insert into cidade values(null,'Cariacica');
insert into cidade values(null,'Serra');
insert into cidade values(null,'Guarapari');

#########################################
#5 cidades de goiás
insert into cidade values(null,'Goiânia');
insert into cidade values(null,'Mineiros');
insert into cidade values(null,'Portelândia');
insert into cidade values(null,'Jataí');
insert into cidade values(null,'Rio Verde');

########################################
#5 cidades maranhão
insert into cidade values(null,'São Luís');
insert into cidade values(null,'Imperatriz');
insert into cidade values(null,'São José de Ribamar');
insert into cidade values(null,'Caxias');
insert into cidade values(null,'Timon');

########################################
#5 cidades do mato grosso
insert into cidade values(null,'Cuiabá');
insert into cidade values(null,'Rondonópolis');
insert into cidade values(null,'Sorriso');
insert into cidade values(null,'Sinop');
insert into cidade values(null,'Cáceres');

######################################
#5 cidades do mato grosso do sul
insert into cidade values(null,'Alcinópolis');
insert into cidade values(null,'Campo Grande');
insert into cidade values(null,'Figueirão');
insert into cidade values(null,'Dourados');
insert into cidade values(null,'Ribas do Rio Pardo');

############################################
#5 cidades de minas gerais
insert into cidade values(null,'Belo Horizonte');
insert into cidade values(null,'Uberlândia');
insert into cidade values(null,'Juiz de Fora');
insert into cidade values(null,'Montes Claros');
insert into cidade values(null,'Novorizonte');

#################################################
#5 cidades do pará
insert into cidade values(null,'Belém');
insert into cidade values(null,'Ananindeua');
insert into cidade values(null,'Santarém');
insert into cidade values(null,'Marabá');
insert into cidade values(null,'Castanhal');

###############################################
#5 cidades da paraíba
insert into cidade values(null,'João Pessoa');
insert into cidade values(null,'Campina Grande');
insert into cidade values(null,'Santa Rita');
insert into cidade values(null,'Patos');
insert into cidade values(null,'Bayeux');

####################################################
#5 cidades do paraná
insert into cidade values(null,'Curitiba');
insert into cidade values(null,'Colorado');
insert into cidade values(null,'Ponta Grossa');
insert into cidade values(null,'Toledo');
insert into cidade values(null,'Cascavel');

######################################################
#5 cidades de pernambuco
insert into cidade values(null,'Recife');
insert into cidade values(null,'Jaboatão dos Guararapes');
insert into cidade values(null,'Olinda');
insert into cidade values(null,'Caruaru');
insert into cidade values(null,'Petrolina');

############################################################
#5 cidades de piauí
insert into cidade values(null,'Teresina');
insert into cidade values(null,'Parnaíba');
insert into cidade values(null,'Picos');
insert into cidade values(null,'Floriano');
insert into cidade values(null,'Piripiri');

#####################################################
#5 cidades do rio 
insert into cidade values(null,'Rio de Janeiro');
insert into cidade values(null,'Niterói');
insert into cidade values(null,'São Gonçalo');
insert into cidade values(null,'Duque de Caxias');
insert into cidade values(null,'Nova Iguaçu');

#######################################################
#5 cidades do rio grande do norte
insert into cidade values(null,'Natal');
insert into cidade values(null,'Mossoró');
insert into cidade values(null,'Parnamirim');
insert into cidade values(null,'Caicó');
insert into cidade values(null,'Macaíba');

##########################################################
#5 cidades do rio grande do sul
insert into cidade values(null,'Porto Alegre');
insert into cidade values(null,'Caxias do Sul');
insert into cidade values(null,'Pelotas');
insert into cidade values(Null,'Canoas');
insert into cidade values(Null,'Santa Maria');

########################################################
#5 cidades de rondonia
insert into cidade values(null,'Porto Velho');
insert into cidade values(null,'Ji-Paraná');
insert into cidade values(null,'Cacoal');
insert into cidade values(null,'Ariquemes');
insert into cidade values(null,'Vilhena');

###################################################
#5 cidades de roraima
insert into cidade values(null,'Boa Vista');
insert into cidade values(null,'Rorainópolis');
insert into cidade values(null,'Caracaraí');
insert into cidade values(null,'Mucajaí');
insert into cidade values(Null,'São João da Baliza');

###################################################
#5 cidades de santa catarina
insert into cidade values(null,'Florianópolis');
insert into cidade values(null,'Joinville');
insert into cidade values(null,'Blumenau');
insert into cidade values(null,'Itajaí');
insert into cidade values(null,'Chapecó');

############################################################
#5 cidades de sao paulo
insert into cidade values(null,'São Pualo');
insert into cidade values(null,'Campinas');
insert into cidade values(null,'Guarulhos');
insert into cidade values(Null,'Santos');
insert into cidade values(null,'São Bernardo do Campo');

############################################################
#5 cidades de sergipe
insert into cidade values(null,'Aracajú');
insert into cidade values(null,'Nossa Senhora do Socorro');
insert into cidade values(null,'São Cristóvão');
insert into cidade values(null,'Itabaiana');
insert into cidade values(null,'Estância');

#####################################################
#5 cidades do tocantins
insert into cidade values(null,'Palmas');
insert into cidade values(null,'Araguaína');
insert into cidade values(null,'Gurupi');
insert into cidade values(null,'Porto Nacional');
insert into cidade values(null,'Paraíso do Tocantins');

############################################################
# incluir 3 sexos 
insert into sexo values(null,'Masculino');
insert into sexo values(null,'Feminino');
insert into sexo values(null,'Outro');

#######################################################
# inserir nacionalidade brasileira e estrangeira
insert into Nacionalidade values(null,'Brasileiro(a)');
insert into Nacionalidade values(null,'Estrangeiro(a)');

#######################################################
#inserir 5 raças
insert into Raça values(null,'Preto');
insert into Raça values(Null,'Pardo');
insert into Raça values(null,'Amarelo');
insert into Raça values(null,'Indígena');
insert into Raça values(null,'Branco');

############################################################
#inserir 8 tipos de escolaridade
insert into Escolaridade values (null,'Analfabeto'),
						(null,'Fundamental Incompleto'),
						(null,'Fundamental Completo'),
                        (null,'Médio Incompleto'),
                        (Null,'Médio Completo'),
                        (Null,'Superior Incompleto'),
                        (Null,'Superior Completo'),
                        (Null,'Mestrado'),
                        (null,'Doutorado');
                        select * from Escolaridade;
                        
###################################################
#20 cadastros 
insert into clientes values ('035.106.631-44','João Carlo Freitas','1936738','67984710181',11,56,1,1,5,1);
insert into clientes values ('256.310.620-62','Eva Pontes Almeida','111259940','67984578002',8,42,2,1,4,2);
insert into clientes values ('965.195.180-00','Celso Donato Giacomini','407771451','67984641213',1,1,1,1,3,4);
insert into clientes values ('239.644.370-42','Kamilla Moraes Folly','228775255','67984567899',2,7,2,1,3,6);
insert into clientes values ('48280166190','Bianca Pinheiro Avilla','336566001','99204-6196',10,51,2,2,3,4);
insert into clientes values ('31942382308','Agenor Viana Stutz','432821193','96939-8451',18,95,1,1,1,5);
insert into clientes values ('46490963167','Rosali Guzzo Meyer','496632504','97549-8380',24,125,2,1,3,3);
insert into clientes values ('55387837234','Benjamin Leal Valente','111643168','99785-1148',20,103,1,2,1,2);
insert into clientes values ('04866116390','Theo Valente Couto','337152470','97943-5516',8,43,1,1,5,7);
insert into clientes values ('72246262950','Gabriela Araujo Laporte','330425924','96969-2142',3,11,3,2,4,8);
insert into clientes values ('17011447350','Armando Quintanilha Gayoso','292388226','99749-5685',15,78,1,2,5,7);
insert into clientes values ('72136517813','Joyce Alves Biango','167806579','98432-2685',10,54,2,1,3,6);
insert into clientes values ('77255858180','Weberson Trancoso Mesquita','157261451','98008-3569',13,67,1,1,5,8);
insert into clientes values ('65941173784','Yuri Brum Prata','445301181','98984-9044',18,92,1,1,4,2);
insert into clientes values ('85684513735','Ronaldo Espindola Diniz','380351419','98544-8238',7,36,1,1,4,7);
insert into clientes values ('25866878410','Clevisson Santomauro Cosme','217811012','98758-1046',27,137,1,1,1,8);
insert into clientes values ('41186837845','Marilena Damasceno Barcelos','324527731','99681-5885',11,59,2,2,2,2);
insert into clientes values ('68682487179','Ryan Vabo Batista','333691945','98654-8258',10,52,3,1,4,1);
insert into clientes values ('42353562167','Aledio Ascar Carvalho','364122341','98128-8370',11,60,1,2,3,2);
insert into clientes values ('63387137222','Devanir Guzzo Espindola','305430397','98348-4172',24,124,1,1,4,7);

select * from estado;
select * from sexo;
select * from cidade;
select * from Nacionalidade;
select * from Raça;
select * from Escolaridade;
select * from clientes;

###########################################
#atividades 
# 1 - Apresentar um select apenas com o nome e a cidade
select cl.Nome,Cidade from clientes cl inner join cidade ci on cl.id_cidade = ci.id_cidade;

# 2 - Apresentar um select apenas com o nome e o estado
select cl.Nome,Estado from clientes cl join estado es on cl.id_estado = es.id_estado;

# 3 - Apresentar um select apenas com o nome, cpf e a raça
select cl.Nome,cl.CPF,ra.raca from clientes cl join Raça ra on cl.id_raca = ra.id_raca;

# 4 - Apresentar um select apenas com o nome e a nacionalidade
select cl.Nome,nac.Nacionalidade from clientes cl join Nacionalidade nac on cl.id_nacionalidade = nac.id_nacionalidade; 

# 5 - Apresentar um select apenas com o nome e a escolaridade
select cl.Nome,esc.Escolaridade from clientes cl join Escolaridade esc on cl.id_escolaridade = esc.id_escolaridade;

# 6 - Apresentar um select com nome, cidade e estado
select cl.Nome,ci.Cidade,est.Estado from clientes cl join cidade ci on cl.id_cidade = ci.id_cidade join estado est on cl.id_estado = est.id_estado;

# 7 - Apresentar um select com nome, cidade, estado, fone, rg, sexo, nacionalidade, raça, escolaridade
select cl.Nome,ci.cidade,est.Estado,se.sexo,cl.fone,cl.rg,nac.Nacionalidade,ra.raca,esc.Escolaridade from clientes cl
join cidade ci on ci.id_cidade = cl.id_cidade
join estado est on est.id_estado = cl.id_estado
join sexo se on se.id_sexo = cl.id_sexo
join Nacionalidade nac on nac.id_nacionalidade = cl.id_nacionalidade
join Raça as ra on ra.id_raca = cl.id_raca
join Escolaridade esc on esc.id_escolaridade = cl.id_escolaridade;

