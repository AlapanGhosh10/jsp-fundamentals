<html>
	<%
		String favLang = request.getParameter("favoriteLanguage");
		
		Cookie cookie = new Cookie("MyApp.favoriteLanguage", favLang);
		cookie.setMaxAge(60*60*24*365);
		
		response.addCookie(cookie);
	%>
	<body>
		New Favorite Language is set
		<a href="cookies-homepage.jsp">Go back to Home Page</a>
	</body>
</html>