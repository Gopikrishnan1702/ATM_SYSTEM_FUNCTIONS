

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TransferFund2Servlet")
public class TransferFund2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TransferFund2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter out=response.getWriter();
	    String amount=request.getParameter("input");
	    try{
	 	   Class.forName("com.mysql.cj.jdbc.Driver");
	 	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atmfunction","root","password");
	 	   
	 	   Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	 	   
	 	   String sql="select * from amounttable where remainamount >='"+amount+"'";
	 	   ResultSet rs=st.executeQuery(sql);
	 	   if(rs.next()){
	 		   
	 		   int a=rs.getInt("remainamount");
	 		   int b=a-Integer.parseInt(amount);
	 		   rs.updateInt("remainamount", b);
	 		   rs.updateRow();
	 		   response.sendRedirect("TransactionSuccess.jsp");
	 		  
	 	   }
	 	   else{
	 		  out.println("<html><head></head><body onload=\"alert('Invalid Amount')\"></body></html>");
	 		  
	 	   }
	 	   con.close();
	 }
	 catch(Exception e){
	 		out.println(e);
	 }
	  

		
	}

}
