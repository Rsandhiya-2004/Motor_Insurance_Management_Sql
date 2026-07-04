#INSERT VALUES

-- 1. vehicle_make_t (25 Rows)

INSERT INTO vehicle_make_t VALUES 
(1,'Toyota','Active','2024-01-01','Admin'),(2,'Honda','Active','2024-01-01','Admin'),(3,'Ford','Active','2024-01-01','Admin'),
(4,'Nissan','Active','2024-01-01','Admin'),(5,'Chevrolet','Active','2024-01-01','Admin'),(6,'BMW','Active','2024-01-01','Admin'),
(7,'Mercedes','Active','2024-01-01','Admin'),(8,'Audi','Active','2024-01-01','Admin'),(9,'Hyundai','Active','2024-01-01','Admin'),
(10,'Kia','Active','2024-01-01','Admin'),(11,'Mazda','Active','2024-01-01','Admin'),(12,'Subaru','Active','2024-01-01','Admin'),
(13,'Volkswagen','Active','2024-01-01','Admin'),(14,'Lexus','Active','2024-01-01','Admin'),(15,'Jeep','Active','2024-01-01','Admin'),
(16,'Dodge','Active','2024-01-01','Admin'),(17,'Ram','Active','2024-01-01','Admin'),(18,'GMC','Active','2024-01-01','Admin'),
(19,'Volvo','Active','2024-01-01','Admin'),(20,'Tesla','Active','2024-01-01','Admin'),(21,'Porsche','Active','2024-01-01','Admin'),
(22,'Land Rover','Active','2024-01-01','Admin'),(23,'Jaguar','Active','2024-01-01','Admin'),(24,'Cadillac','Active','2024-01-01','Admin'),
(25,'Infiniti','Active','2024-01-01','Admin');

-- 2. vehicle_model_t (25 Rows)
INSERT INTO vehicle_model_t VALUES 
(101,'Camry',1,'Active','2024-01-01','Admin'),(102,'Corolla',1,'Active','2024-01-01','Admin'),(103,'Civic',2,'Active','2024-01-01','Admin'),
(104,'Accord',2,'Active','2024-01-01','Admin'),(105,'Mustang',3,'Active','2024-01-01','Admin'),(106,'F-150',3,'Active','2024-01-01','Admin'),
(107,'Altima',4,'Active','2024-01-01','Admin'),(108,'Rogue',4,'Active','2024-01-01','Admin'),(109,'Malibu',5,'Active','2024-01-01','Admin'),
(110,'Silverado',5,'Active','2024-01-01','Admin'),(111,'3 Series',6,'Active','2024-01-01','Admin'),(112,'5 Series',6,'Active','2024-01-01','Admin'),
(113,'C-Class',7,'Active','2024-01-01','Admin'),(114,'E-Class',7,'Active','2024-01-01','Admin'),(115,'A4',8,'Active','2024-01-01','Admin'),
(116,'Q5',8,'Active','2024-01-01','Admin'),(117,'Elantra',9,'Active','2024-01-01','Admin'),(118,'Sonata',9,'Active','2024-01-01','Admin'),
(119,'Sportage',10,'Active','2024-01-01','Admin'),(120,'Sorento',10,'Active','2024-01-01','Admin'),(121,'CX-5',11,'Active','2024-01-01','Admin'),
(122,'Outback',12,'Active','2024-01-01','Admin'),(123,'Jetta',13,'Active','2024-01-01','Admin'),(124,'RX350',14,'Active','2024-01-01','Admin'),
(125,'Wrangler',15,'Active','2024-01-01','Admin');

-- 3. regions_t (25 Rows)
INSERT INTO regions_t VALUES 
(1,'North','Region1','City1'),(2,'South','Region2','City2'),(3,'East','Region3','City3'),(4,'West','Region4','City4'),
(5,'Central','Region5','City5'),(6,'Northeast','Region6','City6'),(7,'Northwest','Region7','City7'),(8,'Southeast','Region8','City8'),
(9,'Southwest','Region9','City9'),(10,'Coastal','Region10','City10'),(11,'Midwest','Region11','City11'),(12,'Mountain','Region12','City12'),
(13,'Valley','Region13','City13'),(14,'Metro','Region14','City14'),(15,'Delta','Region15','City15'),(16,'Plains','Region16','City16'),
(17,'Highlands','Region17','City17'),(18,'Desert','Region18','City18'),(19,'Island','Region19','City19'),(20,'Border','Region20','City20'),
(21,'Capital','Region21','City21'),(22,'Bay Area','Region22','City22'),(23,'Canyon','Region23','City23'),(24,'Forest','Region24','City24'),
(25,'Appalachia','Region25','City25');

