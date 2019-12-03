create table vehicule
(
	id serial not null
		constraint vehicule_pk
			primary key,
	name varchar not null,
	id_model integer not null
		constraint vehicule_vehicule_model_id_fk
			references vehicule_model,
	cost numeric
);

alter table vehicule owner to franck;

create unique index vehicule_id_uindex
	on vehicule (id);

