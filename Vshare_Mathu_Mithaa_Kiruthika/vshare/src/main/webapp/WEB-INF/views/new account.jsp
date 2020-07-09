<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Vshare Account creation</title>
</head>
<style>
body
{
background-image:url('https://rockfortmarkets.com/wp-content/uploads/2019/06/banner_callout-tws-960x470.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:100% 100%;
}
table,td
{
border-collapse:collapse;
padding-top: 10px;
padding-left: 10px;
}
.submit {
  border-radius: 4px;
  background-color: #dcd9cd;
  border: none;
  color: black;
  text-align: center;
  font-size: 15px;
  padding: 6px 10px;
  width: 80px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
#passcheck
{
  font-size: 16px; 
  padding-left:5px;
}
.submit:hover {
  box-shadow: 0 10px 15px 0 rgba(255,0,0,0.22),0 20px 50px 0 rgba(255,0,0,0.19);
}
.highlight-error {
  border-color: red;
}
</style>
<script type="text/javascript">
function val()
{
	
	var x=document.myform.email.value;  
	  var atposition=x.indexOf("@");  
	  var dotposition=x.lastIndexOf(".");  

	  if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	  alert("Please enter a valid e-mail address");  
	  return false;  
	  }   
	  
	  
	}
 function validateaadhar()
{
	 var lengthOfAadhaar = document.getElementById("no").value;   
	 
     
	    var checkDigits = /^\d+$/.test(lengthOfAadhaar);

	    var zero  =  /.!=000000000000/.test(lengthOfAadhaar); 
	    var one   =  /.!=111111111111/.test(lengthOfAadhaar);
	    var two   =  /.!=222222222222/.test(lengthOfAadhaar);
	    var three =  /.!=333333333333/.test(lengthOfAadhaar);
	    var four =   /.!=444444444444/.test(lengthOfAadhaar);
	    var five =   /.!=555555555555/.test(lengthOfAadhaar);
	    var six =    /.!=666666666666/.test(lengthOfAadhaar);
	    var seven =  /.!=777777777777/.test(lengthOfAadhaar);
	    var eight =  /.!=888888888888/.test(lengthOfAadhaar);
	    var nine =   /.!=999999999999/.test(lengthOfAadhaar);


	    if(lengthOfAadhaar.length!=12 || checkDigits == false || zero == false || one ==false || two ==false ||
	        three == false || four == false || five == false || six == false || seven == false || eight == false 
	        || nine == false)
	    {               

	        alert("Invalid aadhar number");    

	        return false;

	    }
	
	
	}


function validatepass() {  
	var msg;
	var count=document.myform.password.value;
	if(count.length>6){  
	msg="  Strong";  
	}  
	else{  
	msg="  Weak";  
	}  
	document.getElementById('passcheck').innerText=msg;  
	 }
  
</script>
<body style="color:white">
<br><br><br><br><br><br>
<center>
<form name="myform" method="post" action="check">

       
           <h3><b> ACCOUNT CREATION </b></h3>
                  A new user!? Create an account to access Vshare
                  <br><br>
                    <table>
                    <tr><td>
                     UserName: </td>
                     <td> <input type="text" name="username" size="15" placeholder=" Enter name" required > </td> </tr>
                     <tr><td> Password: </td>
                     <td> <input type="password" name="password" size="15" placeholder=" Enter password" required onkeyup="return  validatepass()" > 
                     <span id="passcheck"> </span>
                     </td> </tr>
                     <tr> <td> 
                     Email: </td>
                     <td> <input type="email" name="email" placeholder=" Enter mail id" required > </td>
                     </tr>
                     <tr> <td> 
                     Aadhar number: </td>
                     <td> <input type="text" id="no" name="aadhar" placeholder=" Enter aadhar number" required oninvalid="alert('enter correct aadhar number');" pattern="^[2-9]{1}[0-9]{3}\s[0-9]{4}\s[0-9]{4}$"> </td>
                     </tr>
                     </table>
       
                    <br>
                    <input type="submit" value="Submit" class="submit" onsubmit="return val()" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" class="submit"/>
            </center>
        </form>
</body>
</html>