-- 4. vehicle_color_t (25 Rows)
INSERT INTO vehicle_color_t VALUES 
(1,'Red','Active'),(2,'Blue','Active'),(3,'Black','Active'),(4,'White','Active'),(5,'Silver','Active'),
(6,'Grey','Active'),(7,'Green','Active'),(8,'Yellow','Active'),(9,'Orange','Active'),(10,'Brown','Active'),
(11,'Gold','Active'),(12,'Beige','Active'),(13,'Bronze','Active'),(14,'Copper','Active'),(15,'Purple','Active'),
(16,'Pink','Active'),(17,'Burgundy','Active'),(18,'Maroon','Active'),(19,'Navy','Active'),(20,'Teal','Active'),
(21,'Lime','Active'),(22,'Charcoal','Active'),(23,'Champagne','Active'),(24,'Ruby','Active'),(25,'Platinum','Active');

-- 5. vehicle_body_t (25 Rows)
INSERT INTO vehicle_body_t VALUES 
(1,'Sedan','Active'),(2,'Jeeps','Active'),(3,'4x4','Active'),(4,'Wagon','Active'),(5,'Hatchback','Active'),
(6,'Tankers','Active'),(7,'Truck','Active'),(8,'Van','Active'),(9,'Bus','Active'),(10,'Coupe','Active'),
(11,'Convertible','Active'),(12,'SUV','Active'),(13,'Crossover','Active'),(14,'Minivan','Active'),(15,'Pickup','Active'),
(16,'Roadster','Active'),(17,'Supercar','Active'),(18,'Limousine','Active'),(19,'Camper','Active'),(20,'Tractor','Active'),
(21,'Trailer','Active'),(22,'Dumper','Active'),(23,'Loader','Active'),(24,'Flatbed','Active'),(25,'Cabriolet','Active');

-- 6. vehicle_category_t (25 Rows)
INSERT INTO vehicle_category_t VALUES 
(1,'private','Active'),(2,'commercial','Active'),(3,'Taxi','Active'),(4,'Motorcycle','Active'),(5,'sports','Active'),
(6,'Fleet','Active'),(7,'Rental','Active'),(8,'Cargo','Active'),(9,'Passenger','Active'),(10,'Agricultural','Active'),
(11,'Construction','Active'),(12,'Emergency','Active'),(13,'Government','Active'),(14,'Military','Active'),(15,'Educational','Active'),
(16,'Utility','Active'),(17,'Delivery','Active'),(18,'Logistics','Active'),(19,'Mining','Active'),(20,'Tourism','Active'),
(21,'Special Event','Active'),(22,'Shuttle','Active'),(23,'Heavy Duty','Active'),(24,'Leased','Active'),(25,'VIP','Active');

-- 7. master_lov_t (25 Rows)
INSERT INTO master_lov_t VALUES 
(1,'Marital Status','Single'),(2,'Marital Status','Married'),(3,'Marital Status','Divorced'),(4,'Education','High School'),(5,'Education','Bachelor'),
(6,'Education','Master'),(7,'Education','PhD'),(8,'Country','USA'),(9,'Country','Canada'),(10,'Country','UK'),
(11,'Nationality','American'),(12,'Nationality','Canadian'),(13,'Nationality','British'),(14,'Marital Status','Widowed'),(15,'Education','Diploma'),
(16,'Country','Germany'),(17,'Country','France'),(18,'Country','India'),(19,'Nationality','German'),(20,'Nationality','French'),
(21,'Nationality','Indian'),(22,'Country','Australia'),(23,'Nationality','Australian'),(24,'Country','Japan'),(25,'Nationality','Japanese');

