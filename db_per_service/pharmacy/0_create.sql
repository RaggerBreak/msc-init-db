create table pharmacies
(
    id bigint not null
        constraint pharmacies_pkey
            primary key,
    address varchar(255),
    name varchar(255)
);

alter table pharmacies owner to postgresuser;

create table pharmacy_medicine
(
    id bigint not null
        constraint pharmacy_medicine_pkey
            primary key,
    medicine_id bigint,
    price numeric(19,2),
    quantity bigint,
    pharmacy_id bigint
        constraint fk886kejfs1qfpnmt3c91sm8r7v
            references pharmacies
);

alter table pharmacy_medicine owner to postgresuser;
