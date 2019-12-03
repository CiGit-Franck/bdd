create table vehicule_brand
(
	id serial not null
		constraint manufacture_pk
			primary key,
	name varchar not null
);

alter table vehicule_brand owner to franck;

create unique index manufacture_id_uindex
	on vehicule_brand (id);