-- 8. personal_information_t (25 Rows)
INSERT INTO personal_information_t VALUES 
(1,'Admin','John','Doe','Male','1980-05-12','jdoe@monarchy.com',2,6,'05115111','99999111','Add1','Add2','Add3','St1',1,1,8,'NAT001',11,'True','2024-01-01','Sys'),
(2,'UnderWriter','Jane','Smith','Female','1985-08-22','jsmith@monarchy.com',1,5,'05115222','99999222','Add1','Add2','Add3','St2',2,2,8,'NAT002',11,'True','2024-01-01','Sys'),
(3,'Operational User','Bob','Jones','Male','1988-03-15','bjones@monarchy.com',2,5,'05115333','99999333','Add1','Add2','Add3','St3',3,3,8,'NAT003',11,'True','2024-01-01','Sys'),
(4,'Broker','Alice','Brown','Female','1990-11-02','abrown@broker1.com',2,5,'05115444','99999444','Add1','Add2','Add3','St4',4,4,8,'NAT004',11,'True','2024-01-01','Sys'),
(5,'Sales Agent','Charlie','Green','Male','1993-07-19','cgreen@broker1.com',1,4,'05115555','99999555','Add1','Add2','Add3','St5',5,5,8,'NAT005',11,'True','2024-01-01','Sys'),
(6,'Broker','David','White','Male','1979-12-30','dwhite@broker2.com',2,6,'05115666','99999666','Add1','Add2','Add3','St6',6,6,9,'NAT006',12,'True','2024-01-01','Sys'),
(7,'Sales Agent','Emily','Black','Female','1995-02-14','eblack@broker2.com',1,5,'05115777','99999777','Add1','Add2','Add3','St7',7,7,9,'NAT007',12,'True','2024-01-01','Sys'),
(8,'Direct User','Frank','Gray','Male','2000-06-25','fgray@client.com',1,4,'05115888','99999888','Add1','Add2','Add3','St8',8,8,8,'NAT008',11,'True','2024-01-01','Sys'),
(9,'Direct User','Grace','Blue','Female','1992-09-05','gblue@client.com',2,5,'05115999','99999999','Add1','Add2','Add3','St9',9,9,8,'NAT009',11,'True','2024-01-01','Sys'),
(10,'Direct User','Henry','Gold','Male','1984-04-18','hgold@client.com',2,6,'05115101','99999101','Add1','Add2','Add3','St10',10,10,10,'NAT010',13,'True','2024-01-01','Sys'),
(11,'Direct User','Ivy','Silver','Female','1997-01-11','isilver@client.com',1,5,'05115102','99999102','Add1','Add2','Add3','St11',11,11,10,'NAT011',13,'True','2024-01-01','Sys'),
(12,'Direct User','Jack','Pink','Male','1991-10-24','jpink@client.com',3,4,'05115103','99999103','Add1','Add2','Add3','St12',12,12,8,'NAT012',11,'True','2024-01-01','Sys'),
(13,'Direct User','Karen','Orange','Female','1986-05-29','korange@client.com',2,7,'05115104','99999104','Add1','Add2','Add3','St13',13,13,16,'NAT013',19,'True','2024-01-01','Sys'),
(14,'Direct User','Leo','Purple','Male','1989-07-08','lpurple@client.com',1,5,'05115105','99999105','Add1','Add2','Add3','St14',14,14,17,'NAT014',20,'True','2024-01-01','Sys'),
(15,'Direct User','Mona','Yellow','Female','1994-12-03','myellow@client.com',2,5,'05115106','99999106','Add1','Add2','Add3','St15',15,15,18,'NAT015',21,'True','2024-01-01','Sys'),
(16,'Direct User','Ned','Cyan','Male','1996-03-21','ncyan@client.com',1,4,'05115107','99999107','Add1','Add2','Add3','St16',16,16,22,'NAT016',23,'True','2024-01-01','Sys'),
(17,'Direct User','Olive','Magenta','Female','1983-10-14','omagenta@client.com',1,6,'05115108','99999108','Add1','Add2','Add3','St17',17,17,24,'NAT017',25,'True','2024-01-01','Sys'),
(18,'Direct User','Paul','Teal','Male','1975-08-09','pteal@client.com',2,5,'05115109','99999109','Add1','Add2','Add3','St18',18,18,8,'NAT018',11,'True','2024-01-01','Sys'),
(19,'Direct User','Queen','Lime','Female','1999-04-01','qlime@client.com',1,5,'05115110','99999110','Add1','Add2','Add3','St19',19,19,8,'NAT019',11,'True','2024-01-01','Sys'),
(20,'Direct User','Ray','Maroon','Male','1982-11-11','rmaroon@client.com',2,6,'05115112','99999112','Add1','Add2','Add3','St20',20,20,8,'NAT020',11,'True','2024-01-01','Sys'),
(21,'Direct User','Sara','Navy','Female','1990-06-12','snavy@client.com',2,5,'05115113','99999113','Add1','Add2','Add3','St21',21,21,8,'NAT021',11,'True','2024-01-01','Sys'),
(22,'Direct User','Tim','Beige','Male','1992-02-27','tbeige@client.com',1,4,'05115114','99999114','Add1','Add2','Add3','St22',22,22,8,'NAT022',11,'True','2024-01-01','Sys'),
(23,'Direct User','Uma','Ruby','Female','1987-09-16','uruby@client.com',2,5,'05115115','99999115','Add1','Add2','Add3','St23',23,23,8,'NAT023',11,'True','2024-01-01','Sys'),
(24,'Direct User','Victor','Bronze','Male','1981-01-22','vbronze@client.com',2,6,'05115116','99999116','Add1','Add2','Add3','St24',24,24,8,'NAT024',11,'True','2024-01-01','Sys'),
(25,'Direct User','Wendy','Copper','Female','1995-05-05','wcopper@client.com',1,5,'05115117','99999117','Add1','Add2','Add3','St25',25,25,8,'NAT025',11,'True','2024-01-01','Sys');

