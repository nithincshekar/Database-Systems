URL used - http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

create table CosineTable(Angle INTEGER PRIMARY KEY, CosValue DECIMAL(8,2) NOT NULL);

insert into CosineTable values
(0,1),
(5,0.9962),
(10,0.9848),
(15,0.9659),
(20,0.9397),
(25,0.9063),
(30,0.866),
(35,0.8192),
(40,0.766),
(45,0.7071),
(50,0.6428),
(55,0.5736),
(60,0.5),
(65,0.4226),
(70,0.342),
(75,0.2588),
(80,0.1736),
(85,0.0872),
(90,0);

select m.CosValue + (n.CosValue - m.CosValue) * (73 - m.Angle) / (n.Angle - m.Angle) as Result from CosineTable as m, CosineTable as n where m.Angle = (select Angle from CosineTable where Angle < 73 ORDER BY Angle DESC limit 1) and n.Angle = (select Angle from CosineTable where Angle > 73 ORDER BY Angle ASC limit 1);