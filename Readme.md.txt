Submitted by Alex Thomas - Batch 4

Please read these instructions before attemting to execute the programs included :

1. Assignment is a Dynamic Web project. To avoid javax.servlet Exception or package not found errors :
	=> Ensure you add Apache Tomcat location to CLASSPATH variable on the system
   (or) => Add Apache Tomcat's jar by Project -> Properties -> Build Path -> Targeted Runtimes -> Select / Add location of server

2. The RegAgmt project includes a JDBC connection. To prevent SQL Driver not found Exception : 
	=> Project -> Properties -> Java Build Path -> Libraries -> Add External JARs -> seelct location of JDBC connector.jar file
	=> The name of the database and table used and SQL login parameters can be changed in the RegistrationServices Class.
	   Current values are : 
	   
	   Database name : jspdb
	   Table name : JSPtable
	   Table structure : 
				+----------+-------------+------+-----+---------+-------+
				| Field    | Type        | Null | Key | Default | Extra |
				+----------+-------------+------+-----+---------+-------+
				| username | varchar(15) | NO   | PRI | NULL    |       |
				| password | varchar(15) | YES  |     | NULL    |       |
				| email    | varchar(50) | YES  |     | NULL    |       |
				| phone    | int(15)     | YES  |     | NULL    |       |
				+----------+-------------+------+-----+---------+-------+ 
	   SQL username : root
	   SQL password : admin

	=> Run the project using login.jsp

PS : Currently no exception handling has been included.
