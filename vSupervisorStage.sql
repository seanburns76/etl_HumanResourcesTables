SELECT
  r.EmployeeNumber,
  r.SupervisorNumber AS OldSuper,
  c.SupervisorNumber AS NewSuper,
  CAST(GETDATE() - 1 AS date) AS SupChangeDate,
  CAST(GETDATE() AS date) AS SupEffectiveDate,
  GETDATE() AS ChangeDate
FROM dbo.EmployeeRosterStage AS r
LEFT OUTER JOIN dbo.EmployeeRosterCompare AS c
  ON c.EmployeeNumber = r.EmployeeNumber
WHERE (r.SupervisorNumber <> c.SupervisorNumber)