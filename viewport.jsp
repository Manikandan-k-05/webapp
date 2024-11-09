<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Products - Sports World Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
        .navbar, .card-header.bg-danger {
            background-color: #dc3545 !important;
        }

        .text-danger {
            color: #dc3545 !important;
        }

        .sidebar {
            background-color: #f8f9fa;
        }

        .sidebar-header h4 {
            color: #dc3545;
        }

        .sidebar .nav-link.active {
            background-color: #dc3545;
            color: white;
        }

        .sidebar .nav-link {
            color: #333;
        }

        .sidebar .nav-link:hover {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 p-0 bg-light sidebar">
                <div class="sidebar-header text-center py-4">
                    <h4 class="text-danger">Sports World Admin</h4>
                </div>
                 <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="admin.jsp">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="productManage.jsp">Products</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewport.jsp">View Product</a></li>
                    <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 p-4">
                <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm mb-4">
                    <a class="navbar-brand text-danger" href="#">Sports World Admin</a>
                </nav>

                <!-- Products Section -->
                <h2 class="text-center text-danger mb-4">Products</h2>
                

                <table class="table table-bordered">
                    <thead class="bg-danger text-white">
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Stock</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample data rows -->
                        <tr>
                            <td>1</td>
                            <td>Football</td>
                            <td>Sports Equipment</td>
                            <td>$25.00</td>
                            <td>50</td>
                            
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Volleyball</td>
                            <td>Sports Equipment</td>
                            <td>$20.00</td>
                            <td>30</td>
                           
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Cricket Bat</td>
                            <td>Sports Equipment</td>
                            <td>$35.00</td>
                            <td>40</td>
                           
                        </tr>
                        <!-- Additional products can be added here -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
