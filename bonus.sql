declare
total number;
begin
update bonus set salary  = salary + 2000  where ename = 'PHILIP VINCENT';
update bonus set salary  = salary + 2500  where ename = 'SHILVY K K';
select sum(salary) into total from bonus;
if(total >=75000) then
dbms_output.put_line('Total exceeded. So rolling back');
  rollback to s2;
else
  dbms_output.put_line('Salaries Updated');
  savepoint s2;
end if;
end;
/

