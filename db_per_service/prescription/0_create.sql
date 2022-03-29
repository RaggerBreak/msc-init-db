create table prescriptions
(
    id bigint not null
        constraint prescriptions_pkey
            primary key,
    active boolean not null,
    creation_date date,
    doctor_id bigint,
    expiration_date date,
    patient_id bigint,
    prescription_status varchar(255)
);

alter table prescriptions owner to postgresuser;

create table prescription_medicine
(
    id bigint not null
        constraint prescription_medicine_pkey
            primary key,
    description varchar(255),
    dispensed_quantity bigint,
    medicine_id bigint,
    ordered_quantity bigint,
    total_quantity bigint,
    prescription_id bigint
        constraint fkjxjd1kad22xv9o5ly8i5b1qqu
            references prescriptions
);

alter table prescription_medicine owner to postgresuser;

