<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Babysitters.com</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            html,body { 
                width: 100%; height: 100%; 
                align-content: center;
                text-align: center;
                background-image :url("<c:url value='/resources/images/babysitter5.jpg'/>");
                
                
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;}
            h1{
                font-size: 300%;
                font-weight: bolder;
                 color: white;
                 font-style: oblique
            }
            h2{
               color: ghostwhite;
                font-family: cursive;
            }
            h1,h2{
            text-align: inherit;}
            button{
                background-color: palevioletred;
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
        <h1><b>Better Babysitting starts now!</b></h1>
        <br>
        <h2>Welcome to high-quality, easy-to-coordinate, community-based childcare. Welcome to babysitting cooperatives.</h2>
        <h2>Unlock a network of trusted sitters and nannies.!</h2>
        <br>
     <form action="signin" method="get"><button><b>Sign In</b></button></form>
<form action="signup" method="get"><button><b>Sign Up</b></button></form>

    </body>
</html>
