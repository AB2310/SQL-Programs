declare
cursor C1 is select empno,empname,salary from employee;
ename  employee.empname%type;
eno employee.empno%type;
esal employee.salary%type;
begin
DBMS_OUTPUT.PUT_LINE('********EMPLOYEE DETAILS**********');
dbms_output.put_line(chr(10));
OPEN C1;
fetch C1 into eno,ename,esal;
while C1%found 
loop
     dbms_output.put_line(eno || ' ' || ename || ' ' || esal);
     dbms_output.put_line(chr(10));
     DBMS_OUTPUT.PUT_LINE ('*******************************************************');
     fetch C1 into eno,ename,esal;
end loop;
close C1;
end;
/

