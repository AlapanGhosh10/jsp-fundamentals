<html>
	<%
		String favLang = "Java";
		Cookie cookies[] = request.getCookies();
		
		if(cookies != null) {
			for(Cookie cook : cookies) {
				if(("MyApp.favoriteLanguage").equals(cook.getName())) {
					favLang = cook.getValue();
					break;
				}
			}
		}
	%>
	<body>
		<h1>Training Portal</h1>
		<h2>Books for <%= favLang %></h2>
		<ul>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
		</ul>
		<h2>Articles for <%= favLang %></h2>
		<ul>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
		</ul>
		<h2>Jobs for <%= favLang %></h2>
		<ul>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
			<ol>fer ergre erg</ol>
		</ul>
		<br />
		<a href="cookies-personalize-form.html">Personalize this Page</a>
	</body>
</html>