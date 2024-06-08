declare
cursor C1 is select empno,empname,salary from employee;
emp C1%rowtype;
begin
DBMS_OUTPUT.PUT_LINE('********EMPLOYEE DETAILS**********');
OPEN C1;
fetch C1 into emp;
while C1%found 
loop
     dbms_output.put_line(emp.empno || ' ' || emp.empname || ' ' || emp.salary);
     DBMS_OUTPUT.PUT_LINE ('*******************************************************');
     fetch C1 into emp;
end loop;
close C1;
end;
/

