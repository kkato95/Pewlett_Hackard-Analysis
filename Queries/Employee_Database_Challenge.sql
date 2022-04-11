-- Deliverable #1
-- Retreive emp_no, first_name, last_name from employees and title, form_date, and to_date from Titles
SELECT
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
-- Join both tables on emp_no
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
-- Setting a filter to return begin_date between 01/01/1952 and 12/31/1955
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- Order by employee number
ORDER BY e.emp_no DESC;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;
-- Return number of titles are in Unique Titles
SELECT COUNT(title)
FROM unique_titles

-- Create a Retiring Titles table to hold the information
SELECT COUNT (unique_titles.title), title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.title DESC;

SELECT * FROM retiring_titles
ORDER BY count DESC;


-- Deliverable #2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title

INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC, e.birth_date DESC;

SELECT * FROM mentorship_eligibility;




