
-- Deliverable 1
------------------------------------------------------------
-- Create retirement titles table
select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e
	inner join titles as t
		on e.emp_no = t.emp_no
where e.birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- get count of retiring titles
select title, count(title) 
into retiring_titles
from unique_titles
group by title
order by count(title) desc
-------------------------------------------------------------

-- Deliverable 2

-------------------------------------------------------------

