<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Customers</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            background-color: #eaf6f6;
            font-family: 'Poppins', sans-serif;
            color: #2c3e50;
        }

        .content {
            margin-top: 50px;
        }

        /* Table Container */
        .table-container {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        }

        /* Table Styling */
        .table th {
            background-color: #1abc9c;
            color: white;
            text-transform: uppercase;
            font-weight: bold;
        }

        .table td {
            vertical-align: middle;
            color: #34495e;
        }

        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Heading */
        .text-primary {
            color: #2980b9 !important;
            font-weight: 600;
        }

        .badge {
            background-color: #16a085 !important;
            font-size: 18px;
            padding: 8px 12px;
            border-radius: 8px;
        }

        /* Buttons */
        .btn-warning {
            background-color: #f39c12;
            color: white;
            border: none;
        }

        .btn-warning:hover {
            background-color: #e67e22;
        }

        .btn-danger {
            background-color: #e74c3c;
            color: white;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c0392b;
        }

        /* No Customer Text */
        .text-muted {
            font-size: 18px;
            font-style: italic;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavebar.jsp" %>

    <div class="container content">
        <!-- Total Customers -->
        <div class="text-center mb-4">
            <h2 class="text-primary">Total Customers: <span class="badge"><c:out value="${count}" /></span></h2>
        </div>

        <!-- Customer Table -->
        <div class="table-container">
            <h3 class="text-center text-primary mb-4">View All Customers</h3>
            <table class="table table-striped table-bordered table-hover">
                <thead class="text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Contact Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customerlist}" var="customer">
                        <tr>
                            <td class="text-center"><c:out value="${customer.id}" /></td>
                            <td><c:out value="${customer.name}" /></td>
                            <td class="text-center"><c:out value="${customer.gender}" /></td>
                            <td><c:out value="${customer.dateofbirth}" /></td>
                            <td><c:out value="${customer.email}" /></td>
                            <td><c:out value="${customer.location}" /></td>
                            <td class="text-center"><c:out value="${customer.contact}" /></td>
                            <td class="text-center">
                                <!-- Edit Button -->
                                <a href="editCustomer?id=<c:out value='${customer.id}' />" class="btn btn-warning btn-sm">Edit</a>
                                
                                <!-- Delete Button -->
                                <a href="deleteCustomer?id=<c:out value='${customer.id}' />" class="btn btn-danger btn-sm" 
                                   onclick="return confirm('Are you sure you want to delete this customer?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:if test="${empty customerlist}">
                <p class="text-center text-muted">No customers found.</p>
            </c:if>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>