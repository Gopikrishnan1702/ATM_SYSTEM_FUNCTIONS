<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainFunctionPage</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATM_INTERFACE2</title>
</head>
<style>

.buttons1{
    position: absolute;top:50px;
    filter: drop-shadow(2px 2px 6px black);
    
}
button{
    display: block;
    height: 70px;
    width: 100px;
    margin-top: 90px;
    margin-left: 10px;
    font-size: 20px;
}
.buttons2{
    position: absolute;top:50px;
    margin-left: 1230px;
    filter: drop-shadow(2px 2px 6px black);
}
#content{
    position: absolute;top:10px;left: 1000px;
    background-color: rgb(186, 235, 140);
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-size: 50px;
    border-radius: 10px;
    filter: drop-shadow(2px 2px 6px black);
    font-style: italic;
}
#date{
    position: absolute;top:75px;left:900px;
    font-weight: bolder;
    color: antiquewhite;
}
body{

background-image :url('atm background.jpg');
}
  
  .forlink{
 text-decoration:none;
 }  
  .buttons1 #button:hover{
    background-color: black;
  color: white;
  
  }
   .buttons2 #button:hover{
    background-color: black;
  color: white;
  
  }
</style>
<body>
   
        <div class="buttons1">
            <button id="button"><a class="forlink" href="TransferFund1.jsp">Transfer Funds</a></button>
            <button id="button"><a class="forlink" href="BalanceEnquiry.jsp">Balance Enquiry</a></button>
        
            <button id="button"><a class="forlink" href="ExitPage.jsp">Exit</a></button>
        </div>
        <div class="buttons2">
            
            <button id="button"><a class="forlink" href="Withdraw1.jsp">Withdraw</a></button>
            <button id="button"><a class="forlink" href="Deposit1.jsp">Cash Deposit</a></button>
            <button id="button"><a class="forlink" href="PinChange.jsp">Pin Change</a></button>
        </div>
        <div id="content">Welcome _____</div>
        <div id="date"></div>
   
<script>
    var date=new Date();
    document.getElementById("date").innerHTML=date;

</script>
</body>
</html>