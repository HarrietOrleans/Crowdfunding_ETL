CREATE TABLE contacts (
    contact_id INT   NOT NULL PRIMARY KEY,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    email VARCHAR(255)   NOT NULL
);
Select * from contacts 

CREATE TABLE category (
    category_id VARCHAR(255) NOT NULL PRIMARY KEY,
    category VARCHAR(255) NOT NULL    
);
Select * from category 

CREATE TABLE subcategory (
    subcategory_id VARCHAR(255)   NOT NULL PRIMARY KEY,
    subcategory VARCHAR(255)   NOT NULL
);
Select * from subcategory

CREATE TABLE campaign (
    cf_id INT   NOT NULL PRIMARY KEY,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    discription VARCHAR(255)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(255)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(255)   NOT NULL,
    currency VARCHAR(255)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR   NOT NULL ,
    subcategory_id VARCHAR   NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES contacts,
	FOREIGN KEY(category_id) REFERENCES category,
	FOREIGN KEY(subcategory_id) REFERENCES subcategory
);

Select * from campaign