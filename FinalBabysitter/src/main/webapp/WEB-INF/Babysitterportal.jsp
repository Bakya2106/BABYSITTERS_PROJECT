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
                color: green;
                font-style: oblique;
                font-family: serif;
                font-weight: 400%;
                font-size: 40px;
                margin-left: 150px;
            }

#section1 {
  height: 500px;
    text-align:center;
  align-content:center;
   background-image :url("<c:url value='/resources/images/bsportal.jpg'/>");
    background-repeat: no-repeat;
    
  background-size: cover;
            }

#section2 {
  height: 600px;
  background-color: aliceblue;
                              
}
            h4{
                font-size: 40px;
                font-family: cursive;
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
    
<br><br>
    <br>
    <br>
<div class="main" id="section1">
  <br><br>
   <span style='font-size:100px; margin-left: 150px; color: green'>&#10003;</span>
  <b><h2>Thank you!<br> Your Registration/Login is successful. </h2></b>
        
     
  
  
 <!--   
 <a href="#section2">Click Me to Smooth Scroll to Section 2 Below</a>
    -->
  
    
</div>
<br>
<div class="main" id="section2">
   
    <h4 style="text-align: center;">&#10077; It takes a Big Heart to help shape Little minds  &#10078;</h4>
    <p style="text-align: center;font-family: sans-serif; font-size: 20px">Being a good babysitter takes a lot of work, care, and ingenuity. Babysitting can be a challenging job at times, but its also rewarding. Remember, the childrens safety is the number one priority, so always be prepared for emergencies that may come up. But dont forget to have some fun with the kids.
    </p>
  <!--<h2>Section 2</h2>
  <a href="#section1">Click Me to Smooth Scroll to Section 1 Above</a>-->

    

    <br>
    <h3 style="font-family: cursive;margin-left: 500px">Here are few tips be a good babysitter &#10140;
           <br>
  <p>&#9989;   Understand your comfort level</p>
  <p>&#9989;  Keep an open line of communication</p>
  <p>&#9989;  Be prepared for everything</p>
        <p>&#9989;   Be well-informed & Be organized</p>
        <p>&#9989;   Be active and have fun</p>
        <p>&#9989;   Reinforce rules and limits</p>
        <p>&#9989;   Be gentle and caring </p>
        
</h3>
   

</div>
<p style="text-align: center; font-style: italic ">&#169; By using this site you agree to the Terms of Use. See our Privacy Policy. Make updates to Do Not Sell My Personal Information.

If you are having difficulty using assistive technology with this website, please contact Customer Success by phone at &#9990; 888.748.2489 or by email at &#9993; support@findababysitter.com.</p>
</body>
</html>
