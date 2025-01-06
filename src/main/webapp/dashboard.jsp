<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General page layout */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .d-flex {
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: white;
            padding: 20px;
            position: fixed;
            top: 0;
            bottom: 0;
            overflow-y: auto;
        }

        .sidebar .sidebar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 30px;
            color: #ffffff;
        }

        .entity-button {
            margin: 10px 0;
            padding: 10px;
            background-color: #495057;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .entity-button a {
            text-decoration: none;
            color: #ffffff;
            font-size: 1.1rem;
            display: flex;
            align-items: center;
        }

        .entity-button i {
            margin-right: 10px;
        }

        .entity-button:hover {
            background-color: #007bff;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            flex-grow: 1;
        }

        .navbar {
            background-color: #ffffff;
            border-bottom: 1px solid #ddd;
        }

        .navbar .navbar-brand {
            color: #007bff;
        }

        .navbar .btn {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }

        .navbar .dropdown-menu {
            border-radius: 5px;
        }

        .dashboard-welcome {
            margin-bottom: 20px;
        }

        .dashboard-welcome h2 {
            font-size: 2rem;
            color: #333;
        }

        .dashboard-items .card {
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 1.25rem;
        }

        .card-body {
            background-color: #ffffff;
            padding: 20px;
        }

        .card ul {
            list-style-type: none;
            padding: 0;
        }

        .card ul li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .profile-image {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 20px;
        }

        .modal-content {
            border-radius: 8px;
        }

        .calendar ul {
            list-style-type: none;
            padding: 0;
        }

        .calendar ul li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        /* Add media query for responsiveness */
        @media (max-width: 992px) {
            .d-flex {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                position: relative;
            }

            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

    <div class="d-flex">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="sidebar-brand">Menu</div>
            <div class="entity-menu">
                <div class="entity-button">
                    <a href="Attendance.jsp"><i class="fas fa-calendar-check"></i> <span class="full-text">Attendance</span></a>
                </div>
                <div class="entity-button">
                    <a href="courses.jsp"><i class="fas fa-book-open"></i> <span class="full-text">Courses</span></a>
                </div>
                <div class="entity-button">
                    <a href="admitcard.jsp"><i class="fas fa-id-card"></i> <span class="full-text">Admit Card</span></a>
                </div>
                <div class="entity-button">
                    <a href="fees.jsp"><i class="fas fa-dollar-sign"></i> <span class="full-text">Fees</span></a>
                </div>
                <div class="entity-button">
                    <a href="performance.jsp"><i class="fas fa-chart-line"></i> <span class="full-text">Performance</span></a>
                </div>
                <div class="entity-button">
                    <a href="Timetable.jsp"><i class="fas fa-table"></i> <span class="full-text">Timetable</span></a>
                </div>
                <div class="entity-button">
                    <a href="Reportcard.jsp"><i class="fas fa-file-alt"></i> <span class="full-text">Report Card</span></a>
                </div>
                <div class="entity-button">
                    <a href="Feedback.jsp"><i class="fas fa-comments"></i> <span class="full-text">Feedback</span></a>
                </div>
                <div class="entity-button">
                    <a href="Notice.jsp"><i class="fas fa-bell"></i> <span class="full-text">Notices</span></a>
                </div>
                <div class="entity-button">
                    <a href="Collegeinfo.jsp"><i class="fas fa-university"></i> <span class="full-text">College Info</span></a>
                </div>
            </div>
        </aside>

        <!-- Main content -->
        <main class="content">
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Student Management System</a>
                        <button class="btn btn-primary ms-auto" onclick="window.location.href='dashboard.jsp'">Home</button>
                        <div class="ms-auto">
                            <div class="dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" aria-haspopup="true">
                                    <i class="fas fa-user-circle me-2"></i>Profile
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#changePasswordModal"><i class="fas fa-key me-2"></i>Change Password</a></li>
                                    <li><a class="dropdown-item" href="index.jsp"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>

            <!-- Dashboard content -->
            <section class="container-fluid p-4">
                <div class="dashboard-welcome text-center">
                    <h2>Welcome to the Dashboard, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "User" %>.</h2>
                    <p>Select an option from the menu to get started.</p>
                </div>

                <!-- Dashboard Items Grid -->
                <div class="dashboard-items row">
                    <!-- Notifications Section -->
                    <div class="col-md-6 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h5>Recent Notifications</h5>
                            </div>
                            <div class="card-body">
                                <ul>
                                    <li>New course materials uploaded for CS101.</li>
                                    <li>Reminder: Fee payment due by December 15.</li>
                                    <li>Feedback requested for the last semester's courses.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Student Information Section -->
                    <div class="col-md-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h5>Student Information</h5>
                            </div>
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-3">
                                    <ul>
                                        <li><strong>Name:</strong> <%= session.getAttribute("username") != null ? session.getAttribute("username") : "John Doe" %></li>
                                        <li><strong>Student ID:</strong> <%= session.getAttribute("studentId") != null ? session.getAttribute("studentId") : "12345" %></li>
                                        <li><strong>Course:</strong> <%= session.getAttribute("course") != null ? session.getAttribute("course") : "Computer Science" %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Performance Section -->
                    <div class="col-md-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h5>Performance Overview</h5>
                            </div>
                            <div class="card-body">
                                <!-- Chart.js performance chart (already included in previous code) -->
                                <canvas id="performanceChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Modal for Changing Password -->
            <div class="modal fade" id="changePasswordModal" tabindex="-1" aria-labelledby="changePasswordModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="changePasswordModalLabel">Change Password</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="changePassword.jsp">
                                <div class="mb-3">
                                    <label for="oldPassword" class="form-label">Old Password</label>
                                    <input type="password" class="form-control" id="oldPassword" name="oldPassword" required>
                                </div>
                                <div class="mb-3">
                                    <label for="newPassword" class="form-label">New Password</label>
                                    <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                                </div>
                                <div class="mb-3">
                                    <label for="confirmPassword" class="form-label">Confirm New Password</label>
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Save Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </main>
    </div>

    <!-- Bootstrap JS, Popper.js and Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- Chart.js for performance overview -->
    <script>
        var ctx = document.getElementById('performanceChart').getContext('2d');
        var performanceChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['DS', 'JAVA', 'DBMS'],
                datasets: [{
                    label: 'Grades',
                    data: [95, 85, 92],
                    backgroundColor: ['#4CAF50', '#FFC107', '#2196F3'],
                    borderColor: ['#388E3C', '#FF9800', '#1976D2'],
                    borderWidth: 1
                }]
            }
        });
    </script>

</body>
</html>
