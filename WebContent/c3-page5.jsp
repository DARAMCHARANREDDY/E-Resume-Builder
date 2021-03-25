<%
String email=(String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  <script>
$(document).ready(function()
    {
    var x = 0; 
    var list_maxField = 2; 
    
        
    $('.list_add_button').click(function()
        {
        if(x < list_maxField){ 
            x++; 
            var list_fieldHTML = '<div class="row"><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Name of the company" class="form-control"/></div></div><div class="col-xs-4 col-sm-4 col-md-4"><div class="form-group"><input name="list1['+x+'][]" type="text" placeholder="Role"class="form-control"/></div></div><div class="col-xs-2 col-sm-2 col-md-2"><div class="form-group"><input name="list2['+x+'][]" type="text" placeholder="Description" class="form-control"/></div></div><div class="col-xs-2 col-sm-2 col-md-2"><div class="form-group"><input name="list3['+x+'][]" type="text" placeholder="From year to year" class="form-control"/></div></div><div class="col-xs-1 col-sm-7 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; 
            $('.list_wrapper').append(list_fieldHTML); 
        }
        else
    	{
    	alert("You can add upto 3 records only");
    	}
    });
    
        
        $('.list_wrapper').on('click', '.list_remove_button', function()
        {
           $(this).closest('div.row').remove(); 
           x--; 
        });
});
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
    <main>
    <div class="container">
        <div class="row centered-form">
            <div class="col-xs-15 col-sm-15 col-md-15 ">
                <div class="panel panel-info">

                    <div class="panel-heading text-center">
                   
                        <h1 class="panel-title">List out your work experience</h1>
                    </div>
                    <hr>
                    <div class="panel-body">
                        <form role="form" method="post" action="resume3entrypage5.jsp">
                            
                            <div class="list_wrapper">  
                                <div class="row">

                                    <div class="col-xs-3 col-sm-3 col-md-3">

                                        <div class="form-group">
                                            Name of the company
                                            <input name="list[0][]" type="text" placeholder= " Name of the company " class="form-control"/>
                                            
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-4">
                                        <div class="form-group">
                                            Role
                                            <input autocomplete="off" name="list1[0][]" type="text" placeholder="Role" class="form-control"/>
                                        </div>
                                    </div> 
                                    <div class="col-xs-2 col-sm-2 col-md-2">
                                        <div class="form-group">
                                            Description
                                            <input autocomplete="off" name="list2[0][]" type="text" placeholder="Description" class="form-control"/>
                                        </div>
                                    </div> 
                                    <div class="col-xs-2 col-sm-2 col-md-2">
                                        <div class="form-group">
                                            From year to year
                                            <input autocomplete="off" name="list3[0][]" type="text" placeholder="From year to year" class="form-control"/>
                                        </div>
                                    </div> 
                                    <div class="col-xs-1 col-sm-1 col-md-1">
                                        <br>
                                       <button class="btn btn-primary list_add_button" type="button">+</button>
                                    </div>
                                </div>
                            </div>
                                <div class="text-center">
							    <button type="reset" class="btn btn-primary" onclick="backward12()" style="margin-right: 25px;margin-left: 25px;">BACK</button>
							    <button type="submit" class="btn btn-primary">SAVE&NEXT</button>
							    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function backward12()
        {
            window.location="c3-page4.jsp";
        }        
        function forward12()
         {
            window.location="c3-page6.jsp";
         }
    </script>
</main>
<br>
<footer style="position:fixed; bottom:0%;">
		<span>E-RESUME BUILDER<br>Copyright &copy; 2020 </span>
	</footer>
</body>
</html>