
select product_name ,sum(O.unit) as unit from Products P inner join Orders O on P.product_id=O.product_id where O.order_date between "2020-02-01" and "2020-02-29" group by p.product_id  having sum(O.unit)>=100;

