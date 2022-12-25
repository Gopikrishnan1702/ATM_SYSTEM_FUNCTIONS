<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Type</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Type</title>
</head>
<style>
    #content{
        position: absolute;top:200px;left:280px;
        font-size: 60px;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-weight: bolder;
        color: rgb(11, 224, 29);
        filter: drop-shadow(2px 2px 6px black);
    }
    #content3{
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
#current{
    position: absolute;top:250px;left:1230px;
    height: 70px;
    width: 120px;
    font-size: 20px;
    font-weight: bolder;
    filter: drop-shadow(2px 2px 6px black);
}
 #current:hover{
    background-color: black;
  color: white;
  
  }
   #saving:hover{
    background-color: black;
  color: white;
  
  }
#saving{
    position: absolute;top:400px;left:1220px;
    height: 70px;
    width: 130px;
    font-size: 20px;
    font-weight: bolder;
    filter: drop-shadow(2px 2px 6px black);
}
body{

background-image :url('atm background.jpg');
}

.main{
text-decoration:none;
}
    
</style>
<body>
   
        <div id="content">Select Account Type</div>
        <div id="content3">Welcome _____</div>
    <div id="date"></div>
   
    <button id="current" name="current" type="submit"><a class="main" href="MainFunction.jsp">Current Account</a></button>

    <button id="saving" name="saving" type="saving"><a class="main" href="MainFunction.jsp">Savings Account</a></button>
 
</body>

</html>