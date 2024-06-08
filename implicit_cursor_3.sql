declare

begin
update employee set salary=salary + (salary * 0.15) where job='ANALYST';
if sql%found
then
dbms_output.put_line(sql%rowcount || ' records are updated in the employee table');
else dbms_output.put_line('No records are updated in the employee table');
end if;
end;
/