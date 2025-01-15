create database movies;
use movies;
create table distribution_companies (id int,company_name varchar(50));
alter table distribution_companies modify column company_name varchar(400);
create table moviesinfo (id int,movie_tittle varchar(300),imbd_rating float,year_realesed int, budget float,box_office float,distribution_company_id int , language varchar(30));
insert into distribution_companies (id,company_name) values(1,'Columbia Pictures'),(2,'Paramount Pictures'),(3,'Warner Bros. Pictures'),(4,'United Artists'),(5,'Universal Pictures'),(6,'New Line Cinema'),(7,'New Line Cinema'),(8,'New Line Cinema'),(9,'New Line Cinema');
insert into moviesinfo (id,movie_tittle,imbd_rating,year_realesed,budget,box_office,distribution_company_id,language) values(1,'The Shawshank Redemption',9.2,1994,25.00,73.30,1,'English'),(2,'The Godfather',9.2 ,1972 ,7.20,291.00 ,2 ,'English');
insert into moviesinfo (id,movie_tittle,imbd_rating,year_realesed,budget,box_office,distribution_company_id,language) values (3,'The Dark Knight',9.0,2008,185.00, 1006.00 ,3 ,'English'),(4,'The Godfather Part II',9.0 ,1974, 13.00, 93.00 ,2, 'English,Sicilian'),(5,'12 Angry Men',9.0,1957,0.34, 2.00 ,4 ,'English'),(6,'Schindlers List' ,8.9 ,1993 ,22.00 ,322.20 ,5,'English,German,Yiddish');
select * from distribution_companies;
select movie_tittle,imbd_rating,year_realesed from moviesinfo;
select movie_tittle,box_office from moviesinfo where box_office>300;
select movie_tittle,imbd_rating,year_realesed from moviesinfo where movie_tittle like'%G_dfather%';
select movie_tittle,imbd_rating,year_realesed from moviesinfo where year_realesed<2001 and imbd_rating>9;
select movie_tittle,imbd_rating,year_realesed from moviesinfo where year_realesed>1991 order by year_realesed ;
select language,count(*)from moviesinfo group by language;
select language,year_realesed,count(*)from moviesinfo group by language,year_realesed order by year_realesed;
select language,avg(budget)from moviesinfo where budget>50 group by language;
select a.movie_tittle,b.company_name from moviesinfo a join distribution_companies b on(a.distribution_company_id=b.id);

