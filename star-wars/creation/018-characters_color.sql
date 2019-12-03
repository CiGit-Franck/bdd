create table characters_color
(
	id_piece_color integer not null
		constraint characters_color_piece_color_id_fk
			references piece_color,
	id_characters integer not null
		constraint characters_color_characters_id_fk
			references characters
);

alter table characters_color owner to franck;

