<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body>
	
<form name='f' action="<c:url value='/login' />"
		method='POST'>

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value="user">
				</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' value="123"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input id="rememeberMe" type="checkbox" name="_spring_security_remember_me" />
					Keep me sign in
				</td>
			</tr>
			<tr>
				<td colspan='2'>
					<input name="submit" type="submit" value="submit" />
					<input name="reset" type="reset" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>