use hw3;

-- 4-1
select count(*)
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id;

-- 4-2
select *
from order_details od
right join orders o on o.id = od.order_id 
right join customers c on o.customer_id = c.id
right join products p on od.product_id = p.id
left join categories cat on p.category_id = cat.id
left join employees e on o.employee_id = e.employee_id
left join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id;

-- кількість рядків не змінюється оскільки початкова таблиця order_details містить найбільшу кількість рядків і унікальних id 

-- 4-3 
select *
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
where e.employee_id between 3 and 10 ;

-- 4-4 
select cat.name category_name, count(cat.name) total_rows, round(avg(od.quantity),2) average_quantity
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
where e.employee_id between 3 and 10
group by cat.name ;

-- 4-5 
select cat.name category_name, count(cat.name) total_rows, round(avg(od.quantity),2) average_quantity
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
where e.employee_id between 3 and 10
group by cat.name
having average_quantity > 21 ;

-- 4-6 
select cat.name category_name, count(cat.name) total_rows, round(avg(od.quantity),2) average_quantity
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
where e.employee_id between 3 and 10
group by cat.name
having average_quantity > 21
order by total_rows desc ;

-- 4-7
select cat.name category_name, count(cat.name) total_rows, round(avg(od.quantity),2) average_quantity
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
where e.employee_id between 3 and 10
group by cat.name
having average_quantity > 21
order by total_rows desc
limit 4
offset 1;