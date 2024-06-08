declare
cursor c1 is select empno from employee where rownum <=5;
emp c1%rowtype;
rev1 char(10);
begin
open c1;
fetch c1 into emp;
while c1%found
loop
rev1:=rev(emp.empno);
dbms_output.put_line(emp.empno||' '||rev1);
fetch c1 into emp;
end loop;
close c1;
end;
/