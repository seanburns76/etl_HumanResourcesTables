SELECT
  r.EmployeeNumber,
  r.DepartmentID AS OldDept,
  c.DepartmentID AS NewDept,
  CAST(GETDATE() - 1 AS date) AS DeptChangeDate,
  CAST(GETDATE() AS date) AS DeptEffectiveDate,
  GETDATE() AS ChangeDate
FROM dbo.EmployeeRosterStage AS r
LEFT OUTER JOIN dbo.EmployeeRosterCompare AS c
  ON c.EmployeeNumber = r.EmployeeNumber
WHERE (r.DepartmentID <> c.DepartmentID)