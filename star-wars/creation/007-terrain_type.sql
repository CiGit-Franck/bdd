create table terrain_type
(
	id serial not null
		constraint terrain_type_pk
			primary key,
	name varchar not null
);

alter table terrain_type owner to franck;

create unique index terrain_type_id_uindex
	on terrain_type (id);

