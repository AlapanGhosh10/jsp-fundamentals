<%@ page import = "java.util.*" %>
<html>
	<body>
		<h1 align="center">To-Do List App</h1>
		<br/>
		<!-- 1. Create HTML form -->
		<form action = "todo-demo.jsp">
			Add New Task:
			<input type="text" name="task"/>
			<input type="submit" value="Submit" />
		</form>
		<hr />
		<!-- 2. Create the list -->
		<!-- 2.1. Take the list from the session object -->
		<!-- 2.2. If session object is empty then initialize the list -->	
		<!-- 2.3. If new item is submitted add to list -->
		<%
			@SuppressWarnings("unchecked")
			List<String> todoList = (List<String>)session.getAttribute("myTodoList");
			if(todoList == null) {
				todoList = new ArrayList<>();
				session.setAttribute("myTodoList", todoList);
			}
			String newTask = request.getParameter("task");
			if(newTask != null) {
				todoList.add(newTask);
			}
		%>
		<!-- 3. Display the list -->
		<ol>
			<%
				for(String t : todoList)
					out.println("<li>" + t + "</li>");
			%>
		</ol>
	</body>
</html>