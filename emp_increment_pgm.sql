declare
cursor c1 is select empname,salary,hire_date from employee;
emp c1%rowtype;
exper integer;
inc number(3);
begin
open c1;
fetch c1 into emp;
dbms_output.put_line(rpad('Name',30)||'     '||rpad('Salary',10)||'       '||'Experience'||'      '||'Increment %');
while(c1%found)
loop
exper := FLOOR(MONTHS_BETWEEN(SYSDATE,emp.HIRE_DATE)/12);
incr(exper,emp.salary,inc);
dbms_output.put_line(emp.empname||'     '||rpad(emp.salary,10)||'       '||rpad(exper,10)||'      '||inc);
fetch c1 into emp;
end loop;
close c1;
end;
/
