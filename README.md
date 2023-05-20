# Flex Student Management System

Flex is a student management system built using ASP.NET for the frontend and C# for the backend. It provides a user-friendly interface for managing student information, courses, attendance, feedback, and generating reports. This repository contains the source code and database schema for the Flex project.

## Features

### Dynamic Tables
- The application utilizes dynamic tables to display data in a structured and interactive manner.
- Dynamic tables are used in various sections such as course management, attendance tracking, and feedback management.
- The tables allow for easy sorting, filtering, and pagination of data.

### Course Management
- Administrators can add, edit, and delete courses through the user interface.
- The course details include course code, title, instructor, and other relevant information.
- Course data is stored in a database and can be accessed and modified through SQL queries.

### Attendance Tracking
- The system provides attendance tracking functionality for individual courses.
- Instructors can mark student attendance and record it in the system.
- Attendance records include the date, course, student, and attendance status.
- Attendance data can be viewed, edited, and used for generating attendance reports.

### Feedback Management
- Students can submit feedback on various aspects of the courses and instructors.
- The feedback form includes evaluation type, weightage, total marks, and comments.
- Feedback data is stored in the database and can be retrieved and analyzed.
- Instructors and administrators can view feedback, analyze metrics, and take necessary actions based on the feedback received.

### Reports
- The system provides the capability to generate reports based on different parameters.
- Reports can include attendance reports, course evaluation reports, and other custom reports.
- Reports can be generated in various formats such as PDF, Excel, or CSV.
- The reports provide valuable insights into student performance, course evaluations, and other relevant metrics.

### Database
- The application uses a SQL database to store and manage student, course, attendance, and feedback data.
- The database schema is provided in the repository, allowing for easy setup and configuration.
- The database can be accessed and modified using SQL queries and commands.

## Installation and Setup
1. Clone the repository to your local machine.
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

## Authors
- [Vaneeza](https://github.com/Vaneeza-7)
- [Rabail](https://github.com/Rabail-RN)

## Acknowledgments
- [Bootstrap](https://getbootstrap.com/) for providing registration form.
