<%
String email=(String)session.getAttribute("email");
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">

<style>
#myImg{
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}
#myImg2 {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}
#myImg3 {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

#myImg2:hover {opacity: 0.7;}

#myImg3:hover {opacity: 0.7;}


/* The Modal (background) */
.modal{
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}
.modal2{
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}
.modal3{
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}
.modal-content2 {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}
.modal-content3 {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption,#caption2,#caption3 {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}


/* Add Animation */
.modal-content, #caption{  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}
.modal-content2,#caption2 {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}
.modal-content3,#caption3 {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content{
    width: 100%;
  }
  .modal-content2 {
    width: 100%;
  }
  .modal-content3 {
    width: 100%;
  }
  
}
input[class=btn] {
        background-color: #FAB95B;
        border: none;
        color: black;
        padding: 16px 32px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
      }
</style>
<script>
  function backward9()
        {
            window.location="page0.jsp"
        }        
    function forward9()
       {
          window.location="page2.jsp";
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
                <li><a href="contact.jsp">Contact</a></li>
                 <li><a href="#"><%=email %></a></li>
                 <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
</header>
<main style="padding-left: 25px;padding-right: 25px;padding-top: 25px;">
<form method="post" name="f" action="resume_selection.jsp" >
<input type="radio" id="option1" name="resume" value="resume1">
<img id="myImg" src="resume-1-large.png" style="width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>
<input type="radio" id="option2" name="resume" value="resume2">
<img id="myImg2" src="resume-2.png" style="width:100%;max-width:300px">

<!-- The Modal -->

<div id="myModal2" class="modal2">
  <span class="close">&times;</span>
  <img class="modal-content2" id="img02">
  <div id="caption2"></div>
</div>
<input type="radio" id="option3" name="resume" value="resume3">
<img id="myImg3" src="resume-3.png" style="width:100%;max-width:300px">
<!-- The Modal -->

<div id="myModal3" class="modal3">
  <span class="close">&times;</span>
  <img class="modal-content3" id="img03">
  <div id="caption3"></div>

</div>
<br>
<br>
<button type="reset" class="btn btn-primary" onclick="backward9()" style="margin-right: 25px;margin-left: 25px">BACK</button>
<button type="submit" class="btn">SAVE&NEXT</button>

</form>
</main>

<br>
<br>
<footer style="position:fixed; bottom:0%;">
  <span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
</footer>
<script>

var modal = document.getElementById("myModal");
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}
var span = document.getElementsByClassName("close")[0];
span.onclick = function() { 
  modal.style.display = "none";
}

var modal = document.getElementById("myModal2");
var img = document.getElementById("myImg2");
var modalImg = document.getElementById("img02");
var captionText = document.getElementById("caption2");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}
var span = document.getElementsByClassName("close")[1];
span.onclick = function() { 
  modal.style.display = "none";
}

var modal = document.getElementById("myModal3");
var img = document.getElementById("myImg3");
var modalImg = document.getElementById("img03");
var captionText = document.getElementById("caption3");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}
var span = document.getElementsByClassName("close")[2];
span.onclick = function() { 
  modal.style.display = "none";
}


</script>

</body>
</html>