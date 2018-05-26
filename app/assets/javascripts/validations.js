function validate_form(form_selectors){
  flag = true;
  for(i=0; i< form_selectors.length; i++){
  	selector = $(form_selectors[i]);
  	if ( selector.val() === '' ){
  	  selector.closest('.form-group').addClass('has-error');
  	  flag = false;
  	}
  }
  return flag;
}
function validate_row(form_selectors){
  flag = true;
  for(i=0; i< form_selectors.length; i++){
    selector = $(form_selectors[i]);
    if ( selector.val() === '' ){
      selector.closest('td').addClass('has-error');
      flag = false;
    }
  }
  return flag;
}
function validate_start_end_date(start_date,end_date){
  flag = true;
  if ($(start_date).val() > $(end_date).val()){
  	$(start_date).closest('.form-group').addClass('has-error');
  	$(end_date).closest('.form-group').addClass('has-error');
  	flag = false;
  	alert('La fecha de Inicio no puede ser mayor que la fecha del fin del contrato')
  }
  return flag;
}