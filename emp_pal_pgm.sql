declare
cursor c1 is select empname from employee;
empname char(30);
begin
open c1;
loop
	fetch c1 into empname;
	exit when c1%notfound;
	pal(empname);
end loop;
end;
/