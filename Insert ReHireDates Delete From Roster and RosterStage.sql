INSERT INTO ReHireDates ([EmployeeNumber]
, [CurHireDate]
, [PrevHireDate]
, [PrevTermDate]
, [TenureCount]
, [PrevSuperVisorNum]
, [CurSuperVisorNum]
, [PrevDeptID]
, [CurDeptID]
, [ChangeDate])
  SELECT
    *
  FROM vReHireStage;

DELETE FROM EmployeeRosterStage
WHERE EmployeeNumber IN (SELECT DISTINCT
    EmployeeNumber
  FROM vReHireStage);
DELETE FROM EmployeeRoster
WHERE EmployeeNumber IN (SELECT DISTINCT
    EmployeeNumber
  FROM vReHireStage)