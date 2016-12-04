 $(document).ready(function(){
    $('.datepicker').datepicker();
  });

var initialize;
initialize = function(){
$('input[id=calendar_funcao]').change(function() { 
var dia =  $('#calendar_funcao').val();


//var calendar = "/calendars.json";

var jqxhr = $.getJSON( "/calendars.json", function() {
  
})
  .done(function(data) {
	 var options = [];
	 var obj = { };
	 var reservas = reservas1;
	var numbers = [];
	$.each( data, function( i, fonte) {
	if (fonte.funcao === dia){
   	options.push(fonte.nome);	  
	 }
	    
	});
	for (var i=0;i<numbers1.length;i++){
	  numbers.push(numbers1[i]);
	};
	
	for (var i = 0, j = options.length; i < j; i++) {
   		obj[options[i]] = (obj[options[i]] || 0) + 1;
	if (obj[options[i]] >= reservas){
		numbers = jQuery.grep(numbers, function(value) {
  				return value != options[i];
				});
	}else{
	};
	
	}

	
		
	if (dia.length > 0){
	var option = '';
	for (var i=0;i<numbers.length;i++){
   	option += '<option value="'+ numbers[i] + '">' + numbers[i] + '</option>';
	};
	
	
	$('#calendar_nome').append(option);
	};
  })
  .fail(function() {
    console.log( "error" );
  });

});

// final da função		
};



$(document).on('turbolinks:load', initialize);
