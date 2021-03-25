<%
String email=(String)session.getAttribute("email");
%>

<html>
<head>
	<meta charset="UTF-8">
    <title>E-Resume Builder</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
</head>
<body style="background-color: #1A3263;color: #FAB95B">

    <!-- the header -->
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
                <li><a href="#"><%=email %></a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>

    </header>

    <main style="padding-left: 25px;padding-right: 25px;padding-top: 25px;">
        <h1>Contact Us</h1>
        <p>Questions? Enquiries? Suggestions? Existential doubts? Our teams are ready to hear about them!</p>
        <p>To get in touch with us, you can use the form below or write directly to knightconan4563@gmail.com</p>
		<div>
			<form method="post" action="contactdetails.jsp">
			  <div class="form-row">
				  <div class="form-group col-mod-6">
				      <label for="name">Name:</label>
				      <input type="text" class="form-control" id="name" placeholder="Enter Name here" name="name">
				 </div>
				 <div class="form-group col-mod-6">
				      <label for="mail">Email Id:</label>
				      <input type="text" class="form-control" id="email" placeholder="Enter your Email here" name="mail">
				 </div>
			 </div>
			 <div class="form-row">
			    <div class="form-group col-mod-6">
			      <label for="subject">Subject:</label>
			      <input type="text" class="form-control" id="sub" placeholder="Enter subject here" name="subject">
			    </div>
			  </div>
			 <div class="form-row">
				  	<div class="form-group col-md-6">
				      <label for="msg">Message:</label>
				      <textarea class="form-control" rows="5" name="msg" placeholder="Enter message here"></textarea>
				    </div>
			</div>
			    <button type="submit" class="btn btn-primary">Submit</button>
			  </form>
		</div>
    </main>

    <footer style="position:fixed; bottom:0%;">
        <span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
    </footer>

</body>
</html>