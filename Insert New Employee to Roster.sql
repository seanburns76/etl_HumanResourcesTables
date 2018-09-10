
INSERT INTO EmployeeRoster ([EmployeeNumber]
, [EmployeeID]
, [EmployeeName]
, [EmpEffectiveDate]
, [DepartmentID]
, [SupervisorNumber]
, [SupervisorID]
, [EmpStartDate]
, [EmpEndDate]
, [HireDate]
, [TermDate]
, [EmployeeStatus]
, [ChangeDate])
  SELECT
    *
  FROM vNewEmployeeStage