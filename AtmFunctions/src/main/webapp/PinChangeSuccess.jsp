<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PinChangeSuccess</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pin Change1</title>
</head>
<style>
body{

background-image :url('atm background.jpg');
}
    
  #content{
      position: absolute;top:150px;left:200px;
      font-size: 55px;
      font-family:Verdana, Geneva, Tahoma, sans-serif;
      font-weight: bolder;
      color: rgb(13, 255, 174);
      filter: drop-shadow(2px 2px 6px black);
  }
  #content1{
      position: absolute;top:500px;left:420px;
      font-size: 60px;
      font-family:Verdana, Geneva, Tahoma, sans-serif;
      font-weight: bolder;
      color: rgb(13, 255, 174);
      filter: drop-shadow(2px 2px 6px black);
      }
      #date{
  position: absolute;top:20px;left:900px;
  font-weight: bolder;
  color: antiquewhite;
}

</style>
<body>
   
        <div id="content">Pin Changed Successfully.</div>
    <div id="content1">Thank You....!</div>
    <div id="date"></div>
       
        <script>
            var date=new Date();
    document.getElementById("date").innerHTML=date;
        </script>
    
    
</body>

</html>