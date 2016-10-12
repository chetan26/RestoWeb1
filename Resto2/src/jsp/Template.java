package jsp;

public class Template {
	public static final String[] SHOWN = new String[] { "Resto", "About" };

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

	public static final String USER_ID = "user_id";

}
