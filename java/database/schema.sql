BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS keyword_topic;
DROP TABLE IF EXISTS keyword;
DROP TABLE IF EXISTS topic;
DROP TABLE IF EXISTS question;


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

CREATE TABLE question (

	question_id integer,
	the_question varchar(300),
	question_answer varchar(300),
	question_type varchar(20),

	CONSTRAINT pk_question PRIMARY KEY (question_id)
);


ALTER TABLE public.question
    OWNER to postgres;

GRANT UPDATE, DELETE, INSERT, SELECT ON TABLE public.question TO final_capstone_appuser;

GRANT ALL ON TABLE public.question TO final_capstone_owner;

GRANT ALL ON TABLE public.question TO postgres;



COMMIT TRANSACTION;


-- BEGIN TRANSACTION;

--DROP TABLE IF EXISTS users;

-- CREATE TABLE users (
-- 	user_id SERIAL,
-- 	username varchar(50) NOT NULL UNIQUE,
-- 	password_hash varchar(200) NOT NULL,
-- 	role varchar(50) NOT NULL,
-- 	CONSTRAINT PK_user PRIMARY KEY (user_id)
-- );

-- COMMIT TRANSACTION;