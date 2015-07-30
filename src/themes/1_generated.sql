-- CREATE SCHEMA datathemes_mackenzie;
CREATE SCHEMA sonde;
CREATE SCHEMA dgt;
CREATE SCHEMA grab;
CREATE SCHEMA pmd;
CREATE SCHEMA lookups;

CREATE TABLE
IF NOT EXISTS dgt.dgt_data (
    site_name TEXT,
    sample_name TEXT,
    site_code TEXT,
    date_in DATE,
    date_out DATE,
    methyl_mercury NUMERIC,
    vanadium NUMERIC,
    aluminum NUMERIC,
    sd_al NUMERIC,
    manganese NUMERIC,
    sd_mn NUMERIC,
    iron NUMERIC,
    sd_fe NUMERIC,
    cobalt NUMERIC,
    sd_co NUMERIC,
    nickel NUMERIC,
    sd_ni NUMERIC,
    copper NUMERIC,
    sd_cu NUMERIC,
    zinc NUMERIC,
    sd_zn NUMERIC,
    cadmium NUMERIC,
    sd_cd NUMERIC,
    LEAD NUMERIC,
    sd_pb NUMERIC,
    CONSTRAINT dgt_data_pkey PRIMARY KEY (
        sample_name,
        site_code,
        date_in,
        date_out
    )
);

CREATE TABLE
IF NOT EXISTS dgt.dgt_meta (
    title TEXT,
    extents TEXT,
    citations TEXT,
    keywords TEXT,
    format TEXT,
    description TEXT,
    link TEXT,
    date_uploaded DATE
);

CREATE TABLE
IF NOT EXISTS grab.grab_data (
    site TEXT,
    site_name TEXT,
    lab_id TEXT,
    sample_type TEXT,
    date_in DATE,
    month_code NUMERIC,
    waterbody_type TEXT,
    waterbody_name TEXT,
    region TEXT,
    ammonia_as_nitrogen NUMERIC,
    nitrogen_dissolved NUMERIC,
    nitrogen_total NUMERIC,
    organic_carbon_dissolved NUMERIC,
    organic_carbon_total NUMERIC,
    phosphorous_dissolved NUMERIC,
    phosphorous_total NUMERIC,
    alkalinity_total NUMERIC,
    conductivity_specific NUMERIC,
    ph NUMERIC,
    solids_total_dissolved NUMERIC,
    solids_total_suspended NUMERIC,
    turbidity NUMERIC,
    calcium NUMERIC,
    chloride NUMERIC,
    floride NUMERIC,
    magnesium NUMERIC,
    nitrate_as_nitrogen NUMERIC,
    nitrite_as_nitrogen NUMERIC,
    potassium NUMERIC,
    sodium NUMERIC,
    sulphate NUMERIC,
    chlorophyll_a NUMERIC,
    aluminum_dissolved NUMERIC,
    antimony_dissolved NUMERIC,
    arsenic_dissolved NUMERIC,
    barium_dissolved NUMERIC,
    beryllium_dissolved NUMERIC,
    cadmium_dissolved NUMERIC,
    cesium_dissolved NUMERIC,
    chromium_dissolved NUMERIC,
    cobalt_dissolved NUMERIC,
    copper_dissolved NUMERIC,
    iron_dissolved NUMERIC,
    lead_dissolved NUMERIC,
    lithium_dissolved NUMERIC,
    manganese_dissolved NUMERIC,
    mercury_dissolved NUMERIC,
    molybdenum_dissolved NUMERIC,
    nickel_dissolved NUMERIC,
    rubidium_dissolved NUMERIC,
    selenium_dissolved NUMERIC,
    silver_dissolved NUMERIC,
    strontium_dissolved NUMERIC,
    thallium_dissolved NUMERIC,
    titanium_dissolved NUMERIC,
    uranium_dissolved NUMERIC,
    vanadium_dissolved NUMERIC,
    zinc_dissolved NUMERIC,
    aluminum_total NUMERIC,
    antimony_total NUMERIC,
    arsenic_total NUMERIC,
    barium_total NUMERIC,
    beryllium_total NUMERIC,
    cadmium_total NUMERIC,
    cesium_total NUMERIC,
    chromium_total NUMERIC,
    cobalt_total NUMERIC,
    copper_total NUMERIC,
    iron_total NUMERIC,
    lead_total NUMERIC,
    lithium_total NUMERIC,
    manganese_total NUMERIC,
    mercury_total NUMERIC,
    molybdenum_total NUMERIC,
    nickel_total NUMERIC,
    rubidium_total NUMERIC,
    selenium_total NUMERIC,
    silver_total NUMERIC,
    strontium_total NUMERIC,
    thallium_total NUMERIC,
    titanium_total NUMERIC,
    uranium_total NUMERIC,
    vanadium_total NUMERIC,
    zinc_total NUMERIC,
    ultra_trace_mercury_dissolved NUMERIC,
    ultra_trace_mercury_total NUMERIC,
    hardness_calculated NUMERIC,
    temperature NUMERIC,
    CONSTRAINT grab_data_pkey PRIMARY KEY (site_code, sample_type, in_date)
);

