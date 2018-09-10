
update EmployeeRoster 
set EmployeeStatus = 'Terminated',
EmpEndDate = cast(getdate()-1 as date),
TermDate = cast(getdate()-1 as date),
ChangeDate = getdate()

where EmployeeNumber in (select distinct EmployeeNumber from vTermEmployeeStage)