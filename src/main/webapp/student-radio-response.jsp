<html>
	<body>
		The verified user is ${param.firstName} ${param.lastName} from ${param.country}
		<br />
		Favorite Programming Language is <%= request.getParameter("programmingLanguage")%>
	</body>
</html>