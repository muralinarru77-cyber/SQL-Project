SHOW DATABASES;

USE project_medical_data_history;

SELECT * FROM doctors;

SELECT * FROM admissions;

SELECT * FROM patients;

SELECT * FROM province_names;


-- 1. Show first name, last name, and gender of patients who's gender is 'M'
SELECT first_name, last_name FROM patients WHERE gender = 'M';
SELECT First_name FROM patients WHERE Gender = 'M';
SELECT Last_name FROM patients WHERE Gender = 'M';


-- 2. Show first name and last name of patients who does not have allergies.
SELECT first_name, last_name FROM patients WHERE allergies IS NULL;
SELECT patient_id FROM patients WHERE allergies IS NULL;


-- 3. Show first name of patients that start with the letter C.
SELECT First_name FROM patients WHERE first_name LIKE 'C%';


-- 4. Show first name and last name of patients that weight within the range of 100 t0 200 (inclusive).
SELECT First_name, Last_name FROM patients WHERE weight BETWEEN 100 AND 120;
SELECT First_name, Last_name FROM patients WHERE weight BETWEEN 100 AND 119;


-- 5. Update the patients table for the allergies column. If the patients allergies is null then replace it with 'NKA'.
SELECT First_name, Last_name, nullif(allergies,'NKA') AS allergies FROM patients;


-- 6.Show first name and last name concatenated into one column to show their full name.
SELECT concat(First_name, ' ' , Last_name) AS Full_name FROM patients;


-- 7. Show first name, last name, and the full province name of each patient.
SELECT p.first_name, p.last_name, pr.province_name 
FROM patients p
JOIN province_names pr 
ON p.province_id = pr.province_id;


-- 8. Show how many patients have a birth_date with 2010 as the birth year.
SELECT COUNT(*) AS Total_patients FROM patients WHERE YEAR(birth_date) = '2010';


-- 9. Show the first_name, last_name, and height of the patient with the greatest height.
SELECT First_name, Last_name, Height FROM patients WHERE height = (SELECT MAX(height) FROM patients);


-- 10. Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000.
SELECT * FROM patients WHERE patient_id IN (1, 45, 534, 879, 1000);


-- 11. Show the total number of admissions.
SELECT COUNT(*) AS Total_admissions FROM admissions;


-- 12. Show all the columns from admissions where the patient was admitted and discharged on the same day.
SELECT * FROM admissions WHERE admission_date = discharge_date;


-- 13. Show the total number of admissions for patient_id 579.
SELECT COUNT(*) AS Total_admissions FROM admissions WHERE patient_id = '579';


-- 14. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'
SELECT DISTINCT(city) FROM patients WHERE province_id = 'NS';


-- 15. Write a query to find the first_name, last name and birth date of patients who have height more than 160 and weight more than 70
SELECT First_name, Last_name, Birth_date FROM patients WHERE height > 160 AND weight > 70;


-- 16. Show unique birth years from patients and order them by ascending.
SELECT DISTINCT YEAR(Birth_date) AS Birth_year FROM patients ORDER BY Birth_year ASC;


-- 17. Show unique first names from the patients table which only occurs once in the list.
SELECT First_name FROM patients GROUP BY First_name HAVING COUNT(First_name) = '1';


-- 18. Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
SELECT patient_id, First_name FROM patients WHERE first_name LIKE 's%S' AND length(First_name) >= '6';


-- 19. Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.
SELECT p.patient_id, p.First_name, p.Last_name
FROM patients p
JOIN admissions a
ON p.patient_id = a.patient_id
WHERE a.Diagnosis = 'Dementia' ;


-- 20. Display every patients first_name. Order the list by the length of each name and then by alphbetically.
SELECT First_name FROM patients ORDER BY length(First_name), First_name;


-- 21. Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
SELECT SUM(Gender = 'M') AS Total_male_patients, SUM(Gender = 'F') AS Total_female_patients FROM patients;


-- 22. Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
SELECT SUM(Gender = 'M') AS Total_Male_patients, SUM(Gender = 'F') AS Total_Female_patients FROM patients;


-- 23. Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
SELECT patient_id, diagnosis FROM admissions GROUP BY patient_id, diagnosis HAVING COUNT(*) > 1;


-- 24. Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.
SELECT city, COUNT(*) AS Total_patients FROM patients GROUP BY city  ORDER BY Total_patients DESC, city ASC;


-- 25. Show first name, last name and role of every person that is either patient or doctor. The roles are either Patients or Doctors.
SELECT First_name, Last_name, 'patient' AS role FROM patients UNION SELECT First_name, Last_name, 'doctor' AS role FROM doctors;


-- 26. Show all allergies ordered by popularity. Remove NULL values from query.
SELECT allergies, COUNT(*) AS popularity FROM patients WHERE allergies IS NOT NULL GROUP BY allergies ORDER BY popularity DESC;


-- 27. Show all patients first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.
SELECT First_name, Last_name, Birth_date FROM patients WHERE Birth_date BETWEEN '1953-04-16' AND '2009-07-15' ORDER BY Birth_date ASC;


-- 28. We want to display each patients full name in a single column. Their last_name in all upper letters must appear first, then first_name in all lower case letters. Separate the last_name and first_name with a comma. Order the list by the first_name in decending order.
SELECT CONCAT(Upper(Last_name), ',' , Lower(First_name)) AS Full_name FROM patients ORDER BY First_name DESC;


-- 29. Show the province_id(s), sum of height; where the total sum of its patients height is greater than or equal to 7,000.
SELECT province_id, SUM(height) AS Total_patients FROM patients GROUP BY province_id HAVING SUM(height) >= '7000';


-- 30. Show the difference between the largest weight and smallest weight for patients with the last name maroni.
SELECT MAX(weight) - MIN(weight) AS weight_difference FROM patients WHERE Last_name = 'maroni';


-- 31. Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
SELECT DAY(admission_date) AS day_of_month, COUNT(*) AS Total_admissions FROM admissions GROUP BY Day(admission_date) ORDER BY Total_admissions DESC;


-- 32. Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group. Order the list by the weight group decending. e.g. if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.
SELECT FLOOR(weight / 10) * 10 AS weight_group, COUNT(*) AS Total_patients FROM patients GROUP BY weight_group ORDER BY weight_group DESC;


-- 33. Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1. Obese is defined as weight(kg)/(height(m). Weight is in units kg. Height is in units cm.
SELECT patient_id, weight, height, CASE WHEN weight / power(height/100.0, 2)  >= 30 THEN 1 ELSE 0 END AS isObese FROM patients;


-- 34. Show patient_id, first_name, last_name, and attending doctor's specialty. Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'. Check patients, admissions, and doctors tables for required information.
SELECT p.patient_id, p.First_name, p.Last_name, d.specialty
FROM patients p
JOIN admissions a
ON p.patient_id = a.patient_id
JOIN doctors d
ON a.attending_doctor_id = d.doctor_id
WHERE a.diagnosis = 'Epilepsy'
AND d.First_name = 'Lisa';
