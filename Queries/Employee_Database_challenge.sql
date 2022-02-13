-- Joining titles and employees tables
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
	 titles.title,
	 titles.from_date,
     titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Use Count with Groupby and Orderby to get count of titles being retired
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Joining and filtering employees, dept_employees, and titles to determine mentorship eligibility
SELECT DISTINCT ON (emp_no) employees.emp_no,
     employees.first_name,
     employees.last_name,
	 employees.birth_date,
	 dept_employees.from_date,
	 dept_employees.to_date,
	 titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
INNER JOIN dept_employees
ON employees.emp_no = dept_employees.emp_no
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (dept_employees.to_date = '9999-01-01')
ORDER BY employees.emp_no;