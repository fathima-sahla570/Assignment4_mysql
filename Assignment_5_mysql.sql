CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area FLOAT);
  CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50));  
    INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 67800000, 243000),
(4, 'India', 1393000000, 3287000),
(5, 'Australia', 25600000, 7692000),
(6, 'Germany', 83200000, 357000),
(7, 'France', 65400000, 551000),
(8, 'Brazil', 213000000, 8516000),
(9, 'Japan', 126000000, 377975),
(10, 'South Korea', 52000000, 100210);
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 3.8, 2, 'Canada'),
(3, 'Alice', 'Johnson', 67800000, 4.2, 3, 'UK'),
(4, 'Rahul', 'Verma', 1393000000, 3.6, 4, 'India'),
(5, 'Emily', 'Davis', 25600000, 4.8, 5, 'Australia'),
(6, 'Carlos', 'Garcia', 213000000, 4.1, 8, 'Brazil'),
(7, 'Sophie', 'Miller', 65400000, 3.9, 6, 'France'),
(8, 'Akira', 'Tanaka', 126000000, 4.7, 9, 'Japan'),
(9, 'Min', 'Choi', 52000000, 3.5, 10, 'South Korea'),
(10, 'Anna', 'Brown', 38000000, 4.6,5,'france');
select * from country;
-- 1
select substring(Country_name,1,3)as First_three_letters from country;
-- 2
select concat(Fname,'  ',Lname) as Full_Nme from persons;
-- 3
SELECT COUNT(*) AS UniqueCountryCount FROM (
    SELECT Country_name
    FROM Persons
    GROUP BY Country_name
) AS UniqueCountries;

-- 4
SELECT MAX(Population) AS MaxPopulation FROM Country;
-- 5
SELECT MIN(Population) AS MinPopulation FROM Persons;
-- 6
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) 
VALUES (11, 'John', NULL, 1500, 3.5, 2, 'USA'),
       (12, 'Alice', NULL,2000,4.0,3,'India'); 
select count(Lname) as Count_of_Lname from persons;
-- 7
select count(*) as Total_rows from persons;
-- 8
select Population from country limit 3;
-- 9
SELECT Country_name
FROM Persons
ORDER BY RAND()
LIMIT 3;

-- 10
select * from persons order by Rating desc; 
-- 11
select Country_name,  sum(Population)as Total_population from  persons group by Country_name ;
-- 12
SELECT Country_name 
FROM Persons 
GROUP BY Country_name 
HAVING SUM(Population) > 50000;
-- 13
SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Avg_Rating ASC;

 
      









