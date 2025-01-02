<!DOCTYPE html>
<%@page import="java.util.Vector"%>
<%@page import="com.resturent1.Service_logic"%>
<%@page import="com.resturent1.Data"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Yummy
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Yummy<span>.</span></h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a  href="adminhome.jsp">Home</a></li>
          <li><a   href="#about">About</a></li>
          <li><a class="nav-link scrollto active" href="admin-bookings.jsp">Bookings</a></li>
          <li><a  href="admin-queries.jsp">Quries</a></li>
           <li><a  href="adminlogin.jsp">logout</a></li>
           
      </nav><!-- .navbar -->

      <a class="btn-book-a-table" href="#book-a-table">Book a Table</a>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  
  <section id="hero" class="hero d-flex align-items-center section-bg">
  
    <div class="container">
    
      <div class="row justify-content-between gy-5">
      
        <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
          
          
         
          
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
           
        
            </div>
        </div>
        <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
         
         
           
        </div>
      </div>
        <%
          
          
          Data d=new Data();
          Service_logic s=new Service_logic();
          Vector<Data> v=s.logic_bookingdetails(d);
          
          out.println("<table border=10>");
          
          for(Data d1:v)
          {
        	  
        	  out.println("<tr>");
        	  
        	
        	  out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getName()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getEmail()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getPhone()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getDob()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getTime()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getPeople()+"</td>");
      		out.println("<td><label style=font:monospace;color:tomato;margin-left:70px;font-weight: bold;font-size: 30px  >"+d1.getMessage()+"</td>");
      	

      		out.println("</tr>");
        	  
          }
          
          
          
          out.println("<table border=10>");
          
          
          
          %>
    </div>
  </section><!-- End Hero Section -->
  

  <main id="main">

  

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>