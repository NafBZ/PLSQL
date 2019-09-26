set serveroutput on
set verify off

create or replace procedure add_vs
(sn in staff.s_name%TYPE,
sa in staff.s_address%TYPE,
se in staff.s_email%TYPE,
sp in staff.s_phone%TYPE,
vn in volunteer.v_name%TYPE,
va in volunteer.v_address%TYPE,
vd in volunteer.v_dob%TYPE,
ve in volunteer.v_email%TYPE,
vp in volunteer.v_phone%TYPE
)

as

begin

insert into staff values(sid_seq.NEXTVAL, sn, sa, se, sp);

dbms_output.put_line('A Staff record is inserted!');

insert into volunteer values(vid_seq.NEXTVAL, vn, va, to_date(vd), ve, vp);

dbms_output.put_line('A Volunteer record is inserted!');

end;
/
