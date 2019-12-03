create table designation
(
	id serial not null
		constraint designation_pk
			primary key,
	"name " varchar not null
);

alter table designation owner to franck;

create unique index designation_id_uindex
	on designation (id);