CREATE TABLE
IF NOT EXISTS grab.grab_meta (
    title TEXT,
    extents TEXT,
    citations TEXT,
    keywords TEXT,
    format TEXT,
    description TEXT,
    link TEXT,
    date_uploaded DATE
);

CREATE TABLE
IF NOT EXISTS pmd.pmd_data (
    lab_id TEXT,
    cbm_location TEXT,
    date_in DATE,
    date_out DATE,
    count_days NUMERIC,
    parent_pahs NUMERIC,
    naphthalene NUMERIC,
    biphenyl NUMERIC,
    acenaphthylene NUMERIC,
    acenaphtene NUMERIC,
    fluorene NUMERIC,
    dibenzothiophene NUMERIC,
    phenanthrene NUMERIC,
    anthracene NUMERIC,
    fluoranthene NUMERIC,
    pyrene NUMERIC,
    benz_a_anthracene NUMERIC,
    chrysene NUMERIC,
    benzo_b_fluoranthene NUMERIC,
    benzo_k_fluoranthene NUMERIC,
    benzo_a_pyrene NUMERIC,
    indeno_pyrene NUMERIC,
    dibenzo_a_h_anthracene NUMERIC,
    benzo_perylene NUMERIC,
    total_parent_pahs NUMERIC,
    semi_quant_alkylated_pahs NUMERIC,
    c1_naphthalene NUMERIC,
    c2_naphthalene NUMERIC,
    c3_naphthalene NUMERIC,
    c4_naphthalene NUMERIC,
    c1_fluorene NUMERIC,
    c2_fluorene NUMERIC,
    c3_fluorene NUMERIC,
    c4_fluorene NUMERIC,
    c1_dibenzothiophene NUMERIC,
    c2_dibenzothiophene NUMERIC,
    c3_dibenzothiophene NUMERIC,
    c4_dibenzothiophene NUMERIC,
    c1_phenanthrene_anthracene NUMERIC,
    c2_phenanthrene_anthracene NUMERIC,
    c3_phenanthrene_anthracene NUMERIC,
    c4_phenanthrene_anthracene NUMERIC,
    c1_fluoranthenes_pyrenes NUMERIC,
    c2_fluoranthenes_pyrenes NUMERIC,
    c3_fluoranthenes_pyrenes NUMERIC,
    c4_fluoranthenes_pyrenes NUMERIC,
    c1_chrysene NUMERIC,
    c2_chrysene NUMERIC,
    c3_chrysene NUMERIC,
    c4_chrysene NUMERIC,
    CONSTRAINT pmd_data_pkey PRIMARY KEY (
        lab_id,
        cbm_location,
        in_date,
        out_date
    )
);

CREATE TABLE
IF NOT EXISTS pmd.pmd_meta (
    title TEXT,
    extents TEXT,
    citations TEXT,
    keywords TEXT,
    format TEXT,
    description TEXT,
    link TEXT,
    date_uploaded DATE
);

CREATE TABLE
IF NOT EXISTS sonde.sonde_data (
    site TEXT,
    date_in DATE,
    temp NUMERIC,
    cond NUMERIC,
    ph NUMERIC,
    orp NUMERIC,
    turbid NUMERIC,
    chl NUMERIC,
    odo_sat NUMERIC,
    odo NUMERIC,
    CONSTRAINT sonde_data_pkey PRIMARY KEY (site, date_in)
);

CREATE TABLE
IF NOT EXISTS sonde.sonde_meta (
    extents TEXT,
    qa_qc TEXT,
    equipment TEXT,
    sampler TEXT,
    lab TEXT,
    DEPTH NUMERIC,
    matrix TEXT,
    related TEXT,
    TYPE TEXT,
    series TEXT,
    comments TEXT
);

CREATE TABLE IF NOT EXISTS lookups.themes (
    theme_id varchar NOT NULL,
    description text,
    user_id int4,
    name varchar
);

BEGIN;
INSERT INTO lookups.themes VALUES ('sonde', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', null, 'Sonde Data Theme');
INSERT INTO lookups.themes VALUES ('dgt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer suscipit purus at lobortis finibus. Ut eget dolor in tortor ultrices elementum sit amet eu nunc. Morbi ut nisi diam. Vivamus.', null, 'DGT Data Theme');
INSERT INTO lookups.themes VALUES ('pmd', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', null, 'PMD Data Theme');
INSERT INTO lookups.themes VALUES ('grab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', null, 'Grab Data Theme');
COMMIT;

