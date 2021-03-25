<%
String email=(String)session.getAttribute("email");
%>
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script>
		function backward6()
        {
            window.location="page1.jsp"
        }        
		function forward6()
	      {
	        window.location="c3-page2.jsp";
	      }
		</script>
	</head>
	<body style="background-color: #1A3263;color: #FAB95B">
		<header>

        <!-- our main logo -->
        <a id="logo" href="index.html">
            <img src="logo.png" alt="Logo">
            <span>E-Resume Builder</span>
        </a>

        <!-- main navigation links -->
        <nav>
            <ul>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                 <li><a href="#"><%=email %></a></li>
                 <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
		</header>
		<main style="padding-left: 25px;padding-right: 25px;padding-top: 25px;">
			<div class="h-tag">
				<h2>COMPLETE YOUR <bold>RESUME HEADING</bold></h2><br>
				<h4>Employers will use this information to contact you</h4>
			</div>
			<br>
			<form method="post" action="resume3entrypage1.jsp">
				  <div class="form-row">
				  	<div class="form-group col-md-6">
				      <label for="inputFName4">FirstName</label>
				      <input type="text" class="form-control" name="inputFName4" placeholder="First Name">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputLName4">LastName</label>
				      <input type="text" class="form-control" name="inputLName4" placeholder="Last Name">
				    </div>
				    </div>
				    <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputRole4">Role</label>
				      <input type="text" class="form-control" name="inputRole4" placeholder="Role">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputNumber4">Phone Number</label>
				      <input type="text" class="form-control" name="inputNumber4" placeholder="1234567890">
				    </div>
				    </div>
				    <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Email</label>
				      <input type="text" class="form-control" name="inputEmail4" placeholder="Email">
				    </div>
				    <div class="form-group col-mod-6">
					    <label for="inputLinkedin4">Linkedin</label>
					    <input type="text" class="form-control" name="inputLinkedin4" placeholder="Linkedin">
				  	</div>
				  </div>
				  <button type="reset" class="btn" onclick="backward6()" style="margin-right: 25px">BACK</button>
				<button type="submit" class="btn">SAVE&NEXT</button>
				</form>
				<br>
		</main>
		<footer style="position:fixed; bottom:0%;">
			<span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
		</footer>
	</body>
</html>