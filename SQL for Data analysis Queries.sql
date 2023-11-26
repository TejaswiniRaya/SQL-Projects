#All columns of employee attrition table
#SELECT * FROM `employee attrition`;

#Select the employees Whose preformancerating is greater than 2 and the count of employees
#SELECT EmployeeNumber FROM `employee attrition` WHERE PerformanceRating>2;
#SELECT count(*) AS  TotalNumberOfEmployeesWithHighPreformance FROM `employee attrition` WHERE PerformanceRating>2;

#Count the employees Whose PerformanceRating and Education is greater than 2;
#SELECT count(*) AS TotalNOOfEmployeewithhighperformanceandhighEducation FROM `employee attrition` WHERE PerformanceRating>2 AND Education>2;

#Count the employees Whose PerformanceRating and Education is greater than 2 and Department equal to sales;
#SELECT count(*) AS HighlevelEmployeeFromSales FROM `employee attrition` WHERE PerformanceRating>2 AND Education>2 AND Department='sales';

#Count the employees Who Can work overtime;
#SELECT count(*) AS TotalOverTimeWorkers FROM `employee attrition` WHERE OverTime='Yes';

#Select the Employees Whose Daliyrate greater than Average Daliyrate
#SELECT  EmployeeNumber FROM `employee attrition` WHERE DailyRate>(SELECT AVG(DailyRate) FROM  `employee attrition`);

#Select Maximum years Since their get YearsSinceLastPromotion
#SELECT MAX(YearsSinceLastPromotion) AS Maximum FROM `employee attrition`;

#Select Maximum income in each Department;
#SELECT Department, MAX(MonthlyIncome) AS MaximumIncome FROM `employee attrition` GROUP BY Department;

#How Many Employees Came from each EducationField
#SELECT EducationField,count(*) AS Total FROM  `employee attrition` GROUP BY EducationField;

#Average performanceRating of each JobRole;
#SELECT JobRole,AVG(performanceRating) AS AveragePerformance FROM  `employee attrition` GROUP BY JobRole;

#How Many Employee in JobRole came from each EducationField
#SELECT JobRole,EducationField ,count(*)  AS Total FROM  `employee attrition` GROUP BY JobRole,EducationField;