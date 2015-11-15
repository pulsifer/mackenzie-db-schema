ALTER TABLE pmd.pmd_data ADD COLUMN upload_id text NOT NULL;
ALTER TABLE pmd.pmd_data ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_data ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_data ADD COLUMN email text;
ALTER TABLE pmd.pmd_data ADD COLUMN id serial NOT NULL;
ALTER TABLE pmd.pmd_data ADD PRIMARY KEY (id);

ALTER TABLE pmd.pmd_meta ADD COLUMN upload_id text NOT NULL;
ALTER TABLE pmd.pmd_meta ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_meta ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE pmd.pmd_meta ADD COLUMN email text;
ALTER TABLE pmd.pmd_meta ADD COLUMN id serial NOT NULL;
ALTER TABLE pmd.pmd_meta ADD PRIMARY KEY (id);
