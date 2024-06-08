create or replace function
rev(empno in char)
return char
is
rev1 char(10);
begin
select reverse(empno) into rev1 from dual;
return rev1;
end;
/