create schema cars;

use cars;

select * from car_dekho;

-- count of the total cars
select count(Name) from car_dekho ;

-- cars avilabele in 2023
select count(*)
from car_dekho
where year= 2023;

-- cars avilable in 2020, 2021, 2022
select count(*)
from car_dekho
where year in (2020,2021,2022);

-- total cars by year 
select *
from car_dekho
order by year;

-- diesel cars in year 2020
select *
from car_dekho
where year=2020 and fuel='Diesel';

-- petrol cars in 2020
select *
from car_dekho
where year=2020 and fuel='Petrol';

-- all fuel cars order by year
select *
from car_dekho
where fuel in ('Petrol','Diesel','CNG')
order by year;

-- there were more than 100 cars in certain year which year it is in
select *
from car_dekho
group by year
having count(year) >100;

-- cars count details between 2015 and 2023
select count(*)
from car_dekho
where year >=2015 and year<=2023;

-- car details between 2015 and 2023 entire list
select *
from car_dekho
where year>=2015 and year<=2023;

