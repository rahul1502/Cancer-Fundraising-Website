
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class amountFetch extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Class.forName("com.mysql.jdbc.Driver");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:27017/patient_db", "rahul", "root");
    	    Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery("select count(*) as cnt from patient");
            
            while(rs.next()){
                int cnt = rs.getInt("cnt");
            }
             
            
            ArrayList<Integer> f_amt = new ArrayList<Integer>();
        
            rs = stmt.executeQuery("select fund_amount from patient");
            
            String s_amt;
            int i_amt,n=0;
         
            
            while(rs.next()){
                s_amt = rs.getString("fund_amount");
                i_amt = Integer.parseInt(s_amt);
                f_amt.add(i_amt);
                n++;
            }
            int sum=0;
            for(int i=0;i<n;i++){
                sum+=f_amt.get(i);
            }
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            request.setAttribute("AMT", sum);
            rd.forward(request, response);
        }
        catch(Exception e){}
        
    }

  

}