-- 9. login_user_t (25 Rows)
INSERT INTO login_user_t VALUES 
(1,'EncryptedPass1',1,NULL,'Admin','True','2024-01-01','Sys'),(2,'EncryptedPass2',2,NULL,'UnderWriter','True','2024-01-01','Sys'),
(3,'EncryptedPass3',3,NULL,'Operational User','True','2024-01-01','Sys'),(4,'EncryptedPass4',4,NULL,'Broker','True','2024-01-01','Sys'),
(5,'EncryptedPass5',5,4,'Sales Agent','True','2024-01-01','Sys'),(6,'EncryptedPass6',6,NULL,'Broker','True','2024-01-01','Sys'),
(7,'EncryptedPass7',7,6,'Sales Agent','True','2024-01-01','Sys'),(8,'EncryptedPass8',8,NULL,'Direct User','True','2024-01-01','Sys'),
(9,'EncryptedPass9',9,NULL,'Direct User','True','2024-01-01','Sys'),(10,'EncryptedPass10',10,NULL,'Direct User','True','2024-01-01','Sys'),
(11,'EncryptedPass11',11,NULL,'Direct User','True','2024-01-01','Sys'),(12,'EncryptedPass12',12,NULL,'Direct User','True','2024-01-01','Sys'),
(13,'EncryptedPass13',13,NULL,'Direct User','True','2024-01-01','Sys'),(14,'EncryptedPass14',14,NULL,'Direct User','True','2024-01-01','Sys'),
(15,'EncryptedPass15',15,NULL,'Direct User','True','2024-01-01','Sys'),(16,'EncryptedPass16',16,NULL,'Direct User','True','2024-01-01','Sys'),
(17,'EncryptedPass17',17,NULL,'Direct User','True','2024-01-01','Sys'),(18,'EncryptedPass18',18,NULL,'Direct User','True','2024-01-01','Sys'),
(19,'EncryptedPass19',19,NULL,'Direct User','True','2024-01-01','Sys'),(20,'EncryptedPass20',20,NULL,'Direct User','True','2024-01-01','Sys'),
(21,'EncryptedPass21',21,NULL,'Direct User','True','2024-01-01','Sys'),(22,'EncryptedPass22',22,NULL,'Direct User','True','2024-01-01','Sys'),
(23,'EncryptedPass23',23,NULL,'Direct User','True','2024-01-01','Sys'),(24,'EncryptedPass24',24,NULL,'Direct User','True','2024-01-01','Sys'),
(25,'EncryptedPass25',25,NULL,'Direct User','True','2024-01-01','Sys');

