<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="StroyTehNadzor.Pages.Test" %>
<html>
<head>
    <title>Test preview</title>
    <script type="text/javascript">
        function handleFiles(files){
				document.getElementById('text').innerHTML='';
				document.getElementById('image').innerHTML='';
				for(var i=0;i<files.length;i++){
				    var f = files[i];
				    var reader = new FileReader();
				    if(f.type.indexOf('text')==0){
						reader.onload = function(evt) { 
							var ta = document.createElement('textarea');
							ta.cols = 100;
							ta.rows = 4;
							ta.style.display='block';
							ta.value = evt.target.result;
							document.getElementById('text').appendChild(ta);
						};
						reader.readAsText(f, 'UTF-8');
						}else if(f.type.indexOf('image')==0){
							var img = document.createElement('img');
							img.src = reader.readAsArrayBuffer(f);
							document.getElementById('image').appendChild(img);
					}
				}
			}
    </script>
    <script type="text/javascript">
        // Check for the various File API support.
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            // Great success! All the File APIs are supported.
        } else {
            alert('The File APIs are not fully supported in this browser.');
        }</script>
</head>
<body>
    Type path:<input type="text" id="path" />
    <input type="file" id="input" multiple="true" onchange="handleFiles(this.files)" />
    <div id="text"></div>
    <div id="image"></div>
</body>
</html>
