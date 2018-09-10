SELECT
  r.EmployeeNumber,
  CAST(GETDATE() - 1 AS date) AS CurHireDate,
  r.HireDate AS PrevHireDate,
  r.TermDate AS PrevTermDate,
  CASE
    WHEN (SELECT
        COUNT(*)
      FROM ReHireDates re
      WHERE re.EmployeeNumber = r.employeenumber)
      = 0 THEN 2
    ELSE (SELECT
        MAX(t.Tenurecount)
      FROM ReHireDates t
      WHERE t.EmployeeNumber = r.EmployeeNumber)
      + 1
  END AS TenureCount,
  r.SupervisorNumber AS PrevSuperVisorNum,
  c.SupervisorNumber AS CurSupervisorNum,
  r.DepartmentID AS PrevDeptID,
  c.DepartmentID AS CurDeptID,
  GETDATE() AS ChangeDate
FROM dbo.EmployeeRoster AS r
LEFT OUTER JOIN dbo.EmployeeRosterCompare AS c
  ON c.EmployeeNumber = r.EmployeeNumber
WHERE (r.EmployeeNumber = c.EmployeeNumber)
AND (r.EmployeeStatus = 'Terminated')