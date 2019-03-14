$(document).ready(function(){
	$('#bmicalcform').submit(function(){
		
		// prevent default action and get url
		event.preventDefault();
	    var $form = $(this),
    	url = $form.attr( 'action' );
		
	 	// validate form
	 	var height = $('#bmiHeight').val();
	 	var weight = $('#bmiWeight').val();
	 	
	    $.trim(height);
	    $.trim(weight);
	    
	    if($.isNumeric(height) &&  $.isNumeric(weight)){
	    	if(height > 0 && height < 250 && weight > 0 && weight < 1000){
	    		$.post(url, {height: height, weight: weight}, function(data){
	    			$('#bmiPlaceholder').text(data);
	    		});	    		
	    		
	    	} else {
	    		showToastrAlert('error','Nieprawidłowe dane','Nie można obliczyć BMI na podstawie podanych danych');
	    	}  
	    } else {
	    	showToastrAlert('error','Nieprawidłowe dane','Nie można obliczyć BMI na podstawie podanych danych');
		}
		
		
	});	
});