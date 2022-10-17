<%@page import="com.bae.dao.Babysitterdao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bae.model.Babysitters"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="javax.transaction.Transaction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! int id;String f_name;String l_name;int rating; String location;String email;String mob;  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Babysitters.com</title>
<style type="text/css">.navbar a {
  float: left;
  display: block;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
                text-align: center;
                font-family: fantasy;
                color: palevioletred;
                font-size: 40px;}
                h1{
                color: lightslategrey;
                font-style: oblique;
                font-weight: 400%;
                font-size: 30px;
                text-align:center;
            }
                 button{
                background-color: gray;
                border: none;
                border-radius: 12px;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }      
                </style>
</head>
<body>
<div class="navbar">
  <a><img height="50px" width="120px" src='<c:url value="/resources/images/logobabysitter.jpg"> </c:url>'></a>
        <a>Welcome to Babysitters.com</a>
        </div>
        <br>
        <br>
        <br>
        <br>
        <h1>The List of Babysitters available in your Location</h1>
       
        <center>

    <table width="500" border="1">
    <tr>
    <th>BABY SITTER ID</th>
    <th>FIRST NAME</th>
    <th>LAST NAME</th>
    <th>RATING</th>
    <th>LOCATION</th>
    <th>E MAIL</th>
    <th>MOBILE</th>
				
			</tr>
    		<%String loc=request.getParameter("location"); %>
    	<%
    	
   		Babysitterdao sitter = new Babysitterdao();
   	 	Session ses  = sitter.getSession();
   	 	Transaction transaction = null;
    		
   	 		Query query = ses.createQuery("from Babysitters where location =:loc");
   	 		query.setParameter("loc",loc);
			
			Iterator it=query.iterate(); 
			
			while(it.hasNext())  
			{ 
			Babysitters un=(Babysitters)it.next();
			id=un.getBabysitter_id();
			f_name=un.getFirst_name();
			l_name=un.getLast_name();
			rating=un.getRating();
			location=un.getLocation(); 
			email=un.getEmail_id();
			mob=un.getMobile_number(); 
			%>                    
			<tr>
			<td><%=id%></td>   
			<td><%=f_name%></td> 
			<td><%=l_name%></td>  
			 
			<td><%=rating%></td>  
			<td><%=location%></td> 
			<td><%=email%></td>
			<td><%=mob%></td>
			</tr>  
			<% 
			}  
			//ses.close();  
			%>  
</table>
<br><br>
<form action="payment" method="get"><button><b>Proceed to Payment</b></button></form>
</center>

</body>
</html>