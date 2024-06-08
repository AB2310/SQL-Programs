declare
cursor c1 is select empname,deptno,salary from  (select * from employee order by salary desc) where rownum <=5;
emp c1%rowtype;
begin
open c1;
fetch c1 into emp;
dbms_output.put_line('*******************************************************');
while c1%found
loop
	dbms_output.put_line(emp.empname||'  '||emp.deptno||'  '||emp.salary);
	fetch c1 into emp;
end loop;
close c1;
end;
/