create or replace procedure
Proj_emp(emp_name in char)
is
cursor c1 is select e.empname,p.projno,p.projname,p.depno,p.respemp,p.stdate,p.enddate from emp_proj ep, employee e, project p where e.empno=ep.empno and p.projno=ep.projno and e.empname=emp_name;
proj c1%rowtype;
begin
open c1;
fetch c1 into proj;
if c1%found
then
dbms_output.put_line('EMP NAME : '||proj.empname);
dbms_output.put_line('PROJECT No'||' '||'PROJECT NAME'||' '||'DEPT No'||' '||'RES EMP'||' '||'START DATE'||' '||'END DATE');
while c1%found
loop
dbms_output.put_line(proj.projno||' '||proj.projname||' '||proj.depno||' '||proj.respemp||' '||proj.stdate||' '||proj.enddate);
fetch c1 into proj;
end loop;
else
dbms_output.put_line('Employee not found');
end if;
close c1;
end;
/



