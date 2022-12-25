

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PinChangeServlet1")
public class PinChangeServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PinChangeServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter pw=response.getWriter();
		 
	       String newpin=request.getParameter("newpin");
	       int i=0;
	       try{
	    	   Class.forName("com.mysql.cj.jdbc.Driver");
	    	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atmfunction","root","password");
	    	   
	    	   Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	    	   String sql="select * from atmpin1";
	    	   
	    	   ResultSet rs=st.executeQuery(sql);
	    	   if(rs.next()){
	    		   
	    		   int a=rs.getInt("pin_no1");
		 		   int b=Integer.parseInt(newpin);
		 		   rs.updateInt("pin_no1", b);
		 		   rs.updateRow();
		 		   response.sendRedirect("TransactionSuccess.jsp");
	    	   }
	    	  
	       }
	       
	       catch(Exception e){
	    	   pw.println(e);
	    	  
	       }
	       
	    	   if(i>0)
	    		   {
	    		   pw.println("<html><head></head><body onload=\"alert('New Pin changed Successfully')\"></body></html>");
	    		
	    	 	   }
	    	 	   else{
	    	 		pw.print("Data not inserted");
	    	 			
	    	 		  
	    	 	   }

	}

}
