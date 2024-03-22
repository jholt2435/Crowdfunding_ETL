DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50)
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
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(15),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date TIMESTAMP,
	end_date TIMESTAMP,
	category_id VARCHAR(4),
	subcategory_id VARCHAR(8),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);
