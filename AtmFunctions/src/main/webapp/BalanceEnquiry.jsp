<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balance Enquiry</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance Enquiry</title>
</head>
<style>
  body{

background-image :url('atm background.jpg');
}
    
    #content{
        position: absolute;top:200px;left:280px;
        font-size: 60px;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-weight: bolder;
        color: rgb(13, 255, 174);
        filter: drop-shadow(2px 2px 6px black);
    }
    #content1{
        position: absolute;top:300px;left:480px;
        font-size: 60px;
        font-family:Verdana, Geneva, Tahoma, sans-serif;
        font-weight: bolder;
        color: rgb(13, 255, 174);
        border-style: groove;
        border-color: black;
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
#exit{
    position: absolute;top:250px;left:1270px;
    height: 50px;
    width: 80px;
    font-size: 20px;
    font-weight: bolder;
    filter: drop-shadow(2px 2px 6px black);
}
#mainmenu{
    position: absolute;top:350px;left:1220px;
    height: 50px;
    width: 130px;
    font-size: 20px;
    font-weight: bolder;
    filter: drop-shadow(2px 2px 6px black);
}
#table{
		position: absolute;top:300px;left:650px;
		font-size: 60px;
		font-weight: bolder;
		letter-spacing:5px;
}
.forlink{
text-decoration:none;
}
 #exit:hover{
    background-color: black;
  color: white;
  
  }
  #mainmenu:hover{
    background-color: black;
  color: white;
  
  }
</style>
<body>
    
    <div id="content">Your Available Balance is</div>
    <div id="content1">Rps._____/-</div>
    
    <form method="post">
      
    <% 
    PrintWriter pw =response.getWriter();
	
	try{
	 	   Class.forName("com.mysql.cj.jdbc.Driver");
	 	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atmfunction","root","password");
	 	   
	 	   Statement st=con.createStatement();
	 	   String sql="select * from amounttable";
	 	   ResultSet rs=st.executeQuery(sql);
	 	   pw.println("<table id=table border='1'>");
	 	   if(rs.next()){
	 		   
	 	   		pw.println("<tr><td>"+rs.getInt(1)+"</tr></td>");
	 	
	 	   }
	 	  pw.println("</table>");
 	
	 	   con.close();
	 }
	 catch(Exception e){
	 	   out.println(e);
	 }
    %>
  
    </form>
    <div id="content3">Welcome _____</div>
    <div id="date"></div>
    <button id="exit"><a class="forlink" href="ExitPage.jsp">EXIT</a></button>
    <button id="mainmenu"><a class="forlink" href="MainFunction.jsp">MAIN MENU</a></button>

    




    <script>
        var date=new Date();
    document.getElementById("date").innerHTML=date;
    
    </script>
</body>
</html>