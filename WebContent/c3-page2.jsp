<%
String email=(String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script>
		function backward7()
        {
            window.location="c3-page1.jsp"
        }        
		function forward7()
	     {
	        window.location="c3-page3.jsp";
	     }
	</script>
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
                 <li><a href="#"><%=email %></a></li>
                 <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
	</header>
	<main style="padding-left: 25px;padding-right: 25px;padding-top: 25px;">
		<div class="h-tag">
				<h2>Complete this form to let the employers know about you</h2><br>
		</div>
			<br>
		<form name="f" method="post" action="resume3entrypage2.jsp">
			<div class="form-row">
				  	<div class="form-group col-md-6">
				      <label for="inputPR4">PROFILE</label>
				      <textarea class="form-control" rows="10" name="inputPR4"></textarea>
				    </div>
			</div>
			<button type="reset" class="btn" onclick="backward7()" style="margin-right: 25px">BACK</button>
			<button type="submit" class="btn" >SAVE&NEXT</button>	    
		</form>
		<br>	
	</main>
	<footer style="position:fixed; bottom:0%;">
		<span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
	</footer>
</body>
</html>