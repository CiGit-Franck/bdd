create table vehicule_class
(
	id serial not null
		constraint vehicule_class_pk
			primary key,
	name varchar not null
);

alter table vehicule_class owner to franck;

create unique index vehicule_class_id_uindex
	on vehicule_class (id);

