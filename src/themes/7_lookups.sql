DROP SEQUENCE IF EXISTS lookups.themes_id_seq;
CREATE SEQUENCE lookups.themes_id_seq INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;


DROP TABLE IF EXISTS lookups.themes;
CREATE TABLE lookups.themes (
	theme_id varchar NOT NULL,
	description text,
	user_id int4,
	name varchar,
	visualization varchar(20),
	id serial,
	mode varchar(15) default 'markers',
	PRIMARY KEY ("id")
) WITH (OIDS=FALSE);

BEGIN;
INSERT INTO lookups.themes VALUES ('sonde', 'The sondes measure temperature, pH, turbidity, dissolved oxygen, conductivity and chlorophyll-a every two hours for a long as the sondes are in the water. Sondes are typically in the water for a month and then are switched out for a new sonde up to 4 times per summer .', null, 'Sonde Data Theme', 'scatter', '1', 'lines+markers');
INSERT INTO lookups.themes VALUES ('grab', 'A grab water sample is collected just below the surface of the water and tells us what is in the water at the time it is collected. The NWT wide CBM grab water samples are sent to Taiga lab in Yellowknife.  In the lab the samples are analyzed for 75 parameters including pH, turbidity, conductivity, chlorophyll-a and total and dissolved metals.', null, 'Grab Data Theme', 'scatter', '4', 'markers');
INSERT INTO lookups.themes VALUES ('pmd', 'PMD (Polyethylene Membrane Devices) are passive samplers that stay in the water for one month, up to 4 times per summer, to measure oil and gas-related chemicals (hydrocarbons) dissolved in water. PMDs act like sponges and pick hydrocarbons in the water. PMDs are so sensitive that, if a cigarette smokers handles the PMDs, the hydrocarbons on their breath can affect the results.', null, 'PMD Data Theme', 'scatter', '3', 'markers');
INSERT INTO lookups.themes VALUES ('dgt', 'Diffusion Gradients in Thin-Films passive samplers (DGTs) act like sponges and pick up the dissolved metals in the water. DGTs are left in the water for 3 to 4 days. The DGTs measure the concentrations of dissolved metals in the after over longer periods of time than the sampling water on one occasion (grab sample).', null, 'DGT Data Theme', 'scatter', '2', 'markers');
COMMIT;
