<html>
<head><title>Confirmation page </title></head>

 <%
 		// read from data
 		String favTeam = request.getParameter("favoriteTeam");
 
 	// create the cookie
 	Cookie theCookie  = new Cookie("myProg.favoriteTeam", favTeam);
 	
 	
 	// set the life span .... total number of  seconds
 	theCookie.setMaxAge(60*60*24*365);   // <--for  one  year
 	
 	//send  cookie to  browser
 	response.addCookie(theCookie);
 	
 
 %>
 
 <body>
 
 Thanks!  We  set your  favorite Team  to: ${param.favoriteTeam}
 
 <br/> <br/>
 
 <a href="homepage_for_cookies.jsp"> Return to home page.</a>
	
</body>

</html>