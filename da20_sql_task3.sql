
--Task 3

--IN, BETWEEN, LIMIT, ORDER BY, and CHECK Constraints	USE 5 TIMES EACH


-- 1st table started

select * from employee_salary;

select * from employee_salary where department in ('IT', 'Finance', 'Sales');
select * from employee_salary where name in ('Rajesh Sharma', 'Manish Mehta', 'Meena Kapoor');
select * from employee_salary where employee_id in ('E001', 'E002', 'E005');
select * from employee_salary where age in (25, 30, 35);
select * from employee_salary where base_salary in (58000, 63000, 80500);


select * from employee_salary where age between 30 and 40;
select * from employee_salary where base_salary between 50000 and 80000;
select * from employee_salary where employee_id between 'E001' and 'E005';
select * from employee_salary where base_salary between 50000 and 60000;
select * from employee_salary where bounus between 5000 and 10000;


select * from employee_salary where department = 'Sales' limit 2;
select * from employee_salary where tax_percent < 20 limit 3;
select * from employee_salary where age > 30 limit 5;
select * from employee_salary where base_salary < 70000 limit 5;
select * from employee_salary where bounus >= 5000 limit 5;


select * from employee_salary order by employee_id ASC;
select * from employee_salary order by employee_id DESC;
select * from employee_salary order by base_salary ASC;
select * from employee_salary order by base_salary DESC;
select * from employee_salary order by age ASC;
select * from employee_salary order by age DESC;


alter table employee_salary add constraint age_check check (age >= 18 and age <= 65);
alter table employee_salary add constraint base_salary_check check (base_salary >= 30000);
alter table employee_salary add constraint tax_percent_check check (tax_percent >= 0 and tax_percent <= 100);
alter table employee_salary add constraint bounus_check check (bounus >= 0);
alter table employee_salary add constraint department_check check (department in ('IT', 'Finance', 'Sales', 'HR', 'Marketing'));


-- 2nd table started


select * from fitness_center_memberships

select * from fitness_center_memberships where member_id in ('M008', 'M010', 'M012', 'M006');
select * from fitness_center_memberships where membership_type in ('Gold', 'Silver', 'Platinum');
select * from fitness_center_memberships where name in ('Priya Nair', 'Arjun Patel', 'Neha Joshi');
select * from fitness_center_memberships where sessions_attended in (46, 39, 43);
select * from fitness_center_memberships where fee_paid in (12000, 15000, 18000);


select * from fitness_center_memberships where fee_paid between 10000 and 14000;
select * from fitness_center_memberships where sessions_attended between 30 and 40;
select * from fitness_center_memberships where member_id between 'M001' and 'M010';
select * from fitness_center_memberships where fee_paid between 10000 and 15000;
select * from fitness_center_memberships where height_cm between 170 and 180;


select * from fitness_center_memberships limit 5;
select member_id, name, membership_type from fitness_center_memberships limit 3;
select name, sessions_attended from fitness_center_memberships limit 4;
select member_id, fee_paid from fitness_center_memberships limit 2;
select * from fitness_center_memberships where membership_type = 'Gold' limit 1;


select * from fitness_center_memberships order by member_id ASC;
select * from fitness_center_memberships order by name DESC;
select * from fitness_center_memberships order by fee_paid DESC;
select * from fitness_center_memberships order by sessions_attended ASC;
select * from fitness_center_memberships order by member_id DESC;


alter table fitness_center_memberships add constraint min_fee check  (fee_paid >= 10000);
alter table fitness_center_memberships add constraint max_sessions check (sessions_attended <= 70);
alter table fitness_center_memberships add constraint height_check check (height_cm >= 150 and height_cm <= 200);
alter table fitness_center_memberships add constraint membership_type_check check (membership_type in ('Gold', 'Silver', 'Platinum', 'Basic'));
alter table fitness_center_memberships add constraint sessions_attended_check check (sessions_attended >= 0);



-- 3rd table started

select * from hotel_bookings;
select * from hotel_bookings where rating in (4.1, 4.2, 4.3, 4.4);
select * from hotel_bookings where room_type in ('Deluxe', 'Suite', 'Standard');
select * from hotel_bookings where booking_id in ('B001', 'B002', 'B003', 'B004');
select * from hotel_bookings where cost_per_night in (1500, 2000, 2500, 3000);
select * from hotel_bookings where room_no in (101, 102, 103, 104);


select * from hotel_bookings where rating between 4.1 and 4.4;
select * from hotel_bookings where cost_per_night between 1000 and 3000;
select * from hotel_bookings where booking_id between 'B001' and 'B005';
select * from hotel_bookings where room_no between 100 and 200;
select * from hotel_bookings where nights_stayed between 1 and 3;


