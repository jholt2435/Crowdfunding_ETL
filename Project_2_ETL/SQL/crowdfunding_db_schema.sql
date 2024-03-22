DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
); 

CREATE TABLE IF NOT EXISTS category(
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS subcategory(
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT UNIQUE NOT NULL,
	company_name VARCHAR(40),
	description VARCHAR(60),
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(15) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;

