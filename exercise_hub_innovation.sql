create database HubFab character set utf8mb4 collate utf8mb4_unicode_ci;
use HubFab;

create table usuario(
id_user int auto_increment primary key,
Nome varchar(55),
email varchar(55),
telefone int,
cpf varchar(14),
bday datetime,
genero varchar(55),
fornecer_dados int,
receber_emails int
);

create table palestrante(
id_palestrante int auto_increment primary key,
titulo_palestra varchar(255),
descricao_palestra varchar(255),
vagas_restantes int,
sala int
);

