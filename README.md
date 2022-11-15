# sql-challenge

# Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

In this project, first step is to model the data, then create the table and use postgres query to analyze the data.


# Data Modeling
Look into the CSV file and create an ERD of the tables using QuickDBD.

![](Schema.png)

# Data Engineering
Create a table schema for each of the six CSV files in postgres and import each CSV file into its corresponding SQL table.

# Data Analysis

Created query to analyze the following question given in the homework assignmnet.

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name,    employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

# Bonus
For bonus part of the assignment, Import the SQL database into Pandas and  create the plots for the following visualizations

1. Create a histogram to visualize the employee salary ranges that were the most common.

2. Create a bar chart of average salary by title.

Once the import is completed succefully, Dataframes are created for each table in jupyter notebook. Using pandas merge, "employee_details" table is merged with "salaries" and "title" table to create the plot.

![](Images/Salary_ranges.png)
![](Images/title_salary.png)

Note: I have also created table using SQL for the plotting and import the table into the database as "emp_tit_sal.csv" and also in pandas and plotted the histogram and bar chart.