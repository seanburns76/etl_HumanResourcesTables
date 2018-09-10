SELECT
  EmployeeNumber,
  EmployeeID,
  EmployeeName,
  EmpEffectiveDate,
  DepartmentID,
  SupervisorNumber,
  SupervisorID,
  EmpStartDate,
  EmpEndDate,
  HireDate,
  TermDate,
  EmployeeStatus,
  ChangeDate
FROM dbo.EmployeeRosterStage
WHERE (EmployeeNumber NOT IN (SELECT DISTINCT
  EmployeeNumber
FROM dbo.EmployeeRosterCompare)
)