-- 10. broker_t (25 Rows) - Standardized cross mapping placeholder logic
INSERT INTO broker_t VALUES 
(4,'Alice Brown','Alpha Insurance Brokers','123 Broker St',50000.00,'True','2024-01-01','Sys'),
(6,'David White','Beta Brokerage House','456 Agency Rd',75000.00,'True','2024-01-01','Sys'),
(1, 'Admin Mock', 'Admin Org', 'Loc 1', 0.00, 'True', '2024-01-01', 'Sys'),
(2, 'UW Mock', 'UW Org', 'Loc 2', 0.00, 'True', '2024-01-01', 'Sys'),
(3, 'Op Mock', 'Op Org', 'Loc 3', 0.00, 'True', '2024-01-01', 'Sys'),
(5, 'SA1 Mock', 'Alpha Sub', 'Loc 4', 0.00, 'True', '2024-01-01', 'Sys'),
(7, 'SA2 Mock', 'Beta Sub', 'Loc 5', 0.00, 'True', '2024-01-01', 'Sys'),
(8, 'D1 Mock', 'Direct', 'Loc 6', 0.00, 'True', '2024-01-01', 'Sys'),
(9, 'D2 Mock', 'Direct', 'Loc 7', 0.00, 'True', '2024-01-01', 'Sys'),
(10, 'D3 Mock', 'Direct', 'Loc 8', 0.00, 'True', '2024-01-01', 'Sys'),
(11, 'D4 Mock', 'Direct', 'Loc 9', 0.00, 'True', '2024-01-01', 'Sys'),
(12, 'D5 Mock', 'Direct', 'Loc 10', 0.00, 'True', '2024-01-01', 'Sys'),
(13, 'D6 Mock', 'Direct', 'Loc 11', 0.00, 'True', '2024-01-01', 'Sys'),
(14, 'D7 Mock', 'Direct', 'Loc 12', 0.00, 'True', '2024-01-01', 'Sys'),
(15, 'D8 Mock', 'Direct', 'Loc 13', 0.00, 'True', '2024-01-01', 'Sys'),
(16, 'D9 Mock', 'Direct', 'Loc 14', 0.00, 'True', '2024-01-01', 'Sys'),
(17, 'D10 Mock', 'Direct', 'Loc 15', 0.00, 'True', '2024-01-01', 'Sys'),
(18, 'D11 Mock', 'Direct', 'Loc 16', 0.00, 'True', '2024-01-01', 'Sys'),
(19, 'D12 Mock', 'Direct', 'Loc 17', 0.00, 'True', '2024-01-01', 'Sys'),
(20, 'D13 Mock', 'Direct', 'Loc 18', 0.00, 'True', '2024-01-01', 'Sys'),
(21, 'D14 Mock', 'Direct', 'Loc 19', 0.00, 'True', '2024-01-01', 'Sys'),
(22, 'D15 Mock', 'Direct', 'Loc 20', 0.00, 'True', '2024-01-01', 'Sys'),
(23, 'D16 Mock', 'Direct', 'Loc 21', 0.00, 'True', '2024-01-01', 'Sys'),
(24, 'D17 Mock', 'Direct', 'Loc 22', 0.00, 'True', '2024-01-01', 'Sys'),
(25, 'D18 Mock', 'Direct', 'Loc 23', 0.00, 'True', '2024-01-01', 'Sys');

-- 11. product_config_t (25 Rows)
INSERT INTO product_config_t VALUES 
(1,'Comprehensive',5.50,'Active'),(2,'Third Party Liability (TPL)',3.20,'Active'),(3,'Fire and Theft Cover',4.00,'Active'),
(4,'Collision Premium Base',4.50,'Active'),(5,'Personal Injury Addon',1.20,'Active'),(6,'Medical Payments Pack',1.50,'Active'),
(7,'Uninsured Motorist Plan',2.00,'Active'),(8,'Windshield Damage Addon',0.80,'Active'),(9,'Towing & Labor Cover',0.50,'Active'),
(10,'Rental Car Reimbursement',0.70,'Active'),(11,'Roadside Assistance Shield',0.60,'Active'),(12,'Gap Insurance Element',1.80,'Active'),
(13,'New Car Replacement Package',2.50,'Active'),(14,'Accessories Protection Options',1.10,'Active'),(15,'Engine Protection Core',2.20,'Active'),
(16,'Zero Depreciation Cover',3.80,'Active'),(17,'Key Replacement Cover',0.30,'Active'),(18,'Loss of Personal Belongings',0.40,'Active'),
(19,'Consumables Cover Addon',0.50,'Active'),(20,'Daily Allowance Plan',0.90,'Active'),(21,'Passenger Cover Tier 1',1.00,'Active'),
(22,'Commercial Liability Base',6.00,'Active'),(23,'Taxi Carrier Protection',5.00,'Active'),(24,'Motorcycle Sports Tier',4.20,'Active'),
(25,'VIP Comprehensive Plus',8.00,'Active');

