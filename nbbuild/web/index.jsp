<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Saveme</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
<link href="font-awesome.min.css" rel="stylesheet" />
       <!-- CUSTOM STYLE CSS -->
    <link href="style.css" rel="stylesheet" />  
     <!--GREEN STYLE VERSION IS BY DEFAULT, USE ANY ONE STYLESHEET FROM TWO STYLESHEETS (green or red) HERE-->
       
  <!-- Google	Fonts -->
	<link href='http://font.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />

          

</head>
<body >
    
 <div class="navbar navbar-inverse navbar-fixed-top move-me" id="menu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				 <ul class="nav navbar-nav navbar-right">
				<li ><a href="#home"><font size="4">SAVEME.COM</font></a></li>
				</ul>
               
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
				  
                    <li ><a href="#home">HOME</a></li>
                     <li><a href="#features">AWARENESS</a></li>
                   <li><a href="#money_funded">MONEY FUNDED</a></li>
                    <li><a href="#developers">DEVELOPERS</a></li>
                   <li><a href='login.jsp'>LOGIN</a></li>  
		  <li><a href="register.jsp">CREATE FUNDRAISER</a></li>
                     
                  <%
                         if(session != null){
                             if(session.getAttribute("fname")!=null){
                                    String name = (String)session.getAttribute("fname");
                                    out.println("<li>" + name.toUpperCase() +"</li>");
                                    
                             }
                            // else{
                              //   out.println("<li><a href='login.jsp'>LOGIN</a></li>");
                             //}
                           
                         }
                 %>
                 
					 
        
		
				</ul>
            </div>
           
        </div>
    </div>
      <!--NAVBAR SECTION END-->
       <section class="header-sec" id="home" >
           <div class="overlay">
 <div class="container">
           <div class="row text-center" >
           
               <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               
                <h2 data-scroll-reveal="enter from the bottom after 0.1s">
                    <strong>
                   We help you fight against cancer
                        </strong>
                        </h2>
                                   
                   <p data-scroll-reveal="enter from the bottom after 0.8s">
							Do you know that by providing proper treatment, 42% cases of cancer were prevented alone in UK.
							It can be healed, all you need is moral support and funding for proper treatment and we provide you both.
                       </p>
                   <button class="btn" onClick="window.location='donor.jsp';"><font color="black">Donate</font></button>
                     
       
					
                  <br />
                   
     
              
              
            </div>
                
               </div>
                </div>
           </div>
           
       </section>
       <!--HEADER SECTION END-->
   <section class="features" id="features">
 <div class="container">
           <div class="row text-center" >
           
               <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               
                <h3 data-scroll-reveal="enter from the bottom after 0.1s">
                    <strong>
                   Awareness
                        </strong>
                        </h3>
                
            </div>
                
               </div>
    <p>Cancer is preventable. 80 - 90% Cancer are due to our habits and activities. Cancer involves almost every parts of the body.Cancer is the cause of 12% of all deaths.
