<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
int id=Integer.parseInt(request.getParameter("id"));
String fname=" ";
String lname=" ";
String mail=" ";
String linkedin=" ";
String github=" ";
String contact=" ";
String objective=" ";
String skill1=" ";
String level1=" ";
String skill2=" ";
String level2=" ";
String skill3=" ";
String level3=" ";
String skill4=" ";
String level4=" ";
String board1=" ";
String institution1=" ";
String yop1=" ";
String gpa1=" ";
String board2=" ";
String institution2=" ";
String yop2=" ";
String gpa2=" ";
String board3=" ";
String institution3=" ";
String yop3=" ";
String gpa3=" ";
String activity=" ";
String moocs1=" ";
String moocs2=" ";
String moocs3=" ";
String moocs4=" ";
String link1=" ";
String link2=" ";
String link3=" ";
String link4=" ";
 try{
	 Connection con = null;
	 Class.forName("com.mysql.jdbc.Driver");
	 System.out.println("loaded");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
	 System.out.println("connection");
	 PreparedStatement stmt=con.prepareStatement("select * from resume1 where id=?");
	 stmt.setInt(1,id);
	 ResultSet rs=stmt.executeQuery();
	 if(rs.next())
	 {
	   fname=rs.getString(2);
	   lname=rs.getString(3);
	   mail=rs.getString(4);
	   linkedin=rs.getString(5);
	   github=rs.getString(6);
	   contact=rs.getString(7);
	   objective=rs.getString(8);
	   skill1=rs.getString(9);
	   level1=rs.getString(10);
	   skill2=rs.getString(11);
	   level2=rs.getString(12);
	   skill3=rs.getString(13);
	   level3=rs.getString(14);
	   skill4=rs.getString(15);
	   level4=rs.getString(16);
	   board1=rs.getString(17);
	   institution1=rs.getString(18);
	   yop1=rs.getString(19);
	   gpa1=rs.getString(20);
	   board2=rs.getString(21);
	   institution2=rs.getString(22);
	   yop2=rs.getString(23);
	   gpa2=rs.getString(24);
	   board3=rs.getString(25);
	   institution3=rs.getString(26);
	   yop3=rs.getString(27);
	   gpa3=rs.getString(28);
	   activity=rs.getString(29);
	   moocs1=rs.getString(30);
	   link1=rs.getString(31);
	   moocs2=rs.getString(32);
	   link2=rs.getString(33);
	   moocs3=rs.getString(34);
	   link3=rs.getString(35);
	   moocs4=rs.getString(36);
	   link4=rs.getString(37);
	   id=rs.getInt(38);
	 }
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
 %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/996973c893.js"></script>
    
    <script>
        function print_page() {
            var ButtonControl = document.getElementById("btnprint");
            ButtonControl.style.visibility = "hidden";
            window.print();
        }
    </script>

    <!-- Style -->
    <link rel="stylesheet" href="resume-style.css" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,700,800,900&display=swap"
      rel="stylesheet"
    />
    <title>Resume-<%=id %></title>
  </head>
  <body>
    <div class="box">
      <div class="header">
        <div class="header-left">
          <div class="name">
            <h1 class="first-name" id="fname"><%=fname %></h1>
            <h1 class="last-name" id="lname"><%=lname %></h1>
          </div>
        </div>
        <div class="header-right">
          <div class="email" id="email">
            <p><%=mail %></p>
            <i class="fas fa-envelope"></i>
          </div>
          <div class="linkedin" id="linkedin">
            <p><%=linkedin %></p>
            <i class="fab fa-linkedin"></i>
          </div>
          <div class="github" id="github">
            <p><%=github %></p>
            <i class="fab fa-github"></i>
          </div>
          <div class="phone" id="phnum">
            <p><%=contact %></p>
            <i class="fas fa-phone"></i>
          </div>
        </div>
      </div>
      <hr />
      <div class="objective" id="obj">
        <div class="obj-heading grey">
          <i class="fas fa-bullseye icon"></i>
          <h2>Objective</h2>
        </div>
        <p>
          <%=objective %>
        </p>
      </div>
      <div class="education" id="edu">
        <div class="ed-heading grey">
          <i class="fas fa-school icon"></i>
          <h2>Education</h2>
        </div>

        <table>
          <tr>
            <th>Board</th>
            <th>Institution</th>
            <th>Year of passing</th>
            <th>Percentage/GPA</th>
          </tr>
          <tr>
            <td><%=board1 %></td>
            <td><%=institution1 %></td>
            <td><%=yop1 %></td>
            <td><%=gpa1 %></td>
          </tr>
          <tr>
            <td><%=board2 %></td>
            <td><%=institution2 %></td>
            <td><%=yop2 %></td>
            <td><%=gpa2 %></td>
          </tr>
          <tr>
            <td><%=board3 %></td>
            <td><%=institution3 %></td>
            <td><%=yop3 %></td>
            <td><%=gpa3 %></td>
          </tr>
        </table>
      </div>
      <div class="skills" id="skills">
          <div class="skills-heading grey">
                <i class="fas fa-tools icon"></i>
                <h2>Skills</h2>
          </div>
          <table>
          <tr>
            <th>Skill</th>
            <th>Level</th>
          </tr>
          <tr>
            <td><%=skill1 %></td>
            <td><%=level1 %></td>
          </tr>
           <tr>
            <td><%=skill2 %></td>
            <td><%=level2 %></td>
          </tr>
           <tr>
            <td><%=skill3 %></td>
            <td><%=level3 %></td>
          </tr>
           <tr>
            <td><%=skill4 %></td>
            <td><%=level4 %></td>
          </tr>
        </table>
      </div>
      <div class="activities" id="act">
        <div class="act-heading grey">
          <i class="fab fa-creative-commons-nd icon"></i>
          <h2>Activities</h2>
        </div>

        <p>
           <%=activity %>
        </p>
      </div>

        <div class="MOOCS CERTIFICATIONS" id="cert">
          <div class="MOOCS CERTIFICATIONS-heading grey">
                <i class="fas fa-tools icon"></i>
                <h2>MOOCS CERTIFICATIONS</h2>
          </div>
          <table>
          <tr>
            <th>MOOC Name</th>
            <th>Link</th>
          </tr>
          <tr>
            <td><%=moocs1 %></td>
            <td><%=link1 %></td>
          </tr>
          <tr>
            <td><%=moocs2 %></td>
            <td><%=link2 %></td>
          </tr>
          <tr>
            <td><%=moocs3 %></td>
            <td><%=link3 %></td>
          </tr>
          <tr>
            <td><%=moocs4 %></td>
            <td><%=link4 %></td>
          </tr>
        </table>
      </div>
      
      <div style="text-align:center">
      	<button id="btnprint" onclick="print_page()">Print</button>
      </div>
    </div>
  </body>
</html>