<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>

	<form action = "ArithmaticServlet" method = "post">
		<table>
			<tr>
				<td>Enter a number: <input type = "text" name = "num1" placeholder = "0" /></td>
			</tr>
			
			<tr>
				<td>Enter another number: <input type = "text" name = "num2" placeholder = "0" /></td>
			</tr>
			
		
		</table>
			<input type = "submit" value = "Add" />
		
	</form>
</body>
</html>