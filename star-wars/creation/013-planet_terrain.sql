create table planet_terrain
(
	id_planet integer not null
		constraint planet_terrain_planet_id_fk
			references planet,
	id_terrain integer not null
		constraint planet_terrain_terrain_type_id_fk
			references terrain_type
);

alter table planet_terrain owner to franck;

