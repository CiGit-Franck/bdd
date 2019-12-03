create table species_color
(
	id_piece_color integer not null
		constraint species_color_piece_color_id_fk
			references piece_color,
	id_species integer not null
		constraint species_color_species_id_fk
			references species
);

alter table species_color owner to franck;