select * from hotel_bookings limit 5;
select booking_id, room_type, cost_per_night from hotel_bookings limit 3;
select room_no, nights_stayed from hotel_bookings limit 4;
select booking_id, rating from hotel_bookings limit 2;
select * from hotel_bookings where room_type = 'Deluxe' limit 1;


select * from hotel_bookings order by booking_id ASC;
select * from hotel_bookings order by cost_per_night DESC;
select * from hotel_bookings order by rating ASC;
select * from hotel_bookings order by nights_stayed DESC;
select * from hotel_bookings order by booking_id DESC;


alter table hotel_bookings add constraint cost_per_night_check check  (cost_per_night >= 1000);
alter table hotel_bookings add constraint nights_stayed_check check (nights_stayed >= 1);
alter table hotel_bookings add constraint room_type_check check (room_type in ('Deluxe', 'Suite', 'Standard', 'Economy'));
alter table hotel_bookings add constraint rating_check check (rating >= 1 and rating <= 3);
alter table hotel_bookings add constraint room_no_check check (room_no >= 100 and room_no <= 300);



-- 4th table started

select * from movie_theater_sales

select * from movie_theater_sales where movie_name in ('Stree', 'Kantara', 'Pathaan');
select * from movie_theater_sales where show_time in ('Morning', 'Evening', 'Night');
select * from movie_theater_sales where movie_id in ('MV001', 'MV002', 'MV003');
select * from movie_theater_sales where ticket_price in (200, 250, 300);
select * from movie_theater_sales where tickets_sold in (120, 150, 180); 


select * from movie_theater_sales where ticket_price between 150 and 300;
select * from movie_theater_sales where tickets_sold between 100 and 200;
select * from movie_theater_sales where movie_id between 'MV001' and 'MV010';
select * from movie_theater_sales where screen_no between 1 and 5;
select * from movie_theater_sales where total_revenue between 10000 and 50000;
select * from movie_theater_sales where tickets_sold between 100 and 200;


select * from movie_theater_sales limit 5;  
select movie_id, movie_name, ticket_price from movie_theater_sales limit 3;
select show_time, tickets_sold from movie_theater_sales limit 4; 
select movie_id, total_revenue from movie_theater_sales limit 2;
select * from movie_theater_sales where movie_name = 'Stree' limit 1;       


select * from movie_theater_sales order by movie_id ASC;
select * from movie_theater_sales order by ticket_price DESC;
select * from movie_theater_sales order by tickets_sold ASC;
select * from movie_theater_sales order by total_revenue DESC;
select * from movie_theater_sales order by movie_id DESC;


alter table movie_theater_sales add constraint ticket_price_check check  (ticket_price > 0);
alter table movie_theater_sales add constraint tickets_sold_check check (tickets_sold >= 0);
alter table movie_theater_sales add constraint movie_name_check check (movie_name in ('Stree', 'Kantara', 'Pathaan', 'KGF', 'RRR'));
alter table movie_theater_sales add constraint show_time_check check (show_time in ('Morning', 'Evening', 'Night'));
alter table movie_theater_sales add constraint total_revenue_check check (total_revenue >= 0);


-- 5th table started

select * from product_inv

select * from product_inv where product_name in ('TV', 'Fan', 'Gas');
select * from product_inv where product_id in ('P001', 'P002', 'P003');
select * from product_inv where quantity in (100, 150, 200);
select * from product_inv where category in ('Electronics', 'Appliances', 'Furniture');
select * from product_inv where price  in (20.11, 30.50, 40.75);


select * from product_inv where price between 10.00 and 50.00;  
select * from product_inv where quantity between 50 and 200;
select * from product_inv where product_id between 'P001' and 'P005';
select * from product_inv where category between 'Appliances' and 'Furniture';
select * from product_inv where quantity between 100 and 150;


select * from product_inv limit 5; 
select product_id, product_name, price from product_inv limit 3;
select category, quantity from product_inv limit 4;
select product_id, price from product_inv limit 2;
select * from product_inv where product_name = 'TV' limit 1;        


select * from product_inv order by product_id ASC;
select * from product_inv order by product_id DESC;
select * from product_inv order by price ASC;
select * from product_inv order by price DESC;
select * from product_inv order by quantity ASC;


alter table product_inv add constraint ticket_price_check check (quantity > 0);
alter table product_inv add constraint quantity_check check (quantity >= 0);
alter table product_inv add constraint product_name_check check (product_name in ('TV', 'Fan', 'Gas', 'Refrigerator', 'Washing Machine'));
alter table product_inv add constraint price_check check (price >= 0);
alter table product_inv add constraint product_name_length_check check (length(product_name) >= 2);

