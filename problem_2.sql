CREATE OR REPLACE TRIGGER sttrig2 BEFORE update OR insert 
ON emp_tab
for each row
BEGIN     
IF :new.esal<0 OR :new.esal>5000
THEN   RAISE_APPLICATION_ERROR(-20500, 'Not a valid salary');     
END IF;
END;
/
