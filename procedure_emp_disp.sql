create or replace procedure
emp_disp(eno in char)
as
cursor c1 is select * from employee where empno = eno;
emp c1%rowtype;
begin
open c1;
fetch c1 into emp;
if(c1%found) 
then
dbms_output.put_line('EMP NO : '||emp.empno);
dbms_output.put_line('EMP NAME : '||emp.empname);
dbms_output.put_line('DEPARTMENT : '||emp.deptno);
else
dbms_output.put_line('Employee not found');
end if;
close c1;
end;
/