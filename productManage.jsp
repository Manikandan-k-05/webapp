<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Product Management - Sports World</title>
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
    <!-- Sidebar and Navbar -->
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
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm mb-4">
                    <a class="navbar-brand text-danger" href="#">Sports World Admin</a>
                </nav>

                <!-- Product Management -->
                <h2 class="text-center text-danger mb-4">Product Management</h2>

                <!-- Add Product Button -->
                <button class="btn btn-danger mb-3" onclick="window.location.href='addproduct.jsp'">Add New Product</button>

                <!-- Products Table -->
                <div class="card">
                    <div class="card-header bg-danger text-white">
                        <h4>Product List</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Name</th>
                                    <th>Category</th>
                                    <th>Price</th>
                                    <th>Availability</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Populate products dynamically from backend -->
                                <c:forEach var="product" items="${products}">
                                    <tr>
                                        <td>${product.id}</td>
                                        <td>${product.name}</td>
                                        <td>${product.category}</td>
                                        <td>${product.price}</td>
                                        <td>${product.availability}</td>
                                        <td>
                                            <button class="btn btn-sm btn-danger">Edit</button>
                                            <button class="btn btn-sm btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
