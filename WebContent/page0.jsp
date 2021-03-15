<%
String email=(String)session.getAttribute("email");
%>
 <html>
 	<head>
    <title>page0</title>
 	  <link rel="stylesheet" href="style.css">
      <script>
      function forward()
      {
    	  window.location="page1.jsp";
      }
      </script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
 	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
 	  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

 	</head>
 	<body style="background-color: #1A3263;color: #FAB95B">
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
                
            </ul>
        </nav>
    </header>
    <main>
      <div class="site-section" align="left" style="background-color: black">
        <div class="site-section-inside">
          <div class="section-header">
            <h2 style="color:#FAB95B">IMPRESSIVE RESUMES</h2>
            <h3>EASY RESUME BUILDER</h3>
          </div>
            <ul style="padding: 20px;font-size: 25px" >
              <li>Professional out-of-the-box resumes, instantly generated by the most advanced resume builder technology available.</li>
              <li>Effortless crafting. Real-time preview & pre-written resume examples.Dozens of HR-approved resume templates.</li>
              <li>Land your dream job with the perfect resume employers are looking for!</li>
            </ul>
            <!--<input type="submit" value="BUILD MY RESUME" class="btn" onclick="forward()"/>!-->
            <button type="button" onclick="forward()" style="border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            background-color: #1A3263;
            color: #FAB95B">BUILD MY RESUME</button>
          </div>
        </div>
      </div>
      <div class="site-section site-section-secondary" style="background-color: #1A3263;color: #FAB95B">
        <div class="site-section-inside">

            <div class="section-header">
                <h3 style="font-size: 40px;">3 EASY STEPS TO CREATE YOUR PERFECT RESUME</h3>
            </div>

            <div class="feature-box">
                <img src="document-page1-2.png" alt="Document">
                <!--<h5>CHOOSE YOUR RESUME TEMPLATE</h5>
                <p></p>!-->
                <h3 class="feature-box-title">Choose your<br />resume template</h3>
                <p class="feature-box-info">Our professional resume templates are designed strictly following all industry guidelines and best practices</br> employers are looking for.</p>
            </div>

            <div class="feature-box">
                <img src="pen-page1.png" alt="Edit">
                <h3 class="feature-box-title-title">Show what <br />you´re made of</h3>
                <p class="feature-box-info-info">Not finding the right words to showcase yourself? We´ve added thousands of pre-written examples and resume samples.  </br>As easy as a click.</p>
            </div>

            <div class="feature-box">
                <img src="download-page1.png" alt="Download">
                <h3 class="feature-box-title">Download <br /> Your resume</h3>
                <p class="feature-box-info">Start impressing employers. Download your awesome resume and land the job you are looking for, effortlessly. </p>
            </div>

        </div>
        </div>
    </main>
    <footer>
      
        <span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
    </footer>
 	</body>
 </html>