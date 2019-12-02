create table instagram."user"
(
	id serial not null
		constraint user_pk
			primary key,
	username varchar not null,
	email varchar not null,
	saltedpassword varchar not null,
	firstname varchar not null,
	lastname varchar,
	lastconnectedip varchar,
	registrationdate date not null,
	lastlogindate date
);

alter table instagram."user" owner to franck;

create unique index user_id_uindex
	on instagram."user" (id);

create table instagram.photo
(
	id serial not null
		constraint photo_pk
			primary key
		constraint photo_user_id_fk
			references instagram."user"
				on update cascade on delete cascade,
	caption varchar not null,
	latitude numeric not null,
	longitude numeric not null,
	imagepath varchar not null,
	imagesize integer not null,
	creationdat date not null,
	lastupdatedate date
);

alter table instagram.photo owner to franck;

create unique index photo_id_uindex
	on instagram.photo (id);

create table instagram.hashtag
(
	id integer not null
		constraint hashtag_photo_id_fk
			references instagram.photo
				on update cascade on delete cascade,
	hashtag varchar
);

alter table instagram.hashtag owner to franck;

create table instagram."like"
(
	id integer not null
		constraint like_photo_id_fk
			references instagram.photo
				on update cascade on delete cascade
		constraint like_user_id_fk
			references instagram."user"
				on update cascade on delete cascade,
	datecreated date not null
);

alter table instagram."like" owner to franck;

create table instagram.comment
(
	id integer not null
		constraint comment_photo_id_fk
			references instagram.photo
		constraint comment_user_id_fk
			references instagram."user",
	comment varchar
);

alter table instagram.comment owner to franck;

