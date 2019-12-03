create table gender
(
	id serial not null
		constraint gender_pk
			primary key,
	name varchar not null
);

alter table gender owner to franck;

create unique index gender_id_uindex
	on gender (id);

