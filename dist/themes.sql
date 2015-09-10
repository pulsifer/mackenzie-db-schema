CREATE SCHEMA sonde;
CREATE SCHEMA dgt;
CREATE SCHEMA pmd;
CREATE SCHEMA grab;
CREATE SCHEMA app;
CREATE TABLE IF NOT EXISTS dgt.dgt_data (site_name text,sample_name text,site_code text,date_in date,date_out date,methyl_mercury numeric,vanadium numeric,aluminum numeric,sd_al numeric,manganese numeric,sd_mn numeric,iron numeric,sd_fe numeric,cobalt numeric,sd_co numeric,nickel numeric,sd_ni numeric,copper numeric,sd_cu numeric,zinc numeric,sd_zn numeric,cadmium numeric,sd_cd numeric,lead numeric,sd_pb numeric);
CREATE TABLE IF NOT EXISTS dgt.dgt_meta (title text,extents text,citations text,keywords text,format text,description text,link text,date_uploaded date);
CREATE TABLE IF NOT EXISTS grab.grab_data (site text,site_name text,lab_id text,sample_type text,date_in date,month_code numeric,waterbody_type text,waterbody_name text,region text,ammonia_as_nitrogen numeric,nitrogen_dissolved numeric,nitrogen_total numeric,organic_carbon_dissolved numeric,organic_carbon_total numeric,phosphorous_dissolved numeric,phosphorous_total numeric,alkalinity_total numeric,conductivity_specific numeric,ph numeric,solids_total_dissolved numeric,solids_total_suspended numeric,turbidity numeric,calcium numeric,chloride numeric,floride numeric,magnesium numeric,nitrate_as_nitrogen numeric,nitrite_as_nitrogen numeric,potassium numeric,sodium numeric,sulphate numeric,chlorophyll_a numeric,aluminum_dissolved numeric,antimony_dissolved numeric,arsenic_dissolved numeric,barium_dissolved numeric,beryllium_dissolved numeric,cadmium_dissolved numeric,cesium_dissolved numeric,chromium_dissolved numeric,cobalt_dissolved numeric,copper_dissolved numeric,iron_dissolved numeric,lead_dissolved numeric,lithium_dissolved numeric,manganese_dissolved numeric,mercury_dissolved numeric,molybdenum_dissolved numeric,nickel_dissolved numeric,rubidium_dissolved numeric,selenium_dissolved numeric,silver_dissolved numeric,strontium_dissolved numeric,thallium_dissolved numeric,titanium_dissolved numeric,uranium_dissolved numeric,vanadium_dissolved numeric,zinc_dissolved numeric,aluminum_total numeric,antimony_total numeric,arsenic_total numeric,barium_total numeric,beryllium_total numeric,cadmium_total numeric,cesium_total numeric,chromium_total numeric,cobalt_total numeric,copper_total numeric,iron_total numeric,lead_total numeric,lithium_total numeric,manganese_total numeric,mercury_total numeric,molybdenum_total numeric,nickel_total numeric,rubidium_total numeric,selenium_total numeric,silver_total numeric,strontium_total numeric,thallium_total numeric,titanium_total numeric,uranium_total numeric,vanadium_total numeric,zinc_total numeric,ultra_trace_mercury_dissolved numeric,ultra_trace_mercury_total numeric,hardness_calculated numeric,temperature numeric);
CREATE TABLE IF NOT EXISTS grab.grab_meta (title text,extents text,citations text,keywords text,format text,description text,link text,date_uploaded date);
CREATE TABLE IF NOT EXISTS pmd.pmd_data (lab_id text,cbm_location text,date_in date,date_out date,count_days numeric,parent_pahs numeric,naphthalene numeric,biphenyl numeric,acenaphthylene numeric,acenaphtene numeric,fluorene numeric,dibenzothiophene numeric,phenanthrene numeric,anthracene numeric,fluoranthene numeric,pyrene numeric,benz_a_anthracene numeric,chrysene numeric,benzo_b_fluoranthene numeric,benzo_k_fluoranthene numeric,benzo_a_pyrene numeric,indeno_pyrene numeric,dibenzo_a_h_anthracene numeric,benzo_perylene numeric,total_parent_pahs numeric,semi_quant_alkylated_pahs numeric,c1_naphthalene numeric,c2_naphthalene numeric,c3_naphthalene numeric,c4_naphthalene numeric,c1_fluorene numeric,c2_fluorene numeric,c3_fluorene numeric,c4_fluorene numeric,c1_dibenzothiophene numeric,c2_dibenzothiophene numeric,c3_dibenzothiophene numeric,c4_dibenzothiophene numeric,c1_phenanthrene_anthracene numeric,c2_phenanthrene_anthracene numeric,c3_phenanthrene_anthracene numeric,c4_phenanthrene_anthracene numeric,c1_fluoranthenes_pyrenes numeric,c2_fluoranthenes_pyrenes numeric,c3_fluoranthenes_pyrenes numeric,c4_fluoranthenes_pyrenes numeric,c1_chrysene numeric,c2_chrysene numeric,c3_chrysene numeric,c4_chrysene numeric);
CREATE TABLE IF NOT EXISTS pmd.pmd_meta (title text,extents text,citations text,keywords text,format text,description text,link text,date_uploaded date);
CREATE TABLE IF NOT EXISTS sonde.sonde_data (site text,date_in date,temp numeric,cond numeric,ph numeric,orp numeric,turbid numeric,chl numeric,odo_sat numeric,odo numeric);
CREATE TABLE IF NOT EXISTS sonde.sonde_meta (extents text,qa_qc text,equipment text,sampler text,lab text,depth numeric,matrix text,related text,type text,series text,comments text);
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

ALTER TABLE sonde.sonde_data ALTER COLUMN date_in TYPE text;ALTER TABLE dgt.dgt_data DROP CONSTRAINT dgt_data_pkey;
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

ALTER TABLE dgt.dgt_meta ALTER COLUMN date_uploaded TYPE text;ALTER TABLE pmd.pmd_data DROP CONSTRAINT pmd_data_pkey;
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

ALTER TABLE pmd.pmd_meta ALTER COLUMN date_uploaded TYPE text;ALTER TABLE grab.grab_data DROP CONSTRAINT grab_data_pkey;
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

ALTER TABLE grab.grab_meta ALTER COLUMN date_uploaded TYPE text;CREATE TABLE "app"."downloads" (
    "created" timestamp NOT NULL DEFAULT now(),
    "email" varchar(254) NOT NULL,
    "purpose" varchar(254) NOT NULL
);
