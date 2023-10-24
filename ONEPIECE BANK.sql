create database One_Piece character set utf8mb4 collate utf8mb4_unicode_ci;

use One_Piece;

create table EPISODES(
EP_Number int auto_increment primary key,
EP_Name varchar(255),
EP_Type varchar(55),
Arc_Name varchar(55),
EP_Year year,
Total_Vote varchar(55),
Avg_Rate varchar(55)
);

select * from EPISODES;

CREATE TABLE ARCHS(
id_arch int auto_increment primary key,
Arc_Name varchar(255),
Arc_Type varchar(55),
Total_Chapters int,
Manga_Percentage float,
Total_Episodes int,
Total_Minutes int,
Anime_Percentage float
);

select * from ARCHS;