ALTER TABLE pmd.pmd_data DROP CONSTRAINT pmd_data_pkey;
ALTER TABLE pmd.pmd_data ADD COLUMN upload_id text NOT NULL;
ALTER TABLE pmd.pmd_data ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_data ADD COLUMN modified timestamp NULL DEFAULT now();

ALTER TABLE pmd.pmd_meta DROP CONSTRAINT pmd_meta_pkey;
ALTER TABLE pmd.pmd_meta ADD COLUMN upload_id text NOT NULL;
ALTER TABLE pmd.pmd_meta ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_meta ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_meta ADD COLUMN title text;
ALTER TABLE pmd.pmd_meta ADD COLUMN description text;

ALTER TABLE pmd.pmd_data ADD COLUMN email text;
ALTER TABLE pmd.pmd_meta ADD COLUMN email text;

ALTER TABLE pmd.pmd_meta ALTER COLUMN date_uploaded TYPE text;