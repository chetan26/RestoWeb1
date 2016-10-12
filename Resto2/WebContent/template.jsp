<%!public static final String[] SHOWN = new String[] { "Resto", "About" };

	public static final String[] LINK = new String[] { "index.jsp", "about.jsp" };

	public static String getNavigationBar() {
		String s = "";
		for(int i=0;i<SHOWN.length;i++)
		{
			s+="<a href=\"" +LINK[i] + "\">"+ SHOWN[i] + "</a> ";
		}
		
		return s;
	}

	public static String getAccountLinks(Object user_id) {		
		if(user_id==null)
		{
			return  "<a href=\"#\">Login </a> / <a href=\"#\">Signup </a>";
		}else
		{
			return  "<a href=\"#\">Account</a> /<a href=\" #\">Logout</a>";			
		}		
	}

	public static String getFooter() {
		return "&copy; 2016 RestoAds.com";
	}

	public static final String USER_ID = "user_id";%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Template</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.12.4.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link type="text/css" rel="stylesheet" href="css/template.css"/>

</head>
<body>
	<div id="container" clas="ui-widget ui-widget-content ui-corner-all">
		<div id="header" class="ui-widget-header ui-corner-all">
			<div id="navigation_bar"><%=getNavigationBar()%></div>
			<div id="account"><%=getAccountLinks(session.getAttribute(USER_ID))%></div>
		</div>
		<div id="content" class="">Content</div>
	</div>
	<div id="footer"><%=getFooter()%></div>
</body>
</html>