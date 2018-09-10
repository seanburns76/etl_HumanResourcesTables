update  EmployeeRoster
 set DepartmentID = ds.NewDept,
	ChangeDate = ds.ChangeDate
 from EmployeeRoster dt inner join vDepartmentStage ds on ds.EmployeeNumber=dt.EmployeeNumber
where ds.EmployeeNumber=dt.EmployeeNumber;

update  EmployeeRoster
 set SupervisorNumber = ds.NewSuper,
	ChangeDate = ds.ChangeDate
 from EmployeeRoster dt inner join vSupervisorStage ds on ds.EmployeeNumber=dt.EmployeeNumber
where ds.EmployeeNumber=dt.EmployeeNumber