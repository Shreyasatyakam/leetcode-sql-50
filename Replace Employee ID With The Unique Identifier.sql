
select EmployeeUNI.unique_id,Employees.name from Employees left outer join EmployeeUNI on Employees.id=EmployeeUNI.id;
