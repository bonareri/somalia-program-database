-- Step 1: Drop the existing database if it exists
-- DROP DATABASE IF EXISTS Somalia_Program_database;

-- Step 2: Create a new database
-- CREATE DATABASE Somalia_Program_database;

-- Step 3: Use the newly created database
-- USE Somalia_Program_database;

-- Step 4: Create the jurisdiction_hierarchy table
-- CREATE TABLE jurisdiction_hierarchy (
--     id INTEGER NOT NULL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     level VARCHAR(30) NOT NULL,
--     parent VARCHAR(50)
-- );

-- Step 5: Create the village_locations table with foreign key to jurisdiction_hierarchy
-- CREATE TABLE village_locations (
--     village_id INTEGER NOT NULL PRIMARY KEY,
--     jurisdiction_id INTEGER NOT NULL,
--     latitude VARCHAR(30),
--     longitude VARCHAR(30),
--     total_population INTEGER,
--     FOREIGN KEY (jurisdiction_id) REFERENCES jurisdiction_hierarchy(id)
-- );

-- Step 6: Create the beneficiary_partner_data table with foreign key to jurisdiction_hierarchy
-- CREATE TABLE beneficiary_partner_data (
--     partner_id INTEGER NOT NULL PRIMARY KEY,
--     partner VARCHAR(30) NOT NULL,
--     jurisdiction_id INTEGER NOT NULL,
--     beneficiaries INTEGER,
--     beneficiary_type VARCHAR(30),
--     FOREIGN KEY (jurisdiction_id) REFERENCES jurisdiction_hierarchy(id)
-- );

