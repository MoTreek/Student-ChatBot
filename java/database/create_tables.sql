START TRANSACTION;
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
	the_question varchar(200),
	question_answer varchar(200),
	question_type varchar(20),

	CONSTRAINT pk_question PRIMARY KEY (question_id)
);


ALTER TABLE public.question
    OWNER to postgres;

GRANT UPDATE, DELETE, INSERT, SELECT ON TABLE public.question TO final_capstone_appuser;

GRANT ALL ON TABLE public.question TO final_capstone_owner;

GRANT ALL ON TABLE public.question TO postgres;


Commit;


