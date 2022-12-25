<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exit Page</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exit Page</title>
    <style>
 body{

background-image :url('atm background.jpg');
}
    
    #content{
        position: absolute;top:150px;left:350px;
        font-size: 80px;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-weight: bolder;
        color: rgb(142, 255, 13);
        filter: drop-shadow(2px 2px 6px black);
    }
    #content1{
        position: absolute;top:500px;left:450px;
        font-size: 60px;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-weight: bolder;
        color: rgb(142, 255, 13);
        filter: drop-shadow(2px 2px 6px black);
        }
        #date{
    position: absolute;top:50px;left:900px;
    font-weight: bolder;
    color: antiquewhite;
}
    </style>
</head>
<body>
   
    <div id="content">Thank You...!</div>
    <div id="content1">Visit Again</div>
    <div id="date"></div>

  
    <script>
        var date=new Date();
    document.getElementById("date").innerHTML=date;
    
    </script>
</body>
</html>