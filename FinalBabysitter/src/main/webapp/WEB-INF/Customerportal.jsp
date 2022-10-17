<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                color: lightslategrey;
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
                                
}
            h4{
                font-size: 40px;
            }  
            p1{
font-size: 20px;
                text-align: justify
                
}
select{
background-color: white; font-size: 20px; font-family: cursive;
}

            
  button{
                background-color: green;
                border: none;
                border-radius: 12px;
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
  
    <form style="margin-left: 300px" action="return_output" method="get">
  <b><h2>Search for a Babysitter </h2></b>
  <select name="location">
  					<option value="chennai">Chennai</option>
 					<option value="madurai">Madurai</option>
  					<option value="covai">Coimbatore</option>
  					<option value="thiruchi">Trichy</option></select></td></tr>
        <!--<input type="search" placeholder="Enter your Location" style="background-color: white; font-size: 20px; font-family: cursive;">
        -->
        <br><br>
        <button>Submit</button>
    </form>
   
 <!--   
 <a href="#section2">Click Me to Smooth Scroll to Section 2 Below</a>
    -->
  
    
</div>
   
<br>
<div class="main" id="section2">
  
  
    <h4 style="text-align: center">Looking for a babysitter &#10067;</h4>
    <p1 style="text-align: center">Hiring a babysitter may be a perfect option if you are looking for someone to care for your kids while you focus on other things in life. Finding a great babysitter that you can trust shouldn't be so complicated. We're here to help you find the right type of care for your children. Compare babysitter profiles, read reviews from other parents, and search by experience or pay rates to find your perfect match.</p1>
  <!--<h2>Section 2</h2>
  <a href="#section1">Click Me to Smooth Scroll to Section 1 Above</a>-->

    <br>
    <br>
    <br>
    <h3 style="font-family: cursive;margin-left: 500px">The Easiest way to find a babysitter &#10140;
       
  <p>&#9989;  Match by your Location</p>
  <p>&#9989;  Read ratings based on Experience</p>
  <p>&#9989;  Book your Babysitter directly</p>
</h3>
   

</div>
<p style="text-align: center; font-style: italic ">&#169; By using this site you agree to the Terms of Use. See our Privacy Policy. Make updates to Do Not Sell My Personal Information.

If you are having difficulty using assistive technology with this website, please contact Customer Success by phone at &#9990; 888.748.2489 or by email at &#9993; support@findababysitter.com.</p>
</body>
</html>
