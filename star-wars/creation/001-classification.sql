create table classification
(
	id serial not null
		constraint classification_pk
			primary key,
	name varchar not null
);

alter table classification owner to franck;

create unique index classification_id_uindex
	on classification (id);

