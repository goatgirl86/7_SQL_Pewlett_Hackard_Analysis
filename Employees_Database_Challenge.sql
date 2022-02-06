-- Create Retirement Titles Table
SELECT
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
--INTO retirement_titles
FROM employees As e
Inner Join titles As t
On  (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

Select * From retirement_titles

Drop Table unique_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no;

Select * From unique_titles

Drop Table retiring_titles

--Create table of Retiring Titles using count
Select Count (emp_no),
title
Into retiring_titles
From unique_titles
Group By title
Order By count DESC

Select * From retiring_titles

Drop Table mentorship_eligibility

Select * From titles

Drop Table mentorship_eligibility_de

-- Create Mentor table- de
SELECT DISTINCT ON (e.emp_no) 
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
--INTO mentorship_eligibility_de
FROM employees As e
Join dept_emp As de
On e.emp_no = de.emp_no
Left Join titles As t
On de.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

Select * From mentorship_eligibility_de

-- Create Mentor table - t
SELECT DISTINCT ON (e.emp_no) 
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility_t
FROM employees As e
Join dept_emp As de
On e.emp_no = de.emp_no
Left Join titles As t
On de.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;

Select * From mentorship_eligibility_t

Select * From dept_emp

Select Sum (count)
From retiring_titles

Drop Table mentor_count

Select Count (emp_no), title
Into mentor_count
From mentorship_eligibility_t
GROUP BY title
ORDER BY title DESC;

Select * From mentor_count

Select Sum (count)
From mentor_count