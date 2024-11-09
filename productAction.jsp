<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.InputStream" %>

<%
    // Retrieve form data
    String productName = request.getParameter("productName");
    String category = request.getParameter("category");
    String price = request.getParameter("price");
    String stock = request.getParameter("stock");
    String description = request.getParameter("description");

    // Get the uploaded file part
   // Part filePart = request.getPart("productImage"); 
    //String fileName = filePart.getSubmittedFileName(); // Get file name

    // Display form values for confirmation
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Product Details Confirmation</h2>
        <table class="table table-bordered mt-4">
            <tr>
                <th>Product Name</th>
                <td><%= productName %></td>
            </tr>
            <tr>
                <th>Category</th>
                <td><%= category %></td>
            </tr>
            <tr>
                <th>Price</th>
                <td><%= price %></td>
            </tr>
            <tr>
                <th>Stock</th>
                <td><%= stock %></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><%= description %></td>
            </tr>
            <tr>
                <th>Uploaded Image</th>
            </tr>
        </table>
    </div>
</body>
</html>
