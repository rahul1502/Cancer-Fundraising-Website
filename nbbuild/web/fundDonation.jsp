<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Donation</title>
		<meta charset="utf-8">
		<link href="css/style.css" rel='stylesheet' type='text/css' />
                    <!-- BOOTSTRAP CORE STYLE CSS -->
                <link href="bootstrap.css" rel="stylesheet" />
                <!-- FONT AWESOME CSS -->
                <link href="font-awesome.min.css" rel="stylesheet" />
                    <!-- CUSTOM STYLE CSS -->
                <link href="style.css" rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->

		<style media="screen" type="text/css">
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0px;padding:0px;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}

.box{
        position:absolute;
	height:500;
        overflow: auto;
        background:#fff;
        top:100px;
        left:100px;
        right:100px; 
        border-radius:10px 
}
/*end reset*/
/****-----start-body----****/

body{
	background:#3b945f;
 	font-family: 'Open Sans', sans-serif;

}

	
div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}




/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 900px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
                
                
</style>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top move-me" id="menu" >
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
				  
                    <li ><a href="index.jsp">HOME</a></li>
                     
                    <li><a href="login.jsp">LOGIN</a></li>
		    <li><a href="register.jsp">CREATE FUNDRAISER</a></li>
					  
					 
        
		
				</ul>
            </div>
           
        </div>
    </div>
	 <!-----start-main---->
	 <div class="main">
             
             <div class="box"> 
                 </br></br>
                 <center><font size="6" >Thank You !</font></center>
                 </br></br>
                 <font size="5"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         On behalf of all the patients, we are appreciating your effort of donation.</p> 
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         Your precious donation goes to the following patients.</p>
                 </font>
                 </br></br></br></br>
                 
                 <%
                    int t;
                    int m = (Integer)request.getAttribute("n");
                    
                    String[] fname = (String[])request.getAttribute("fname");
                    String[] lname = (String[])request.getAttribute("lname");
                    String[] type = (String[])request.getAttribute("type");
                    int[] fundn = (int[])request.getAttribute("arryn");
                    double[] amount = (double[])request.getAttribute("amount");
                    int[] totalf = (int[])request.getAttribute("totalf");
                    String[] email = (String[])request.getAttribute("email");
                %>
               
                
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Name</th>
<th class="text-left">Cancer</th>
<th class="text-left">Fund Needed</th>
<th class="text-left">Total Fund Raised</th>
<th class="text-left">Fund you Donated</th>
<th class="text-left">Email</th>
</tr>
</thead>

<tbody class="ta ble-hover">
    <%
        for(t=0;t<m;t++){
            out.println("<tr>");
            out.println(" <td class='text-left'>" + fname[t] + " " + lname[t] 
                    + "</td> ");
            out.println(" <td class='text-left'>" + type[t] 
                    + "</td> ");
            out.println(" <td class='text-left'>" + fundn[t] 
                    + "</td> ");
            out.println(" <td class='text-left'>" + totalf[t] 
                    + "</td> ");
            out.println(" <td class='text-left'>" + (int)amount[t]
                    + "</td> ");
            out.println(" <td class='text-left'>" + email[t]
                    + "</td> ");
            out.println("</tr>");
        }
    %>
<tr>
<td class="text-left"></td>
<td class="text-left"></td>
<td class="text-left"></td>
<td class="text-left"></td>

</tr>
</tbody>
</table>
   
                 
                
            </div>
        </div>
        		 <!-----//end-main---->
		 		
</body>
</html>