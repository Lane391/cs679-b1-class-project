/* SQLEditor (MySQL (2))*/

DROP TABLE IF EXISTS mapping_detail;

DROP TABLE IF EXISTS mapping;

DROP TABLE IF EXISTS contact;

DROP TABLE IF EXISTS phone;

DROP TABLE IF EXISTS user_profile;

DROP TABLE IF EXISTS user_preference;

DROP TABLE IF EXISTS activity;

DROP TABLE IF EXISTS user_budget;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS user;

DROP TABLE IF EXISTS preference_type;

CREATE TABLE IF NOT EXISTS user
(
id INT(11) NOT NULL AUTO_INCREMENT,
username VARCHAR(30) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
active BOOLEAN NOT NULL DEFAULT 1,
created_date TIMESTAMP NOT NULL,
last_login_date TIMESTAMP NOT NULL,
number_of_attempts INT(11) NOT NULL DEFAULT 1,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS mapping
(
id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
name VARCHAR(50) NOT NULL,
user_id INT(11),
starting_row INT(11),
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS contact
(
id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
user_id INT(11),
email VARCHAR(255) NOT NULL,
date_submitted TIMESTAMP NOT NULL,
content TEXT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS phone
(
user_id INT(11) NOT NULL,
phone VARCHAR(20) NOT NULL,
text_able BOOLEAN NOT NULL DEFAULT 0,
is_primary BOOLEAN NOT NULL DEFAULT 0
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_profile
(
user_id INT(11) NOT NULL UNIQUE,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
address VARCHAR(255),
city VARCHAR(255),
zip VARCHAR(15),
state VARCHAR(255),
country VARCHAR(255)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS preference_type
(
id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL UNIQUE,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_preference
(
user_id INT(11) NOT NULL,
preference_type_id INT(11) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS category
(
id INT(11) AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
user_id INT(11),
active TINYINT DEFAULT 1,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS activity
(
id INT(11) NOT NULL AUTO_INCREMENT,
user_id INT(11) NOT NULL,
name VARCHAR(255) NOT NULL,
custom_name VARCHAR(255),
amount DECIMAL(10,2) NOT NULL DEFAULT 0,
transaction_date DATETIME NOT NULL,
category_id INT(11),
comment VARCHAR(255),
import_number VARCHAR(15) NOT NULL,
import_time TIMESTAMP NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_budget
(
id INT(11) AUTO_INCREMENT UNIQUE,
user_id INT(11) NOT NULL,
category_id INT(11) NOT NULL,
amount DECIMAL(10,2) DEFAULT 0,
active BOOLEAN DEFAULT 1
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS mapping_detail
(
mapping_id INT(11) NOT NULL,
column_name VARCHAR(255) NOT NULL,
csv_column_number INT(11) NOT NULL
) ENGINE=InnoDB;

CREATE INDEX user_username_idx ON user(username);
ALTER TABLE mapping ADD FOREIGN KEY user_id_idxfk (user_id) REFERENCES user (id);

ALTER TABLE contact ADD FOREIGN KEY user_id_idxfk_1 (user_id) REFERENCES user (id);

ALTER TABLE phone ADD FOREIGN KEY user_id_idxfk_2 (user_id) REFERENCES user (id);

ALTER TABLE user_profile ADD FOREIGN KEY user_id_idxfk_3 (user_id) REFERENCES user (id);

CREATE INDEX user_profile_first_name_idx ON user_profile(first_name);
CREATE INDEX user_profile_last_name_idx ON user_profile(last_name);
ALTER TABLE user_preference ADD FOREIGN KEY user_id_idxfk_4 (user_id) REFERENCES user (id);

ALTER TABLE user_preference ADD FOREIGN KEY preference_type_id_idxfk (preference_type_id) REFERENCES preference_type (id);

ALTER TABLE category ADD FOREIGN KEY user_id_idxfk_5 (user_id) REFERENCES user (id);

ALTER TABLE activity ADD FOREIGN KEY user_id_idxfk_6 (user_id) REFERENCES user (id);

ALTER TABLE activity ADD FOREIGN KEY category_id_idxfk (category_id) REFERENCES category (id);

ALTER TABLE user_budget ADD FOREIGN KEY user_id_idxfk_7 (user_id) REFERENCES user (id);

ALTER TABLE user_budget ADD FOREIGN KEY category_id_idxfk_1 (category_id) REFERENCES category (id);

ALTER TABLE mapping_detail ADD FOREIGN KEY mapping_id_idxfk (mapping_id) REFERENCES mapping (id);
