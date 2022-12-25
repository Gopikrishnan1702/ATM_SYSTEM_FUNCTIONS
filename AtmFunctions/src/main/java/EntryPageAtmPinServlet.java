
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


@WebServlet("/EntryPageAtmPinServlet")
public class EntryPageAtmPinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EntryPageAtmPinServlet() {
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
        String pin=request.getParameter("input");
       try{
    	   Class.forName("com.mysql.cj.jdbc.Driver");
    	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atmfunction","root","password");
    	   Statement st=con.createStatement();
    	   String sql="select * from atmpin1 where pin_no1='"+pin+"'";
    	   ResultSet rs=st.executeQuery(sql);
    	   if(rs.next()){
    	   		response.sendRedirect("SavingOrCurrent.jsp");
    	   	
    	   }
    	   else{
    		   
    		   out.println("<html><head></head><body onload=\"alert('Invalid Pin')\"></body></html>");
    	   }
    	   con.close();
       }
       catch(Exception e){
    	   out.println(e);
       }
        
		
	}

}
