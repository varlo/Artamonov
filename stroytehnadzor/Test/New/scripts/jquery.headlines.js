$(document).ready(function() {
		var currentTime = new Date();
		var timestamp = currentTime.getTime();
	$.getJSON('/new/gateways/headlines.aspx?ts=' + timestamp, function(data) {
	//$.getJSON('/new/scripts/headlines.js', function(data) {
		$('#headlines').empty();
		$.each(data, function(entryIndex, entry) {
			var html = '<li class="single-headline">';
			html += '<a href="' + entry['url'] + '">' + entry['content'] + '</a>';
			html += '</li>'
			$('#headlines').append(html);
		});
		
		$("#headlines").newsTicker();	
	});		
	
	
});