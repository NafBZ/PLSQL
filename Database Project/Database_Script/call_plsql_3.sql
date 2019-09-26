accept vid prompt 'Enter volunteer ID: '
accept sd prompt 'Enter start date of the assignment: '

begin 
retrieve_detail(&vid, '&sd');

end;
/