﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RideNow.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Admin Dashboard - RideNow</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-blue: #0B2447;
            --accent-yellow: #FFD700;
            --light-gray: #F5F7FA;
            --white: #FFFFFF;
            --dark-slate: #2F4F4F;
            --success-green: #28a745;
            --error-red: #dc3545;
            --warning-orange: #ffc107;
            --info-blue: #17a2b8;
            --font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--light-gray);
            color: var(--dark-slate);
        }

        .admin-header {
            background: linear-gradient(135deg, var(--primary-blue), #1e3a8a);
            color: var(--white);
            padding: 1rem 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .admin-nav {
            background: var(--white);
            padding: 0;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .admin-nav .nav-link {
            color: var(--dark-slate);
            padding: 1rem 1.5rem;
            border-bottom: 3px solid transparent;
            transition: all 0.3s ease;
        }

        .admin-nav .nav-link:hover,
        .admin-nav .nav-link.active {
            color: var(--primary-blue);
            border-bottom-color: var(--accent-yellow);
            background-color: rgba(11, 36, 71, 0.05);
        }

        .main-content {
            padding: 2rem 0;
        }

        .welcome-section {
            background: linear-gradient(135deg, var(--primary-blue), #1e3a8a);
            color: var(--white);
            padding: 2rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            box-shadow: 0 10px 30px rgba(11, 36, 71, 0.3);
        }

        .welcome-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .welcome-subtitle {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: var(--white);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .stat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.15);
        }

        .stat-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--accent-yellow), #ffed4e);
        }

        .stat-icon {
            width: 60px;
            height: 60px;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .stat-icon.drivers { background: linear-gradient(135deg, #667eea, #764ba2); }
        .stat-icon.riders { background: linear-gradient(135deg, #f093fb, #f5576c); }
        .stat-icon.rides { background: linear-gradient(135deg, #4facfe, #00f2fe); }
        .stat-icon.revenue { background: linear-gradient(135deg, #43e97b, #38f9d7); }

        .stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-blue);
            margin-bottom: 0.5rem;
        }

        .stat-label {
            color: #6c757d;
            font-size: 1rem;
            font-weight: 500;
            margin-bottom: 0.5rem;
        }

        .stat-change {
            font-size: 0.9rem;
            font-weight: 600;
        }

        .stat-change.positive { color: var(--success-green); }
        .stat-change.negative { color: var(--error-red); }

        .charts-section {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .chart-card {
            background: var(--white);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .chart-title {
            font-size: 1.3rem;
            font-weight: 600;
            color: var(--primary-blue);
            margin-bottom: 1.5rem;
        }

        .chart-container {
            position: relative;
            height: 300px;
        }

        .activities-section {
            background: var(--white);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            margin-bottom: 2rem;
        }

        .section-title {
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary-blue);
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
        }

        .section-title i {
            margin-right: 0.5rem;
            color: var(--accent-yellow);
        }

        .activity-item {
            display: flex;
            align-items: center;
            padding: 1rem 0;
            border-bottom: 1px solid #f1f3f4;
        }

        .activity-item:last-child {
            border-bottom: none;
        }

        .activity-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
            font-size: 1rem;
        }

        .activity-icon.new-driver { background: #e3f2fd; color: #1976d2; }
        .activity-icon.new-rider { background: #f3e5f5; color: #7b1fa2; }
        .activity-icon.ride-completed { background: #e8f5e8; color: #388e3c; }
        .activity-icon.support-ticket { background: #fff3e0; color: #f57c00; }

        .activity-content h6 {
            margin: 0;
            font-weight: 600;
            color: var(--primary-blue);
        }

        .activity-content small {
            color: #6c757d;
        }

        .activity-time {
            margin-left: auto;
            color: #6c757d;
            font-size: 0.9rem;
        }

        .quick-actions {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .quick-action-btn {
            background: var(--white);
            border: 2px solid #e9ecef;
            padding: 1.5rem;
            border-radius: 10px;
            text-decoration: none;
            color: var(--dark-slate);
            transition: all 0.3s ease;
            text-align: center;
        }

        .quick-action-btn:hover {
            border-color: var(--primary-blue);
            color: var(--primary-blue);
            text-decoration: none;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .quick-action-btn i {
            font-size: 2rem;
            margin-bottom: 0.5rem;
            display: block;
        }

        .quick-action-btn h6 {
            margin: 0;
            font-weight: 600;
        }

        .notifications-section {
            background: var(--white);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        .notification-item {
            display: flex;
            align-items: center;
            padding: 1rem 0;
            border-bottom: 1px solid #f1f3f4;
        }

        .notification-item:last-child {
            border-bottom: none;
        }

        .notification-icon {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
            font-size: 0.9rem;
        }

        .notification-icon.urgent { background: #ffebee; color: var(--error-red); }
        .notification-icon.warning { background: #fff8e1; color: var(--warning-orange); }
        .notification-icon.info { background: #e3f2fd; color: var(--info-blue); }

        .notification-content {
            flex: 1;
        }

        .notification-content h6 {
            margin: 0;
            font-weight: 600;
            color: var(--primary-blue);
        }

        .notification-content p {
            margin: 0;
            color: #6c757d;
            font-size: 0.9rem;
        }

        .notification-time {
            color: #6c757d;
            font-size: 0.8rem;
        }

        @media (max-width: 768px) {
            .charts-section {
                grid-template-columns: 1fr;
            }
            
            .stats-grid {
                grid-template-columns: 1fr;
            }
            
            .quick-actions {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
    </head>
    <body>
    <!-- Admin Header -->
        <header class="admin-header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <h2><i class="fa fa-car"></i>RideNow Admin Panel</h2>
                    </div>
                    <div class="col-md-6 text-right">
                        <span>Welcome, Admin</span> <a href="../index.html" class="btn btn-outline-light ml-3">Logout</a>
                    </div>
                </div>
            </div>
        </header>

    <!-- Admin Navigation -->
        <nav class="admin-nav">
            <div class="container">
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link active" href="index.html"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li class="nav-item"><a class="nav-link" href="drivers.html"><i class="fa fa-users"></i>Drivers </a></li>
                    <li class="nav-item"><a class="nav-link" href="riders.html"><i class="fa fa-user"></i>Riders </a></li>
                    <li class="nav-item"><a class="nav-link" href="rides.html"><i class="fa fa-road"></i>Rides </a></li>
                    <li class="nav-item"><a class="nav-link" href="support-tickets.html"><i class="fa fa-ticket"></i>Support </a></li>
                </ul>
            </div>
        </nav>

    <!-- Main Content -->
        <main class="main-content">
        <div class="container">
            <!-- Welcome Section -->
            <div class="welcome-section">
                <h1 class="welcome-title">Welcome to RideNow Admin Dashboard</h1>
                <p class="welcome-subtitle">
                    Monitor and manage your transportation platform with real-time insights and analytics</p>
            </div>

            <!-- Quick Actions -->
            <div class="quick-actions">
                <a href="drivers.html" class="quick-action-btn"><i class="fa fa-users"></i>
                <h6>Manage Drivers</h6>
                </a><a href="riders.html" class="quick-action-btn"><i class="fa fa-user"></i>
                <h6>Manage Riders</h6>
                </a><a href="rides.html" class="quick-action-btn"><i class="fa fa-road"></i>
                <h6>View Rides</h6>
                </a><a href="support-tickets.html" class="quick-action-btn"><i class="fa fa-ticket"></i>
                <h6>Support Tickets</h6>
                </a>
            </div>

            <!-- Statistics Cards -->
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-icon drivers">
                        <i class="fa fa-users"></i>
                    </div>
                    <div class="stat-number">
                        156</div>
                    <div class="stat-label">
                        Total Drivers</div>
                    <div class="stat-change positive">
                        +12% from last month</div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon riders">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="stat-number">
                        2,847</div>
                    <div class="stat-label">
                        Total Riders</div>
                    <div class="stat-change positive">
                        +8% from last month</div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon rides">
                        <i class="fa fa-road"></i>
                    </div>
                    <div class="stat-number">
                        15,234</div>
                    <div class="stat-label">
                        Total Rides</div>
                    <div class="stat-change positive">
                        +15% from last month</div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon revenue">
                        <i class="fa fa-dollar"></i>
                    </div>
                    <div class="stat-number">
                        $89,456</div>
                    <div class="stat-label">
                        Monthly Revenue</div>
                    <div class="stat-change positive">
                        +22% from last month</div>
                </div>
            </div>

            <!-- Charts Section -->
            <div class="charts-section">
                <div class="chart-card">
                    <h3 class="chart-title">Ride Trends (Last 7 Days)</h3>
                    <div class="chart-container">
                        <canvas id="rideTrendsChart"></canvas>
                    </div>
                </div>
                <div class="chart-card">
                    <h3 class="chart-title">Revenue Distribution</h3>
                    <div class="chart-container">
                        <canvas id="revenueChart"></canvas>
                    </div>
                </div>
            </div>

            <!-- Recent Activities & Notifications -->
            <div class="row">
                <div class="col-md-8">
                    <div class="activities-section">
                        <h3 class="section-title"><i class="fa fa-clock-o"></i>Recent Activities </h3>
                        <div class="activity-item">
                            <div class="activity-icon new-driver">
                                <i class="fa fa-user-plus"></i>
                            </div>
                            <div class="activity-content">
                                <h6>New Driver Registered</h6>
                                <small>Robert Johnson joined the platform</small>
                            </div>
                            <div class="activity-time">
                                2 hours ago</div>
                        </div>
                        <div class="activity-item">
                            <div class="activity-icon new-rider">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="activity-content">
                                <h6>New Rider Registered</h6>
                                <small>Sarah Brown created an account</small>
                            </div>
                            <div class="activity-time">
                                4 hours ago</div>
                        </div>
                        <div class="activity-item">
                            <div class="activity-icon ride-completed">
                                <i class="fa fa-check-circle"></i>
                            </div>
                            <div class="activity-content">
                                <h6>Ride Completed</h6>
                                <small>Ride #RID12345 completed successfully</small>
                            </div>
                            <div class="activity-time">
                                6 hours ago</div>
                        </div>
                        <div class="activity-item">
                            <div class="activity-icon support-ticket">
                                <i class="fa fa-ticket"></i>
                            </div>
                            <div class="activity-content">
                                <h6>Support Ticket Created</h6>
                                <small>New ticket #TKT00123 received</small>
                            </div>
                            <div class="activity-time">
                                8 hours ago</div>
                        </div>
                        <div class="activity-item">
                            <div class="activity-icon ride-completed">
                                <i class="fa fa-check-circle"></i>
                            </div>
                            <div class="activity-content">
                                <h6>Ride Completed</h6>
                                <small>Ride #RID12344 completed successfully</small>
                            </div>
                            <div class="activity-time">
                                12 hours ago</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="notifications-section">
                        <h3 class="section-title"><i class="fa fa-bell"></i>Notifications </h3>
                        <div class="notification-item">
                            <div class="notification-icon urgent">
                                <i class="fa fa-exclamation"></i>
                            </div>
                            <div class="notification-content">
                                <h6>Urgent: System Maintenance</h6>
                                <p>
                                    Scheduled maintenance tonight 2-4 AM</p>
                            </div>
                            <div class="notification-time">
                                1 hour ago</div>
                        </div>
                        <div class="notification-item">
                            <div class="notification-icon warning">
                                <i class="fa fa-warning"></i>
                            </div>
                            <div class="notification-content">
                                <h6>Driver Suspension</h6>
                                <p>
                                    Driver Alice Lee has been suspended</p>
                            </div>
                            <div class="notification-time">
                                3 hours ago</div>
                        </div>
                        <div class="notification-item">
                            <div class="notification-icon info">
                                <i class="fa fa-info-circle"></i>
                            </div>
                            <div class="notification-content">
                                <h6>New Feature Update</h6>
                                <p>
                                    Real-time tracking feature deployed</p>
                            </div>
                            <div class="notification-time">
                                1 day ago</div>
                        </div>
                        <div class="notification-item">
                            <div class="notification-icon info">
                                <i class="fa fa-info-circle"></i>
                            </div>
                            <div class="notification-content">
                                <h6>Monthly Report Ready</h6>
                                <p>
                                    December 2023 report is available</p>
                            </div>
                            <div class="notification-time">
                                2 days ago</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </main>

    <script src="../js/vendor/jquery-2.2.4.min.js"></script>
    <script src="../js/vendor/bootstrap.min.js"></script>
    <script>
        // Ride Trends Chart
        const rideTrendsCtx = document.getElementById('rideTrendsChart').getContext('2d');
        new Chart(rideTrendsCtx, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: 'Rides Completed',
                    data: [120, 150, 180, 200, 220, 190, 160],
                    borderColor: '#0B2447',
                    backgroundColor: 'rgba(11, 36, 71, 0.1)',
                    borderWidth: 3,
                    fill: true,
                    tension: 0.4
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            color: '#f1f3f4'
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                }
            }
        });

        // Revenue Distribution Chart
        const revenueCtx = document.getElementById('revenueChart').getContext('2d');
        new Chart(revenueCtx, {
            type: 'doughnut',
            data: {
                labels: ['City Rides', 'Airport Transfers', 'Event Transport', 'Business Travel'],
                datasets: [{
                    data: [45, 25, 20, 10],
                    backgroundColor: [
                        '#0B2447',
                        '#FFD700',
                        '#28a745',
                        '#17a2b8'
                    ],
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            padding: 20,
                            usePointStyle: true
                        }
                    }
                }
            }
        });

        // Auto-refresh data every 30 seconds
        setInterval(function() {
            // This would typically fetch new data from the server
            console.log('Refreshing dashboard data...');
        }, 30000);
    </script>
    </body>
    </html>
</asp:Content>

