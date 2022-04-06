CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Income INT NOT NULL
);
CREATE TABLE population_analysis (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	population BIGINT NOT NULL
);
CREATE TABLE avg_house_price (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Avg_price BIGINT NOT NULL
);
CREATE TABLE crime_rate (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Avg_price BIGINT NOT NULL
);
CREATE TABLE educational_institutions (
	Province VARCHAR(40) NOT NULL,
	educational_institutions INT NOT NULL
);
CREATE TABLE immigration_median_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	immigrant_median_income BIGINT NOT NULL
);
CREATE TABLE immigration_population (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	immigrants BIGINT NOT NULL,
	refugees BIGINT NOT NULL
);
CREATE TABLE province_household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	income BIGINT NOT NULL,
);
CREATE TABLE tuition ( 
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Population_type VARCHAR(40) NOT NULL,
	Education_type VARCHAR(40) NOT NULL,
	Tuition BIGINT NOT NULL
);
CREATE TABLE greenhouse (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Sector VARCHAR(40) NOT NULL,
	Kilotonnes bigint NOT NULL
);
CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	house_procies BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL
);
CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	house_procies BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL
);
CREATE TABLE data_by_year_prov_totals (
	year INT NOT NULL,
	province VARCHAR(40) NOT NULL,
	house_prices BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL,
);