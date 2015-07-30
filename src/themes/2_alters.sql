ALTER TABLE sonde.sonde_data DROP CONSTRAINT sonde_data_pkey;
ALTER TABLE sonde.sonde_data ADD COLUMN upload_id text NOT NULL,
	ADD COLUMN created timestamp NULL DEFAULT now(),
	ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE sonde.sonde_data ADD CONSTRAINT sonde_data_pkey PRIMARY KEY ("site", "date_in", "upload_id");

ALTER TABLE sonde.sonde_meta DROP CONSTRAINT sonde_meta_pkey;
ALTER TABLE sonde.sonde_meta ADD COLUMN upload_id text NOT NULL,
	ADD COLUMN created timestamp NULL DEFAULT now(),
	ADD COLUMN modified timestamp NULL DEFAULT now(),
	ADD COLUMN title text,
	ADD COLUMN description text;
ALTER TABLE sonde.sonde_meta ADD CONSTRAINT sonde_meta_pkey PRIMARY KEY ("upload_id");

ALTER TABLE dgt.dgt_data DROP CONSTRAINT dgt_data_pkey;
ALTER TABLE dgt.dgt_data ADD COLUMN upload_id text NOT NULL,
	ADD COLUMN created timestamp NULL DEFAULT now(),
	ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE dgt.dgt_data ADD CONSTRAINT dgt_data_pkey PRIMARY KEY ("sample_name", "site_code", "date_in", "date_out", "upload_id");

