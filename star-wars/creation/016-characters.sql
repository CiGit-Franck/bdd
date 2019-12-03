create table characters
(
	id serial not null
		constraint characters_pk
			primary key,
	name varchar not null,
	height integer,
	mass numeric,
	id_gender integer not null
		constraint characters_gender_id_fk
			references gender,
	id_species integer not null
		constraint characters_species_id_fk
			references species,
	id_planet integer not null
		constraint characters_planet_id_fk
			references planet,
	birth_year varchar
);

alter table characters owner to franck;

create unique index characters_id_uindex
	on characters (id);

