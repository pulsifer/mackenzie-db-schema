ALTER TABLE sonde.sonde_data DROP CONSTRAINT sonde_data_pkey;
ALTER TABLE sonde.sonde_data ADD COLUMN upload_id text NOT NULL;
ALTER TABLE sonde.sonde_data ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE sonde.sonde_data ADD COLUMN modified timestamp NULL DEFAULT now();

ALTER TABLE sonde.sonde_meta DROP CONSTRAINT sonde_meta_pkey;
ALTER TABLE sonde.sonde_meta ADD COLUMN upload_id text NOT NULL;
ALTER TABLE sonde.sonde_meta ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE sonde.sonde_meta ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE sonde.sonde_meta ADD COLUMN title text;
ALTER TABLE sonde.sonde_meta ADD COLUMN description text;

ALTER TABLE sonde.sonde_data ADD COLUMN email text;
ALTER TABLE sonde.sonde_meta ADD COLUMN email text;

ALTER TABLE sonde.sonde_data ALTER COLUMN date_in TYPE text;