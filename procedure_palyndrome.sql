create or replace procedure
pal(name in char)
as
uname varchar2(30);
rev varchar2(30);
begin
uname:=UPPER(trim(name));
select reverse(uname) into rev from dual;
if (rev=uname)
then
  dbms_output.put_line(name);
end if;
end;
/
 