-- Step 7: Insert data into jurisdiction_hierarchy
-- INSERT INTO jurisdiction_hierarchy VALUES (1, 'Middle Shabelle', 'Region', NULL);
-- INSERT INTO jurisdiction_hierarchy VALUES (2, 'Hiraan', 'Region', NULL);
-- INSERT INTO jurisdiction_hierarchy VALUES (3, 'Balcad', 'District', 'Middle Shabelle');
-- INSERT INTO jurisdiction_hierarchy VALUES (4, 'Jowhar', 'District', 'Middle Shabelle');
-- INSERT INTO jurisdiction_hierarchy VALUES (5, 'Beledweyn', 'District', 'Hiraan');
-- INSERT INTO jurisdiction_hierarchy VALUES (6, 'Dharkenley', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (7, 'Bulo-Kahin', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (8, 'Hilo Kelyo', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (9, 'Xubow', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (10, 'Xiintooy', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (11, 'Dhagax Jebis', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (12, 'Filtare', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (13, 'Howl-Wadaag', 'Village', 'Beledweyn');
-- INSERT INTO jurisdiction_hierarchy VALUES (14, 'Balcad', 'Village', 'Balcad');
-- INSERT INTO jurisdiction_hierarchy VALUES (15, 'Mareeray', 'Village', 'Balcad');
-- INSERT INTO jurisdiction_hierarchy VALUES (16, 'Kulmis', 'Village', 'Balcad');
-- INSERT INTO jurisdiction_hierarchy VALUES (17, 'Sabuun', 'Village', 'Jowhar');
-- INSERT INTO jurisdiction_hierarchy VALUES (18, 'Bayaxaw', 'Village', 'Jowhar');
-- INSERT INTO jurisdiction_hierarchy VALUES (19, 'Bayaxawo', 'Village', 'Jowhar');

-- Step 8: Insert data into village_locations (replacing village name with jurisdiction_id)
-- INSERT INTO village_locations VALUES (1, 6, '4°47''35.40"', '45°12''28.80"', 12800);
-- INSERT INTO village_locations VALUES (2, 7, '4°47''57.00"', '45°11''5.70"', 9485);
-- INSERT INTO village_locations VALUES (3, 8, '4°47''57.00"', '45°12''58.60"', 5212);
-- INSERT INTO village_locations VALUES (4, 9, '4°46''46.77"', '45°12''7.57"', 2558);
-- INSERT INTO village_locations VALUES (5, 10, '4°44''14.40"', '45°13''5.00"', 3850);
-- INSERT INTO village_locations VALUES (6, 11, '4°44''27.86"', '45°12''42.03"', 3563);
-- INSERT INTO village_locations VALUES (7, 12, '4°44''20.43"', '45°12''27.89"', 8000);
-- INSERT INTO village_locations VALUES (8, 13, '4°43''50.00"', '45°11''58.20"', 7525);
-- INSERT INTO village_locations VALUES (9, 14, '2°21.624''', '45°23.928''', 1500);
-- INSERT INTO village_locations VALUES (10, 15, '2°23.504''', '45°25.200''', 7500);
-- INSERT INTO village_locations VALUES (11, 16, '2°36.761''', '45°30.642''', 6058);
-- INSERT INTO village_locations VALUES (12, 17, '2°53.020''', '45°32.356''', 5483);
-- INSERT INTO village_locations VALUES (13, 18, '2°44.768''', '45°29.727''', 3000);
-- INSERT INTO village_locations VALUES (14, 19, '2°44.768''', '45°29.926''', 7560);

-- Step 9: Insert data into beneficiary_partner_data (replacing village name with jurisdiction_id)
-- INSERT INTO beneficiary_partner_data VALUES (1, 'IRC', 14, 1450, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (2, 'NRC', 14, 50, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (3, 'SCI', 14, 1123, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (4, 'IMC', 14, 1245, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (5, 'SCI', 15, 5200, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (6, 'IMC', 15, 70, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (7, 'IRC', 15, 2100, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (8, 'CESVI', 15, 1800, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (9, 'SCI', 16, 1340, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (10, 'IMC', 16, 55, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (11, 'SCI', 16, 4500, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (12, 'IMC', 16, 1670, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (13, 'IMC', 17, 1340, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (14, 'IRC', 17, 66, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (15, 'CESVI', 17, 4090, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (16, 'SCI', 17, 2930, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (17, 'IMC', 18, 2800, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (18, 'IRC', 18, 2100, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (19, 'CESVI', 18, 45, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (20, 'SCI', 18, 1700, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (21, 'SCI', 19, 5900, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (22, 'IMC', 19, 40, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (23, 'IRC', 19, 1500, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (24, 'CESVI', 19, 1260, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (25, 'CESVI', 6, 7880, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (26, 'IRC', 6, 34, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (27, 'SCI', 7, 4300, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (28, 'IMC', 7, 4212, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (29, 'IRC', 7, 3200, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (30, 'IRC', 8, 5212, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (31, 'SCI', 8, 25, 'Households');
-- INSERT INTO beneficiary_partner_data VALUES (32, 'CESVI', 9, 2157, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (33, 'IMC', 10, 1667, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (34, 'IRC', 10, 2667, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (35, 'CESVI', 11, 2856, 'Individuals');
-- INSERT INTO beneficiary_partner_data VALUES (36, 'CESVI', 12, 7519, 'Individuals');

-- Step 10: Create the District_summary view
-- CREATE VIEW District_summary AS
-- SELECT
--     d.name AS District_Name,
--     r.name AS Region_Name,
--     SUM(
--         CASE 
--             WHEN b.beneficiary_type = 'Individuals' THEN b.beneficiaries
--             WHEN b.beneficiary_type = 'Households' THEN b.beneficiaries * 6
--             ELSE 0
--         END
--     ) AS Total_Individual_Beneficiaries,
--     ROUND(
--         SUM(
--             CASE 
--                 WHEN b.beneficiary_type = 'Individuals' THEN b.beneficiaries
--                 WHEN b.beneficiary_type = 'Households' THEN b.beneficiaries * 6
--                 ELSE 0
--             END
--         ) * 1.0 / NULLIF(SUM(v.total_population), 0), 4
--     ) AS Individual_Beneficiaries_to_Population_Ratio
-- FROM
--     jurisdiction_hierarchy d
-- JOIN jurisdiction_hierarchy r ON d.parent = r.name
-- JOIN jurisdiction_hierarchy vj ON vj.parent = d.name AND vj.level = 'Village'
-- LEFT JOIN village_locations v ON v.jurisdiction_id = vj.id
-- LEFT JOIN beneficiary_partner_data b ON b.jurisdiction_id = vj.id
-- WHERE d.level = 'District' AND r.level = 'Region'
-- GROUP BY d.name, r.name;

-- SELECT * FROM District_summary;

-- Create the Partner_summary view
-- CREATE VIEW Partner_summary AS
-- SELECT
--     b.partner AS Partner_Name,
--     COUNT(DISTINCT vj.id) AS No_of_Villages_Reached,
--     COUNT(DISTINCT d.id) AS No_of_Districts_Reached
-- FROM
--     beneficiary_partner_data b
-- JOIN jurisdiction_hierarchy vj ON b.jurisdiction_id = vj.id
-- JOIN jurisdiction_hierarchy d ON vj.parent = d.name AND d.level = 'District'
-- GROUP BY
--     b.partner;

-- SELECT * FROM Partner_summary;

-- SELECT DISTINCT
--     id AS District_ID,
--     name AS District_Name,
--     parent AS Region_Name
-- FROM 
--     jurisdiction_hierarchy
-- WHERE 
--     level = 'District';

-- SELECT * FROM jurisdiction_hierarchy LIMIT 10;

-- SELECT * FROM village_locations LIMIT 10;

-- SELECT * FROM beneficiary_partner_data LIMIT 10;





