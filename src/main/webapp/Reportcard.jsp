<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System - Report Card</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --gradient-primary: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            --gradient-secondary: linear-gradient(135deg, #30cfd0 0%, #330867 100%);
            --light-bg: #f4f6f9;
            --text-color: #2c3e50;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-color: var(--light-bg);
            font-family: 'Arial', sans-serif;
            color: var(--text-color);
            line-height: 1.6;
        }

        .mobile-menu-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 24px;
            cursor: pointer;
            color: #333;
            margin-right: 15px;
        }

        .sidebar {
            width: 100%;
            background: var(--gradient-primary);
            transition: all 0.3s ease;
            position: relative;
        }

        .sidebar-brand {
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 1.5rem;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .entity-button:hover {
            background-color: #1f232946;
            color: #007bff;
            border-left-color: #007bff;
            transform: translateX(10px);
        }

        .dashboard-items {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 16px;
        }       

        .card {
            min-height: 150px;
            display: flex;
            flex-direction: column;
        }

        .entity-button {
            display: block;
            width: 100%;
            padding: 10px 20px;
            text-align: left;
            color: #333;
            text-decoration: none;
            transition: all 0.3s ease;
            border-left: 4px solid transparent;
        }

        .entity-menu {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 10px;
        }

        .entity-button {
            width: 50%;
            text-align: center;
            margin-bottom: 10px;
        }

        .entity-button a {
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px;
            transition: background-color 0.3s ease;
            border-radius: 5px;
        }

        .entity-button i {
            margin-right: 10px;
        }

        .content {
            width: 100%;
            padding: 15px;
            transition: all 0.3s ease;
        }

        .dashboard-welcome {
            background: var(--gradient-secondary);
            color: white;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
        }

        .card {
            margin-bottom: 20px;
        }

        .chart-container {
            position: relative;
            height: 30vh;
            width: 100%;
        }

        .calendar {
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .profile-image {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }

        @media (min-width: 768px) {
            .d-flex {
                flex-direction: row;
            }

            .mobile-menu-toggle {
                display: none !important;
            }

            .sidebar {
                width: 80px;
                height: 100vh;
                position: fixed;
                overflow-y: auto;
            }

            .sidebar:hover {
                width: 250px;
            }

            .sidebar .full-text {
                opacity: 0;
                white-space: nowrap;
                transition: opacity 0.3s ease;
            }

            .sidebar:hover .full-text {
                opacity: 1;
            }

            .entity-button {
                width: 100%;
                text-align: left;
            }

            .entity-button a {
                justify-content: flex-start;
            }

            .content {
                margin-left: 80px;
                width: calc(100% - 80px);
            }

            .sidebar:hover + .content {
                margin-left: 250px;
                width: calc(100% - 250px);
            }
        }

        @media (max-width: 767px) {
            .mobile-menu-toggle {
                display: block;
            }

            .sidebar.mobile-sidebar {
                position: fixed;
                top: 0;
                left: -100%;
                width: 250px;
                height: 100%;
                z-index: 1000;
                transition: left 0.3s ease;
                overflow-y: auto;
            }

            .sidebar.mobile-sidebar.mobile-open {
                left: 0;
            }

            .content.sidebar-active {
                opacity: 0.5;
                pointer-events: none;
            }

            .entity-button {
                width: 100%;
            }

            .navbar {
                position: relative;
                z-index: 1001;
            }
        }
    </style>
</head>
<body>
<div class="d-flex">
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
                                <li><a class=" dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#changePasswordModal"><i class="fas fa-key me-2"></i>Change Password</a></li>
                                <li><a class="dropdown-item" href="index.jsp"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <section class="container-fluid p-4">
            <div class="dashboard-welcome text-center">
                <h2>Your Report Card Overview</h2>
                <p>Select an option from the menu to view your report card details.</p>
            </div>

            <!-- Report Card Section -->
            <div class="card">
                <div class="card-header">
                    <h5>Your Report Card Records</h5>
                </div>
                <div class="card-body">
                    <!-- Example report card details -->
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Score</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Example report card records -->
                            <tr>
                                <td>Data Structures</td>
                                <td>90%</td>
                                <td><span class="badge bg-success">Passed</span></td>
                            </tr>
                            <tr>
                                <td>Operating Systems</td>
                                <td>75%</td>
                                <td><span class="badge bg-success">Passed</span></td>
                            </tr>
                            <tr>
                                <td>Database Management Systems</td>
                                <td>65%</td>
                                <td><span class="badge bg-danger">Failed</span></td>
                            </tr>
                            <!-- Add more records as needed -->
                        </tbody>
                    </table>
                </div>
            </div>

        </section>

    </main>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>