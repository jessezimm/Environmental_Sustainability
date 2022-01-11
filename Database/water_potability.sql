--- Creating tables for water-potability database
create table water1 (
	Index int not null,
	ph float8,
	Hardness float8,
	Solids float8,
	Chloramines float8,
	Sulfate float8, 
	primary key (Index),
	unique (Index));
	
create table water2 (
	Index int not null,
	Conductivity float8,
	Organic_carbon float8,
	Trihalomethanes float8,
	Turbidity float8,
	Potability int,
	foreign key (Index) References water1 (Index),
	primary key (Index),
	unique(Index));
	
	select * from water1; 
	select * from water2;
-- Joining the tables
-- Joining retirement_info and dept_emp tables
select * from water1; 
select water1.Index,
water1.ph,
water1.Hardness,
water1.Solids,
water1.Chloramines,
water1.Sulfate,
water2.Conductivity,
water2.Organic_carbon,
water2.Trihalomethanes,
water2.Turbidity,
water2.Potability
INTO completed_safe_water_df
FROM water1
LEFT JOIN water2
ON water1.Index = water2.Index;

select * from water_potability
