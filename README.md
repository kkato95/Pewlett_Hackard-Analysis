# Pewlett_Hackard-Analysis

## Overview

The purpose of this analysis was to determine the number of retiring employees per titles and to identify employees who are eligible to participate in a mentorship program. The following analysis will help our manager to navigate the coming “silver tsunami.”

## Results

### Deliverable #1

We are analyzing the number of retiring employees by creating 3 tables - Retirment Titiles, Unique Titles, and Retiring Titles. These tables help to identify each employee that may be retiring based on their birth_date, the employees most recent titles, and then aggregating the number of titles per department.

#### Retirement Titles:

* We will be creating create a Retirement Titles table for employees who were born between 1/1/1952 and 12/31/1955 by joining Employees and Titles on the unique identifier employee number.
* Ordered into descending employee number.

![retirement_titles_sql_code](https://user-images.githubusercontent.com/99375741/162649508-925cbc3f-984a-41ba-990b-a8f4f8c4be63.png)

![retirement_titles_table](https://user-images.githubusercontent.com/99375741/162649542-7627c4f5-1bfa-46e0-a142-953ba8390f5f.png)

#### Unique Titles:

* Because employees may have multiple titles, we will have to create the Unique Titles table that has the most recent title of each employee by setting to_date to '9999-01-01.'

![unique_titles_sql_code](https://user-images.githubusercontent.com/99375741/162649564-3fcfb066-0a94-46cc-b3af-7d594605f2bc.png)

![unique_titles_date](https://user-images.githubusercontent.com/99375741/162649582-cad11a9e-c5ca-454d-9d2f-d8f6d5a89af4.png)

#### Count of Unique Titles:

* We are returning the count of unique titles in the unique_titles table.

![unique_titles_count](https://user-images.githubusercontent.com/99375741/162649608-1e893e34-9cbb-4f1c-aae7-8a3fc23fa112.png)

#### Retiring Titles:

* Created a new table called Retiring Titles to show the count of each title in the Unique Titles table
* Grouped and sorted data base on titles

![retiring_titles_sql_data](https://user-images.githubusercontent.com/99375741/162649626-316393ad-b693-4dcf-be32-f7545d04dca2.png)


### Deliverable #2

We are using Employees, Department Employee, and Titles table to determine which employees are eligibile to particpate in the mentorship program.

Mentorship Eligibility:

* Created a new table that joins 3 saeperate tables - Employees, Department, and Titles.
* Join the tables on the emp_no for all 3
* Filter for all current employees, then fileter for employees with birth_date between 1/1/1965 and 12/31/1965

![mentorship_eligibility_sql_code](https://user-images.githubusercontent.com/99375741/162653082-db7bffa9-6e58-48ea-bbf8-0bf4bdd0894d.png)

![mentorship_eligibility_data](https://user-images.githubusercontent.com/99375741/162653099-932dd76d-8541-482e-834f-a5c666dd6a04.png)

## Summary

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?



2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
