

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;


public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public register() {       
    	super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         PrintWriter out = response.getWriter();
    	try{
    	    Class.forName("com.mysql.jdbc.Driver");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:27017/patient_db", "rahul", "root");
    	    Statement stmt = con.createStatement();
     
    
            response.setContentType("text/html;charset=UTF-8");
    	       
    	        
                
    	        String first_name=request.getParameter("first_name");
    	        String last_name=request.getParameter("last_name");
    	        String email=request.getParameter("email");
    	        String contact_number=request.getParameter("contact_number");	//double
    	        double cn = Double.parseDouble(contact_number);
    	        String password=request.getParameter("password");	
    	        //String gender=request.getParameter("gender");
    	        String age=request.getParameter("age");		//int
    	        int a = Integer.parseInt(age);
    	        String address=request.getParameter("address");
    	        String cancer_type=request.getParameter("cancer_type");
    	        String stage=request.getParameter("stage"); //int
    	        int st = Integer.parseInt(stage);
                String money=request.getParameter("Money_needed");
                int mny = Integer.parseInt(money);
    	       
                    
                      
    	              ResultSet rs = stmt.executeQuery("select email from patient where email = '"+email+"'");
    	              
                      if(rs.next())
    	              {
                            out.println("<html>"
                          + "<script>"
                          + "window.alert('Sorry ! user " + email + " already exists');"
                          + "window.location.href = 'register.jsp'"
                          + "</script>"
                          + "</html>");  
    	            	//  out.println("Sorry ! user " + email + " already exists.");
    	              }
    	              else
    	              {
    	            	  stmt.execute("INSERT INTO patient_db.patient values( '"+first_name+"','"+last_name+"','"+email+"','"+cn+"','"+password+"','male','"+a+"','"+address+"','"+cancer_type+"','"+st+"',0,'"+mny+"')");
    	              	  
                          request.setAttribute("notify", "You are now registered. Please login into your account.");
                          
                          RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
                          requestDispatcher.forward(request, response);
    	              }
    	              con.close();
        }
        catch(Exception e){
    	        out.println(e);
    	}
    	        finally
    	        {
    	        	out.close();
    	        }
	}

}
