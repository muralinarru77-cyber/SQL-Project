# SQL-Project

## Project Objective
The objective of this project is to analyze hospital patient data using SQL queries. The goal is to extract meaningful insights such as patient demographics, medical conditions, admission trends, and doctor-patient relationships. This helps in improving decision-making, patient care, and operational efficiency in healthcare systems.

## Data Set
- [Dataset](https://github.com/muralinarru77-cyber/SQL-Project/blob/main/Medical%20Data%20History.xlsx)

## Question(KPIs)
1. Show first name, last name, and gender of patients who&#39;s gender is &#39;M&#39;
2. Show first name and last name of patients who does not have allergies.
3. Show first name of patients that start with the letter &#39;C&#39;
4. Show first name and last name of patients that weight within the range of
100 to 120 (inclusive)
5. Update the patients table for the allergies column. If the patient&#39;s allergies is
null then replace it with &#39;NKA&#39;
6. Show first name and last name concatenated into one column to show their
full name.
7. Show first name, last name, and the full province name of each patient.
8. Show how many patients have a birth_date with 2010 as the birth year.
9. Show the first_name, last_name, and height of the patient with the greatest
height.
10. Show all columns for patients who have one of the following patient_ids:
1,45,534,879,1000
11. Show the total number of admissions
12. Show all the columns from admissions where the patient was admitted
and discharged on the same day.
13. Show the total number of admissions for patient_id 579.
14. Based on the cities that our patients live in, show unique cities that are in
province_id &#39;NS&#39;?

15. Write a query to find the first_name, last name and birth date of patients
who have height more than 160 and weight more than 70
16. Show unique birth years from patients and order them by ascending.
17. Show unique first names from the patients table which only occurs once in
the list.
For example, if two or more people are named &#39;John&#39; in the first_name column
then don&#39;t include their name in the output list. If only 1 person is named &#39;Leo&#39;
then include them in the output. Tip: HAVING clause was added to SQL
because the WHERE keyword cannot be used with aggregate functions.
18. Show patient_id and first_name from patients where their first_name start
and ends with &#39;s&#39; and is at least 6 characters long.
19. Show patient_id, first_name, last_name from patients whos diagnosis is
&#39;Dementia&#39;. Primary diagnosis is stored in the admissions table.
20. Display every patient&#39;s first_name. Order the list by the length of each
name and then by alphbetically.
21. Show the total amount of male patients and the total amount of female
patients in the patients table. Display the two results in the same row.
22. Show the total amount of male patients and the total amount of female
patients in the patients table. Display the two results in the same row.
23. Show patient_id, diagnosis from admissions. Find patients admitted
multiple times for the same diagnosis.
24. Show the city and the total number of patients in the city. Order from most
to least patients and then by city name ascending.
25. Show first name, last name and role of every person that is either patient
or doctor. The roles are either &quot;Patient&quot; or &quot;Doctor&quot;
26. Show all allergies ordered by popularity. Remove NULL values from
query.

27. Show all patient&#39;s first_name, last_name, and birth_date who were born in
the 1970s decade. Sort the list starting from the earliest birth_date.
28. We want to display each patient&#39;s full name in a single column. Their
last_name in all upper letters must appear first, then first_name in all lower
case letters. Separate the last_name and first_name with a comma. Order the
list by the first_name in decending order EX: SMITH,jane
29. Show the province_id(s), sum of height; where the total sum of its patient&#39;s
height is greater than or equal to 7,000.
30. Show the difference between the largest weight and smallest weight for
patients with the last name &#39;Maroni&#39;
31. Show all of the days of the month (1-31) and how many admission_dates
occurred on that day. Sort by the day with most admissions to least
admissions.
32. Show all of the patients grouped into weight groups. Show the total
amount of patients in each weight group. Order the list by the weight group
decending. e.g. if they weight 100 to 109 they are placed in the 100 weight
group, 110-119 = 110 weight group, etc.
33. Show patient_id, weight, height, isObese from the patients table. Display
isObese as a boolean 0 or 1. Obese is defined as weight(kg)/(height(m).
Weight is in units kg. Height is in units cm.
34. Show patient_id, first_name, last_name, and attending doctor&#39;s specialty.
Show only the patients who has a diagnosis as &#39;Epilepsy&#39; and the doctor&#39;s first
name is &#39;Lisa&#39;. Check patients, admissions, and doctors tables for required
information.


## Process
## Problem Understanding
## The objective of this project is to analyze a medical dataset using SQL by:
Extracting patient information
Identifying patterns in admissions
Performing data cleaning and transformation
Generating meaningful insights
## Data Exploration & Cleaning
## Before running queries, the dataset was explored for:
Missing values (e.g., allergies IS NULL)
Data types (dates, integers, strings)
Inconsistencies (e.g., null allergies replaced with 'NKA')
## This project demonstrates:
Strong SQL fundamentals
Ability to clean and transform real-world data
Analytical thinking using database queries
## It provides actionable insights for:
Patient care improvement
Hospital management decisions
Health trend analysis