-- 12. premium_rate_config_t (25 Rows)
INSERT INTO premium_rate_config_t VALUES 
(1,1,'High Risk Driver',1.50),(2,1,'Clean Driving Record',0.85),(3,2,'Commercial Usage Modification',1.30),(4,2,'Urban Parking Area',1.15),
(5,3,'Anti-Theft Device Installed',0.90),(6,4,'Sports Vehicle Model',1.40),(7,5,'Age Below 25',1.25),(8,6,'Family Package Plan',0.95),
(9,7,'High Mileage Driver',1.20),(10,8,'Rural Low Density Area',0.80),(11,9,'Winter Tires Equipped',0.95),(12,10,'Corporate Fleet Volume',0.75),
(13,11,'Loyal Customer Status',0.90),(14,12,'Prior Insurance Continuous',0.85),(15,13,'Luxury Segment Vehicle',1.60),(16,14,'Electric Green Vehicle',0.90),
(17,15,'Offroad Modified Setup',1.35),(18,16,'First Time Owner Rate',1.10),(19,17,'Multi-Car Policy Bundle',0.80),(20,18,'Garaged Tracking Enabled',0.85),
(21,19,'Driver Safety Course Passed',0.90),(22,20,'No Claims Bonus Tier 1',0.80),(23,21,'No Claims Bonus Tier 2',0.70),(24,22,'No Claims Bonus Tier 3',0.60),(25,23,'Hazardous Cargo Transport',1.80);

-- 13. quote_information_t (25 Rows)
INSERT INTO quote_information_t VALUES 
(1,'Alpha Test Client',1,101,1,1,'Comprehensive',4,'Issued'),(2,'Beta Test Client',2,103,1,2,'TPL',5,'Issued'),
(3,'Customer Three',3,105,5,3,'Comprehensive',5,'Issued'),(4,'Customer Four',4,107,2,4,'TPL',4,'Issued'),
(5,'Customer Five',5,109,3,5,'Comprehensive',7,'Quoted'),(6,'Customer Six',6,111,1,6,'TPL',7,'Quoted'),
(7,'Customer Seven',7,113,1,7,'Comprehensive',4,'Referred'),(8,'Customer Eight',8,115,1,8,'TPL',4,'Issued'),
(9,'Customer Nine',9,117,4,9,'Comprehensive',5,'Issued'),(10,'Customer Ten',10,119,1,10,'TPL',5,'Quoted'),
(11,'Customer Eleven',11,121,1,11,'Comprehensive',4,'Issued'),(12,'Customer Twelve',12,122,1,12,'TPL',4,'Issued'),
(13,'Customer Thirteen',13,123,2,13,'Comprehensive',7,'Issued'),(14,'Customer Fourteen',14,124,1,14,'TPL',7,'Issued'),
(15,'Customer Fifteen',15,125,2,15,'Comprehensive',4,'Issued'),(16,'Customer Sixteen',1,102,1,16,'TPL',5,'Issued'),
(17,'Customer Seventeen',2,104,1,17,'Comprehensive',5,'Issued'),(18,'Customer Eighteen',3,106,2,18,'TPL',4,'Issued'),
(19,'Customer Nineteen',4,108,1,19,'Comprehensive',4,'Issued'),(20,'Customer Twenty',5,110,2,20,'TPL',7,'Issued'),
(21,'Customer Twenty-One',6,112,5,21,'Comprehensive',7,'Issued'),(22,'Customer Twenty-Two',7,114,1,22,'TPL',4,'Issued'),
(23,'Customer Twenty-Three',8,116,1,23,'Comprehensive',5,'Issued'),(24,'Customer Twenty-Four',9,118,1,24,'TPL',5,'Issued'),
(25,'Customer Twenty-Five',10,120,1,25,'Comprehensive',4,'Issued');

