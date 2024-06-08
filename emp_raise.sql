declare
cursor c1 is select empno,salary from employee where job='ANALYST';
eno employee.empno%type;
esal employee.salary%type;
ramt number;
begin
open c1;
fetch c1 into eno,esal;
while c1%found
loop
	ramt:= esal * 0.15;
	update employee set salary = salary + ramt where empno = eno;
	insert into emp_raise values(eno,sysdate,ramt);
	fetch c1 into eno,esal;
end loop;
close c1;
end;
/