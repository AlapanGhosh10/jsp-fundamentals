<html>
	<body>
		The verifies user is ${param.firstName } ${param.lastName} from ${param.country}
		<br /><br/>
		Favorite Programming Languages are:
		<br/>
		<ul>
			<%
				String langs[] = request.getParameterValues("programmingLanguage");
				for(String lang : langs)
					out.println("<li>" + lang + "</li>");
			%>
		</ul>
	</body>
</html>