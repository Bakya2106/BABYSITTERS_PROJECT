<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <h1>Payment Gateway</h1>

            <h2>Accepted Cards</h2>
            <div class="icon-container" style="text-align: center;">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i></div>
    
    <style>
        h1{
            text-align: center; color: black; font-family: sans-serif;
        }
        h2{
            text-align: center;
        }div{
            margin-bottom: -200px;
        }
        table {
  font-family: arial, sans-serif;
  
margin-left: 430px;
}

td{
  
  text-align: left;
  padding: 8px;
}
 button{
                background-color: lightgray;
                border: none;
                border-radius: 8px;
                color: black;
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
    

           <form>
        <table>
        <tr><td><label for="bid">Enter the ID of the Babysitter you have selected</label></td><td><input type="text" id="bid" name="id" placeholder="2044" required></td></tr><br><br>
            <tr><td><label for="cname">Name on Card</label></td><td><input type="text" id="cname" name="cardname" placeholder="John More Doe" required></td></tr><br><br>
            <tr><td><label for="ccnum">Credit card number</label></td><td><input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required></td></tr><br><br>
            <tr> <td><label for="expmonth">Exp Month</label></td><td><input type="text" id="expmonth" name="expmonth" placeholder="September" required></td></tr><br><br>
            <tr> <td><label for="expyear">Exp Year</label></td><td><input type="text" id="expyear" name="expyear" placeholder="2018"></td></tr><br><br>
            <tr><td><label for="cvv">CVV</label></td><td><input type="text" id="cvv" name="cvv" placeholder="352" required></td></tr><br><br>
             
          </form>  
        </table>
              <br>
             <center> <form action="thank" method="get"><button><b>PAY NOW</b></button></form></center>

        
        
        
        
      
    </body>
</html>