create table patients
(
    id bigint not null
        constraint patients_pkey
            primary key,
    first_name varchar(255),
    last_name varchar(255)
);

alter table patients owner to postgresuser;
