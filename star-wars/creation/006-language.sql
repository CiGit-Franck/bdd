create table language
(
	id serial not null
		constraint language_pk
			primary key,
	name varchar not null
);

alter table language owner to franck;

create unique index language_id_uindex
	on language (id);

