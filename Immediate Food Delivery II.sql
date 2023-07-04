
select round(100*sum(customer_pref_delivery_date=order_date)/count(distinct customer_id),2) as immediate_percentage from delivery
where (customer_id,order_date)in (select customer_id, min(order_date)from delivery group by customer_id);