70 - 80 % Cancer cases are detected at late stage when treatment is not possible .Early detection of cancer helps in complete cure of some cancer .Prevention by taking some  precautionary measures is the best way to prevent cancer .
Cigarette smoking is a major cause of cancer.Alcohol consumption leads to cancer of oral cavity, pharynx, larynx, esophagus, stomach, liver.People who drink  and also smoke further increase the risk of developing cancer.
High intake of fat (animal) increases the risk of developing cancer (breast and colon).Air pollution - may also cause cancer (asbestos).X-RAYS may stimulate the development of cancer.
Repeated x-rays should be avoided.X-RAY done on pregnant women may increase the frequency of childhood cancer.Certain viruses may cause cancer.These viruses are  hepatitis -b and c, epstein barr virus, human papilloma virus, cmv. etc
Few cancer like retinoblastoma (eye), colon cancer arise from genetically caused polyps and even breast cancer and esophageal cancer sometimes happen due to heredity.
Disease detected at early stage produces better results on treatment  and even cure .Advanced disease shows poor result on treatment.





	
</p>
           
       </section>
    <!--FEATURES SECTION END-->
     <section class="testi-sec" >
           <div class="overlay">
 <div class="container">
           <div class="row text-center" >
           
               <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               </br></br></br>
                                   
                   <h4 data-scroll-reveal="enter from the bottom after 0.8s">
               <i class="fa fa-quote-left "></i>Cancer affects all of us, whether you are a daughter, mother, sister, friend, coworker, doctor, or patient.
                         <i class="fa fa-quote-right "></i>
                       <br />
                       <span class="pull-right"><strong> "Jennifer Aniston"</strong></span>
                       </h4>
                     
                  
     
              
              
            </div>
                
               </div>
                </div>
           </div>
           
       </section>
       <!--TESTIMONIAL SECTION END-->
    <section class="developers" id="developers" >
 <div class="container">
           <div class="row text-center" >
           
               <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               
                <h3 data-scroll-reveal="enter from the bottom after 0.1s">
                    <strong>
                  Our Developers 
                        </strong>
                        </h3>
                                   
                              
     
              
              
            </div>
                
               </div>
     
                <div class="row " >
           
              <div class="col-lg-4 col-md-4 col-sm-4" data-scroll-reveal="enter from the left after 0.2s" >
                        
               <img src="img/1.png" class="img-circle img-responsive" alt="" height="24" width="205" />
                   <h4 ><strong> Saqib memon </strong></h4>
                  
                  <p>
                      
                  </p>
                
                    </div>
               
               <div class="col-lg-4 col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s" >
                        <img src="img/2.JPG" class="img-circle img-responsive" alt="" height="240" width="260"  />
                   <h4 ><strong>Vishal Pandita </strong></h4>
                   
                  <p>
                       
                  </p>
                  
                    </div>
                     <div class="col-lg-4 col-md-4 col-sm-4" data-scroll-reveal="enter from the right after 0.2s" >
                        <img src="img/3.jpg" class="img-circle img-responsive" alt=""  height="200" width="205"  />
                          <h4 ><strong> Rahul Vala </strong></h4>
                         
                  <p>
                       
                  </p>
                      
                    </div>
            </div>
               </div>
           
       </section>
    <!--DEVELOPERS SECTION END-->
    <section class="money_funded "  id="money_funded">
                  

        <form name="moneyraised" method="get" action="amountFetch" >
                <div class="col-lg-6  col-md-6 col-sm-6 multi-price" data-scroll-reveal="enter from the right after 0.2s">
				
                    <h1>TOTAL MONEY RAISED  <%=request.getAttribute("AMT") %></h1>
                    
                   <input type="submit" name="submit" />
                   
                    
                     
                     
					
            </div>        
          </form>
       </section>
    <!--PRICING SECTION END-->
    <section class="contact" id="contact" >
            <div class="container">
                 <div class="row text-center " >
           
               <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
               
                <h3 data-scroll-reveal="enter from the bottom after 0.1s">
                    <strong>
                   Stay Connected
                        </strong>
                        </h3>
                
            </div>
                
               </div>
        
             <div class="row">
                 <div class="col-lg-6 col-md-6 col-sm-6" data-scroll-reveal="enter from the right after 0.2s">
                    <strong>ADDRESS :</strong>
                        <p>
                         DDU BOYS HOSTEL
                        <br />
                         NADIAD-387001
                            <br />
                            email: Saveme@gmail.com

                        </p>
                     
                   
               
                        </div>
                <div class="col-lg-6 col-md-6 col-sm-6" data-scroll-reveal="enter from the left after 0.4s">
                    <strong>Small message</strong>
                     <p>
                      We all together can save some lives by donating a few bucks.
                   
                         
                      </div>

            </div>
            
            </div>
          </section>
     <!--CONTACT SECTION END-->
    <div class="myfooter" >
                     <a href="" style="color:#fff;" target="_blank" >SAVEME.COM</a>

    </div>
    <!--FOOTER SECTION END-->
    <!--  Jquery Core Script -->
    <script src="jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="bootstrap.js"></script>
     <!--  Scrolling Reveal Script -->
    <script src="scrollReveal.js"></script>
    <!--  Scroll Scripts --> 
    <script src="jquery.easing.min.js"></script>
     <!--  Style Switcher Scripts -->
    <script src="styleSwitcher.js"></script>
        <!--  Custom Scripts -->    
    <script src="custom.js"></script>
   
</body>
</html>
