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
    <title>Admin Dashboard - Sports World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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

                <!-- Admin Dashboard -->
                <h2 class="text-center text-danger mb-4">Admin Dashboard</h2>

                <!-- Dashboard Overview -->
                <div class="row">
                    <div class="col-md-6 col-xl-4">
                        <div class="card shadow-sm mb-4">
                            <div class="card-header bg-danger text-white">
                                <h5>Total Sales</h5>
                            </div>
                            <div class="card-body">
                                <h3>$1,245.50</h3>
                                <p>In the last month</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-4">
                        <div class="card shadow-sm mb-4">
                            <div class="card-header bg-danger text-white">
                                <h5>Total Orders</h5>
                            </div>
                            <div class="card-body">
                                <h3>156</h3>
                                <p>In the last month</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-xl-4">
                        <div class="card shadow-sm mb-4">
                            <div class="card-header bg-danger text-white">
                                <h5>Order Status</h5>
                            </div>
                            <div class="card-body">
                                <canvas id="orderStatusGraph"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var ctx = document.getElementById('orderStatusGraph').getContext('2d');
        var orderStatusGraph = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['Pending', 'Shipped', 'Delivered'],
                datasets: [{
                    label: 'Order Status',
                    data: [50, 30, 20],
                    backgroundColor: ['#dc3545', '#ffc107', '#28a745'],
                    borderColor: '#fff',
                    borderWidth: 1
                }]
            }
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
