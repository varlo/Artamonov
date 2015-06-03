$(document).ready(function() {
	
	$('.options').hover(function() {
				$(this).addClass('selected');
			}, function() {
				$(this).removeClass('selected');
			});
	
		if (jQuery.browser.msie && jQuery.browser.version == "6.0") {
		
	} else {
		$("#our-journey a").append("<em></em>");

	   	$("#our-journey a").hover(function() {
	   		$(this).find("em").animate({opacity: "show", top: "-80"}, "slow");
	   		var text = $(this).attr("title");  // Grab the title attribute from the anchor tag and place it in a javascript variable arbitrarily named "text". "text" now holds the information
	   		$(this).find("em").text(text);  // place "text" inside <em>. 
	   	}, function() {
	   		$(this).find("em").animate({opacity: "hide", top: "0"}, "slow");
	   	});
	}
	
	//mega-dropdowns
	//when hovering over link
  	$('#main-nav ul li').hover(function() {
	var currentID = $(this).attr("id"); 
		$("#drop-"+currentID).css("display", "block");
        $(this).addClass('hover'); 
        return false;
     }, function(){
        $(this).removeClass('hover'); 
		var currentID = $(this).attr("id");
		$("#drop-"+currentID).css("display", "none");
     }); 
     
    //when hovering over the drop down
    $('.drop').hover(function() {
		var dropId = $(this).attr("id");
		var theId = dropId.substr(5);
		$(this).css("display", "block");
        $("#"+theId).addClass('hover'); 
        return false;
     }, function(){
		 var dropId = $(this).attr("id");
		 var theId = dropId.substr(5);
         $(this).css("display", "none");
         $("#"+theId).removeClass('hover'); 
     });
	
	
	//open & close program headers
	$('#more-info-btn').click(function(){		
		var theClass = $('#more-info').attr("class");
			
		if (theClass == "open") {	
									   
		$('#more-info').animate({
    			height: "0px",
				height:'toggle'
  			}, 1000, function(){
				$('#more-info').removeClass("open").addClass("closed");
				$('#more-info-btn span').html('(+) More');
  			});
		} else if (theClass == "closed") {	
		$('#more-info').animate({
    			height: "265px",
				height:'toggle'
  			}, 1000, function(){
				$('#more-info').removeClass("closed").addClass("open");
				$('#more-info-btn span').html('(-) Less');
  			});
		}
		
								   
	 });
	
	
	//tabs for events & programs
	$('#tabs ul li').click(function(){ //shows tabs
		var curtab = $(this).attr('class');
		$('#tabs-text div').css('display', 'none');
		$('#tabs-text .' + curtab).css('display', 'block');	
		
		$('#tabs ul li').removeClass('active');
		$(this).addClass('active');
				
			});
			
			

 	
	
});



  
     
    
    