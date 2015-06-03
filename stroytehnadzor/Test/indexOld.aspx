<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" %>

<!DOCTYPE html>
<html>
<head>
    <title>Georgia Aquarium | Group Tickets</title>
    <meta name="description" content="Georgia Aquarium is the worldÕs largest, and AtlantaÕs premier event venue in the heart of downtown." />
    <meta name="keywords" content="Atlanta event venue, Atlanta event facilities, atlanta attractions, georgia aquarium" />
    <link href="new/images/animated_favicon1.gif" type="image/gif" rel="icon" />
    <link href="new/styles/default.css" type="text/css" rel="stylesheet" />
    <link href="new/styles/master.css" type="text/css" rel="stylesheet" />
    <!--[if lte IE 6]>
	<link rel="stylesheet" href="/new/styles/ie6.css" type="text/css" media="all" />
	<![endif]-->

    <script type="text/javascript" src="/scripts/functions.js"></script>

    <script type="text/javascrip" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

    <script type="text/javascript" src="/new/scripts/gai.jquery.js"></script>

    <script type="text/javascript" src="jscript/swfobject.js"></script>

    <script type="text/javascript"> 
		<!-- Set Flash Object -->
		var flashvars = {clickTag: "http://www.georgiaaquarium.org/gpac", target: "_self"};
		var params = {menu: "false", scale: "noscale", bgcolor: "#FFFFFF" , allowscriptaccess: "always"};
		var attributes = {id: "content", name: "flash_content"};
		var randate = (new Date()).getTime();
		var nameSWF = "penguin.swf"+ "?rand=" + randate
		swfobject.embedSWF(nameSWF , "content", "955", "514", "8.0.0", "jscript/expressInstall.swf", flashvars, params, attributes);
		<!-- End Set Flash Object -->
		
		
		<!-- Set Flash Object -->
		var flashvars = {f_vars:""};
		var params = {menu: "false", scale: "noscale", bgcolor: "#FFFFFF" , allowscriptaccess: "always"};
		var attributes = {id: "webcams_nav", name: "flash_content2"};
		var randate = (new Date()).getTime();
		var nameSWF = "webcams_bar.swf"+ "?rand=" + randate
		swfobject.embedSWF(nameSWF , "webcams_nav", "607", "250", "6.0.0", "jscript/expressInstall.swf", flashvars, params, attributes);
		<!-- End Set Flash Object -->
    </script>

    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
    <form runat="server">
    <div id="wrapper">
        <div id="left-nav">
        </div>
        <div id="top-nav">
        </div>
        <div id="site-content-wrapper" class="newpage">
            <div id="content-wrapper">
                <div id="homepage-content">
                    <div style="width: 955px; height: 514px;">
                        <div id="content">
                            <a href="http://www.adobe.com/go/getflashplayer">
                                <img border="0" src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                                    alt="Get Adobe Flash Player" width="112" height="33" /></a>
                        </div>
                    </div>
                </div>
                <div id="headliner">
                </div>
                <div id="page_middle_box">
                    <p>
                        Georgia-Pacific works to create products that improve people’s lives, to use resources
                        wisely, actively engage in our communities, and contribute to society by being a
                        prosperous business. We call it being sustainable. Our decision to become a sponsor
                        of the Georgia Aquarium was an easy one, both of our organizations are...fhfdfpfjsdfsdjfsjfksdfiojdsiofjdsfdsfjkdlfjkdjfkldsjf.
                        To learn more about Georgia-Pacific’s corporate sustainability efforts click here.
                    </p>
                </div>
                <div id="headliner">
                </div>
                <div id="page_slider_box" style="width: 955px; height: 250px; margin-top: 160px;">
                    <div id="slider-flash">
                        <div id="webcams_nav">
                            <a href="http://www.adobe.com/go/getflashplayer">
                                <img border="0" src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                                    alt="Get Adobe Flash Player" width="112" height="33" /></a>
                        </div>
                    </div>
                </div>
                <div id="right_box_wrap">
                    <div id="right_box_content">
                        The beluga whales are now joined by harbor seals in their exhibit, greeting guests
                        as they enter. The African penguin exhibit is brand new, housing twice as many birds
                        in an interactive and engaging exhibit. Their new accommodations feature more than
                        25 nesting areas integrated into naturalistic rockwork and come equipped with a
                        state-of-the-art lighting system that mimics the natural light cycle from twilight
                        to moonlight. Acrylic tunnels and pop-up windows, built into the exhibit, allow
                        guests to come face-to-face with their feathered favorites. For a sneak peek, you
                        can even check out our Penguins and Belugas before you come.
                    </div>
                </div>
            </div>
            <!--/content-wrapper-->
            <div class="bye-clear">
            </div>
            <div id="right-rail">
            </div>
            <div id="footer">
            </div>
        </div>
    </div>
    </form>
</body>
</html>
