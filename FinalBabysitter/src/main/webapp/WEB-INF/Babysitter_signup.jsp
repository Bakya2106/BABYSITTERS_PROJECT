<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Babysitters.com</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            
            h2{
                color: black;
                text-align: center;
                font-style: italic;
            }
            h1{
                font-family: fantasy;
                color: palevioletred;
                font-size: 40px;
            }
            input[type=text],input[type=number], select {
  width: 50%;              
  padding: 12px 20px;
  margin: 8px 0;
  margin-left: 320px;
  border: 1.5px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
                background-color: antiquewhite;
               
                
}

button {
  background-color: #4CAF50;
    color: white;
border: none;
border-radius: 12px;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  margin-left: 600px;
  cursor: pointer;
    
}
        </style>
        <body>
           <h1><a><img height="50px" width="120px"  src="<c:url value="/resources/images/logobabysitter.jpg"> </c:url>">
           </a>
        Babysitters.com</h1>
           
            <h2>Create a Babysitter account</h2>
            <form action="signup_babysitter" method="get" name="signup">
            <tr><td><input type="text" placeholder="Enter your First name" name="firstname" required></td></tr>
            <tr><td><input type="text" placeholder="Enter your Last name" name="lastname" required></td></tr>
            <tr><td><input type="number" placeholder="Enter experience" name="exp" min="0" required></td></tr>
            <tr><td><select name="location">
  					<option value="chennai">Chennai</option>
 					<option value="madurai">Madurai</option>
  					<option value="covai">Coimbatore</option>
  					<option value="thiruchi">Trichy</option></select></td></tr>
            <tr><td><input type="text" placeholder="Mobile number" name="mobilenumber" required></td></tr>
             <tr><td><input type="text" placeholder="Email" name="email" required></td></tr>
            <tr><td><input type="text" placeholder="Choose password" name="password" required></td></tr><br>
            
            <tr><td><button>Sign up</button></td></tr>
        
  </form>
        
        </body>