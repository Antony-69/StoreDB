select orders.order_id, (orders.total-orders.shipping_cost)/sum(products.price) as tax from orders join products on orders.order_id = products.order_id group by orders.order_id
