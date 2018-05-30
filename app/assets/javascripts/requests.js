$(document).ready(function () {
  var Ubigeos = {
    departamentos: function(selector){
      var jsonUrl = "/ubigeo/get/departamentos.json"
      $.getJSON(jsonUrl).done (function(data){
        PopulateCallback(data,selector)
        })  
    },
    provincias: function(id, selector){
      var jsonUrl = "/ubigeo/get/provincias/"+id+".json"
      $('#provincia').append('<option value = "default" selected>Seleccione una Provincia</option>')
      $.getJSON(jsonUrl).done(function(data){
        PopulateCallback(data, selector)
      })
    },
    distritos: function(id, selector){
      var jsonUrl = "/ubigeo/get/distritos/"+id+".json"
      $('#distrito').append('<option value = "default" selected>Seleccione un Distrito</option>')
      $.getJSON(jsonUrl).done(function(data){
        PopulateCallback(data, selector)
      })
    }
  }
  /*Llenar Información de Reniec*/
	if (document.getElementById("request_name")) { $("#request_name").val(persona.name); }
	if (document.getElementById("request_last_name")) { $("#request_last_name").val(persona.last_name); }
	if (document.getElementById("request_second_last_name")) { $("#request_second_last_name").val(persona.second_last_name); }
  if (document.getElementById("request_genre")) { $("#request_genre").val(persona.genre); }
  if (document.getElementById("request_birthday_1i")) { 
    cumple = persona.birthdate;
    fecha = cumple.split('-');
    dia = fecha[2];
    mes = fecha[1];
    anho = fecha[0];
    $('#request_birthday_1i').val(Number(anho));
    $('#request_birthday_2i').val(Number(mes));
    $('#request_birthday_3i').val(Number(dia));
  }
  if (document.getElementById("request_civil_state")) { $("#request_civil_state").val(persona.civil_state); }

  /*Llenar Información de Ubigeo */
  var departamentos = new Ubigeos.departamentos($('#departamento'))
  $('#departamento').on('change',function(e){
    e.preventDefault();
    var departamento = $(this).find(':selected').val();
    $('#provincia').empty()
    $.when(Ubigeos.provincias(departamento, $('#provincia'))).done($('.provincia').show())
  });
  $('#provincia').on('change',function(e){
    e.preventDefault();
    var provincia = $(this).find(':selected').val();
    $('#distrito').empty()
    $.when(Ubigeos.distritos(provincia, $('#distrito'))).done($('.distrito').show())
  });
  $('#distrito').change(function(e){
    e.preventDefault();
    var optionSelected = $("option:selected", this);
    var distrito= this.value;
    $('#request_ubigeo_id').val(distrito)
  });

	/*Llenar campos Ubigeo en el formulario*/
  if (document.getElementById("request_job_type_id")) { 
		$('#request_job_type_id').on('change', function() {
	    value = $(this).find(":selected").val();
	    $('.job').hide();
  		$('.company').hide();
  		$('.business').hide();
  		$('.college').hide();
	    switch(value){
	    	case '1':
	    		$('.job').toggle();
	    		$('.company').toggle();
          $('#request').css('height','auto');
    			break;
    		case '2':
          $('#request_job').val('Trabajador Independiente');
          $('.business').toggle();
          break;
    		case '3':
    			$('#request_job').val('Negocio Propio');
          $('.business').toggle();
    			break;
    		case '4':
          $('#request_job').val('Estudiante');
    			$('.college').toggle();
    			break;
    		case '5':
          $('#request_job').val('Ama de Casa');
          break;
    		case '6':
          $('#request_job').val('Jubilado o Desempleado');
          break;
    		default:
	    }
	  })
	};
  if (document.getElementById("productos")) { 
    if ($('#request_credito').is(':checked')){
      $('.credito').trigger("click");
      $('.ahorro').trigger("click");      
    }

    $('.credito').click(function(e) {
      e.preventDefault();
      element = $(this)
      checkbox = $('#request_credito')
      triggerProducto(element, checkbox);
    })
    $('.ahorro').on('click', function(e) {
      e.preventDefault();
      element = $(this)
      checkbox = $('#request_ahorro')
      triggerProducto(element, checkbox);
    })
    $('.deposito').on('click', function(e) {
      e.preventDefault();
      element = $(this)
      checkbox = $('#request_plazofijo')
      triggerProducto(element, checkbox);
    })
  }

  if (document.getElementById("select_casa")) { 
    $('#select_casa').on('change', function() {
      value = $(this).find(":selected").val();
      $('#request_property_house').val(value);
    });
  }
  if (document.getElementById("select_via")) { 
    $('#select_via').on('change', function() {
      value = $(this).find(":selected").val();
      $('#request_access').val(value);
    });
  }
  if (document.getElementById("request_alianza_id")) { 
    $('#request_alianza_id').on('change', function() {
      value = $(this).find(":selected").val();;
      $('.instituciones').hide();
      switch(value){
        case '1': 
          $('.instituciones').hide();
          break;
        case '2':
        case '3':
        case '4':
        default:
          $('.instituciones').show();
      }
    });
  }
  
  $(".iradio_square_green").click(function(){
    $(this).find('input[type="radio"]').trigger('change');
  });
  $(".vpep").click(function(){
    $(this).find('input[type="radio"]').trigger('change');
  });
  $(".iradio_square_green").click(function(){
    alert('helper')
    $(this).find('input[name="verifyPEP"]').trigger('click');
  });
	$("#request_reniec_true").click(function(){
  	$('#verifyData').show();
    $('#request').css('height','auto');
  });
  $("#request_reniec_false").click(function(){
    $('#verifyData').hide();
  });
  $("#pep1").click(function(){
    alert('soy PEP');
  });
  $("#pep2").click(function(){
    alert('No soy PEP');
  });
  
	
	$('#search_spouse_button').click(function(event){
  	event.preventDefault();
  	search = $('#search_spouse').val();
  	if (search != 0 ) {
  	  parameters = {search: search }; 
	    spouse = get_data('/requests/spouse', parameters); 
	    nombre = spouse.name + ' ' + spouse.last_name + ' ' + spouse.second_last_name;
      $('.spouse-name').text(nombre);
	    cumple = spouse.birthdate;
      fecha = cumple.split('-');
      dia = fecha[2];
      mes = fecha[1];
      anho = fecha[0];
      x = dia + '/' +  mes + '/' + anho;
      $('.spouse-birthday').text(x)
      $('.conyuge').toggle();
      $('.spouse_info').toggle();
	    $('#request_spouse_doi').val(spouse.doi);
	    $('#request_spouse_name').val(spouse.name);
	    $('#request_spouse_last_name').val(spouse.last_name);
	    $('#request_spouse_second_last_name').val(spouse.second_last_name);
	    $('#request_spouse_birthday_1i').val(Number(anho));
      $('#request_spouse_birthday_2i').val(Number(mes));
      $('#request_spouse_birthday_3i').val(Number(dia));
      $('#request').css('height','auto');
	  }
  });

  $('#submit-form').submit(function(){
    flag = true;
  	if (document.getElementById("request_dni")) { 
      if ($("#request_dni").val() === ''){
        $("#request_dni").closest('.form-group').addClass('has-error');    
        flag = false;
      }
      else{
        $("#request_dni").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_email")) { 
      if ($("#request_email").val() === ''){
        $("#request_email").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_email").closest('.form-group').removeClass('has-error');
        flag = true;
      }
    }
    if (document.getElementById("request_mobile")) { 
      if ($("#request_mobile").val() === ''){
        $("#request_mobile").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_mobile").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_address")) { 
      if ($("#request_address").val() === ''){
        $("#request_address").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_address").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_patron_name")) { 
      if ($("#request_patron_name").val() === ''){
        $("#request_patron_name").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_patron_name").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_patron_last_name")) { 
      if ($("#request_patron_last_name").val() === ''){
        $("#request_patron_last_name").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_patron_last_name").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_patron_doi")) { 
      if ($("#request_patron_doi").val() === ''){
        $("#request_patron_doi").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_patron_doi").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("request_patron_mobile")) { 
      if ($("#request_patron_mobile").val() === ''){
        $("#request_patron_mobile").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $("#request_patron_mobile").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("verifyData")) { 
      if ($(".vdepr").find(":selected").text() != persona.departamento){
        $(".vdepr").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $(".vdepr").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("verifyData")) { 
      if ($(".vpror").find(':selected').text() != persona.provincia){
        $(".vpror").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $(".vpror").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    if (document.getElementById("verifyData")) {
      mom1 = $(".vmomr").val().toUpperCase();
      mom2 = persona.mother_name.toUpperCase();
      if ( mom1 != mom2){
        $(".vmomr").closest('.form-group').addClass('has-error');
        flag = false;
      }
      else{
        $(".vmomr").closest('.form-group').removeClass('has-error');    
        flag = true;
      }
    }
    return flag;
  });
  
  function toDate(dateStr) {
    const [day, month, year] = dateStr.split("-")
    return new Date(year, month - 1, day)
  }
  function triggerProducto(elem, checkbox){
    square = elem.find(".square")
    if (square.hasClass('selected_product')){
      square.css('background-color','#E8E8E8')
      square.find(".on").hide();
      square.find(".off").show();
      square.find(".square-txt").css('color','#29304E');
      square.removeClass('selected_product')
      checkbox.prop('checked',false)
    }
    else{
      square.addClass('selected_product')
      square.css('background-color','#135BAF')
      square.find(".on").show();
      square.find(".off").hide();
      square.find(".square-txt").css('color','#FFF');
      checkbox.prop('checked',true)
    }
  }
  
  function PopulateCallback(data, selector){
    $.each(data, function(i,obj){
      var option = $('<option />');
      option.attr('value', obj.ug_id).text(obj.name);
      selector.append(option);
    });
  }


});