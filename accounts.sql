declare
acc_num varchar2(5);
bal number;
begin
acc_num:=&acc_num;
select balance into bal from accounts where acc_no = acc_num;
if(bal >=2500) then
  bal:=bal-2000;
  update accounts set balance = bal where acc_no = acc_num;
  dbms_output.put_line('Amount debited');
  dbms_output.put_line('New balance is '||bal);
else 
  dbms_output.put_line('No sufficient balance');
end if;
end;
/


