declare
snum varchar2(10);
total number;
begin
snum:=&snum;
select mark1 + mark2 + mark3 into total from student1 where sid = snum;
if(total >= 45 and total <50) then
  update student1 set mark1 = mark1 + 5 where sid = snum;
  dbms_output.put_line('Mark Updated');
end if;
end;
/


