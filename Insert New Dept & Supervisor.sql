insert into DepartmentTracking (
EmployeeNumber,
DepartmentID,
DeptEffectiveDate,
DepChangeDate,
ChangeDate
)
select 
d.EmployeeNumber,
d.NewDept as DepartmentID,
d.DeptEffectiveDate,
'3001-01-01' as DeptChangeDate,
d.ChangeDate
from vDepartmentStage d;

insert into SupervisorTracking (
EmployeeNumber,
SupervisorNumber,
SupEffectiveDate,
SupChangeDate,
ChangeDate
)
select 
d.EmployeeNumber,
d.NewSuper as SupervisorNumber,
d.SupEffectiveDate,
'3001-01-01' as SupChangeDate,
d.ChangeDate
from vSupervisorStage d