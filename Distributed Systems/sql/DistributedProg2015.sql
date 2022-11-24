CREATE TABLE CART(
    email VARCHAR2(20),
    product_id NUMBER(38),
    quantity NUMBER(38),
    price NUMBER(38),
    total  NUMBER(38),
    address VARCHAR2(500),
    city VARCHAR2(100),
    state VARCHAR2(100),
    country VARCHAR2(100),
    mobilenumber NUMBER(20),
    orderdate VARCHAR2(38),
    deliverydate VARCHAR2(100),
    paymentmethod VARCHAR2(100),
    transcationid VARCHAR2(100),
    status VARCHAR2(100)
);
select * from cart;