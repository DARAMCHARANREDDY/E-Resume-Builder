<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
String fname=" ";
String lname=" ";
String mail=" ";
String linkedin=" ";
String role=" ";
String contact=" ";
String personalprofile=" ";
String skill1=" ";
String level1=" ";
String skill2=" ";
String level2=" ";
String skill3=" ";
String level3=" ";
String wp1=" ";
String exp1=" ";
String rolec1=" ";
String wp2=" ";
String exp2=" ";
String rolec2=" ";
String wp3=" ";
String exp3=" ";
String rolec3=" ";
String uni1=" ";
String qual1=" ";
String uni2=" ";
String qual2=" ";
String uni3=" ";
String qual3=" ";
 try{
	 Connection con = null;
	 Class.forName("com.mysql.jdbc.Driver");
	 System.out.println("loaded");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	 System.out.println("connection");
	 PreparedStatement stmt=con.prepareStatement("select * from resume2 where id=?");
	 stmt.setInt(1,id);
	 ResultSet rs=stmt.executeQuery();
	 if(rs.next())
	 {
	   fname=rs.getString(2);
	   lname=rs.getString(3);
	   mail=rs.getString(4);
	   linkedin=rs.getString(5);
	   role=rs.getString(6);
	   contact=rs.getString(7);
	   personalprofile=rs.getString(8);
	   wp1=rs.getString(9);
	   exp1=rs.getString(10);
	   rolec1=rs.getString(11);
	   wp2=rs.getString(12);
	   exp2=rs.getString(13);
	   rolec2=rs.getString(14);
	   wp3=rs.getString(15);
	   exp3=rs.getString(16);
	   rolec3=rs.getString(17);
	   skill1=rs.getString(18);
	   level1=rs.getString(19);
	   skill2=rs.getString(20);
	   level2=rs.getString(21);
	   skill3=rs.getString(22);
	   level3=rs.getString(23);
	   uni1=rs.getString(24);
	   qual1=rs.getString(25);
	   uni2=rs.getString(26);
	   qual2=rs.getString(27);
	   uni3=rs.getString(28);
	   qual3=rs.getString(29);
	   id=rs.getInt(30);
	 }
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
 %>
 <!DOCTYPE html>
<html>
<head>
<title>Resume-<%=id %></title>

<meta name="viewport" content="width=device-width"/>
<meta name="description" content="The Curriculum Vitae of Joe Bloggs."/>
<meta charset="UTF-8"> 

<link type="text/css" rel="stylesheet" href="resume-style-2.css">
<link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body id="top">
<div id="cv" class="instaFade">
	<div class="mainDetails">
		<div id="headshot" class="quickFade">
			<img src="eiffel.jpg" />
		</div>
		
		<div id="name">
			<h1 class="quickFade delayTwo"><%=fname %><%=lname %></h1>
			<h2 class="quickFade delayThree"><%=role %></h2>
		</div>
		
		<div id="contactDetails" class="quickFade delayFour">
			<ul>
				<li>email: <a href="mailto:vamsimitra.g@gmail.com" target="_blank"><%=mail %></a></li>
				<li>linkedIn: <a href="vamsi mitra g"><%=linkedin %></a></li>
				<li>phone: <%=contact %></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	
	<div id="mainArea" class="quickFade delayFive">
		<section>
			<article>
				<div class="sectionTitle">
					<h1>Personal Profile</h1>
				</div>
				
				<div class="sectionContent">
					<p><%=personalprofile %></p>
				</div>
			</article>
			<div class="clear"></div>
		</section>
		
		
		<section>
			<div class="sectionTitle">
				<h1>Work Experience</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<h2><%=wp1 %></h2>
					<p class="subDetails"><%=exp1 %></p>
					<p class="subDetails"><%=rolec1 %></p>
				</article>
				
				<article>
					<h2><%=wp2 %></h2>
					<p class="subDetails"><%=exp2 %></p>
					<p class="subDetails"><%=rolec2 %></p>
				</article>
				
				<article>
					<h2><%=wp3 %></h2>
					<p class="subDetails"><%=exp3 %></p>
					<p class="subDetails"><%=rolec3 %></p>
				</article>
			</div>
			<div class="clear"></div>
		</section>
		
		
		<section>
			<div class="sectionTitle">
				<h1>Key Skills</h1>
			</div>
			
			<div class="sectionContent">
				<ul class="keySkills">
					<li><%=skill1 %></li>-<li><%=level1 %></li>
					<li><%=skill2 %></li>-<li><%=level2 %></li>
					<li><%=skill3 %></li>-<li><%=level3 %></li>
				</ul>
			</div>
			<div class="clear"></div>
		</section>
		
		
		<section>
			<div class="sectionTitle">
				<h1>Education</h1>
			</div>
			
			<div class="sectionContent">
				<article>
					<h2><%=uni1 %></h2>
					<p class="subDetails"><%=qual1 %></p>
				</article>
				<article>
					<h2><%=uni2 %></h2>
					<p class="subDetails"><%=qual2 %></p>
				</article>
				<article>
					<h2><%=uni3 %></h2>
					<p class="subDetails"><%=qual3 %></p>
				</article>
			</div>
			<div class="clear"></div>
		</section>
		<section>
			<div style="text-align:center">
      			<button id="btnprint" onclick="print_page()">Print</button>
      		</div>
		</section>
	</div>
</div>
<script type="text/javascript">
function print_page() {
    var ButtonControl = document.getElementById("btnprint");
    ButtonControl.style.visibility = "hidden";
    window.print();
}
</script>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3753241-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>
</body>
</html>