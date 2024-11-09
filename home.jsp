<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="org.mindrot.jbcrypt.BCrypt" %>
<%@ page import="dao.UserRegistrationDAO" %>
<%@ page import="bean.RegisterBean" %>
<%
    String email = (String) session.getAttribute("userEmail");

    if (email == null) {
        response.sendRedirect("log.jsp");
        return;  // Exit the page
    }

    out.print(email);  // Display the email if session is valid
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sports World - Home</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <a class="navbar-brand text-danger" href="#">Sports World</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <form class="d-flex" action="#" method="get">
                        <input class="form-control me-2" type="search" placeholder="Search Materials" name="query" aria-label="Search">
                        <button class="btn btn-outline-danger" type="submit">Search</button>
                    </form>
                </li>
                <li class="nav-item"><a class="nav-link text-danger" href="home.jsp">Home</a></li>
                  <li class="nav-item"><a class="nav-link text-danger" href="profile.jsp">Profile</a></li>
            <li class="nav-item"><a class="nav-link text-danger" href="cart.jsp">Cart</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </nav>

    <!-- Carousel Section -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-target="#carouselExampleIndicators" data-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-target="#carouselExampleIndicators" data-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-target="#carouselExampleIndicators" data-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/ab.jpeg" class="d-block w-100" alt="Sports equipment display - Slide 1" style="height: 500px;">
            </div>
            <div class="carousel-item">
                <img src="image/cd.jpeg" class="d-block w-100" alt="Sports equipment display - Slide 2" style="height: 500px;">
            </div>
            <div class="carousel-item">
                <img src="image/ef.jpeg" class="d-block w-100" alt="Sports equipment display - Slide 3" style="height: 500px;">
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Products Section -->
    <div class="container my-5">
        <h2 class="text-center text-danger mb-4">Popular Products</h2>
        <div class="row">
            <!-- Product Card 1 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="image/ij.jpg" class="card-img-top" alt="Football">
                    <div class="card-body text-center">
                        <h5 class="card-title">Football</h5>
                        <p class="card-text">High-quality football for professional use.</p>
                        <a href="#" class="btn btn-danger">Buy Now</a>
                    </div>
                </div>
            </div>
            <!-- Product Card 2 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="image/gh.jpg" class="card-img-top" alt="Volley Ball">
                    <div class="card-body text-center">
                        <h5 class="card-title">Volley Ball</h5>
                        <p class="card-text">Durable volleyball for all skill levels.</p>
                        <a href="#" class="btn btn-danger">Buy Now</a>
                    </div>
                </div>
            </div>
            <!-- Product Card 3 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="image/cricket.jpg" class="card-img-top" alt="Cricket Bat">
                    <div class="card-body text-center">
                        <h5 class="card-title">Cricket Bat</h5>
                        <p class="card-text">Premium quality bat for powerful shots.</p>
                        <a href="#" class="btn btn-danger">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-danger text-white text-center py-3">
        <p>&copy; 2024 Sports World. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
