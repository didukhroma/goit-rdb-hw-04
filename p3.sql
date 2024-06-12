use hw3;
select od.id,  order_id,od.product_id,
p.name product_name,
p.supplier_id product_supplier_id,
sup.name product_supplier_name, sup.contact product_supplier_contact, 
sup.address product_supplier_address, sup.city product_supplier_city, sup.postal_code product_supplier_postal_code,
sup.country product_supplier_country, sup.phone product_supplier_phone,
p.category_id product_category_id,  cat.name product_category_name, cat.description product_category_description,
p.unit product_unit, p.price product_price,
od.quantity,
o.employee_id,  e.last_name employee_last_name,
e.first_name employee_first_name, e.birthdate employee_birthdate, e.photo employee_photo, e.notes employee_notes,   
o.date,
o.shipper_id,  s.name shipper_name, s.phone shipper_phone, 
o.customer_id,c.name customer_name,c.contact customer_contact,c.address customer_address,c.city customer_city,
c.postal_code customer_postal_code,c.country customer_county
from order_details od
inner join orders o on od.order_id = o.id
inner join customers c on o.customer_id = c.id
inner join products p on od.product_id = p.id
inner join categories cat on p.category_id = cat.id
inner join employees e on o.employee_id = e.employee_id
inner join shippers s on o.shipper_id = s.id
inner join suppliers sup on  p.supplier_id = sup.id
order by id asc;


