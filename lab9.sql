select * from rental


-- create table
create table rentals_may (
`rental_id` int not null,
`rental_date` date default null,
`inventory_id` int default null,
`return_date` date default null,
`staff_id` int default null,
`last_update` date default null,
constraint primary key (`rental_id`));


-- populating the data with filtering information for the month may
insert into  rentals_may (rental_id, rental_date, inventory_id, return_date, staff_id, last_update)
select rental_id, rental_date, inventory_id, return_date, staff_id, last_update
from rental
where month (rental_date) = 5;

select * from rentals_may;

-- repeat the same with datas from june

create table rentals_june (
`rental_id` int not null,
`rental_date` date default null,
`inventory_id` int default null,
`return_date` date default null,
`staff_id` int default null,
`last_update` date default null,
constraint primary key (`rental_id`));

insert into  rentals_may (rental_id, rental_date, inventory_id, return_date, staff_id, last_update)
select rental_id, rental_date, inventory_id, return_date, staff_id, last_update
from rental
where month (rental_date) = 6;

select * from rentals_june;
drop table rentals_june;


create table rentals_june (
`rental_id` int not null,
`rental_date` date default null,
`inventory_id` int default null,
`return_date` date default null,
`staff_id` int default null,
`last_update` date default null,
constraint primary key (`rental_id`));

insert into  rentals_june (rental_id, rental_date, inventory_id, return_date, staff_id, last_update)
select rental_id, rental_date, inventory_id, return_date, staff_id, last_update
from rental
where month (rental_date) = 6;

select * from rentals_june;

select count(rental_id) from rentals_may;
select count(rental_id) from rentals_june;