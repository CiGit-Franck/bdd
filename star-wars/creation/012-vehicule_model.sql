create table vehicule_model
(
	id serial not null
		constraint model_pk
			primary key,
	name varchar not null,
	id_brand integer not null
		constraint vehicule_model_vehicule_brand_id_fk
			references vehicule_brand,
	length numeric not null,
	nb_passenger integer not null,
	cargo_capacity integer not null,
	id_class integer not null
		constraint vehicule_model_vehicule_class_id_fk
			references vehicule_class,
	crew integer not null,
	consumable varchar,
	speed integer
);

alter table vehicule_model owner to franck;

create unique index model_id_uindex
	on vehicule_model (id);

