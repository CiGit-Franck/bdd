create table body_piece
(
	id serial not null
		constraint body_piece_pk
			primary key,
	name varchar not null
);

alter table body_piece owner to franck;

create unique index body_piece_id_uindex
	on body_piece (id);

