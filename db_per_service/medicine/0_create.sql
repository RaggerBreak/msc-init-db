create table medicines
(
    id bigint not null
        constraint medicines_pkey
            primary key,
    description varchar(255),
    ingredients varchar(255),
    name varchar(255),
    quantity bigint,
    quantity_type varchar(255),
    upc varchar(255)
);

alter table medicines owner to postgresuser;