-- 14. policy_transaction_t (25 Rows)
INSERT INTO policy_transaction_t VALUES 
(1,'POL-2026-0001',1,1200.00,60.00,1260.00,'USD','Prepaid Balance','2026-01-10'),
(2,'POL-2026-0002',2,800.00,40.00,840.00,'EUR','Credit Card','2026-01-12'),
(3,'POL-2026-0003',3,2500.00,125.00,2625.00,'USD','Credit Card','2026-01-15'),
(4,'POL-2026-0004',4,950.00,47.50,997.50,'GBP','Prepaid Balance','2026-01-18'),
(5,'POL-2026-0005',8,1100.00,55.00,1155.00,'USD','Credit Card','2026-01-20'),
(6,'POL-2026-0006',9,1350.00,67.50,1417.50,'USD','Prepaid Balance','2026-01-22'),
(7,'POL-2026-0007',11,1800.00,90.00,1890.00,'EUR','Credit Card','2026-01-25'),
(8,'POL-2026-0008',12,750.00,37.50,787.50,'USD','Prepaid Balance','2026-01-26'),
(9,'POL-2026-0009',13,2100.00,105.00,2205.00,'USD','Credit Card','2026-02-01'),
(10,'POL-2026-0010',14,680.00,34.00,714.00,'GBP','Credit Card','2026-02-03'),
(11,'POL-2026-0011',15,1950.00,97.50,2047.50,'USD','Prepaid Balance','2026-02-05'),
(12,'POL-2026-0012',16,890.00,44.50,934.50,'USD','Credit Card','2026-02-10'),
(13,'POL-2026-0013',17,2300.00,115.00,2415.00,'EUR','Prepaid Balance','2026-02-12'),
(14,'POL-2026-0014',18,1050.00,52.50,1102.50,'USD','Credit Card','2026-02-15'),
(15,'POL-2026-0015',19,1400.00,70.00,1470.00,'USD','Prepaid Balance','2026-02-18'),
(16,'POL-2026-0016',20,920.00,46.00,966.00,'USD','Credit Card','2026-02-20'),
(17,'POL-2026-0017',21,2700.00,135.00,2835.00,'EUR','Prepaid Balance','2026-02-22'),
(18,'POL-2026-0018',22,790.00,39.50,829.50,'GBP','Credit Card','2026-02-25'),
(19,'POL-2026-0019',23,2050.00,102.50,2152.50,'USD','Credit Card','2026-02-28'),
(20,'POL-2026-0020',24,840.00,42.00,882.00,'USD','Prepaid Balance','2026-03-02'),
(21,'POL-2026-0021',25,2400.00,120.00,2520.00,'USD','Credit Card','2026-03-05'),
(22,'POL-2026-0022',5,1250.00,62.50,1312.50,'USD','Credit Card','2026-03-08'),
(23,'POL-2026-0023',6,810.00,40.50,850.50,'EUR','Prepaid Balance','2026-03-10'),
(24,'POL-2026-0024',7,2600.00,130.00,2730.00,'USD','Credit Card','2026-03-12'),
(25,'POL-2026-0025',10,900.00,45.00,945.00,'GBP','Prepaid Balance','2026-03-15');

-- 15. accounting_notes_t (25 Rows)
INSERT INTO accounting_notes_t VALUES 
(1,1,'Debit Note',1260.00,'2026-01-10'),(2,1,'Credit Note',1260.00,'2026-01-10'),(3,2,'Debit Note',840.00,'2026-01-12'),
(4,3,'Debit Note',2625.00,'2026-01-15'),(5,4,'Debit Note',997.50,'2026-01-18'),(6,4,'Credit Note',997.50,'2026-01-18'),
(7,5,'Debit Note',1155.00,'2026-01-20'),(8,6,'Debit Note',1417.50,'2026-01-22'),(9,6,'Credit Note',1417.50,'2026-01-22'),
(10,7,'Debit Note',1890.00,'2026-01-25'),(11,8,'Debit Note',787.50,'2026-01-26'),(12,8,'Credit Note',787.50,'2026-01-26'),
(13,9,'Debit Note',2205.00,'2026-02-01'),(14,10,'Debit Note',714.00,'2026-02-03'),(15,11,'Debit Note',2047.50,'2026-02-05'),
(16,11,'Credit Note',2047.50,'2026-02-05'),(17,12,'Debit Note',934.50,'2026-02-10'),(18,13,'Debit Note',2415.00,'2026-02-12'),
(19,13,'Credit Note',2415.00,'2026-02-12'),(20,14,'Debit Note',1102.50,'2026-02-15'),(21,15,'Debit Note',1470.00,'2026-02-18'),
(22,15,'Credit Note',1470.00,'2026-02-18'),(23,16,'Debit Note',966.00,'2026-02-20'),(24,17,'Debit Note',2835.00,'2026-02-22'),
(25,17,'Credit Note',2835.00,'2026-02-22');
