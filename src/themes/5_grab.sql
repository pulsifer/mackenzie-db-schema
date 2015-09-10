ALTER TABLE grab.grab_data DROP CONSTRAINT grab_data_pkey;
ALTER TABLE grab.grab_data ADD COLUMN upload_id text NOT NULL;
ALTER TABLE grab.grab_data ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE grab.grab_data ADD COLUMN modified timestamp NULL DEFAULT now();

ALTER TABLE grab.grab_meta DROP CONSTRAINT grab_meta_pkey;
ALTER TABLE grab.grab_meta ADD COLUMN upload_id text NOT NULL;
ALTER TABLE grab.grab_meta ADD COLUMN created timestamp NULL DEFAULT now();
ALTER TABLE grab.grab_meta ADD COLUMN modified timestamp NULL DEFAULT now();
ALTER TABLE grab.grab_meta ADD COLUMN title text;
ALTER TABLE grab.grab_meta ADD COLUMN description text;

ALTER TABLE grab.grab_data ADD COLUMN email text;
ALTER TABLE grab.grab_meta ADD COLUMN email text;

ALTER TABLE grab.grab_meta ALTER COLUMN date_uploaded TYPE text;