CREATE SCHEMA themes;

CREATE TABLE IF NOT EXISTS themes.themes_meta (
	theme_name text,
    theme_version text,
	repository text,
	author text,
	description text,
	schemas text,
	datetime_created timestamp DEFAULT now(),
    datetime_modified timestamp DEFAULT now(),
    CONSTRAINT themes_meta_pkey PRIMARY KEY (
        theme_name) );

CREATE TABLE IF NOT EXISTS themes.sonde_data (
	upload_id text,
	source_row_index int,
    theme_name text,
    site text,
	date_in timestamp,
	temp numeric,
	spCond numeric,
	pH numeric,
	orp numeric,
	turbid+ numeric,
	chl numeric,
	odoSat numeric,
	odo numeric,
	datetime_created timestamp DEFAULT now(),
    datetime_modified timestamp DEFAULT now(),
    CONSTRAINT sonde_data_pkey PRIMARY KEY (
        upload_id,
        theme_name,
        site) );

CREATE TABLE IF NOT EXISTS themes.sonde_meta (
	upload_id text,
	theme_name text,
    extents text,
	qa-qc text,
	equipment text,
	sampler text,
	lab text,
	depth numeric,
	matrix text,
	related text,
	type text,
	series text,
	comments text
    CONSTRAINT plot_pkey PRIMARY KEY (
        upload_id,
        theme_name,
        matrix ) );

