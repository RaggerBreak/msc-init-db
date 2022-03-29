create sequence order_items_id_seq;

alter sequence order_items_id_seq owner to postgresuser;

create table orders
(
    id bigserial
        constraint orders_pkey
            primary key,
    billing_address_id varchar(255),
    date_created timestamp,
    delivery_code varchar(255),
    last_updated timestamp,
    order_status varchar(255),
    patient_id bigint,
    payment_code varchar(255),
    pharmacy_id bigint,
    prescription_id bigint,
    reference_number varchar(255),
    shipping_address_id varchar(255),
    total_price numeric(19,2),
    total_quantity bigint
);

alter table orders owner to postgresuser;

create table order_items
(
    id bigint default nextval('order_items_id_seq'::regclass) not null
        constraint order_items_pkey
            primary key,
    medicine_id bigint,
    order_item_status varchar(255),
    pharmacy_medicine_id bigint,
    quantity bigint,
    unit_price numeric(19,2),
    order_id bigint
        constraint fkbioxgbv59vetrxe0ejfubep1w
            references orders
);

alter table order_items owner to postgresuser;

alter sequence order_items_id_seq owned by order_items.id;
