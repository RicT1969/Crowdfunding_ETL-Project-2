-- Create tables and import data


----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS category CASCADE;

-- Create new table (category)
CREATE TABLE category (
  	category_id VARCHAR (20) NOT NULL,
 	category VARCHAR (50) NOT NULL,
	PRIMARY KEY (category_id)
);

-- Verify successful data import
SELECT * FROM category;
	
----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS contacts CASCADE;

-- Create new table (contacts)
CREATE TABLE contacts (
  	contact_id INT NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
 	email VARCHAR (50) NOT NULL,
	PRIMARY KEY (contact_id)
);

-- Verify successful data import
SELECT * FROM contacts;

	
----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS subcategory CASCADE;

-- Create new table (subcategory)
CREATE TABLE subcategory (
  	subcategory_id VARCHAR (20) NOT NULL,
	subcategory VARCHAR (20) NOT NULL,
	
	PRIMARY KEY (subcategory_id)
);

-- Verify successful data import
SELECT * FROM subcategory;

----------------------------------------------------------	

-- Drop table if exists
DROP TABLE IF EXISTS campaign CASCADE;

-- Create new table (campaign)
CREATE TABLE campaign 
(
  	cf_id INT NOT NULL,
 	contact_id INT NOT NULL,
	company_name VARCHAR (50) NOT NULL,
	description VARCHAR (100) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR (50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (50) NOT NULL,
	currency VARCHAR (10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (20) NOT NULL, 
	subcategory_id VARCHAR (20) NOT NULL,
	PRIMARY KEY (cf_id),
	--FOREIGN KEY (category_id) REFERENCES category (category_id),
	--FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
		);
 
-- Verify successful data import
ALTER TABLE campaign
    ADD CONSTRAINT campaign FOREIGN KEY (category_id) REFERENCES category
	
ALTER TABLE campaign
    ADD CONSTRAINT campaign FOREIGN KEY (subcategory_id) REFERENCES subcategory
	
SELECT * FROM campaign;