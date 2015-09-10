ALTER TABLE dgt.dgt_data DROP CONSTRAINT dgt_data_pkey;
ALTER TABLE dgt.dgt_data ADD COLUMN upload_id text NOT NULL;
ALTER TABLE dgt.dgt_data ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE dgt.dgt_data ADD COLUMN modified timestamp NULL DEFAULT now();

ALTER TABLE dgt.dgt_meta DROP CONSTRAINT dgt_meta_pkey;
ALTER TABLE dgt.dgt_meta ADD COLUMN upload_id text NOT NULL;
ALTER TABLE dgt.dgt_meta ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE dgt.dgt_meta ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE dgt.dgt_meta ADD COLUMN title text;
ALTER TABLE dgt.dgt_meta ADD COLUMN description text;

ALTER TABLE dgt.dgt_data ADD COLUMN email text;
ALTER TABLE dgt.dgt_meta ADD COLUMN email text;

ALTER TABLE dgt.dgt_meta ALTER COLUMN date_uploaded TYPE text;