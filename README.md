**STUDENT MANAGEMENT SYSTEM**
========================

**Project Overview**
----------------
A Java-based Student Management System for managing student and teacher information using MySQL database.

**Project Structure**
-----------------
student-management-system/
│ 

├─ README.md

├─ final review.txt

├─ pom.xml

├─ schema.sql

├─ src

│  └─ main

│     ├─ java

│     │   ├─ com

│     │   │  └─ sms

│     │   │     ├─ dao

│     │   │     │  ├─ Autowired.java

│     │   │     │  ├─ DBConnection.java

│     │   │     │  ├─ SpringBootTest.java

│     │   │     │  ├─ SpringRunner.java

│     │   │     │  ├─ StudentDAO.java

│     │   │     │  └─ StudentDAOTest.java

│     │   │     ├─ model

│     │   │     │  └─ Student.java

│     │   │     ├─ service

│     │   │     │  ├─ StudentDAO.java

│     │   │     │  ├─ StudentService.java

│     │   │     │  └─ StudentServiceTest.java

│     │   │     ├─ servlet

│     │   │     │  └─ StudentServlet.java

│     │   │     └─ student_management_system

│     │   │        └─ Main.java

│     │   └─ org

│     │       └─ junit

│     │           └─ Test.java

│     └─ webapp

│        ├─ Attendance.jsp

│        ├─ Collegeinfo.jsp

│        ├─ Feedback.jsp

│        ├─ META-INF

│        │  └─ MANIFEST.MF

│        ├─ Notice.jsp

│        ├─ Reportcard.jsp

│        ├─ Timetable.jsp

│        ├─ WEB-INF

│        │  └─ web.xml

│        ├─ admitcard.jsp

│        ├─ courses.jsp

│        ├─ css

│        │  └─ style.css

│        ├─ dashboard.jsp

│        ├─ fees.jsp

│        ├─ index.jsp

│        ├─ js

│        │  └─ script.js

│        ├─ login.jsp

│        ├─ performance.jsp

│        ├─ profile.webp

│        └─ student-management-system.png

└─ target

   └─ classes
   
       └─ com
       
           └─ sms
           
               ├─ dao
               
               │  ├─ DBConnection.class
               
               │  └─ StudentDAO.class
               
               ├─ model
               
               │  └─ Student.class
               
               ├─ servlet
               
               │  └─ StudentServlet.class
               
               └─ student_management_system
               
                    └─ Main.class

     
-------------
**Prerequisites**
-------------
- Java Development Kit (JDK) 8 or higher
- MySQL Database
- Maven for dependency management
- Eclipse IDE

**Running the Application in Eclipse IDE**
---------------------------------------
Step 1: Clone the Repository
   1. Open a terminal or command prompt.
   2. Clone the repository.
   3. Navigate to the project directory.

Step 2: Import the Project into Eclipse
   1. Open Eclipse IDE.
   2. Go to File > Import....
   3. Select Existing Maven Projects under Maven and click Next.
   4. Browse to the directory where you cloned the project and select it.
   5. Click Finish to import the project.

Step 3: Create a Database using MySQL Workbench
1. Install MySQL Server
2. Create database using sql commands given in schema in src/schema.sql.

Step 4: Configure Database Connection
   1. Open the file DBConnection.java located at 'src/main/java/com/sms/dao/DBConnection.java'
   2. Ensure that the database connection details (URL, USER, PASSWORD) are correctly set
      Update connection details:
         - URL: jdbc:mysql://localhost:3306/student_management
         - USER: root // or your MySQL username
         - PASSWORD: root // or your MySQL password

Step 5: Add Dependencies
   1. Ensure that the required dependencies (like MySQL Connector/J) are specified in the pom.xml file.
   2. Right-click on the project in Eclipse, and select Maven > Update Project... to download the dependencies.

   Dependencies:
      - MYSQL
      - MySQL Connector/J
      - MYSQL Workbench

Step 6: Run the Application
   1. Open the Main.java file located at src/main/java/com/sms/student_management_system/Main.java.
   2. Right-click on Main.java and select Run As > Java Application.
   3. The application will run, and you should see output in the console displaying the added students and teachers.

By following these steps, you should be able to run the Student Management System project in Eclipse IDE successfully.

--------
Running WebApp in browser
--------
Step 1: Clone the Repository
   1. Open a terminal or command prompt.
   2. Clone the repository.
   3. Navigate to the project directory.

Step 2: Import Files in Eclipse.
   1. Open Eclipse.
   2. Go to File > Import....
   3. Browse to the directory where you cloned the project and select it.
   4. CLick on Import.
   5. Run the file by running it on Tomcat Server.

Step 3: Accessing The Student Management System.
   - Username: admin
   - Password: admin
   1. Once entering the default username and password user will be redirected to the Dashboard.
   2. Once in Dashboard user can access all the features of student management system.


Features in WebApp
--------
- Downloading of admitcard.
- Checking Day Based Attendance.
- College Information.
- Checking Alloted Courses.
- Having all important data in dashboard.
- Checkign fees and fees status.
- Giving Feedback related to issues.
- Important Notice.
- Checking Performance / Grades.
- Downloading of Reportcard.
- CLass Timetable.
  
Database Schema
---------------
Students Table Columns:
- id (Primary Key)
- name
- age
- email
- admission_no
- course
- passwd


Troubleshooting
---------------
- Ensure MySQL server is running
- Verify database connection parameters
- Check that all dependencies are installed
- Checking if all the downloades/cloned files are in the same directory as seen in project structure.
