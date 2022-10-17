<%@page import="com.bae.dao.Customerdao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bae.model.Customer"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="javax.transaction.Transaction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! int id;  %>
<!DOCTYPE html>
<html>
    <head>
        <title>Babysitters.com</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
           
html {
  scroll-behavior: smooth;
}
            .navbar a {
  float: left;
  display: block;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
                text-align: center;
                font-family: fantasy;
                color: palevioletred;
                font-size: 40px;
}
            .navbar a.right {
  float: right;
                font-size: 20px;
                font-style: normal;
                color: cadetblue;
}

            h2{
                color: green;
                font-style: oblique;
                font-weight: 400%;
                font-size: 40px;
                
            }

#section1 {
  height: 400px;
    text-align:left;
  
   background-image :url("<c:url value='/resources/images/babysitter6.jpg'/>");
    background-repeat: no-repeat;
    
  background-size: cover;
            }

#section2 {
  height: 600px;
  background-color: seashell;
    text-align: center;                            
}
            h4{
                font-size: 40px;
            }  
            p1{
font-size: 20px;
                text-align: justify
                
}
   h6{
   font-size: 20px;
   color: blue;
   }
    button{
                background-color: green;
                border: none;
                border-radius: 8px;
                color: white;
                padding: 7px 15px;
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
  
  <a href="https://mail.google.com" class="right">Contact us <br>
        &#9993; support@findababysitter.com</a>
        
</div>
    
<br>
    <br>
    <br>
<div class="main" id="section1">
  

  <b><h2>Your Registration is successful </h2></b>
 
    <table>
    <th style="color: blue">Note Your ID for future Logins</th>
   
				
		
    		<%String name=request.getParameter("email"); %>
    	<%
    	Customerdao dao = new Customerdao();
   	 	Session ses  = dao.getSession();
   	 	Transaction transaction = null;
    		
   	 		Query query = ses.createQuery("from Customer where email_id =:name");
   	 		query.setParameter("name",name);
			
			Iterator it=query.iterate(); 
			
			while(it.hasNext())  
			{ 
			Customer un=(Customer)it.next();
			id=un.getCustomer_id();
			
			%>                    
			
			<td><%=id%></td>   
			
			
			<% 
			}  
			//ses.close();
			%>  
  </table>
  <br>
   <form action="redirect_to_signin" method="get"><button>SIGN IN TO GET THE DETAILS OF THE BABYSITTER</button></form>
   
 <!--   
 <a href="#section2">Click Me to Smooth Scroll to Section 2 Below</a>
    -->
  
    
</div>
   
<br>
<div class="main" id="section2">
  
  
    <h4>Looking for a babysitter &#10067;</h4>
    <p1>Hiring a babysitter may be a perfect option if you are looking for someone to care for your kids while you focus on other things in life. Finding a great babysitter that you can trust shouldn't be so complicated. We're here to help you find the right type of care for your children. Compare babysitter profiles, read reviews from other parents, and search by experience or pay rates to find your perfect match.</p1>
  <!--<h2>Section 2</h2>
  <a href="#section1">Click Me to Smooth Scroll to Section 1 Above</a>-->

    <br>
    <br>
    <br>
    <h3 style="font-family: cursive">The Easiest way to find a babysitter &#10140;
       
  <p>&#9989;  Match by skills and schedule</p>
  <p>&#9989;  Read references & reviews</p>
  <p>&#9989;  Book an interview directly</p>
</h3>
   

</div>
<p style="text-align: center; font-style: italic ">&#169; By using this site you agree to the Terms of Use. See our Privacy Policy. Make updates to Do Not Sell My Personal Information.

If you are having difficulty using assistive technology with this website, please contact Customer Success by phone at &#9990; 888.748.2489 or by email at &#9993; support@findababysitter.com.</p>
</body>
</html>


