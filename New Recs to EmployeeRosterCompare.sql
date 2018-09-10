USE master;

INSERT INTO HumanResources.dbo.EmployeeRosterCompare ([EmployeeNumber]
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

, [ChangeDate])

  SELECT
    e.personnum AS employeenumber,
    e.personid AS employeeid,
    e.personfullname AS employeename,
    e.badgeeffectivedate AS empeffectivedate,
    e.homelaborlevelname4 AS departmentid,
    e.supervisornumber,
    e.supervisorid,
    e.badgeeffectivedate AS empstartdate,
    e.badgeexpirationdate AS empenddate,
    e.badgeeffectivedate AS hiredate,
    e.badgeexpirationdate AS termdate,
    GETDATE() AS changedate

  FROM usnewsdmartdg.etime.[dbo].[vw_vp_employee_AMERISTAR] e