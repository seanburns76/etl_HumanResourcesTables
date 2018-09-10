 update  SupervisorTracking 
 set SupChangeDate = ds.supChangeDate,
	ChangeDate = ds.ChangeDate
 from SupervisorTracking dt inner join vSupervisorStage ds on ds.EmployeeNumber=dt.EmployeeNumber
where ds.EmployeeNumber=dt.EmployeeNumber and dt.SupChangeDate > cast(getdate() as date);

 update  DepartmentTracking 
 set DepChangeDate = ds.DeptChangeDate,
	ChangeDate = ds.ChangeDate
 from DepartmentTracking dt inner join vDepartmentStage ds on ds.EmployeeNumber=dt.EmployeeNumber
where ds.EmployeeNumber=dt.EmployeeNumber and dt.DepChangeDate > cast(getdate() as date);