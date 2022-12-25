<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer Funds2</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Funds</title>
</head>
<style>
body{

background-image :url('atm background.jpg');
}
    
.content1{
    position: absolute;top:150px;left:100px;
    font-size: 60px;
    background-color: rgb(247, 232, 93);
    border-radius: 10px;
}
#inputbox1 input{
    position: absolute;top:280px;left: 110px;
    height: 50px;
    width: 300px;
    border-style: groove;
    font-size: 50px;
}

.buttons{
    position: absolute;left: 680px;top:170px;
      height: 350px;
      width: 250px;
      border-radius: 8px;
      background-color: darkgray;
      filter: drop-shadow(2px 2px 6px black);
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
}

button{
  font-size: 22px;
  transition: all 0.3s ease-in-out;
  font-weight: bold;
} 
#okbtn{
    position: absolute;top:250px;left:1250px;
    height: 50px;
    width: 80px;
    transition: all 0.3s ease-in-out;
    cursor:pointer;
}
#clbtn{
    position: absolute;top:350px;left:1200px;
    height: 50px;
    width: 130px;
   
}
#date{
    position: absolute;top:20px;left:900px;
    font-weight: bolder;
    color: antiquewhite;
}
.exit{
text-decoration:none;
}
 #okbtn:hover{
    background-color: black;
  color: white;
  
  }
  #clbtn:hover{
    background-color: black;
  color: white;
  
  }
</style>
<body>

<div class="content1">Enter Amount</div>
<form action="TransferFund2Servlet" method="post">
<div id="inputbox1"><input type="text" id="input" name="input"></div>
<button id="okbtn" type="submit">OK</button>

 </form>
		 <button id="clbtn"><a class="exit" href="ExitPage.jsp">EXIT</a></button>
<div id="date"></div>
<div class="buttons">
    <button id="btn" onclick="fun(1);">1</button>
    <button id="btn" onclick="fun(2);">2</button>
    <button id="btn" onclick="fun(3);">3</button>
    <button id="btn" onclick="fun(4);">4</button>
    <button id="btn" onclick="fun(5);">5</button>
    <button id="btn" onclick="fun(6);">6</button>
    <button id="btn" onclick="fun(7);">7</button>
    <button id="btn" onclick="fun(8);">8</button>
    <button id="btn" onclick="fun(9);">9</button>
    <button id="btn" onclick="del();">DEL</button>
    <button id="btn" onclick="fun(0);">0</button>
    <button id="btn" onclick="clr();">CLEAR</button>
   
</div>

<script>
    
    var date=new Date();
    document.getElementById("date").innerHTML=date;

        function fun(x){  
   var a=document.getElementById("input").value;
   var b=new String(a);
   var c=b.concat(x);
   document.getElementById("input").value=c;
   }
   
   function clr(){
       document.getElementById("input").value="";
   }
   
   function del(){
       var a=document.getElementById("input").value;
       var b=new String(a);
       var c=b.slice(0,-1);
       document.getElementById("input").value=c;
   }
   
 </script>
</body>
</html>