BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');




/*
INSERT INTO keyword (keyword_id, keyword_description)
VALUES 
(1, 'OOP'),
 (2, 'Object Oriented Programming'),
 (3, 'Sql Injection'),
 (4, 'Dependency Injection');

INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES 
		(1, 
		'https://www.youtube.com/watch?v=pTB0EiLXUC8', 
		'Object Oriented programming (OOP) is a programming paradigm that relies on the concept of classes and objects. It is used to structure a software program into simple, reusable pieces of code blueprints (usually called classes), which are used to create individual instances of objects.',
		'https://www.educative.io/blog/object-oriented-programming',
	   'Curriculum'),
		 (2,
	   'https://www.youtube.com/watch?v=uSw0IoSr3Hk',
	   'SQL injection is the placement of malicious code in SQL statements, via web page input.',
	   'https://www.w3schools.com/sql/sql_injection.asp',
	   'Curriculum'),
		(3, 
		'https://www.youtube.com/watch?v=IKD2-MAkXyQ',
	   'dependency injection is a design pattern in which an object or function receives other objects or functions that it depends on.',
	   'https://en.wikipedia.org/wiki/Dependency_injection',
	   'Curriculum');

INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES 
(1, 1),
(2, 1),
(3, 2),
(4, 3);

INSERT INTO question (question_id, the_question, question_answer, question_type)
VALUES
(1, 'What are the benefits of OOP?', 'Code is modular, encapsulated, testable, and easy to reuse.', 'technical'),
(2, 'What is SQL injection?', 'SQL injection is the placement of malicious code in SQL statements, via web page input.', 'technical'),
(3, 'What is dependency injection?', 'dependency injection is a design pattern in which an object or function receives other objects or functions that it depends on.', 'technical'),
(4, 'What are authorization and authentication?', 'Authorization is the permission to access certain functions. Authentication is  the verification of a user''s identity. It can be accomplished using passwords, pins, keys, fingerprints, etc.', 'technical'),
(5, 'What is polymorphism?', 'Polymorphism is the idea that something can be assigned a different meaning or usage based on the context it is referred to as.', 'technical'),
(6, 'What is MVC?', 'The MVC is a design pattern used for building applications that promotes loose coupling and prevents any particular portion of the application from doing too much by breaking the application into three parts: Model, View, and Controller.', 'technical'),
(7, 'What is the DOM?', 'DOM stands for the Document Object Model. It''s the browser''s internal representation of the structure of the current web page.', 'technical'),
(8, 'Name 4 CRUD functions.', ' In SQL they are Create(INSERT), Read(SELECT), Update(UPDATE), and Delete(DELETE). When using APIs they are Create(POST), Read(GET), Update(PUT), and Delete(DELETE).', 'technical'),
(9, 'What is the purpose of vuex?', 'It serves as a centralized store for all the components in an application, with rules ensuring that the state can only be mutated in a predictable fashion.', 'technical'),
(10, 'Give an example of a time when you had to think on your feet.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(11, 'Tell me about a time you set a goal for yourself. How did you go about ensuring that you would meet your objective?', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(12, 'Describe a time when you saw a problem and took the initiative to correct it.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(13, 'Can you give me a recent example of when you suggested a teammate try a different way to solve a problem, but it didn''t work as well as the original approach?', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(14, 'Tell me about a time when you were particularly satisfied with your work situation. Why was this situation so gratifying?', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(15, 'Describe a situation at work in which you made an effort to repair an important relationship.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(16, 'Tell me about the ways in which you have worked with group members to develop new and innovative ideas to solve business problems.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(17, 'Describe your biggest disappointment at work. Why was this so disappointing for you?', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(18, 'Describe a time at work when you helped a coworker learn to use a new technology tool.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway');


INSERT INTO keyword (keyword_id, keyword_description)
VALUES
     (5, 'html'),
     (6, 'javascript'),
     (7, 'head'),
     (8, 'body'),
     (9,'tag'),
     (10, 'form '),
     (11, 'CSS'),
     (12, 'font'),
     (13, 'color'),
     (14, 'box model'),
     (15, 'selectors'),
     (16, 'layout'),
     (17, 'grid'),
     (18, 'responsive web design'),
     (19, 'flexbox'),
     (20, 'DOM'),
     (21, 'event handling'),
     (22, 'publish'),
     (23, 'subscribe'),
     (24, 'vue'),
     (25, 'vue event listener'),
     (26, 'vue component'),
     (27, 'vuex'),
     (28, 'router'),
     (29, 'synchronous'),
     (30, 'asynchronous'),
     (31, 'axios'),
     (32, 'web services'),
     (33, 'crud');
	 
	 
INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES
    (5, 'https://www.youtube.com/watch?v=916GWv2Qs08',
    	'Provides the basic structure or markup of a document.',
    	'https://developer.mozilla.org/en-US/docs/Web/HTML', 'Curriculum'),
    (6,'https://www.youtube.com/watch?v=7rU_KyudGBY'
    	,'Provides behavior to the document.'
    	,'https://www.w3schools.com/js/DEFAULT.asp', 'Curriculum'),
    (7, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'The head is the part of an HTML document that contains metadata about that document, such as the author, description, and links to CSS or JavaScript files that apply to the HTML.'
    	,'https://www.w3schools.com/html/html_head.asp', 'Curriculum'),
    (8, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'This element represents the content of an HTML document. There can be only one <body> element in a document.'
    	,'https://www.w3schools.com/tags/tag_body.asp' , 'Curriculum'),
    (9, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'HTML tags that you''ll use frequently'
    	,'https://www.digitalocean.com/community/tutorials/what-is-an-html-tag', 'Curriculum'),
    (10, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'<form> element represents a document section containing interactive controls for submitting information'
    	,'https://www.freecodecamp.org/news/html-form-input-type-and-submit-button-example/', 'Curriculum'),
    (11, 'https://www.youtube.com/watch?v=r1xBCi5SOjw'
    	,'CSS is a style sheet language used for describing the presentation of a document written in a markup language like HTML.'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS', 'Curriculum'),
    (12, 'https://www.youtube.com/watch?v=r1xBCi5SOjw'
    	,'One of the first things you might want to do when styling your web page is to change some of the properties related to fonts'
    	,'https://developer.mozilla.org/en-US/docs/Web/CSS/font', 'Curriculum'),
    (13, 'https://www.youtube.com/watch?v=r1xBCi5SOjw'
    	,'You must make sure that your designs are visually appealing and that you use color contrast throughout your website.'
    	,'https://developer.mozilla.org/en-US/docs/Web/CSS/color', 'Curriculum'),
    (14, 'https://www.youtube.com/watch?v=rIO5326FgPE'
    	,'When it comes to positioning elements, you can think of every element as a rectangular box. Some may have rounded corners or there may be circular images, but the browser treats everything as a rectangular box. This is what''s known as the box model.'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model', 'Curriculum'),
    (15, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'A selector selects the element or elements that you want to style on the page. There are many ways to write selectors based on how broad or specific you want to be.'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors', 'Curriculum'),
    (16,'https://www.youtube.com/watch?v=yMEjLBKyvEg'
    	,'Layouts for HTML pages used to be handled by the HTML side of web pages. At first, most of the layout was done using HTML tables and splitting the content up into different cells on the page.'
    	,'https://v2-4-techelevator-book.netlify.app/content/css-layouts.html', 'Curriculum'),
    (17,'https://www.youtube.com/watch?v=0xMQfnTU6oo'
    	, 'Grid provides the ability to split an HTML page into rows and columns and then assign elements of that page into the ''grid'' that''s created.'
    	,'https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout', 'Curriculum'),
    (18, 'https://www.youtube.com/watch?v=oNSX21dh6kw'
    	, 'Responsive web design is a set of practices that allows pages to alter their layout and appearance to suit different screen sizes and resolutions.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/responsive-design.html', 'Curriculum'),
    (19, 'https://www.youtube.com/watch?v=tXIhdp5R7sc'
    	, 'The Flexible Box Module, or Flexbox, helps align and layout items. Flexbox is useful for any interface layout that needs to nicely organize a group of similar objects, like a Twitter feed, a list of products on Amazon, or a Pinterest board.T'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox', 'Curriculum'),
    (20,'https://www.youtube.com/watch?v=y17RuWkWdn8'
    	,'DOM stands for the Document Object Model. It''s the browser''s internal representation of the structure of the current web page.'
    	,'https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction', 'Curriculum'),
    (21,'https://www.youtube.com/watch?v=7UstS0hsHgI'
    	,'When users interact with a web page, whether that''s by scrolling, moving their mouse over elements, or clicking on forms or buttons, you can create certain JavaScript logic to respond to those events. In JavaScript, this is called Event Handling.'
    	,'https://developer.mozilla.org/en-US/docs/Web/Events/Event_handlers', 'Curriculum'),
    (22,'https://www.youtube.com/watch?v=HCzQJMdHcy0'
    	, 'Publishing means that parts of the system can send messages out for other parts to act on,'
    	, 'https://www.altexsoft.com/blog/event-driven-architecture-pub-sub/', 'Curriculum'),
    (23, 'https://www.youtube.com/watch?v=HCzQJMdHcy0'
    	, 'Subscribe means that a part can listen for certain messages to be published and perform logic in response to it'
    	, 'https://www.altexsoft.com/blog/event-driven-architecture-pub-sub/', 'Curriculum'),
    (24, 'https://www.youtube.com/watch?v=YrxBCBibVo0&t=2s'
    	, 'Vue.js is a lightweight, but powerful framework for building components in JavaScript using many of the skills you''ve learned in this course.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/intro-to-vue-and-data-binding.html#vanilla-javascript' , 'Curriculum'),
    (25, 'https://www.youtube.com/watch?v=jw1O5XvEKpE'
    	, 'Vue event listeners are created with the v-on Vue attribute in the HTML of the component, like v-bind'
    	, 'https://v2-4-techelevator-book.netlify.app/content/vue-event-handling.html', 'Curriculum'),
    (26, 'https://www.youtube.com/watch?v=jIB1bE57JQg'
    	, 'When you first learn how to build components in Vue, you usually put all of your code in a single component. For simpler components, this is fine, but as you build more complex applications, you should strive to build more reusable and maintainable components.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/component-communication.html', 'Curriculum'),
    (27, 'https://v3.vuex.vuejs.org/#what-is-a-state-management-pattern'
    	, 'This ensures that there''s one central repository of data that''s always up to date. It''s so common that Vue has special features built in to accommodate it. The most common technology used to solve this in Vue is called Vuex.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/component-communication.html#component-communication-using-vuex', 'Curriculum'),
    (28, 'https://www.youtube.com/watch?v=juocv4AtrHo&list=PL4cUxeGkcC9hYYGbV60Vq3IXYNfDk8At1&index=8'
    	, 'In Vue, you have Vue Router, which is the official and recommended routing provider. Vue Router allows you to define a route—for example, ''/'', ''/about'', or ''/contact''—and define the component that you want to load when that route is requested.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/vue-router.html', 'Curriculum'),
    (29, 'https://www.youtube.com/watch?v=SLjjgjp2bAA'
    	, 'Up until now, all of the programming you''ve done has been synchronous. In other words, when you call a function or method, you expect to get the result before the flow of execution moves on to the next line of code.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#synchronous-programming', 'Curriculum'),
    (30, 'https://www.youtube.com/watch?v=SLjjgjp2bAA'
    	,'Instead, the server dispatches orders to the kitchen asynchronously. The server delivers the order from the first table to the kitchen, and then, while the kitchen staff cooks that order, goes out to the dining room and collects orders from more tables.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#asynchronous-programming', 'Curriculum'),
    (31, 'https://www.youtube.com/watch?v=72d7fx4nTSg&list=PLC3y8-rFHvwgeQIfSDtEGVvvSEPDkL_1f&index=44'
    	,'Axios  is a library you can use to make calls to Web API services from a JavaScript frontend application. It provides many ways to process the request and response used in the HTTP interaction.'
    	,'https://v2.vuejs.org/v2/cookbook/using-axios-to-consume-apis.html', 'Curriculum'),
    (32, 'https://www.youtube.com/watch?v=e3bz4dxoUII'
    	,'Web services are a simple way of how applications can use the Web.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#asynchronous-programming', 'Curriculum'),
    (33, 'https://www.youtube.com/watch?v=iNkspbIfcic'
    	,'Create, Read, Update, and Delete (CRUD) are the four basic functions that models should be able to do, at most'
    	,'https://www.codecademy.com/article/what-is-crud', 'Curriculum')
;
			 

INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33);


		





INSERT INTO keyword (keyword_id, keyword_description)
VALUES

	(34, 'relational'),
	(35, 'sql'),
	(36, 'commands'),
	(37, 'symbols'),
	(38, 'primary'),
	(39, 'foreign'),
	(40, 'cardinality'),
	(41, 'constraint'),
	(42, 'transaction'),
	(43, 'joins'),
	(44, 'commit'),
	(45, 'rollback'),
	(46, 'modeling'),
	(47, 'building'),
	(48, 'normalization'),
	(49, 'normal'),
	(50, '2nf'),
	(51, '3nf'),
	(52, 'jdbc'),
	(53, 'driver'),
	(54, 'jdbctemplate'),
	(55, 'dao'),
	(56, 'integeration tests'),
	(57, 'crud in sql'),
	(58, 'hashing'),
	(59, 'encryption'),
	(60, 'url'),
	(61, 'http'),
	(62, 'ip address'),
	(63, 'dns'),
	(64, 'status codes'),
	(65, 'api'),
	(66, 'json'),
	(67, 'serialization'),
	(68, 'rest'),
	(69, 'mvc'),
	(70, 'model'),
	(71, 'view'),
	(72, 'controller'),
	(73, 'spring boot'),
	(74, 'spring mvc'),
	(75, 'spring jdbc'),
	(76, 'spring'),
	(77, 'query string'),
	(78, 'bean'),
	(79, 'jwt'),
	(80, 'authentication'),
	(81, 'authorization');
	
	
INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES
	(34, 'https://www.youtube.com/watch?v=MiAl2mQ718s', 'A relational database consists of tables with columns, where each column has a name and data type.','https://cloud.google.com/learn/what-is-a-relational-database#:~:text=A%20relational%20database%20(RDB)%20is,relationship%20between%20various%20data%20points.', 'Curriculum' ),
	(35, 'https://www.youtube.com/watch?v=27axs9dO7AE', 'Structured query language is declarative, defining what it wants from the computer. You can manipulate and create tables and columns using SQL.', 'https://www.techtarget.com/searchdatamanagement/definition/SQL#:~:text=Structured%20Query%20Language%20(SQL)%20is,on%20the%20data%20in%20them.', 'Curriculum'),
	(36, 'https://www.youtube.com/watch?v=kbKty5ZVKMY&list=PLR0triVyTrBWOLNu3ato7Y9hnGVyhTe1c&index=2', 'SQL features several commands for manipulating databases. These include SELECT, AS, FROM, WHERE, AND, IS NULL, LIMIT, CREATE, DROP, UPDATE, DELETE, ORDER BY, etc. Aggregate functions may also be used such as AVG, SUM, MIN, etc. Various references are available to to see the correct usage of each SQL command.', 'https://www.freecodecamp.org/news/learn-sql-in-10-minutes/', 'Curriculum'),
	(37, 'https://www.youtube.com/watch?v=OxeboWvLC_U', 'Symbols (operators) in SQL are used for comparisons, arithmetic, boolean logic, and string manipulation, amongst other things. There are references available to review the uses.', 'https://www.sisense.com/blog/sql-symbol-cheatsheet/', 'Curriculum'),
	(38, 'https://www.youtube.com/watch?v=B5r8CcTUs5Y', 'Primary key columns are columns that hold a value that''s unique for every row in that table. They are identifiers that you can use to get a specific row of data.  A PK that is a sinlge column is "simple" or "composite" if it is more than one column.', 'https://www.geeksforgeeks.org/difference-between-primary-key-and-foreign-key/#:~:text=1-,A%20primary%20key%20is%20used%20to%20ensure%20data%20in%20the,between%20data%20in%20two%20tables.&text=It%20uniquely%20identifies%20a%20record%20in%20the%20relational%20database%20table.', 'Curriculum'),
	(39, 'https://www.youtube.com/watch?v=B5r8CcTUs5Y', 'A foreign key is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table. The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.', 'https://www.geeksforgeeks.org/difference-between-primary-key-and-foreign-key/#:~:text=1-,A%20primary%20key%20is%20used%20to%20ensure%20data%20in%20the,between%20data%20in%20two%20tables.&text=It%20uniquely%20identifies%20a%20record%20in%20the%20relational%20database%20table.', 'Curriculum'),
	(40, 'https://www.youtube.com/watch?v=mYsUjlqX2Aw', 'Cardinality refers to the uniqueness of values in SQL and  their relationships. Table relationships include one-to-one, one-to-many and many-to-many relationships.', 'https://www.sqlshack.com/learn-sql-types-of-relations/', 'Curriculum'),
	(41, 'https://www.youtube.com/watch?v=imRj2wwTgAY', 'Constraints control what you''re allowed to do with the data in the database. When anything is changed in the database, the data is checked against constraints. Changes that conflict with the constraints are rejected. These include keys and data types.', 'https://www.w3schools.com/sql/sql_constraints.asp', 'Curriculum'),
	(42, 'https://youtu.be/5fF7QivlWKc', 'Transactions allow for multiple SQL statements to be run together. Statements inside transactions are separate from others in the system. Transactions will not save to the database unless you COMMIT the changes. To discard the transaction changes use ROLLBACK.', 'https://www.tutorialspoint.com/sql/sql-transactions.htm#:~:text=Advertisements,sort%20of%20a%20database%20program.', 'Curriculum'),
	(43, 'https://www.youtube.com/watch?v=9yeOJ0ZMUYw', 'Joins are used to combine rows from two or more tables, based on a related column between them. There are several types including an inner, full outer, left, and right join.', 'https://www.w3schools.com/sql/sql_join.asp', 'Curriculum'),
	(44, 'https://youtu.be/5fF7QivlWKc', 'COMMIT will save changes from a transactions to a database.', 'https://www.tutorialspoint.com/sql/sql-transactions.htm', 'Curriculum'),
	(45, 'https://youtu.be/UC-felOMDdk', 'ROLLBACK will discard changes from a transactions to a database.', 'https://www.sqlshack.com/rollback-sql-rolling-back-transactions-via-the-rollback-sql-query/', 'Curriculum'),
	(46, 'https://youtu.be/4qFZ-5i4GS8', 'Modeling is the first step in database design. You should identify what data you will keep track of, the primary keys, and the relationships between tables.', 'https://www.sisense.com/glossary/data-modeling/', 'Curriculum'),
	(47, 'https://www.youtube.com/watch?v=MiAl2mQ718s', 'Building a database includes modeling the data, normalizing the data, determining the data types, then creating the tables.', 'https://www3.ntu.edu.sg/home/ehchua/programming/sql/Relational_Database_Design.html', 'Curriculum'),
	(48, 'https://www.youtube.com/watch?v=J-drts33N8g', 'Normalization allows for database design that reduces redundancy and dependency. Of the several normal forms created, a common goal in design is reaching third normal form (3NF)', 'https://www.javatpoint.com/dbms-normalization', 'Curriculum'),
	(49, 'https://www.youtube.com/watch?v=J-drts33N8g', '1NF requires rows that are all unique through use of a primary key, that each cell have a single value, and that each cell value cannot be broken down further.', 'https://www.javatpoint.com/dbms-normalization', 'Curriculum'),
	(50, 'https://www.youtube.com/watch?v=J-drts33N8g', '2NF requries 1NF and that attributes must be dependent on the primary key.', 'https://www.javatpoint.com/dbms-normalizationhttps://www.javatpoint.com/dbms-normalization', 'Curriculum'),
	(51, 'https://www.youtube.com/watch?v=J-drts33N8g', '3NF requres 1NF, 2NF, and that attributes must not be dependent on columns outside of the primary key.', 'https://www.javatpoint.com/dbms-normalization', 'Curriculum'),
	(52, 'https://www.youtube.com/watch?v=CJjHdchLY9Y', 'Java-specific API that enables Java to access different data sources. Includes the API (which is database neutral) and the JDBC Driver.', 'https://www.progress.com/faqs/datadirect-jdbc-faqs/what-is-a-jdbc-driver', 'Curriculum'),
	(53, 'https://www.youtube.com/watch?v=CJjHdchLY9Y', 'Because the API is database-neutral, the driver is used to handle communication between the API and specific database.', 'https://www.progress.com/faqs/datadirect-jdbc-faqs/what-is-a-jdbc-driver', 'Curriculum'),
	(54, 'https://www.youtube.com/watch?v=CJjHdchLY9Y', 'A class of Spring JDBC that handles many small details required by the API when interacting with the database (like opening/closing database connections, exceptions, transferring data).', 'https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/jdbc/core/JdbcTemplate.html', 'Curriculum'),
	(55, 'https://www.youtube.com/watch?v=bigYRPn8VMg', 'This is a set of classes and interfaces that enable communication with a data source. Following the DAO pattern promotes encapsulation, loose coupling, and reduced repetition.', 'https://www.tutorialspoint.com/design_pattern/data_access_object_pattern.htm', 'Curriculum'),
	(56, 'https://www.youtube.com/watch?v=kRD6PA6uxiY', 'Tests that have outside dependencies. Like unit tests, they are reliable, independent, and obvious. They follow the arrange-act-assert pattern.', 'https://www.geeksforgeeks.org/software-engineering-integration-testing/', 'Curriculum'),
	(57, 'https://www.youtube.com/watch?v=c9gqtjMaFHA', 'CRUD is an acronym for four functions used with databases. In SQL they are Create(INSERT), Read(SELECT), Update(UPDATE), and Delete(DELETE). When using APIs they are Create(POST), Read(GET), Update(PUT), and Delete(DELETE).', 'https://www.educative.io/blog/crud-operations#sql', 'Curriculum'),
	(58, 'https://www.youtube.com/watch?v=9Jva1tSeAWk', 'Hashing is a form of data security. It involves taking a value, putting it through a repeatable mathematical function, and getting a different value out the other end.', 'https://www.sentinelone.com/cybersecurity-101/hashing/', 'Curriculum'),
	(59, 'https://www.youtube.com/watch?v=9Jva1tSeAWk', 'encryption is the process of encoding a message or information in such a way that only authorized parties can read it, and those who are not authorized cannot.', 'https://www.cisco.com/c/en/us/products/security/encryption-explained.html', 'Curriculum'),
	(60, 'https://www.youtube.com/watch?v=uhYKOHPRyCc', 'This is the address of an online resource like a website or document. Includes protocol (http), sub-domain(www), domain name(amazon), and top level domain (.com).', 'https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL', 'Curriculum'),
	(61, 'https://www.youtube.com/watch?v=0PHCAdw6Z8w', 'Hypertext transfer protocol (HTTP) determines how the browser connects with a web server. Hypertext transfer protocol secure (HTTPS) is an extension that is more protected.', 'https://www.cloudflare.com/learning/ssl/why-is-http-not-secure/#:~:text=The%20only%20difference%20between%20the,uses%20HTTPS%20has%20https%3A%2F%2F.', 'Curriculum'),
	(62, 'https://www.youtube.com/watch?v=8zEVA-Bxs-0', 'Computers use a string of numbers called an IP address to locate websites.', 'https://www.kaspersky.com/resource-center/definitions/what-is-an-ip-address', 'Curriculum'),
	(63, 'https://youtu.be/e2xLV7pCOLI', 'A domain name system, or DNS, translates domains (website name) to an IP address for the computer to locate. ', 'https://aws.amazon.com/route53/what-is-dns/', 'Curriculum'), 
	(64, 'https://www.youtube.com/watch?v=wJa5CTIFj7U', 'Status codes follow an HTTP resonse to indicate whether a specific HTTP request has completed successfully or not. 100-199 = information responses; 200-299= successful responses; 300-399= redirection responses; 400-499= client error responses; 500-599= server error responses.', 'https://developer.mozilla.org/en-US/docs/Web/HTTP/Status', 'Curriculum'),
	(65, 'https://www.youtube.com/watch?v=Yzx7ihtCGBs', 'Application programming interfaces (APIs) allow for the transfer of data between different computer programs. Web APIs are accessible on the internet. APIs and their methods can be tested using Postman.', 'https://www.redhat.com/en/topics/api/what-are-application-programming-interfaces', 'Curriculum'),
	(66, 'https://www.youtube.com/watch?v=iiADhChRriM', 'APIs often return information in JSON format. JSON is a data-interchange format that''s language independent and human-readable. Information is structured in key-value pairs within double quotes. A list of values are representated in array notation.', 'https://www.w3schools.com/js/js_json_intro.asp', 'Curriculum'),
	(67, 'https://www.youtube.com/watch?v=6B6vp0jZnb0', 'Serialization is the process of changing a Java object into values in JSON format. Deserialization is the process of converting a JSON string into a Java object (or array of objects).', 'https://www.geeksforgeeks.org/serialization-in-java/', 'Curriculum'),
	(68, 'https://www.youtube.com/watch?v=Q-BpqyOT3a8', 'REST, in short, means using URLs and standard HTTP methods to communicate with other applications. There is no definitive standard, but relies on HTTP standards that define HTTP methods.', 'https://www.redhat.com/en/topics/api/what-are-application-programming-interfaces', 'Curriculum'),
	(69, 'https://www.youtube.com/watch?v=DUg2SWWK18I', 'The MVC is a design pattern used for building applications that promotes loose coupling and prevents any particular portion of the application from doing too much by breaking the application into three parts: Model, View, and Controller.', 'https://developer.mozilla.org/en-US/docs/Glossary/MVC', 'Curriculum'),
	(70, 'https://www.youtube.com/watch?v=DUg2SWWK18I', 'Models are classes that represent the data in an application and provide the business logic.', 'https://developer.mozilla.org/en-US/docs/Glossary/MVChttps://developer.mozilla.org/en-US/docs/Glossary/MVC', 'Curriculum'),
	(71, 'https://www.youtube.com/watch?v=DUg2SWWK18I', 'Views are the pieces of an application that display the user interface. The view in an API refers to the JSON that''s returned to the client. The JSON is the data that''s the content of your view.', 'https://developer.mozilla.org/en-US/docs/Glossary/MVChttps://developer.mozilla.org/en-US/docs/Glossary/MVC', 'Curriculum'), 
	(72, 'https://www.youtube.com/watch?v=DUg2SWWK18I', 'All incoming client requests go to the controller which retrieves the model data and sends it to the client in the appropriate view.', 'https://developer.mozilla.org/en-US/docs/Glossary/MVC', 'Curriculum'),
	(73, 'https://www.youtube.com/watch?v=YDRNMAJo0MA', 'Spring Boot is an extension of the Spring framework to make development, testing, and deployment more convenient by simplying the framework.', 'https://www.javatpoint.com/spring-boot-tutorial', 'Curriculum'), 
	(74, 'https://www.youtube.com/watch?v=xkDBaldNki4', 'The most popular MVC framework is the Spring MVC, which is a component of the larger Spring Framework.', 'https://www.javatpoint.com/spring-mvc-tutorial', 'Curriculum'),
	(75, 'https://www.youtube.com/watch?v=0LYqy0wvS20&t=98s', 'The Spring JDBC is a component of the larger Spring Framework that enables the use of the jdbctemplate.', 'https://www.javatpoint.com/spring-JdbcTemplate-tutorial', 'Curriculum'),
	(76, 'https://www.youtube.com/watch?v=Spzug_SjJnM', 'The Spring Framework is the most popular application development framework for Java. It features several components to enable the buidling of high performing, easily testable, and reusable code.', 'https://www.javatpoint.com/spring-tutorial', 'Curriculum'),
	(77, 'https://www.youtube.com/watch?v=Z_o7iilNdLQ', 'The query string follows the ? in the url. The query string is used for search capabilities.', 'https://measureschool.com/how-to-use-query-strings/', 'Curriculum'),
	(78, 'https://www.youtube.com/watch?v=dsPw_i4yaIk', 'These are annotations added to model classes to verify that data match certain criteria.', 'https://docs.oracle.com/javaee/6/tutorial/doc/gircz.html', 'Curriculum'),
	(79, 'https://www.youtube.com/watch?v=7Q17ubqLfaM', 'A JSON web token is a way to securely transmit information between parties. Used primarily for authorization in API and HTTP requests.', 'https://auth0.com/docs/secure/tokens/json-web-tokens', 'Curriculum'),
	(80, 'https://www.youtube.com/watch?v=85BBfKo6bdo', 'This is the verification of a user''s identity. It can be accomplished using passwords, pins, keys, fingerprints, etc.', 'https://www.onelogin.com/learn/authentication-vs-authorization#:~:text=Authentication%20and%20authorization%20are%20two,authorization%20determines%20their%20access%20rights.', 'Curriculum'),
	(81, 'https://www.youtube.com/watch?v=85BBfKo6bdo', 'Authorization is the permission to access certain functions.', 'https://www.onelogin.com/learn/authentication-vs-authorization#:~:text=Authentication%20and%20authorization%20are%20two,authorization%20determines%20their%20access%20rights.', 'Curriculum');
		
	

INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES
	(34, 34),
	(35, 35),
	(36, 36),
	(37, 37),
	(38, 38),
	(39, 39),
	(40, 40),
	(41, 41),
	(42, 42),
	(43, 43),
	(44, 44),
	(45, 45),
	(46, 46), 
	(47, 47),
	
	(48, 48),
	(49, 49),
	(50, 50),
	(51, 51),
	(52, 52),
	(53, 53),
	(54, 54),
	(55, 55),
	(56, 56),
	(57, 57),
	(58, 58),
	
	
	(59, 59),
	(60, 60),
	(61, 61),
	(62, 62),
	(63, 63),
	(64, 64),
	(65, 65),
	(66, 66),
	(67, 67),
	(68, 68),
	
	(69, 69),
	(70, 70),
	(71, 71),
	(72, 72),
	(73, 73),
	(74, 74),
	(75, 75),
	(76, 76),
	(77, 77),
	(78, 78),
	(79, 79),
	(80, 80),
	(81, 81);
	
	

	
	
	
INSERT INTO keyword (keyword_id, keyword_description)
VALUES 
(82, 'GIT'),
(83, 'GIT BASH'),

(84, 'DATA TYPES'),
(85, 'VARIABLES'),
(86, 'PRIMITIVE'),
(87, 'DOUBLE'),
(88, 'INT'),
(89, 'INTEGER'),
(90, 'FLOAT'),
(91, 'CHAR'),

(92, 'STRING'),
(93, 'CONCATENATION'),
(94, 'CONTAINS'),
(95, 'INDEX OF'),
(96, 'STRING MANIPULATION'),
(97, 'PARSE'),

(98, 'BIG DECIMAL'),
(99, 'MONEY'),

(100, 'METHODS'),
(101, 'METHOD SIGNATURES'),

(102, 'CLASS'),

(103, 'OBJECT'),

(104, 'EXPRESSIONS'),
(105, 'MUTIPLY'),
(106, 'DIVIDE'),
(107, 'ADD'),
(108, 'MODULO'),
(109, '+'),
(110, '-'),
(111, '*'),
(112, '%'),
(113, 'PERCENTAGE'),

(114, 'COMPARE'),
(115, 'GREATER THAN'),
(116, 'LESS THAN'),
(117, 'EQUAL TO'),
(118, '>'),
(119, '<'),
(120, '>='),
(121, '<='),
(122, 'AND'),
(123, '&&'),
(124, 'OR'),
(125, '||'),
(126, 'COMPARE STRINGS'),
(127, 'COMPARISON'),

(128, 'CONVERSIONS'),
(129, 'CASTING'),

(130, 'CONDITIONAL'),
(131, 'IF'),
(132, 'ELSE'),
(133, 'ELSE-IF'),

(134, 'LOOPS'),
(135, 'FOR LOOP'),
(136, 'WHILE LOOP'),
(137, 'DO WHILE LOOP'),
(138, 'FOR EACH LOOP'),

(139, 'LOGICAL BRANCHING'),
(140, 'BREAK'),
(141, 'CONTINUE '),
(142, 'RETURN'),

(144, 'COMMAND LINE'),

(145, 'STACK'),

(146, 'HEAP'),

(147, 'COLLECTIONS'),

(148, 'LISTS'),
(149, 'ARRAYLIST'),

(150, 'ARRAYS'),

(151, 'QUEUES'),

(152, 'MAP'),
(153, 'KEY'),
(154, 'KEY VALUE'),

(155, 'SET'),

(156, 'CONSTRUCTORS'),
(157, 'ACCESS MODIFIERS'),
(158, 'PRIVATE'),
(159, 'PUBLIC'),
(160, 'STATIC'),

(161, 'OVERLOADING'),

(162, 'OVERRIDING'),

(163, 'LOOSELY COUPLED'),
(164, 'COUPLING'),

(165, 'INHERITANCE'),

(166, 'POLYMORPHISM'),

(167, 'ABSTRACT'),

(168, 'INTERFACE'),

(169, 'ENCAPSULATION'),

(170, 'UNIT TESTING'),
(171, 'EXCEPTION HANDLING'),
(172, 'EXCEPTION'),
(173, 'DEFENSIVE PROGRAMMING'),
(174, 'SECRUITY'),
(175, 'TESTING'),
(176, 'UNIT'),
(177, 'TRY CATCH'),
(178, 'CATCH'),
(179, 'TRY'),
(180, 'FINALLY'),

(181, 'FILE I/O'),
(182, 'INPUT'),
(183, 'OUTPUT'),
(184, 'INPUT/OUTPUT'),
(185, 'FILE INPUT'),
(186, 'FILE OUTPUT'),
(187, 'FILE INPUT/OUTPUT');



INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES 

(82,
  'https://www.youtube.com/watch?v=iGutIN5t9Mo',
  '"At its core, Git is a set of command line utility programs that are designed to execute on a Unix style command-line environment. Modern operating systems like Linux and macOS both include built-in Unix command line terminals. This makes Linux and macOS complementary operating systems when working with Git. Microsoft Windows instead uses Windows command prompt, a non-Unix terminal environment. In Windows environments, Git is often packaged as part of higher level GUI applications. GUIs for Git may attempt to abstract and hide the underlying version control system primitives. This can be a great aid for Git beginners to rapidly contribute to a project. Once a projects collaboration requirements grow with other team members, it is critical to be aware of how the actual raw Git methods work. This is when it can be beneficial to drop a GUI version for the command line tools. Git Bash is offered to provide a terminal Git experience."',
  'https://www.atlassian.com/git/tutorials/git-bash#:~:text=What%20is%20Git%20Bash%3F,operating%20system%20through%20written%20commands.',
  'Curriculum'
  ),
(83,
  'https://www.youtube.com/watch?v=sVIvhzEizEQ',
  '"n Java language, primitive data types are the building blocks of data manipulation. These are the most basic data types available in Java language. There are 8 types of primitive data types: boolean data type
byte data type
char data type
short data type
int data type
long data type
float data type
double data type"',
  'https://www.w3schools.com/java/java_data_types.asp',
  'Curriculum'
  ),
(84,
  'https://www.youtube.com/watch?v=R57pDw5cvGA',
  '"Strings, which are widely used in Java programming, are a sequence of characters. In the Java programming language, strings are objects. The Java platform provides the String class to create and manipulate strings."',
  'https://www.w3schools.com/java/java_strings.asp',
  'Curriculum'
  ),
(85,
  'https://www.youtube.com/watch?v=Rs2jQuKd-vs',
	'"Java includes a BigDecimal class for performing high-precision arithmetic which can be used in banking or financial domain based application. This class approximately fit into the same category as the “wrapper�? classes but has some very useful methods. This class has methods that provide analogs for the operations that you perform on primitive types. That is, you can do anything with a BigDecimal that you can with an int or float, it’s just that you must use method calls instead of operators. Also, since there’s more involved, the operations will be slower. You’re exchanging speed for accuracy. BigDecimal is for arbitrary-precision fixed-point numbers; you can use these for accurate monetary calculations. Below Java code explains the concept of accuracy in calculation. One part is doing all calculation using double while another part is having calculation using BigDecimal. The output shows a difference between them."',
  'https://docs.oracle.com/javase/8/docs/api/java/math/BigDecimal.html',
  'Curriculum'
  ),
(86,
  'https://www.youtube.com/watch?v=r0SewFmbCUI',
	'A method in Java or Java Method is a collection of statements that perform some specific task and return the result to the caller. A Java method can perform some specific task without returning anything. Methods in Java allow us to reuse the code without retyping the code. In Java, every method must be part of some class that is different from languages like C, C++, and Python. ',
 'https://www.w3schools.com/java/java_methods.asp',
  'Curriculum'
  ),
(87,
  'https://www.youtube.com/watch?v=EplETikbJis',
	'A class is a non-primitive or user-defined data type in Java',
 'https://www.w3schools.com/java/java_classes.asp',
  'Curriculum'
  ),
(88,
  'https://www.youtube.com/watch?v=EMoHBbSp6ZE',
	'A Java object is a member (also called an instance) of a Java class. Each object has an identity, a behavior and a state. The state of an object is stored in fields (variables), while methods (functions) display the objects behavior.',
 'https://www.w3schools.com/java/java_classes.asp',
  'Curriculum'
  ),
(89,
  'https://www.youtube.com/watch?v=pZHJU9T0vwE',
	'Expressions perform the work of a Java program. Among other things, expressions are used to compute and assign values to variables and to help control the execution flow of a program. The job of an expression is two-fold: perform the computation indicated by the elements of the expression and return some value.',
 'https://docs.oracle.com/javase/tutorial/java/nutsandbolts/expressions.html',
  'Curriculum'
  ),
(90,
  'https://www.youtube.com/watch?v=jRdPsDjW8DY',
	'"The equality and relational operators determine if one operand is greater than, less than, equal to, or not equal to another operand. The majority of these operators will probably look familiar to you as well. Keep in mind that you must use ""=="", not ""="", when testing if two primitive values are equal.

==      equal to
!=      not equal to
>       greater than
>=      greater than or equal to
<       less than
<=      less than or equal to"',
 'https://www.w3schools.com/java/java_operators.asp',
  'Curriculum'
  ),
(91,
  'https://www.youtube.com/watch?v=UTdaOt9jiZ4',
	'Converting one primitive datatype into another is known as type casting (type conversion) in Java. You can cast the primitive datatypes in two ways namely, Widening and, Narrowing.',
  'https://www.tutorialspoint.com/what-is-type-conversion-in-java',
  'Curriculum'
  ),
(92,
  'https://www.youtube.com/watch?v=P6ivQ3QRq0I',
	'Java has the following conditional statements: Use if to specify a block of code to be executed, if a specified condition is true. Use else to specify a block of code to be executed, if the same condition is false. Use else if to specify a new condition to test, if the first condition is false.',
 'https://www.w3schools.com/java/java_conditions.asp#:~:text=Java%20has%20the%20following%20conditional,the%20first%20condition%20is%20false',
  'Curriculum'
  ),
(93,
  'https://www.youtube.com/watch?v=6djggrlkHY8',
	'In Java, there are three kinds of loops which are – the for loop, the while loop, and the do-while loop. All these three loop constructs of Java executes a set of repeated statements as long as a specified condition remains true.',
 'https://www.geeksforgeeks.org/loops-in-java/',
  'Curriculum'
  ),
(94,
  'https://www.youtube.com/watch?v=xuWOW4UgyAI',
	'Java has mainly three branching statements, i.e., continue, break, and return. The branching statements allow us to exit from a control statement when a certain condition meet. In Java, continue and break statements are two essential branching statements used with the control statements.',
 'https://www.javatpoint.com/branching-statements-in-java#:~:text=Java%20has%20mainly%20three%20branching,used%20with%20the%20control%20statements.',
  'Curriculum'
  ),
(95,
  'https://www.youtube.com/watch?v=Up17-azeuyE',
	'A command-line argument is an information that directly follows the programs name on the command line when it is executed. ',
 'https://docs.oracle.com/javase/tutorial/essential/environment/cmdLineArgs.html',
  'Curriculum'
  ),
(96,
  'https://www.youtube.com/watch?v=ILJgewz5Dxw',
	'Java Collection framework provides a Stack class that models and implements a Stack data structure. The class is based on the basic principle of last-in-first-out. In addition to the basic push and pop operations, the class provides three more functions of empty, search, and peek. The class can also be said to extend Vector and treats the class as a stack with the five mentioned functions. The class can also be referred to as the subclass of Vector.',
 'https://www.geeksforgeeks.org/stack-class-in-java/',
  'Curriculum'
  ),
(97,
  'https://www.youtube.com/watch?v=eFCn6udv3gQ',
	'A heap is a special data structure in Java. A heap is a tree-based data structure and can be classified as a complete binary tree. All the nodes of the heap are arranged in a specific order.',
 'https://www.softwaretestinghelp.com/heap-data-structure-in-java/#:~:text=A%20heap%20is%20a%20special,arranged%20in%20a%20specific%20order.',
  'Curriculum'
  ),
(98,
  'https://www.youtube.com/watch?v=GdAon80-0KA',
	  '"The Collection in Java is a framework that provides an architecture to store and manipulate the group of objects.''',
 
  'https://www.javatpoint.com/collections-in-java',
  'Curriculum'
  ),
(99,
  'https://www.youtube.com/watch?v=kHstgo8sDa4',
	'The List interface in Java provides a way to store the ordered collection. It is a child interface of Collection. It is an ordered collection of objects in which duplicate values can be stored. Since List preserves the insertion order, it allows positional access and insertion of elements. ',
 'https://www.geeksforgeeks.org/list-interface-java-examples/',
  'Curriculum'
  ),
(100,
  'https://www.youtube.com/watch?v=xzjZy-dHHLw',
	'An array is a container object that holds a fixed number of values of a single type. The length of an array is established when the array is created. After creation, its length is fixed.',
 'https://www.w3schools.com/java/java_arrays.asp',
  'Curriculum'
  ),
(101,
  'https://www.youtube.com/watch?v=91CMnJeHJVc',
	'"The Queue interface is present in java.util package and extends the Collection interface is used to hold the elements about to be processed in FIFO(First In First Out) order. It is an ordered list of objects with its use limited to inserting elements at the end of the list and deleting elements from the start of the list, (i.e.), it follows the FIFO or the First-In-First-Out principle."',
 'https://www.geeksforgeeks.org/queue-interface-java/',
  'Curriculum'
  ),
(102,
  'https://www.youtube.com/watch?v=H62Jfv1DJlU',
	'"An object that maps keys to values. A map cannot contain duplicate keys; each key can map to at most one value.
This interface takes the place of the Dictionary class, which was a totally abstract class rather than an interface. The Map interface provides three collection views, which allow a maps contents to be viewed as a set of keys, collection of values, or set of key-value mappings. The order of a map is defined as the order in which the iterators on the maps collection views return their elements. Some map implementations, like the TreeMap class, make specific guarantees as to their order; others, like the HashMap class, do not."',
 'https://www.geeksforgeeks.org/map-interface-java-examples/',
  'Curriculum'
  ),
(103,
  'https://www.youtube.com/watch?v=rruCajMgvGA',
	'The set interface is present in java.util package and extends the Collection interface is an unordered collection of objects in which duplicate values cannot be stored. It is an interface that implements the mathematical set. This interface contains the methods inherited from the Collection interface and adds a feature that restricts the insertion of the duplicate elements. There are two interfaces that extend the set implementation namely SortedSet and NavigableSet.',
 'https://www.geeksforgeeks.org/set-in-java/',
  'Curriculum'
  ),
(104,
  'https://www.youtube.com/watch?v=G1Iln3PSrUg',
	'A constructor in Java is a special method that is used to initialize objects. The constructor is called when an object of a class is created. It can be used to set initial values for object attributes:',
 'https://www.w3schools.com/java/java_constructors.asp',
  'Curriculum'
  ),
(105,
  'https://www.geeksforgeeks.org/access-modifiers-java/',
	'In Java, access modifiers are used to set the accessibility (visibility) of classes, interfaces, variables, methods, constructors, data members, and the setter methods.',
 'https://www.programiz.com/java-programming/access-modifiers',
  'Curriculum'
  ),
(106,
  'https://www.youtube.com/watch?v=vgg9T4_0CNA',
	'In Java, two or more methods may have the same name if they differ in parameters (different number of parameters, different types of parameters, or both). These methods are called overloaded methods and this feature is called method overloading.',	
 'https://www.programiz.com/java-programming/method-overloading#:~:text=In%20Java%2C%20two%20or%20more,feature%20is%20called%20method%20overloading.',
  'Curriculum'
  ),
(107,
  'https://www.youtube.com/watch?v=neOvVLpy918',
	'In Java, method overriding occurs when a subclass (child class) has the same method as the parent class. In other words, method overriding occurs when a subclass provides a particular implementation of a method declared by one of its parent classes.',
 'https://www.geeksforgeeks.org/overriding-in-java/',
  'Curriculum'
  ),
(108,
  'https://www.youtube.com/watch?v=5YatGdXgfDo',
	'Loose coupling in Java means that the classes are independent of each other. The only knowledge one class has about the other class is what the other class has exposed through its interfaces in loose coupling. If a situation requires objects to be used from outside, it is termed as a loose coupling situation.',
 'https://www.geeksforgeeks.org/coupling-in-java/',
  'Curriculum'
  ),
(109,
  'https://www.youtube.com/watch?v=zbVAU7lK25Q',
	'Inheritance is one of the key features of OOP that allows us to create a new class from an existing class. The new class that is created is known as subclass (child or derived class) and the existing class from where the child class is derived is known as superclass (parent or base class).',
 'https://www.programiz.com/java-programming/inheritance#:~:text=Inheritance%20is%20one%20of%20the,(parent%20or%20base%20class).',
  'Curriculum'
  ),
(110,
  'https://www.youtube.com/watch?v=Ft88V_rDO4I',
	'Polymorphism means "many forms", and it occurs when we have many classes that are related to each other by inheritance. Like we specified in the previous chapter; Inheritance lets us inherit attributes and methods from another class. Polymorphism uses those methods to perform different tasks.',
 'https://www.w3schools.com/java/java_polymorphism.asp#:~:text=Polymorphism%20means%20%22many%20forms%22%2C,methods%20to%20perform%20different%20tasks.',
  'Curriculum'
  ),
(111,
  'https://www.youtube.com/watch?v=52frlN8webg',
	'The abstract keyword is a non-access modifier, used for classes and methods: Abstract class: is a restricted class that cannot be used to create objects (to access it, it must be inherited from another class). Abstract method: can only be used in an abstract class, and it does not have a body.',
 'https://www.w3schools.com/java/java_abstract.asp#:~:text=The%20abstract%20keyword%20is%20a,does%20not%20have%20a%20body.',
  'Curriculum'
  ),
(112,
  'https://www.youtube.com/watch?v=kTpp5n_CppQ',
	'In Java, an interface is an abstract type that contains a collection of methods and constant variables. It is one of the core concepts in Java and is used to achieve abstraction, polymorphism and multiple inheritances. We can implement an interface in a Java class by using the implements keywor',
 'https://www.w3schools.com/java/java_interface.asp',
  'Curriculum'
  ),
(113,
  'https://www.youtube.com/watch?v=cU94So54cr8',
	'Encapsulation in Java is a mechanism of wrapping the data (variables) and code acting on the data (methods) together as a single unit. In encapsulation, the variables of a class will be hidden from other classes, and can be accessed only through the methods of their current class.',
 'https://www.geeksforgeeks.org/encapsulation-in-java/',
  'Curriculum'
  ),
(114,
  'https://www.youtube.com/watch?v=vZm0lHciFsQ',
	'Unit testing refers to the testing of individual components in the source code, such as classes and their provided methods. The writing of tests reveals whether each class and method observes or deviates from the guideline of each method and class having a single, clear responsibility.',
 'https://java-programming.mooc.fi/part-6/3-introduction-to-testing#:~:text=Unit%20testing%20refers%20to%20the,having%20a%20single%2C%20clear%20responsibility.',
  'Curriculum'
  ),
(115,
  'https://www.youtube.com/watch?v=hgF21imQ_Is',
	'When you develop any java application then you will get the requirement to interact with various input/output devices. Input-Output devices are the part of underlying hardware and operating system. To interact with the Input-Output devices through java program/application some implementations had to be used to improve the maintenance of applications when someone changes device or OS.',
 'https://www.tutorialspoint.com/java/java_files_io.htm',
  'Curriculum'
  );
  
INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES
(82,82),
(83,82),

(84,83),
(85,83),
(86,83),
(87,83),
(88,83),
(89,83),
(90,83),
(91,83),

(92,84),
(93,84),
(94,84),
(95,84),
(96,84),
(97,84),

(98, 85),
(99, 85),

(100, 86),
(101, 86),

(102, 87),

(103, 88),

(104, 89),

(105,90),
(106,90),
(107,90),
(108,90),
(109,90),
(110,90),
(111,90),
(112,90),
(113,90),

(114,91),
(115,91),
(116,91),
(117,91),
(118,91),
(119,91),
(120,91),
(121,91),
(122,91),
(123,91),
(124,91),
(125,91),
(126,91),
(127,91),

(128,92),
(129,92),

(130,93),
(131,93),
(132,93),
(133,93),

(134,94),
(135,94),
(136,94),
(137,94),
(138,94),

(139,95),
(140,95),
(141,95),
(142,95),

(144,96),
(145,97),
(146,98),
(147,99),

(148,100),
(149,100),

(150,101),
(151,102),

(152,103),
(153,103),
(154,103),

(155,104),

(156,105),
(157,105),
(158,105),
(159,105),
(160,105),

(161,106),

(162,107),

(163,108),
(164,108),

(165,109),
(166,110),
(167,111),
(168,112),
(169,113),


(170,114),
(171,114),
(172,114),
(173,114),
(174,114),
(175,114),
(176,114),
(177,114),
(178,114),
(179,114),
(180,114),

(181,115),
(182,115),
(183,115),
(184,115),
(185,115),
(186,115),
(187,115);


INSERT INTO keyword (keyword_id, keyword_description)
VALUES 
(188, 'resume'),
(189, 'clifton'),
(190, 'elevator pitch'),
(191, 'cover letter'),
(192, 'stress'),
(193, 'time management'),
(194, 'pomodoro'),
(195, 'burnout'),
(196, 'linkedin'),
(197, 'roles'),
(198, 'recruiters'),
(199, 'employment'),
(200, 'contract'),
(201, 'contract-to-hire'),
(202, 'consulting'),
(203, 'freelance'),
(204, 'projects'),
(205, 'networking'),
(206, 'behavioral'),
(207, 'technical interview'),
(208, 'positions'),
(209, 'two-pronged approach'),
(210, 'handshake'),
(211, 'huntr'),



(212, 'portfolio'),
(213, 'connecting'),
(214, 'star'),


(215, 'database'),

(216, 'simple'),
(217, 'composite'),

(218, 'constraints'),
(219, 'transactions'),
(220, 'normalizing'),

(221, 'first'),
(222, '1nf'),

(223, 'https'),
(224, 'domain name system'),
(225, 'deserialization'),
(226, 'restful'),
(227, 'token');




INSERT INTO topic (topic_id, VideoRef, TextRef, WebRef, topic_type)
VALUES 
(116, 'https://www.youtube.com/watch?v=w82xo-CfwqU', 'On average, your resume is looked at by recruiters for 6 seconds. It will serve as your first impression when applying to jobs so be sure that you''re putting your best foot forward with your resume as you begin applying to jobs! Don''t forget to: 1. Highlight relevant technologies 2. Quanitfy your experience 3.Use action words.', 'https://www.indeed.com/career-advice/resumes-cover-letters/technical-resume-tips', 'OS Pathway'),
(117, 'https://www.youtube.com/watch?v=gMA6KzqtrsU', 'Your clifton strengths are what you naturally do best and maximize your potential. Try incorporating these strengths in you elevator pitch, linkedin summaries, resume, and behavioral interviews.', 'https://www.gallup.com/cliftonstrengths/en/252137/home.aspx', 'Pathway'),
(118, 'https://www.youtube.com/watch?v=wVYyCUwDFhE', 'This is your first impression when networking with new people. Your pitch should answer the questions "Tell me about yourself", "what do you do well?", "why are you pivoting to a career in technology?" and "what is your goal?"', 'https://www.thebalancecareers.com/elevator-speech-examples-and-writing-tips-2061976', 'OS Pathway'),
(119, 'https://www.youtube.com/watch?v=NUhDP30IRKk', 'These are generally optional when submitting applications. You should use one if: 1. It is a job you REALLY want or a dream job 2. If you have relevant and valuable information to share that is not included in the resume. Include the company contact info/ header, an intro paragraph, then 1-2 paragraphs describing how you meet the present needs of the job.', 'https://hbr.org/2014/02/how-to-write-a-cover-letter', 'OS Pathway'),
(120, 'https://www.youtube.com/watch?v=Bk2-dKH2Ta4', 'Coding bootcamps are stressful by nature, but don''t give up! Try things like keeping a schedule (including breaks), not comparing yourself to others, exercising, reminding yourself that you are still learning, and celebrating wins no matter how small!', 'https://jedfoundation.org/resource/tips-for-managing-stress/', 'OS Pathway'),
(121, 'https://www.youtube.com/watch?v=QzX9SG83U8k', 'Managing your time between coding, studying, a social life and basic life tasks can be tough. A schedule can help. Or you can try the ''Pomodoro Technique''.', 'https://www.thebalancesmb.com/time-management-tips-2947336', 'OS Pathway'),
(122, 'https://www.youtube.com/watch?v=mNBmG24djoY', 'The pomodoro promotes focused work with healthy breaks to avoid mental fatigue. You complete single tasks in 25 minute increments broken up between 5 minute breaks. After 4 pomodoro cycles, take a longer 15-30 minute break.', 'https://www.themuse.com/advice/take-it-from-someone-who-hates-productivity-hacksthe-pomodoro-technique-actually-works#:~:text=What%20Is%20the%20Pomodoro%20Technique,are%20referred%20to%20as%20pomodoros.', 'OS Pathway'),
(123, 'https://www.youtube.com/watch?v=Bk2-dKH2Ta4', 'Burnout is a stress condition leading to overall exhaustion. You can prevent burnout by eating well, having good sleep habits, taking breaks, reaching out for help, and prioritizing.', 'https://health.clevelandclinic.org/signs-of-burnout/#:~:text=While%20frequently%20associated%20with%20a,and%20even%20cause%20health%20problems.', 'OS Pathway'),
(124, 'https://www.youtube.com/watch?v=nYoH18JGPQ8', 'Linkedin serves as an online resume. Your linkedin should include a summary expanding on your personal story from your elevator pitch. Add your skills, experience, and education with the most relevant at the top. A professional photo and original headline will help you stand out. Don''t forget to keep making connections!', 'https://blog.linkedin.com/2020/may/june/12/four-tips-to-network-on-linkedin', 'OS Pathway'),
(125, 'https://www.youtube.com/watch?v=K-6Mt9LMCSY', 'There are many different roles in technology. Some include developer, project manager, business analyst, data analysts, database developers, and more!', 'https://www.investopedia.com/articles/investing/101315/10-best-tech-jobs.asp', 'OS Pathway'),
(126, 'https://www.youtube.com/watch?v=jnzh5QTKbsw', 'Build relationships with recruiters to help in the job search either through linkedin or by networking. Once connected, be sure to follow up every few weeks. When connecting try the two-pronged approach.', 'https://www.topresume.com/career-advice/how-to-contact-recruiters-on-LinkedIn#:~:text=Find%20a%20recruiter''s%20email%20address,and%20attach%20your%20resume%2C%20too.', 'OS Pathway'),
(127, 'https://www.youtube.com/watch?v=gdKypYV3CNg', 'Different types of employment include contracted, contract-to-hire, direct hire, consulting, and freelancing. Review each type of employment to see which fit your needs.', 'https://medium.com/job-advice-for-software-engineers/should-you-be-a-full-time-software-engineer-or-contractor-437706cc0564', 'OS Pathway'),
(128, 'https://www.youtube.com/watch?v=gdKypYV3CNg', 'Contracts are for a set period of time. You are paid at an hourly rate and are not eligible for benefits through the company, but benefits are available through your contract agency.', 'https://medium.com/job-advice-for-software-engineers/should-you-be-a-full-time-software-engineer-or-contractor-437706cc0564', 'OS Pathway'),
(129, 'https://www.youtube.com/watch?v=RHItfFRyID4', 'You''ll work as a contractor through a recruiting agency for a set period of time (typically 3-6 months) and will then convert to full-time employment. When you convert to a full-time employee at the company, you''ll receive a salary and benefits through the company itself.', 'https://www.gotoagile.com/portfolio_page/contract-to-hire-pros-and-cons-software-engineers/', 'OS Pathway'),
(130, 'https://www.youtube.com/watch?v=0CDQOwmuLDk', 'Your paychecks will come from the company you''re employed by, you''ll work as a consultant at various companies for a period of time. You remain employed between projects and continue to receive paychecks during this time.', 'https://www.bdo.com/digital/insights/careers/software-consultant-vs-software-developer', 'OS Pathway'),
(131, 'https://www.youtube.com/watch?v=h1RBwD_HulQ', 'You''re self-employed and get to make your own hours/schedule. You''re also responsible for finding your own clients and projects, though, so this is not recommended for junior-level Software Developers.', 'https://betterprogramming.pub/hard-truths-about-being-a-freelance-software-developer-bebbda366329', 'OS Pathway'),
(132, 'https://www.youtube.com/watch?v=sEqlnPUaRX0', 'A portfolio project can demonstrate the skills you''ve learned thus far, or more. You can make a project based off of your interests or hobbies. Projects can be small or the beginning of something larger.', 'https://github.com/karan/Projects', 'OS Pathway'),
(133, 'https://www.youtube.com/watch?v=zfLKbr73GLk', 'If you want to start networking, try searching for upcoming events online or connect on linkedin.', 'https://careers.umbc.edu/students/network/networking101/tips/', 'OS Pathway'),
(134, 'https://youtu.be/zoGZQatkqKg', 'Behavioral interviews and star questions are used to see if you are a culture fit with the companies team. Use the star method to provide answers that are specific, concise, detailed, and compelling. During the interview, maintain positive body language. AVOID saying "I don''t know".', 'https://www.indeed.com/career-advice/interviewing/how-to-use-the-star-interview-response-technique', 'OS Pathway'),
(135, 'https://www.youtube.com/watch?v=FTN_93Px-Qc', 'Be prepared to speak on whatever skills are listed on your resume. If completing a coding challenge, always explain what your code is doing as you write and discuss corner-cases. After the interview be sure to send a thank you.', 'https://joinhandshake.com/blog/students/interview-pro-tips-how-to-nail-a-technical-interview/', 'OS Pathway'),
(136, 'https://www.youtube.com/watch?v=Otr3Up8wRn0', 'Remember that searching for a job is like a job! Don''t be disocuraged! Try to send at least 10 applications a week. Use popular job boards like linkedin, glassdoor, or indeed. Use linkedin to follow up with recruiters using the two-pronged approach.', 'https://www.linkedin.com/', 'OS Pathway'),
(137, 'https://www.youtube.com/watch?v=jnzh5QTKbsw', 'First identify a contact on linkedin; either a recruiter or hiring manager. Then send a connection request with a short message introducing yourself. ', 'https://www.topresume.com/career-advice/how-to-contact-recruiters-on-LinkedIn#:~:text=Find%20a%20recruiter''s%20email%20address,and%20attach%20your%20resume%2C%20too.', 'OS Pathway'),
(138, 'https://www.youtube.com/watch?v=Y2PyVaxISWM', 'This app helps new graduates to find entry level positions. You can also find upcoming events and discover employers.', 'https://app.joinhandshake.com/stu', 'OS Pathway'),
(139, 'https://www.youtube.com/watch?v=QtcM5BsnWfM', 'Huntr is used to help organize your job search. You can add jobs, track goals, record follow up messages, and search for jobs.', 'https://huntr.co/login', 'OS Pathawy');



INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES

(188, 116),
(189, 117),
(190, 118),
(191, 119),
(192, 120),
(193, 121),
(194, 122),
(195, 123),
(196, 124),
(197, 125),
(198, 126),
(199, 127),
(200, 128),
(201, 129),
(202, 130),
(203, 131),
(204, 132),
(205, 133),
(206, 134),
(207, 135),
(208, 136),
(209, 137),
(210, 138),
(211, 139),


(212, 132),
(213, 133),
(214, 134),
(215, 34),
(216, 38),
(217, 38),
(218, 41),
(219, 42),
(220, 48),
(221, 49),
(222, 49),
(223, 61),
(224, 63),
(225, 67),
(226, 68),
(227, 79);




*/


COMMIT TRANSACTION;




