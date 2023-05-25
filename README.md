# Flex Student Management System

<p align="center">
  <img src="https://github.com/Vaneeza-7/Flex-Student-Managament-System/blob/main/videoWalkthrough%20(1).gif" alt="Demo" width="600" height="400" />
</p>

Flex is a student management system built using ASP.NET for the frontend and C# for the backend. It is a web-based application designed to streamline various administrative tasks related to student management. It provides a user-friendly interface for managing student information, courses, attendance, feedback, marks and generating reports.  Moreover, it offers a range of features including assigning instructors to courses, marks or evaluation management, student transcript, and student registration into courses and sections. This repository contains the source code and database schema for the Flex project.

## Features

### Dynamic Tables
- The application utilizes dynamic tables to display data in a structured and interactive manner.
- Dynamic tables are used in various sections such as course management, attendance tracking, and feedback management etc.
- The tables allow for easy sorting, filtering, and pagination of data.

### Course Management
- Administrators can offer courses through the user interface.
- The course details include course code, title, instructor, and other relevant information.
- Course data is stored in a database and can be accessed and modified through SQL queries.

### Attendance Tracking
- The system provides attendance tracking functionality for individual courses.
- Instructors can mark student attendance and record it in the system.
- Attendance records include the date, course, student, and attendance status.
- Attendance data can be viewed and used for generating attendance reports.

### Feedback Management
- Students can submit feedback on various aspects of the courses and instructors.
- The feedback form includes evaluation type, weightage, total marks, and comments.
- Feedback data is stored in the database and can be retrieved and analyzed.
- Instructors and administrators can view feedback, analyze metrics, and take necessary actions based on the feedback received.

### Instructor Management
- This feature allows the system administrator to assign instructors to specific courses.
-  It ensures that each course has an assigned instructor responsible for its management and delivery.
-  Constraints are applied in the form of triggers for limiting 3 courses to each instructor per semester.
-  Instructors can view data of the sections they are assigned on their interface.

### Marks or Evaluation Management
- The system provides a user-friendly interface for inputting and managing student marks or evaluations. 
- Instructors can easily enter marks, update them as needed, and track student performance throughout the semester.
- Instructors can also easily set marks distribution for all evaluations in their course.

### Student Registration Management
- Students can browse the offered courses and sections, select the ones they wish to enroll in, and register themselves. 
- Once registered, they send a request to the system administrator for acceptance.
- The system administrator reviews the registration requests received from students and accepts or rejects them. 
- Upon acceptance, the student is officially enrolled in the requested course and section.

### Reports
- The system provides the capability to generate reports based on different parameters.
- Reports can include attendance reports, course evaluation reports, and other custom reports.
- The reports provide valuable insights into student performance, course evaluations, and other relevant metrics.
- Reports are generated in html format and are saved inside `Reports` folder. Some reports are:
  - **Attendance Report:** The system generates attendance reports for individual students, providing a detailed overview of their attendance records throughout the semester.
  - **Course/Teacher Feedback Report:** Students can provide feedback on courses and instructors. The system compiles this feedback into a comprehensive report, aiding in continuous improvement.
  - **Grade Count and Grades in a Section Report:** This report provides statistical information on the grade distribution within a particular section, helping to analyze student performance.
  - **Enrolled Students Report:** The system generates a list of enrolled students for each course and section, providing a convenient overview for instructors.
  - **Student Transcript:** The system generates comprehensive student transcripts that showcase their academic progress, including completed courses, grades, and cumulative GPA. It provides an organized overview of a student's educational journey.
  - **Assigned Instructors Report:** This report displays the list of instructors assigned to each course, assisting in administrative tracking.
  
### Database
- The application uses a SQL database to store and manage student, course, attendance, and feedback data.
- The database schema is provided in the repository, allowing for easy setup and configuration.
- The database can be accessed and modified using SQL queries and commands.

## Installation and Setup
1. Clone the repository to your local machine.
   ```shell
   git clone https://github.com/Vaneeza-7/Flex-Student-Management-System.git
2. Set up the database by executing the SQL scripts provided in the `flex tables` folder.
3. Open the project in Visual Studio or your preferred IDE.
4. Configure the database connection string in the application's configuration file.
5. Build and run the application.

## Requirements
- .NET Framework (version 4.7.2)
- Visual Studio (version 17.0.6)
- SQL Server (version 19.0.2019)

## License
This project is licensed under the [MIT License](LICENSE).

## Contributing
Contributions to the project are welcome. Feel free to submit bug reports, feature requests, or pull requests. 
Please follow these guidelines:
1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```shell
   git checkout -b feature/your-feature-name
3. Make your changes and commit them:
   ```shell
   git commit -m "Add your commit message here"
4. Push your changes to your forked repository.
    ```shell
    git push origin feature/your-feature-name
5. Open a pull request detailing your changes and their benefits.

Please ensure that your code adheres to the existing coding style and that you include appropriate tests for your changes.
 
## Authors
- [Vaneeza](https://github.com/Vaneeza-7)
- [Rabail](https://github.com/Rabail-RN)

## Acknowledgments
- [Bootstrap](https://getbootstrap.com/) for providing registration form.
