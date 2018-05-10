

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;


public class fundDistribution extends HttpServlet {

        /*cancer                               survival (%)
        
        1.breast cancer                         78
        2.lung cancer                           5
        3.bowel cancer                          57
        4.prostate cancer                       84
        5.children's cancers                    82
        6.kidney cancer                         50
        7.leukaemia                             46
        8.skin cancer                           90
        9.stomach cancer                        15
        10.testicular cancer                    98
        11.brain tumers                         14
        12.ovarian cancer                       35
        13.teenager's cancer                    84
        14.Oesophageal cancer                   12
        
        stages(impoertance (out 5) )
        1   - 3
        2   - 5
        3   - 4
        4   - 2
        
        algorithm
        
        1 - find importance ratio for all patients where sr = stage(imp)*100/survival
        2 - fund
        3 - sum up all sr(call it SR)
        4 - for individual patient money = sr(p) * total fund / SR sum
        */


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
	}

    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
                 PrintWriter out = response.getWriter(); 
            //     out.println("<html>"
              //           + "<head>"
                //         + "</head>"
                  //       + "<body bgcolor='#4bb777'>");
                       
            try{
                
           
    	    Class.forName("com.mysql.jdbc.Driver");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:27017/patient_db", "rahul", "root");
    	    Statement stmt = con.createStatement();
                            
                      
    	    ResultSet rs = stmt.executeQuery("select count(*) as cnt from patient");
    	    //select cancer_type,cancer_stage from patient
            while(rs.next()){
                int cnt = rs.getInt("cnt");
            }
            
            
            ArrayList<String> email = new ArrayList<String>();
            ArrayList<String> fname = new ArrayList<String>();
            ArrayList<String> lname = new ArrayList<String>();
            ArrayList<String> plist = new ArrayList<String>();
            ArrayList<Integer> stage = new ArrayList<Integer>();
            ArrayList<Integer> fundd = new ArrayList<Integer>();
            ArrayList<Integer> fuamt = new ArrayList<Integer>();
            rs = stmt.executeQuery("select first_name,last_name,email,cancer_type,cancer_stage,fund_amount,Money_needed from patient");
            String ctype,pemail,fsname,lsname;
            String stg,famt,fndd;
            int conint,fmint,fnint;
            int n=0;
            while(rs.next()){
                
                fsname =rs.getString("first_name");
                lsname =rs.getString("last_name");
                pemail = rs.getString("email");
                ctype = rs.getString("cancer_type");
                stg = rs.getString("cancer_stage");
                famt = rs.getString("fund_amount");
                fndd = rs.getString("Money_needed");
                conint = Integer.parseInt(stg);
                fmint = Integer.parseInt(famt);
                fnint = Integer.parseInt(fndd);
                fname.add(fsname);
                lname.add(lsname);
                email.add(pemail);
                stage.add(conint);
                fuamt.add(fmint);
                fundd.add(fnint);
                plist.add(ctype);
                n++;
            }
            
            int i;
            double[] survival = new double[n];
            double[] importance = new double[n];
            for(i=0;i<n;i++){
                if(plist.get(i)== "breast cancer"){
                    survival[i]=0.78;
                }
                else if(plist.get(i)== "lung cancer"){
                     survival[i]=0.05;
                }
                else if(plist.get(i)== "bowel cancer"){
                     survival[i]=0.57;
                }
                else if(plist.get(i)== "prostate cancer"){
                     survival[i]=0.84;
                }    
                else if(plist.get(i)== "children's cancers"){
                     survival[i]=0.82;
                }
                else if(plist.get(i)== "kidney cancer"){
                     survival[i]=0.50;
                }
                else if(plist.get(i)== "leukaemia"){
                     survival[i]=0.46;
                }
                else if(plist.get(i)== "skin cancer"){
                     survival[i]=0.90;
                }
                else if(plist.get(i)== "stomach cancer"){
                     survival[i]=0.15;
                }
                else if(plist.get(i)== "testicular cancer"){
                     survival[i]=0.98;
                }
                else if(plist.get(i)== "brain tumers"){
                     survival[i]=0.14;
                }
                else if(plist.get(i)== "ovarian cancer"){
                     survival[i]=0.35;
                }
                else if(plist.get(i)== "teenager's cancer"){
                     survival[i]=0.84;
                }
                else if(plist.get(i)== "Oesophageal cancer"){
                     survival[i]=0.12;
                }
                else{
                    survival[i]=1;
                }
            }
            for(i=0;i<n;i++){
                if(stage.get(i) == 1){
                    importance[i]=3;
                }
                else if(stage.get(i) == 1){
                    importance[i]=5;
                }
                else if(stage.get(i) == 1){
                    importance[i]=4;
                }
                else if(stage.get(i) == 1){
                    importance[i]=2;
                }
                else{
                    importance[i]=1;
                }
                
            }
                
            
            double[] importanceRatio = new double[n];
            for(i=0;i<n;i++){
                importanceRatio[i] = importance[i] / survival[i];
            }
            
            //step 2
            String fund = request.getParameter("amount");
            
            double pfund = Double.parseDouble(fund);
            
            //step 3
            double sum=0;
            for(i=0;i<n;i++){
                sum+=importanceRatio[i];
            }
            out.println(sum);
            //step 4 ****************************************************************************************************
            
            RequestDispatcher rd = request.getRequestDispatcher("fundDonation.jsp");
     
            String arrye[] = new String[n];
            String arryf[] = new String[n];
            String arryl[] = new String[n];
            String arryt[] = new String[n];
            int arryfm[] = new int[n];
            int arryn[] = new int[n];
            for(i=0;i<n;i++){
                arrye[i] = email.get(i);
                arryf[i] = fname.get(i);
                arryl[i] = lname.get(i);
                arryt[i] = plist.get(i);
                arryn[i] = fundd.get(i);
                arryfm[i] = fuamt.get(i);
            }
           
            request.setAttribute("n", n);
            double[] pdonation = new double[n];
            for(i=0;i<n;i++){
                pdonation[i] = (importanceRatio[i] * pfund) / sum ;
                
            }
            
            request.setAttribute("fname", arryf);
            request.setAttribute("lname", arryl);
            request.setAttribute("type", arryt);
            request.setAttribute("arryn",arryn);
            request.setAttribute("totalf",arryfm);
            request.setAttribute("amount", pdonation);
            request.setAttribute("email", arrye);
            
            // store in datatabase
            int j ;
             Statement st = con.createStatement();
            for(i=0;i<n;i++){
                st.executeUpdate("UPDATE patient_db.patient SET fund_amount=fund_amount+"+pdonation[i]+" where email='"+email.get(i)+"';");
            }
                
           rd.forward(request, response); 
            
            
            
            con.close();
                   
            }
            catch(Exception e){
                out.println(e);
                }
            finally{out.close();
                }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
