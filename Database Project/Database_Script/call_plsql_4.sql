accept v_shid prompt 'Enter shelter ID: '

declare
pack number(2);

begin 
pack:= get_pack(&v_shid);

case when pack > 0 then dbms_output.put_line('Logistic Packs/Month: ' || pack);
else dbms_output.put_line('No logistic pack is allocated');
end case;


end;
/