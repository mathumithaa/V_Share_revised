<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<script src= 
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
<style>
* {
  box-sizing: border-box;
}
.back{
            border-radius: 10px;
            margin-left: 900px;
            margin-top: 40px;
            font-size: 20px;
            width: 100px;
            height: 30px;
            font-family: Times New Roman;
            transition: all 0.5s;
            cursor: pointer;
        }
        
.back:hover
        {
         color: #FFFFFF;
        background: #900;
        }
body
{
background-image:url('https://rockfortmarkets.com/wp-content/uploads/2019/06/banner_callout-tws-960x470.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:100% 100%;
  padding-left: 200px;
            padding-top: 100px;
}
.mytab{
background-color: white;
}
tr:nth-child(even) {background-color: #f2f2f2;}
.myinput {
  	   width: 200px;
       height: 30px;
       border-radius: 5px;
       border-bottom: 15px;
}

#myTable {
  border-collapse: collapse;
  
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

th, td {
  padding: 15px;
  text-align: left;
}
.div{
padding-top: 5px;
}
table {
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}
</style>

<title>Vshare Watch List</title>
</head>
<body>
<input class="myinput" type="text" id="search" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/vshare";

Connection connection = null;

   Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

   connection = DriverManager.getConnection(connectionURL, "root", "mathudb");

statement = connection.createStatement();

String QueryString = "SELECT * from vshare.watch_list";
rs = statement.executeQuery(QueryString);
%><div class ="div">
<TABLE class="mytab" id="tables">
 <thead>
<tr class="header">
    <th style="width:20%;">Stocks</th>
    <th style="width:20%;">Live Price Change</th>
    <th style= "width:20%;">Change Price</th>
    <th style="width:20%;">Today's High</th>
  </tr>
   </thead>
  <tbody id="row">
<%
while (rs.next()) {
%>
<TR onclick="javascript:showRow(this);">
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
</TR>
<% }
 %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</tbody>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
 <form action="/welcome">
        <input class ="back" type="submit"  value="Back"><br></form>
</div>
<p id="demo"> </p>

<script> 
            $(document).ready(function() { 
                $("#search").on("keyup", function() { 
                    var value = $(this).val().toLowerCase(); 
                    $("#row tr").filter(function() { 
                        $(this).toggle($(this).text() 
                        .toLowerCase().indexOf(value) > -1) 
                    }); 
                }); 
            }); 
           
        </script>

<script>
document.querySelector('.results').innerHTML = f1;</script>
</body>
</html>