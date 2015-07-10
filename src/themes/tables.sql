CREATE SCHEMA datathemes_mackenzie;
CREATE SCHEMA mackenzie_sonde;
CREATE SCHEMA mackenzie_dgt;
CREATE SCHEMA mackenzie_grab;
CREATE SCHEMA mackenzie_sonde;

CREATE TABLE IF NOT EXISTS datathemes.metadata (
    theme_name text,
    theme_version text,
    repository text,
    author text,
    description text,
    schemas text,
    is_published boolean NOT NULL DEFAULT false,
    datetime_created timestamp DEFAULT now(),
    datetime_modified timestamp DEFAULT now()
    CONSTRAINT themes_meta_pkey PRIMARY KEY (
        theme_name,
        is_published) );

CREATE TABLE IF NOT EXISTS mackenzie_sonde.data (
    upload_id text,
    source_row_index int,
    theme_name text,
    site text,
    date_in timestamp,
    temp numeric,
    sp_cond numeric,
    ph numeric,
    orp numeric,
    turbid numeric,
    chl numeric,
    odo_sat numeric,
    odo numeric,
    is_committed boolean NOT NULL DEFAULT false,
    datetime_created timestamp DEFAULT now(),
    datetime_modified timestamp DEFAULT now()
    CONSTRAINT sonde_data_pkey PRIMARY KEY (
        upload_id,
        theme_name,
        site,
        is_committed) );

CREATE TABLE IF NOT EXISTS mackenzie_sonde.metadata (
    upload_id text,
    source_row_index int,
    theme_name text,
    extents text,
    qa_qc text,
    equipment text,
    sampler text,
    lab text,
    depth numeric,
    matrix text,
    related text,
    type text,
    series text,
    comments text,
    is_committed boolean NOT NULL DEFAULT false,
    datetime_created timestamp DEFAULT now(),
    datetime_modified timestamp DEFAULT now()
    CONSTRAINT sonde_meta_pkey PRIMARY KEY (
        upload_id,
        theme_name,
        matrix,
        is_committed ) );

