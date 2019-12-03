create table planet
(
	id serial not null
		constraint planet_pk
			primary key,
	name varchar not null,
	rotation integer,
	orbital integer,
	diameter integer,
	gravity varchar,
	id_climat integer
		constraint planet_climat_id_fk
			references climat,
	population integer
);

alter table planet owner to franck;

create unique index planet_id_uindex
	on planet (id);

