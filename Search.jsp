<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- bootstrap -->
    <link rel="stylesheet" href="/LMS/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="/LMS/css/main.css">
    <link rel="stylesheet" href="/LMS/css/animate.min.css">
    <link rel="stylesheet" href="/LMS/vendor/offline/theme.css">
    <!-- /core styles -->

    <!-- page styles -->
    <link rel="stylesheet" href="/LMS/vendor/toastr/toastr.css">
    <link rel="stylesheet" href="/LMS/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- /page styles -->
<link rel="stylesheet" type="text/css" href="css/myHome.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' id='saswp-style-css'  href='https://nevonprojects.com/wp-content/plugins/schema-and-structured-data-for-wp/admin_section/css/saswp-style.css?ver=1.0.9' type='text/css' media='all' />
<link rel='stylesheet' id='dazzling-bootstrap-css'  href='https://nevonprojects.com/wp-content/themes/dazzling/inc/css/bootstrap.min.css?ver=4.9.10' type='text/css' media='all' />
<link rel='stylesheet' id='dazzling-icons-css'  href='https://nevonprojects.com/wp-content/themes/dazzling/inc/css/font-awesome.min.css?ver=4.9.10' type='text/css' media='all' />
<link rel='stylesheet' id='dazzling-style-css'  href='https://nevonprojects.com/wp-content/themes/dazzling/style.css?ver=4.9.10' type='text/css' media='all' />
<link rel='stylesheet' id='sedlex_styles-css'  href='https://nevonprojects.com/wp-content/sedlex/inline_styles/f3f878ff6bc158a2666b2877c67f0672f952872e.css?ver=20190422' type='text/css' media='all' />
<title>Search page</title>

</head>
<body>
  <div class="col-lg-6">
                                            <section class="panel">
                                                <header class="panel-heading">Search Book</header>
                                                <div class="panel-body">

                                                    <form action= "searchbook.jsp" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Book Name </label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" required name="search" id="search" data-parsley-required="true" data-parsley-trigger="change" placeholder="Book Search">
                                                               </div> 
                                                             
                                                        </div> 
                                        
                                                     <hr> 
                                               
                                                        </div>
                                                        <div class="form-group">   
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-default">Search Book</button>
                                                            </div>
                                                        </div>
                                                    </form>
                           
                                
        </section>

    </div>
  

 <div class="col-lg-6">
               
                                            <section class="panel">
                                                <header class="panel-heading">Search Author</header>
                                                <div class="panel-body">

                                                    <form action="searchauthor.jsp" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Author Name </label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="search" data-parsley-required="true" data-parsley-trigger="change" placeholder="Author Search">
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                         
                                                     
                                                     <hr> 
                                                     
                                                         
                                                        </div>
                                                        <div class="form-group">   
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                <button type="submit" class="btn btn-default">Search Author</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                    </section>
                                                    

                                                </div> 
          
</body>
</html>