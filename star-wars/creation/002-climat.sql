create table climat
(
	id serial not null
		constraint climat_pk
			primary key,
	name varchar not null
);

alter table climat owner to franck;

create unique index climat_id_uindex
	on climat (id);

