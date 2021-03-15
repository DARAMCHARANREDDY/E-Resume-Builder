<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=request.getParameter("email");
%>    
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body style="background-color: #1A3263;color: #FAB95B;">
<header>
  <a id="logo" href="index.html">
            <img src="logo.png" alt="Logo">
            <span>E-Resume Builder</span>
        </a>

        <!-- main navigation links -->
        <nav>
            <ul>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </nav>
</header>
<main style="display:flex; justify-content:center; align-items:center;margin-top:7%;">
<div class="card text-center" style="width: 50rem">
  <div class="card-body" style="align: center">
  <h5 class="card-title">Change Your Password</h5>
    <form class="card-form" method="post" action="pwdchange.jsp?email=<%=email%>">
    	<div class="form-row" style="justify-content:center;">
				    <div class="form-group col-md-6" >
				      <label for="password1">Enter the Password:</label>
				      <input type="password" class="form-control" name="password1" placeholder="Enter password">
				    </div>
				    <div class="form-group col-md-6" >
				      <label for="password2">Re-Enter the Password:</label>
				      <input type="password" class="form-control" name="password2" placeholder="Re-Enter password">
				    </div>
		</div>
		<input type="submit" class="btn btn-primary" value="Save"/>
    </form>
  </div>
</div>
</main>
<footer style="position:fixed; bottom:0%;">
  <span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
</footer>

</body>
</html>
<footer style="position:fixed; bottom:0%;">
  <span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
</footer>

</body>
</html>