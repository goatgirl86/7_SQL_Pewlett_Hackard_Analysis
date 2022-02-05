# Pewlett_Hackard_Analysis

## Project Overview
-	Related GitHub Folders: Data, Queries

### Purpose
The purpose of this week’s assignment was to explore “Structured Query Language” (SQL) by using PostgreSQL and PgAdmin to assess employee information from a fictious company “Pewlett Hackard”.  


### Data Analyzed
Employee Data including:
-	Department number and name
-	Employee number, name, and birthdate
-	Employee start date, end date, title, and salary


### Deliverables
The deliverables for this assignment were:
-	Deliverable 1: The Number (and Names) of Retiring Employees by Title
-	Deliverable 2: The Number (and Names) of Employees Eligible for the Mentorship Program


## Results

See screenshots at the end for more details and visulaization

-	The majority of retirees will be Senior Engineers (25,916) and Senior Staff (24,926)
-	Many employees have worked for Pewlett Hackard a long time and have worked their way up the chain of command.  This is shown by the numerous changes in job titles/promotions.  
-	There are far fewer mentors than there are retirees.  Again, many of these mentors have had at least one promotion in their time at Pewlett Hackard.  
-	The number of mentors remains the same whether you run the mentorship eligibility query using data from the “Department_Employee” (dept_emp) csv or the “Titles” csv.  However, the title they will “mentor” under differs by each query.  For example, in one query (dept_emp…screenshot 5), it shows that employee # 12155 (Mr Keiichiro) is an Engineer.  In the title query (screenshot 6), Mr. Keiichiro is a Senior Engineer (which reflects his current title/promotion).  I believe the most accurate query is the one that sorts my title to_date as it represents their latest promotion and not the jo they started with.  Screenshot 7 shows the differences in code between the two outputs.  


## Summary
-	72,458 people will be retiring from Pewlett Hackard in the next few years.
-	Only 1,549 employees are eligible to be a mentor (569 Senior Staff and 529 Senior Engineers)

Only 2% of the Pewlett Hackard employees that are about to retire are eligible to mentor others.  I do not feel that just over 1,500 people is enough help to mentor a pool of 72,000 new hires.  I believe Pewlett Hackard needs to invest in video and virtual learning/mentorship opportunities to fill gaps left my lack of eligible mentors.  
