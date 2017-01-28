URL used - http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

CREATE TABLE Salaries(
CheckNum INTEGER PRIMARY KEY,
Amount DECIMAL(8,2) NOT NULL
);

insert into Salaries values
(1111,666),
(1212,12000),
(1234,12000),
(3344,666),
(4324,666),
(4555,6000.12),
(9999,12000);

Select Amount, K from (Select Amount, count(Amount) as K from salaries GROUP By Amount) Where K = (Select Max(K) from (Select count(Amount) as K from salaries GROUP By Amount));