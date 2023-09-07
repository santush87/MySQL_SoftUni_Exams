# MySQL Exams

This repository contains a collection of MySQL exercises designed to help you practice and improve your SQL skills. Whether you're a beginner looking to learn SQL or an experienced developer wanting to sharpen your database querying skills, these exercises can be a valuable resource.

## Getting Started

To get started with these MySQL exercises, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/yourusername/MySQL_SoftUni_Exams.git
   ```

2. **Install MySQL**: Ensure you have MySQL installed on your system. You can download it from the official [MySQL website](https://dev.mysql.com/downloads/).

3. **Database Setup**: Create a new database for these exercises. You can do this using the MySQL command-line tool or any MySQL client of your choice. For example:

   ```sql
   CREATE DATABASE mysql_exercises;
   ```

4. **Import Data**: Import the sample database provided in the `data` directory. You can use the MySQL command-line tool or a MySQL client to do this:

   ```bash
   mysql -u santush87 -p MySQL_SoftUni_Exams < data/MySQL_SoftUni_Exams.sql
   ```

   Replace `santush87` with your MySQL username.

Now you're ready to start working on the exercises!

## Exercises

The exercises are organized into separate SQL files. Each SQL file contains a set of SQL queries with comments that describe the task you need to accomplish. You can find exercises for various SQL concepts, including:

- **Basic SQL Queries**: Simple SELECT, INSERT, UPDATE, and DELETE statements.
- **Joins**: Practice JOIN operations to combine data from multiple tables.
- **Aggregation**: Learn how to use GROUP BY and aggregate functions like COUNT, SUM, AVG, etc.
- **Subqueries**: Work with subqueries and nested queries.
- **Advanced Topics**: More challenging exercises on window functions, common table expressions (CTEs), and stored procedures.

Feel free to explore the exercises and work through them at your own pace.

## How to Use

1. Open your preferred MySQL client or command-line tool.

2. Connect to the `MySQL_SoftUni_Exams` database you created earlier.

3. Navigate to the `exercises` directory in this repository.

4. Start with the first exercise by opening the corresponding SQL file.

5. Write your SQL queries to complete the exercise.

6. Test your queries to ensure they produce the expected results.

7. Move on to the next exercise and repeat the process.

8. If you get stuck or want to check your answers, you can find solutions in the `solutions` directory. But try to solve the exercises on your own first!

## Contributing

If you have additional exercises, improvements, or corrections to the existing exercises, contributions are welcome! Here's how you can contribute:

1. Fork this repository.

2. Create a new branch for your changes:

   ```bash
   git checkout -b feature/new-exercises
   ```

3. Make your changes and add new exercises or modify existing ones.

4. Ensure your code is well-documented, and follow the existing style and formatting conventions.

5. Test your changes to make sure they work correctly.

6. Commit your changes with a descriptive commit message.

7. Push your changes to your fork:

   ```bash
   git push origin feature/new-exercises
   ```

8. Open a pull request against the main repository.


---

Happy querying! If you have any questions or encounter any issues, feel free to open an [issue](https://github.com/santush87/MySQL_SoftUni_Exams/issues) or reach out to the project maintainers.

