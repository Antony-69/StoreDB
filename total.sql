select orders.order_id, sum(products.price)+sum(products.price)*orders.tax+orders.shipping_cost as total from orders join products on orders.order_id = products.order_id group by orders.order_id
