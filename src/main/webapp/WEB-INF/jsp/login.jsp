<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
    <form action="login" method="post">
        <table>
            <tbody>
                <tr>
                    <th>Name:</th>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <th>Submit:</th>
                    <td><input type="submit" value="submit" /></td>
                </tr>
            </tbody>
        </table>
    </form>
</body>