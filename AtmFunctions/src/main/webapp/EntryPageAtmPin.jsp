
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM_ENTRY_PIN</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta /name="viewport" content="width=device-width, initial-scale=1.0">
    <style>

   .content1{
    position: absolute;top:50px;left:150px;
    font-size: 60px;
    background-color: rgb(247, 232, 93);
    border-radius: 10px;
}

   .content h1{
      position: absolute;left:830px;bottom: 550px;
      font-size:80px;
      font-style: italic;
      color: cyan;
      
      border-radius: 10px;
      opacity: 0.8;
      filter: drop-shadow(2px 2px 6px black);
   }
  .inputbox input{ 
      position: absolute;top: 160px;left: 210px;
      height: 60px;
      width: 280px;
      font-size:100px;
      border-style: solid;
      border-color: black;
      filter: drop-shadow(2px 2px 6px black);
      
     
  }
  .forbuttons{
      position:absolute; top:250px;left: 215px;       
      width: 280px;
      height: 390px;
      background-color: rgb(61, 60, 60);
      filter: drop-shadow(2px 2px 6px black);
  }

  .ok{
      position: absolute;top:270px;left:1200px;
      font-size: 50px;      
      font-family: 'Courier New', Courier, monospace;
      border-color: black;
      border-style:double;
      background-color:khaki;
      cursor:pointer;
  }
  .ok:hover{
  background-color: black;
  color: white;
  
  }
  .wrong:hover{
    background-color: black;
  color: white;
  
  }
  .wrong{
      position: absolute;top:370px;left:1250px;
      font-size: 50px;      
      font-family: 'Courier New', Courier, monospace;
      border-color: black;
      border-style:double;
      background-color: rgb(230, 166, 166);
     
  }
.input{
      position: absolute;left: 240px;top:280px;
      height: 330px;
      width: 220px;
     
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
body{

background-image :url('atm background.jpg');
}
    .exit{
text-decoration:none;
}
    </style>
</head>
<body >
		
        <div class="content"> <h1><u>Welcome to ATM </u></h1></div>
       <div class="content1">Enter Pin Number</div>
     
     	     <form action="EntryPageAtmPinServlet" method="post">
     	      <div class="inputbox"> <input type="password" id="input" name="input" required/></div>
        <button class="ok" type="submit" ><b>ACCEPT</b> </button>
           
        </form>
     
        <div class="forbuttons"></div>
        <div class="input">
    
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
        
        
   
        <div class="wrong"><a class="exit" href="ExitPage.jsp"><b>EXIT</b></a></div>
      
 
    <script type="text/javascript">
    function fun(x){
        var a=document.getElementById("input").value;
        var b= new String(a);
        var c= b.concat(x);
        document.getElementById("input").value=c;
    }
    function clr(){
        var a=document.getElementById("input").value="";
    }
    function del(){
        var a=new String(document.getElementById("input").value); 
        var b=a.slice(0,-1);
        document.getElementById("input").value=b;
    }
   
 
    	
    </script>
</body>
</html>