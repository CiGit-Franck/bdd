create table color
(
	id serial not null
		constraint color_pk
			primary key,
	name varchar not null
);

alter table color owner to franck;

create unique index color_id_uindex
	on color (id);

