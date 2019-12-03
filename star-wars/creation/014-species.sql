create table species
(
	id serial not null
		constraint group_pk
			primary key,
	name varchar not null,
	id_classification integer not null
		constraint species_classification_id_fk
			references classification,
	id_designation integer
		constraint species_designation_id_fk
			references designation,
	avg_height integer,
	avg_lifespan integer,
	id_language integer not null
		constraint species_language_id_fk
			references language,
	id_planet integer not null
		constraint species_planet_id_fk
			references planet
);

alter table species owner to franck;

create unique index group_id_uindex
	on species (id);

