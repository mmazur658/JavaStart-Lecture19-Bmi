$(document).ready(function(){
	$('#registerForm').submit(function(event){
		
		// prevent default action and get url
		event.preventDefault();
	    var $form = $(this),
    	url = $form.attr( 'action' );
	    
	    // validate form
	    var nickName = $("#nickReg").val();
	    var password = $("#passReg").val();
	    
	    $.trim(nickName);
	    $.trim(password);
	    
	    if(nickName.length < 3 || nickName == null ){
	    	showToastrAlert('error','Nieprawidłowe dane','Login musi mieć conajmniej 3 znaki');
	   
	    } else if(password.length < 6 || password == null ) {
	    	showToastrAlert('error','Nieprawidłowe dane','Hasło za krótkie');
	   
	    } else {
	    	$.get(url, {nick: nickName}, function(data, textStatus, xhr) {
    		
	    		if(data != "OK"){
	    			showToastrAlert('error','Login niedostępny','Podany login jest już zajęty, spróbuj inny');
	    		
	    		} else {
	    			$.post(url, {nick: nickName, pass: password}, function(data){
	    				
	    				if(data != "OK")
	    					showToastrAlert('error','Bład tworzenia nowego konta','Serwer chory, spróbuj innym razem.');
	    				else {
	    					showToastrAlert('success','Sukces!','Konto zostało utworzone');
	    					$("#nickReg").val("");
	    					$("#passReg").val("");
	    				}	    					
	    				   				
	    			});
	    		}		   		
			});
	    }
	    
		
	});	
});
