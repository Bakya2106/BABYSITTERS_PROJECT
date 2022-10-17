<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Babysitters.com</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <h1 style="text-align: center; color: palevioletred; font-family: cursive"><img height="60px" width="120px" src='<c:url value="/resources/images/logobabysitter.jpg"> </c:url>'>Welcome to Babysitters.com</h1>
        <style>

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 10;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: lavender;
}

.right {
  right: 0;
  background-color: lightblue;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 350px;
  border-radius: 10%;
}
            button{background-color: palevioletred;
                color: whitesmoke;
border: none;
border-radius: 12px;
 
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

  <form action="signin_as_cus" method="get">

<div class="split left">
  <div class="centered">
    <img src='<c:url value="/resources/images/babysitterpara.jpg"> </c:url>'>
    <button>Signin as Parent/Customer</button>
  </div>
</div>
</form>
    <form action="signin_as_sitter" method="get">
<div class="split right">
  <div class="centered">
     <img src='<c:url value="/resources/images/babysitter.jpg" > </c:url>'>
    <button>Signin as babysitter</button>
  </div>
</div>
   </form>   
</body>
</html> 