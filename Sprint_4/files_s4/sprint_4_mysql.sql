# Sprint 4 : Creacion base de datos

ALTER TABLE sales.companies
MODIFY COLUMN company_id VARCHAR(6), MODIFY COLUMN company_name VARCHAR(50), MODIFY COLUMN phone VARCHAR(50), MODIFY COLUMN email VARCHAR(50),
MODIFY COLUMN country VARCHAR(50), MODIFY COLUMN website VARCHAR(50); 

ALTER TABLE sales.credit_cards
MODIFY COLUMN user_id VARCHAR(255), MODIFY COLUMN iban VARCHAR(255), MODIFY COLUMN pin VARCHAR(255), MODIFY COLUMN track1 VARCHAR(255),
MODIFY COLUMN track2 VARCHAR(255), MODIFY COLUMN expiring_date VARCHAR(255);

ALTER TABLE sales.transactions
MODIFY COLUMN id VARCHAR(255), MODIFY COLUMN card_id VARCHAR(255), MODIFY COLUMN business_id VARCHAR(255), MODIFY COLUMN timestamp VARCHAR(255),
MODIFY COLUMN product_ids INT;

ALTER TABLE sales.users_ca
MODIFY COLUMN name VARCHAR(255), MODIFY COLUMN surname VARCHAR(255), MODIFY COLUMN phone VARCHAR(255), MODIFY COLUMN email VARCHAR(255),
MODIFY COLUMN birth_date VARCHAR(255), MODIFY COLUMN country VARCHAR(255), MODIFY COLUMN city VARCHAR(255), MODIFY COLUMN postal_code VARCHAR(255),
MODIFY COLUMN address VARCHAR(255);

ALTER TABLE users_uk
MODIFY COLUMN name VARCHAR(255), MODIFY COLUMN surname VARCHAR(255), MODIFY COLUMN phone VARCHAR(255), MODIFY COLUMN email VARCHAR(255),
MODIFY COLUMN birth_date VARCHAR(255), MODIFY COLUMN country VARCHAR(255), MODIFY COLUMN city VARCHAR(255), MODIFY COLUMN postal_code VARCHAR(255),
MODIFY COLUMN address VARCHAR(255);

ALTER TABLE users_usa
MODIFY COLUMN name VARCHAR(255), MODIFY COLUMN surname VARCHAR(255), MODIFY COLUMN phone VARCHAR(255), MODIFY COLUMN email VARCHAR(255),
MODIFY COLUMN birth_date VARCHAR(255), MODIFY COLUMN country VARCHAR(255), MODIFY COLUMN city VARCHAR(255), MODIFY COLUMN address VARCHAR(255),
MODIFY COLUMN postal_code VARCHAR(255);
# DEFINIR LAS PRIMARY KEY

ALTER TABLE companies 	 ADD CONSTRAINT pk_company_id		PRIMARY KEY (company_id);
ALTER TABLE credit_cards ADD CONSTRAINT pk_id				PRIMARY KEY (id);
ALTER TABLE products 	 ADD CONSTRAINT pk_id_products 		PRIMARY KEY (id);
ALTER TABLE users_ca 	 ADD CONSTRAINT pk_id_users_ca 		PRIMARY KEY (id);
ALTER TABLE users_usa 	 ADD CONSTRAINT pk_id_users_usa 	PRIMARY KEY (id);
ALTER TABLE users_uK 	 ADD CONSTRAINT pk_id_users_usa		PRIMARY KEY (id);
ALTER TABLE transactions ADD CONSTRAINT pk_id_transactions 	PRIMARY KEY (id);



