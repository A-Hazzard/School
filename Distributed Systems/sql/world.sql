/*Show the population of Africa.*/
select population
from world
where continent = 'Africa'

/*b. Show the name and the population for 'Afghanistan', 'Albania' and 'Angola'.  */
select name, population
from world
where name = ANY ('Afghanistan', 'Albania','Angola')


/*c. Show the country and the area for countries with an area between 200,000 and 250,000.  */
SELECT continent, area
from  world
where area between 200000 and 250000

/*d. Show the name, continent and population of all countries  */
SELECT name, continent, population
from world

/*e. Show the name for the countries that have a population of at least 200 million (200 
million is 200000000, there are eight zeros).  */
SELECT name
from world
where population >= 200000000

/*f. Give the name and the per capita GDP for those countries with a population of at least 
200 million.  */
select name, gdp
from world
where population >= 200000000

/*g. Show the countries which have a name that includes the letters ‘ro’.  */
select name from world
where name like '%ro%'

/*h. Show the countries that are big by area or big by population. Show name, population and 
area (A country is big if it has an area of more than 3 million sq km or it has a population 
of more than 250 million.)  */
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

/*i. Show the total population of the countries listed.  */
SELECT SUM(population)
from world

/*j. Show the countries with a per capita GDP greater than 'Andorra'. */
SELECT continent 
from world
where gdp > 3712000000





/*JOINS*/
select * from table_name as /*alias(name used to describe, example, a,b,c..)*/ inner join
fooat as /*alias*/ on /*alias*/.variable = /*alias*/.variable;
/*REAL EXAMEPLE
select user information from the cricket and football table, for persons that are in
both tables/sports
*/
select * from cricket as c inner join 
football as f on c.name = f.name;

/*ALTERNATIVE*/
select c.name, f.name 
from cricket as c inner join football as f on c.name = f.name;