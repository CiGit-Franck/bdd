create table piece_color
(
	id_piece integer not null
		constraint piece_color_body_piece_id_fk
			references body_piece,
	id_color integer not null
		constraint piece_color_color_id_fk
			references color,
	id serial not null
		constraint piece_color_pk
			primary key
);

alter table piece_color owner to franck;

create unique index piece_color_id_uindex
	on piece_color (id);

