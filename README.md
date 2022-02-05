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

I do not feel that just over 1,500 people is enough help to mentor a pool of more than 72,000 new hires.  I believe Pewlett Hackard needs to invest in video and virtual learning/mentorship opportunities to fill gaps left my lack of eligible mentors. 


## Screenshots

Screenshot 1: Data frame showing “retirement titles” Deliverable #1.

![image](https://user-images.githubusercontent.com/92705556/152660138-77c95ae3-8cb1-40f2-81fb-d314e0ec7077.png)
 
 
Screenshot 2: Data frame showing “unique titles” from Deliverable # 1.
 
![image](https://user-images.githubusercontent.com/92705556/152660141-a30bc586-a4c0-4161-9ddf-ab99e5c7eee3.png)
 

Screenshot 3: Data frame showing “retiring titles” from Deliverable # 1.
 
![image](https://user-images.githubusercontent.com/92705556/152660145-482621e3-2d40-43c9-8046-30f6125ba4a5.png)



Screenshot 4: Data frame showing sum of all “retiring titles” (extra)
 
![image](https://user-images.githubusercontent.com/92705556/152660150-b4eb0e9a-4e53-4d88-82f9-f3e6d745f30c.png)


Screenshot 5: Data frame showing mentorship eligibility, sorting by dep_emp “to_date” from Deliverable 2.
 
![image](https://user-images.githubusercontent.com/92705556/152660154-95b58253-2d41-4a33-aadf-c1ebfbcee3fe.png)



Screenshot 6: Data frame showing mentorship eligibility, sorting by title “to_date” from Deliverable 2. 

![image](https://user-images.githubusercontent.com/92705556/152660160-11ffe124-f451-4169-967b-ac1ffb7b4bc6.png)


Screenshot 7: Code of mentorship eligibility dept_emp vs titles from Deliverable 2.

![image](https://user-images.githubusercontent.com/92705556/152660161-9cf72f6a-31b4-40f2-89a1-959c1e37bcfd.png)


Screenshot 8: Data frame showing the count of mentors by title (extra)

![image](https://user-images.githubusercontent.com/92705556/152660167-77842c04-bea0-4c73-873a-de50f342f72f.png)
 

Screenshot 9: Data frame showing the sum of mentors by title (extra)
 
 ![image](https://user-images.githubusercontent.com/92705556/152660171-45b2bd8a-4876-4459-b530-e3dc79a48b1d.png)


