import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
               
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
  
        try
        {
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:27017/patient_db", "rahul", "root");
            Statement st = con.createStatement();
            String query = "select * from patient_db.patient where email='"+email+"' and password='"+ pass +"'";
            ResultSet rs = st.executeQuery(query);
            String fname,lname,e,cno,age,add,type,stg,g,amt,amtn;
            if(rs.next()==false)
            {
                  out.println("<html>"
                          + "<script>"
                          + "window.alert('Invalid login credentials. Please try again.');"
                          + "window.location.href = 'login.jsp'"
                          + "</script>"
                          + "</html>");          
                  //RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                  //rd.forward(request, response);
                   
             }
            else if(rs.getString("email").equals(email) && rs.getString("password").equals(pass) ){
                    
                     HttpSession session = request.getSession(true);
                     
                     
                    
                    out.println("Welcome " + rs.getString("first_name")+ " " + rs.getString("last_name"));
                    RequestDispatcher rd = request.getRequestDispatcher("patientDetails.jsp");
                    
                    ResultSet irs = st.executeQuery("select * from patient where email='"+email+"'");
                         while(irs.next())
                         {
                            fname = irs.getString("first_name");
                            lname = irs.getString("last_name");
                            e = irs.getString("email");
                            cno = irs.getString("contact_number");
                             g = irs.getString("gender");
                            age = irs.getString("age");
                           
                            add = irs.getString("address");
                            type = irs.getString("cancer_type");
                            stg = irs.getString("cancer_stage");
                            amt = irs.getString("fund_amount");
                            amtn = irs.getString("Money_needed");
                            
                            request.setAttribute("fname", fname);
                            request.setAttribute("lname", lname);
                            request.setAttribute("e", e);
                            request.setAttribute("cno", cno);
                            request.setAttribute("g",g);
                            request.setAttribute("age", age);
                            request.setAttribute("add", add);
                            request.setAttribute("type", type);
                            request.setAttribute("stg", stg);
                            request.setAttribute("fnd", amt);
                            request.setAttribute("amtn",amtn);
                            
                            session.setAttribute("email",email);
                            session.setAttribute("fname",fname);
                            
                            rd.forward(request, response);
                    }
                }
                
               
                
            
            
            con.close();
        }
        catch(Exception e){
        	
        	System.out.println(e);
        }
        finally
        {
        	out.close();
        }
        
	}

}
