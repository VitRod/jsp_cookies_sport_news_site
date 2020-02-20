<html>
<body>

<h3> Sport News Site</h3>

<!-- read the  favorite sport team  cookie -->

<%

	//the  default team ... if  there  are  no cookies
	String favTeam = "Barcelona";

	// get  the  cookies from the browser request
	Cookie [] theCookies =  request.getCookies();

	//find our favorite team cookie
	if(theCookies != null) {
		
		for( Cookie tempCookie : theCookies) {
			
			if("myProg.favoriteTeam".equals(tempCookie.getName())) {
				favTeam = tempCookie.getValue();
				break;
			}
		}
	}

%>

<!-- now  show  a  personalized page ... use the  "favTeam variable" -->

<!-- show  new matches for this team -->

<h4> New Matches for <%= favTeam %></h4>
<ul>
	<li>The day when the  Match begins</li>
	<li>Time when the  Match begins</li>
	<li>On which channel you can watch the match</li>
</ul>

<h4> Latest News Reports for <%= favTeam %></h4>
<ul>
	<li> Training  of the  team before match</li>
	<li>Mood of football players before the match</li>
	<li>What do the trainers say?</li>
</ul>

<h4> Highest salaries for <%= favTeam %></h4>
<ul>
	<li>Football players in Forbes</li>
	<li>Club's highest paid football player</li>
</ul>

<hr>
<a href= "form_for_cookies.html"> Press to personalize this site page</a>

</body>

</html>