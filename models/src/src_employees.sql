WITH raw_employees as
(
select * from RAW.EMPLOYEES
)
select
ID as EmployeeId,
Name as EmployeeName,
Pay as EmployeeSalary,
LOCATION as EmployeeAddress
from
raw_employees