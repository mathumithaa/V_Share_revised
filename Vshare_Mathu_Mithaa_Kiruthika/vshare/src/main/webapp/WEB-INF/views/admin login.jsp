<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vshare admin login</title>
</head>

<style>
body{
background-image: url("https://www.fundoodata.com/learning-center/wp-content/uploads/background-companies-4.jpg");
background-repeat: no-repeat;
background-attachment: fixed;
background-size:100% 100%;
}
</style>

<script>
function functionval()
{
var n=document.getElementById("name").value;
var p=document.getElementById("pswd").value;
if(n!="vshare admin" || p!="virtusa")
{
alert("Incorrect username or password. Please try again");
return false;
}
return true;
}
</script>

<body>
<br> <br><br><br><br><br>

<h2><center>ADMIN LOGIN</center></h2>

<center><form action="admin page">
Username:<input type="text" id="name" name="name">
<br>
<br>
Password:<input type="password" id="pswd" name="pass">
<br>
<br>
<input type="checkbox" value="lsRememberMe" 

id="rememberMe">Remember me
<br><br>

<button type="submit" onclick="functionval()">Login</button>
</form>
</center>

</body>
</html>