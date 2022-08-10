BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS keyword;
DROP TABLE IF EXISTS topic;
DROP TABLE IF EXISTS keyword_topic;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE keyword (
	
    keyword_id integer NOT NULL,
    keyword_description varchar NOT NULL,
	
	CONSTRAINT pk_keyword PRIMARY KEY (keyword_id)
   
);

CREATE TABLE topic (
	
    topic_id integer,
    VideoRef varchar,
    TextRef varchar,
	WebRef varchar,
	topic_type varchar,
	
	CONSTRAINT pk_topic PRIMARY KEY (topic_id)
);
CREATE TABLE keyword_topic (
	
    keyword_id integer,
    topic_id integer,
   
	FOREIGN KEY (topic_id) REFERENCES topic(topic_id),
	FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id)
);



COMMIT TRANSACTION;
