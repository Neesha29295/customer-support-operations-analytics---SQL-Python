CREATE DATABASE support_analytics;
USE support_analytics;

select count(*) from tickets;
SELECT *
FROM tickets
LIMIT 20;
-- ----------------------------------------------------------------------------------------------------------------------------------------
-- BASIC ANALYSIS --------------------------------------------------------------------------------------------------------------------------
-- 1. Total Tickets
select count(*)  as total_tickets from tickets;

-- 2.Ticket Priority Distribution
select `Ticket Priority`, count(*) as total_tickets
from tickets group by `Ticket Priority` 
order by total_tickets desc;

-- 3. Ticket Status Distribution
select `Ticket Status`, count(*) as total_tickets
from tickets group by `Ticket Status` 
order by total_tickets desc;

-- 4.Most Common Ticket Type
select `Ticket Type`,count(*) as total
from tickets 
group by `Ticket Type`
order by total desc;

-- 5. Average Customer Satisfaction
select round(avg(`Customer Satisfaction Rating`),2) as avg_rating
from tickets;

-- 6. Top Purchased Products
select `Product Purchased`, count(*) as total_sales
from tickets
group by `Product Purchased`
order by total_sales desc
limit 10;

-- 7.Gender Distribution
select `Customer Gender`, count(*) as total_customers
from tickets
group by `Customer Gender`
order by total_customers desc;

-- ------------------------------------------------------------------------------------------------------------------------------------------
-- ADVANCE ANALYSIS ----------------------------------------------------------------------------------------------------------------------
-- 1. Priority Ranking (Rank priorities based on ticket volume.)
select `Ticket Priority`,count(*) as total_tickets,
rank() over (order by count(*) desc) as priority_rank
from tickets
group by `Ticket Priority`;

-- 2. Customer Satisfaction by Priority (Analyze whether high-priority tickets reduce customer satisfaction.)
select `Ticket Priority`,
round(avg(`Customer Satisfaction Rating`), 2) as avg_rating
from tickets
group by `Ticket Priority`
order by avg_rating desc;

-- 3. Resolution Performance Category (Categorize ticket handling quality.)
select `Ticket Status`,count(*) as total_tickets,
round(count(*) * 100.0 / (select count(*) from tickets),2) as percentage_share
from tickets
group by `Ticket Status`
order by total_tickets desc;

-- 4.Monthly Ticket Trend (Track ticket volume by month.)
select month(`Date of Purchase`) as month_number,
count(*) as total_tickets
from tickets
group by month_number
order by month_number;

-- 5. Top 5 Products with Highest Tickets
select `Product Purchased`, count(*) as total_tickets
from tickets
group by `Product Purchased`
order by total_tickets desc
limit 5;

-- 6. Running Total of Tickets
select `Date of Purchase`, count(*) as daily_tickets,
sum(count(*)) over (order by `Date of Purchase`) as cumulative_tickets
from tickets
group by `Date of Purchase`
order by `Date of Purchase`;

-- 7. Dense Rank by Product Issues
select `Product Purchased`,count(*) as total_issues,
dense_rank() over(order by count(*) desc) as issue_rank
from tickets group by `Product Purchased`;

-- 8. Month over Month Ticket Growth
select  month_number,  total_tickets,
lag(total_tickets) over (
order by month_number
) as prev_month,
round(
(total_tickets - lag(total_tickets) over ( 
order by month_number
)) 
* 100.0  /
lag(total_tickets) over (
order by month_number
), 2
) as growth_pct
from (
select month(`Date of Purchase`) as month_number, 
count(*) as total_tickets from tickets
group by month_number ) monthly;

-- 9. Customer Satisfaction Segmentation
with product_rating as (
select `Product Purchased`,
round(avg(`Customer Satisfaction Rating`),2) as avg_rating
from tickets 
group by `Product Purchased`
)
select `Product Purchased`, avg_rating,
case
when avg_rating >= 4 then "Excellent"
when avg_rating >= 3 then "Good"
when avg_rating >= 2 then "Average"
else "Poor"
end as Satisfaction_Segment
from product_rating
order by avg_rating desc;

-- 10. Priority Wise Resolution Rate
select `Ticket Priority`, count(*) as total_tickets,
sum(
case
when `Ticket Status` = "Closed"
then 1
else 0
end
) as resolved,
round (sum(
case
when `Ticket Status` = "Closed"
then 1
else 0
end )
* 100.0 / count(*), 2) as resolution_rate
from tickets
group by `Ticket Priority`
order by resolution_rate desc;