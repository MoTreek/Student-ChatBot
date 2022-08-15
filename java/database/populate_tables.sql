START TRANSACTION;

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
(1, 'what are the benefits of OOP?', 'Code is modular, encapsulated, testable, and easy to reuse.', 'technical'),
(2, 'what is SQL injection?', 'SQL injection is the placement of malicious code in SQL statements, via web page input.', 'technical'),
(3, 'what is dependency injection?', 'dependency injection is a design pattern in which an object or function receives other objects or functions that it depends on.', 'technical'),
(4, 'Give an example of a time when you had to think on your feet.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(5, 'Tell me about a time you set a goal for yourself. How did you go about ensuring that you would meet your objective?', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway'),
(6, 'Describe a time when you saw a problem and took the initiative to correct it.', 'Remember to answer by describing a specific situation, task, action, and result of the situation you are discussing.', 'pathway');

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
     (33, 'rest');

INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES
(5, 4),
(6, 5),
(7, 6),-A
(8, 7),
(9, 8),
(10, 9),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),
(21, 20),
(22, 21),
(23, 22),
(24, 23),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 28),
(30, 29),
(31, 30),
(32, 31),
(33, 32);

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
    	,'HTML tags that you'll use frequently'
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
    	,'When it comes to positioning elements, you can think of every element as a rectangular box. Some may have rounded corners or there may be circular images, but the browser treats everything as a rectangular box. This is what's known as the box model.'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model', 'Curriculum'),
    	(15, 'https://www.youtube.com/watch?v=916GWv2Qs08'
    	,'A selector selects the element or elements that you want to style on the page. There are many ways to write selectors based on how broad or specific you want to be.'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors', 'Curriculum'),
    	(16,'https://www.youtube.com/watch?v=yMEjLBKyvEg'
    	,'Layouts for HTML pages used to be handled by the HTML side of web pages. At first, most of the layout was done using HTML tables and splitting the content up into different cells on the page.'
    	,'https://v2-4-techelevator-book.netlify.app/content/css-layouts.html', 'Curriculum'),
    	(17,'https://www.youtube.com/watch?v=0xMQfnTU6oo'
    	, 'Grid provides the ability to split an HTML page into rows and columns and then assign elements of that page into the "grid" that's created.'
    	,'https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout', 'Curriculum'),
    	(18, 'https://www.youtube.com/watch?v=oNSX21dh6kw'
    	, 'Responsive web design is a set of practices that allows pages to alter their layout and appearance to suit different screen sizes and resolutions.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/responsive-design.html', 'Curriculum'),
    	(19, 'https://www.youtube.com/watch?v=tXIhdp5R7sc'
    	, 'The Flexible Box Module, or Flexbox, helps align and layout items. Flexbox is useful for any interface layout that needs to nicely organize a group of similar objects, like a Twitter feed, a list of products on Amazon, or a Pinterest board.T'
    	,'https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox', 'Curriculum'),
    	(20,'https://www.youtube.com/watch?v=y17RuWkWdn8'
    	,'DOM stands for the Document Object Model. It's the browser's internal representation of the structure of the current web page.'
    	,'https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction', 'Curriculum'),
    	(21,'https://www.youtube.com/watch?v=7UstS0hsHgI'
    	,'When users interact with a web page, whether that's by scrolling, moving their mouse over elements, or clicking on forms or buttons, you can create certain JavaScript logic to respond to those events. In JavaScript, this is called Event Handling.'
    	,'https://developer.mozilla.org/en-US/docs/Web/Events/Event_handlers', 'Curriculum'),
    	(22,'https://www.youtube.com/watch?v=HCzQJMdHcy0'
    	, 'Publishing means that parts of the system can send messages out for other parts to act on,'
    	, 'https://www.altexsoft.com/blog/event-driven-architecture-pub-sub/', 'Curriculum'),
    	(23, 'https://www.youtube.com/watch?v=HCzQJMdHcy0'
    	, 'Subscribe means that a part can listen for certain messages to be published and perform logic in response to it'
    	, 'https://www.altexsoft.com/blog/event-driven-architecture-pub-sub/', 'Curriculum'),
    	(24, 'https://www.youtube.com/watch?v=YrxBCBibVo0&t=2s'
    	, 'Vue.js is a lightweight, but powerful framework for building components in JavaScript using many of the skills you've learned in this course'
    	, 'https://v2-4-techelevator-book.netlify.app/content/intro-to-vue-and-data-binding.html#vanilla-javascript' , 'Curriculum'),
    	(25, 'https://www.youtube.com/watch?v=jw1O5XvEKpE'
    	, 'Vue event listeners are created with the v-on Vue attribute in the HTML of the component, like v-bind'
    	, 'https://v2-4-techelevator-book.netlify.app/content/vue-event-handling.html', 'Curriculum'),
    	(26, 'https://www.youtube.com/watch?v=jIB1bE57JQg'
    	, 'When you first learn how to build components in Vue, you usually put all of your code in a single component. For simpler components, this is fine, but as you build more complex applications, you should strive to build more reusable and maintainable components.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/component-communication.html', 'Curriculum'),
    	(27, 'https://v3.vuex.vuejs.org/#what-is-a-state-management-pattern'
    	, 'This ensures that there's one central repository of data that's always up to date. It's so common that Vue has special features built in to accommodate it. The most common technology used to solve this in Vue is called Vuex'
    	, 'https://v2-4-techelevator-book.netlify.app/content/component-communication.html#component-communication-using-vuex', 'Curriculum'),
    	(28, 'https://www.youtube.com/watch?v=juocv4AtrHo&list=PL4cUxeGkcC9hYYGbV60Vq3IXYNfDk8At1&index=8'
    	, 'In Vue, you have Vue Router, which is the official and recommended routing provider. Vue Router allows you to define a route—for example, '/', '/about', or '/contact'—and define the component that you want to load when that route is requested.'
    	, 'https://v2-4-techelevator-book.netlify.app/content/vue-router.html', 'Curriculum'),
    	(29, 'https://www.youtube.com/watch?v=SLjjgjp2bAA'
    	, 'Up until now, all of the programming you've done has been synchronous. In other words, when you call a function or method, you expect to get the result before the flow of execution moves on to the next line of code.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#synchronous-programming'),
    	(30, 'https://www.youtube.com/watch?v=SLjjgjp2bAA
    	,'Instead, the server dispatches orders to the kitchen asynchronously. The server delivers the order from the first table to the kitchen, and then, while the kitchen staff cooks that order, goes out to the dining room and collects orders from more tables.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#asynchronous-programming'),
    	(31, 'https://www.youtube.com/watch?v=72d7fx4nTSg&list=PLC3y8-rFHvwgeQIfSDtEGVvvSEPDkL_1f&index=44'
    	,'Axios  is a library you can use to make calls to Web API services from a JavaScript frontend application. It provides many ways to process the request and response used in the HTTP interaction.'
    	,'https://v2.vuejs.org/v2/cookbook/using-axios-to-consume-apis.html'),
    	(32, 'https://www.youtube.com/watch?v=e3bz4dxoUII'
    	,'Web services are a simple way of how applications can use the Web.'
    	,'https://v2-4-techelevator-book.netlify.app/content/web-services-javascript.html#asynchronous-programming'),
    	(33, 'https://www.youtube.com/watch?v=SLwpqD8n3d0'
    	,'REST is an acronym for Representational State Transfer and an architectural style for distributed hypermedia systems.'
    	,'https://www.codecademy.com/article/what-is-rest')
    	;
		
		



INSERT INTO keyword (keyword_id, keyword_description)
VALUES

	(34, 'relational'),
	
	(35, 'sql'),
	(36, 'commands'),
	(37, 'symbols'),
	(38, 'primary key'),
	
	
	(39, 'foreign key'),
	(40, 'cardinality'),
	(41, 'constraint'),
	
	(42, 'transaction'),
	
	(43, 'commit'),
	(44, 'rollback'),
	(45, 'modeling'),
	(46, 'building'),
	(47, 'normalization'),
	
	(48, 'normal'),
	
	
	(49, '2nf'),
	(50, '3nf'),
	(51, 'jdbc'),
	(52, 'driver'),
	(53, 'jdbctemplate'),
	(54, 'dao'),
	(55, 'integeration tests'),
	(56, 'crud'),
	
	
	
	(57, 'hashing'),
	(58, 'encryption'),
	(59, 'url'),
	(60, 'http'),
	
	(61, 'ip address'),
	(62, 'dns'),
	
	(63, 'status codes'),
	(64, 'api'),
	(65, 'json'),
	(66, 'deserialization'),
	
	(67, 'rest'),
	(68, 'restful'),
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
	(81, 'authorization'),
	(82, 'joins'),

	
	
	(83, 'database'),
	
	(84, 'simple'),
	(85, 'composite'),
	
	(86, 'constraints'),
	
	(87, 'transactions'),
	
	(88, 'normalizing'),
	
	(89, 'first'),
	(90, '1nf'),
	
	(91, 'post'),
	(92, 'update'),
	(91, 'insert'),
	
	(92, 'https'),
	
	(93, 'domain name system'),
	
	(94, 'serialization'),
	
	(95, 'token'),
	
	
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
	(43, 'https://www.youtube.com/watch?v=9yeOJ0ZMUYw', 'Joins are used to combine rows from two or more tables, based on a related column between them. There are several types including an inner, full outer, left, and right join.', 'https://www.w3schools.com/sql/sql_join.asp'),
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
	(77, '')





INSERT INTO keyword_topic (keyword_id, topic_id)
VALUES
	(34, 34),
	(83, 34),



SELECT * FROM topic
select * from question

commit;