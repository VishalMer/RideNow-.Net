﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/rides.Master" AutoEventWireup="true" CodeBehind="rides.aspx.cs" Inherits="RideNow.admin.rides1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Rides Management - RideNow Admin</title>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
                    <link rel="stylesheet" href="../css/font-awesome.min.css">
                    <link rel="stylesheet" href="../css/bootstrap.css">
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

                        .page-header {
                            background: var(--white);
                            padding: 2rem;
                            border-radius: 10px;
                            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                            margin-bottom: 2rem;
                        }

                        .page-title {
                            color: var(--primary-blue);
                            font-size: 2rem;
                            font-weight: 700;
                            margin-bottom: 0.5rem;
                        }

                        .page-subtitle {
                            color: #6c757d;
                            font-size: 1.1rem;
                        }

                        .stats-cards {
                            display: grid;
                            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                            gap: 1.5rem;
                            margin-bottom: 2rem;
                        }

                        .stat-card {
                            background: var(--white);
                            padding: 1.5rem;
                            border-radius: 10px;
                            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                            text-align: center;
                            transition: transform 0.3s ease;
                        }

                            .stat-card:hover {
                                transform: translateY(-5px);
                            }

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
                        }

                        .filters-section {
                            background: var(--white);
                            padding: 1.5rem;
                            border-radius: 10px;
                            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                            margin-bottom: 2rem;
                        }

                        .rides-table-container {
                            background: var(--white);
                            border-radius: 10px;
                            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                            overflow: hidden;
                        }

                        .table-header {
                            background: var(--primary-blue);
                            color: var(--white);
                            padding: 1.5rem;
                            display: flex;
                            justify-content: space-between;
                            align-items: center;
                        }

                        .table-title {
                            font-size: 1.3rem;
                            font-weight: 600;
                        }

                        .add-ride-btn {
                            background: var(--accent-yellow);
                            color: var(--primary-blue);
                            border: none;
                            padding: 0.75rem 1.5rem;
                            border-radius: 5px;
                            font-weight: 600;
                            text-decoration: none;
                            transition: all 0.3s ease;
                        }

                            .add-ride-btn:hover {
                                background: #e6c200;
                                color: var(--primary-blue);
                                text-decoration: none;
                            }

                        .table {
                            margin: 0;
                        }

                            .table th {
                                background: #f8f9fa;
                                border: none;
                                padding: 1rem;
                                font-weight: 600;
                                color: var(--primary-blue);
                            }

                            .table td {
                                padding: 1rem;
                                border: none;
                                border-bottom: 1px solid #e9ecef;
                                vertical-align: middle;
                            }

                        .ride-info {
                            display: flex;
                            align-items: center;
                        }

                        .ride-avatar {
                            width: 50px;
                            height: 50px;
                            border-radius: 50%;
                            background: var(--primary-blue);
                            color: var(--white);
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            font-weight: 600;
                            margin-right: 1rem;
                        }

                        .ride-details h6 {
                            margin: 0;
                            font-weight: 600;
                            color: var(--primary-blue);
                        }

                        .ride-details small {
                            color: #6c757d;
                        }

                        .status-badge {
                            padding: 0.4rem 0.8rem;
                            border-radius: 20px;
                            font-size: 0.85rem;
                            font-weight: 600;
                            text-transform: uppercase;
                        }

                        .status-completed {
                            background: #d4edda;
                            color: var(--success-green);
                        }

                        .status-in-progress {
                            background: #d1ecf1;
                            color: var(--info-blue);
                        }

                        .status-cancelled {
                            background: #f8d7da;
                            color: var(--error-red);
                        }

                        .status-pending {
                            background: #fff3cd;
                            color: var(--warning-orange);
                        }

                        .status-scheduled {
                            background: #e2e3e5;
                            color: #6c757d;
                        }

                        .route-info {
                            font-size: 0.9rem;
                            color: #6c757d;
                        }

                            .route-info .from {
                                color: var(--success-green);
                                font-weight: 600;
                            }

                            .route-info .to {
                                color: var(--error-red);
                                font-weight: 600;
                            }

                            .route-info .arrow {
                                margin: 0 0.5rem;
                                color: var(--primary-blue);
                            }

                        .driver-info, .rider-info {
                            display: flex;
                            align-items: center;
                        }

                        .driver-avatar, .rider-avatar {
                            width: 35px;
                            height: 35px;
                            border-radius: 50%;
                            background: #e9ecef;
                            color: var(--dark-slate);
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            font-size: 0.8rem;
                            font-weight: 600;
                            margin-right: 0.5rem;
                        }

                        .driver-details, .rider-details h6 {
                            margin: 0;
                            font-weight: 600;
                            color: var(--primary-blue);
                            font-size: 0.9rem;
                        }

                        .driver-details, .rider-details small {
                            color: #6c757d;
                            font-size: 0.8rem;
                        }

                        .action-buttons {
                            display: flex;
                            gap: 0.5rem;
                        }

                        .btn-action {
                            padding: 0.4rem 0.8rem;
                            border: none;
                            border-radius: 5px;
                            font-size: 0.85rem;
                            font-weight: 500;
                            text-decoration: none;
                            transition: all 0.3s ease;
                            cursor: pointer;
                        }

                        .btn-view {
                            background: var(--info-blue);
                            color: var(--white);
                        }

                        .btn-edit {
                            background: var(--warning-orange);
                            color: var(--white);
                        }

                        .btn-cancel {
                            background: var(--error-red);
                            color: var(--white);
                        }

                        .btn-complete {
                            background: var(--success-green);
                            color: var(--white);
                        }

                        .btn-track {
                            background: #6c757d;
                            color: var(--white);
                        }

                        .btn-action:hover {
                            transform: translateY(-2px);
                            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
                            text-decoration: none;
                            color: var(--white);
                        }

                        .search-box {
                            position: relative;
                            max-width: 300px;
                        }

                            .search-box input {
                                padding: 0.75rem 1rem 0.75rem 2.5rem;
                                border: 2px solid #e9ecef;
                                border-radius: 25px;
                                width: 100%;
                                transition: all 0.3s ease;
                            }

                                .search-box input:focus {
                                    outline: none;
                                    border-color: var(--primary-blue);
                                    box-shadow: 0 0 0 3px rgba(11, 36, 71, 0.1);
                                }

                            .search-box i {
                                position: absolute;
                                left: 1rem;
                                top: 50%;
                                transform: translateY(-50%);
                                color: #6c757d;
                            }

                        .filter-select {
                            padding: 0.75rem 1rem;
                            border: 2px solid #e9ecef;
                            border-radius: 5px;
                            background: var(--white);
                            color: var(--dark-slate);
                            min-width: 150px;
                        }

                            .filter-select:focus {
                                outline: none;
                                border-color: var(--primary-blue);
                            }

                        .pagination {
                            justify-content: center;
                            margin-top: 2rem;
                        }

                        .page-link {
                            color: var(--primary-blue);
                            border: 1px solid #dee2e6;
                            padding: 0.75rem 1rem;
                        }

                            .page-link:hover {
                                background: var(--primary-blue);
                                color: var(--white);
                                border-color: var(--primary-blue);
                            }

                        .page-item.active .page-link {
                            background: var(--primary-blue);
                            border-color: var(--primary-blue);
                        }

                        .fare-amount {
                            font-weight: 600;
                            color: var(--success-green);
                            font-size: 1.1rem;
                        }

                        .duration {
                            color: #6c757d;
                            font-size: 0.9rem;
                        }

                        .rating {
                            color: var(--accent-yellow);
                            font-size: 1rem;
                        }

                        @media (max-width: 768px) {
                            .action-buttons {
                                flex-direction: column;
                            }

                            .table-responsive {
                                font-size: 0.9rem;
                            }

                            .ride-info {
                                flex-direction: column;
                                text-align: center;
                            }

                            .ride-avatar {
                                margin-right: 0;
                                margin-bottom: 0.5rem;
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
                                    <span>Welcome, Admin</span> <a href="../index.aspx" class="btn btn-outline-light ml-3">Logout</a>
                                </div>
                            </div>
                        </div>
                    </header>

                    <!-- Admin Navigation -->
                    <nav class="admin-nav">
                        <div class="container">
                            <ul class="nav">
                                <li class="nav-item"><a class="nav-link" href="index.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                                <li class="nav-item"><a class="nav-link" href="drivers.aspx"><i class="fa fa-users"></i>Drivers </a></li>
                                <li class="nav-item"><a class="nav-link" href="riders.aspx"><i class="fa fa-user"></i>Riders </a></li>
                                <li class="nav-item"><a class="nav-link active" href="rides.aspx"><i class="fa fa-road"></i>Rides </a></li>
                                <li class="nav-item"><a class="nav-link" href="support-tickets.aspx"><i class="fa fa-ticket"></i>Support </a></li>
                            </ul>
                        </div>
                    </nav>

                    <!-- Main Content -->
                    <main class="main-content">
                    <div class="container">
                            <!-- Page Header -->
                            <div class="page-header">
                                <h1 class="page-title">Rides Management</h1>
                                <p class="page-subtitle">
                                    Monitor and manage all rides, track driver and rider activities, and handle ride-related issues</p>
                        </div>

                            <!-- Stats Cards -->
                            <div class="stats-cards">
                                <div class="stat-card">
                                    <div class="stat-number">
                                        15,234</div>
                                    <div class="stat-label">
                                        Total Rides</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-number">
                                        1,247</div>
                                    <div class="stat-label">
                                        Active Rides</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-number">
                                        13,856</div>
                                    <div class="stat-label">
                                        Completed Today</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-number">
                                        $89,456</div>
                                    <div class="stat-label">
                                        Total Revenue</div>
                                </div>
                        </div>

                            <!-- Filters Section -->
                            <div class="filters-section">
                                <div class="row align-items-center">
                                    <div class="col-md-3">
                                        <div class="search-box">
                                            <i class="fa fa-search"></i>
                                            <input type="text" placeholder="Search rides..." id="searchInput">
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="filter-select" id="statusFilter">
                                            <option value="">All Status</option>
                                            <option value="completed">Completed</option>
                                            <option value="in-progress">In Progress</option>
                                            <option value="pending">Pending</option>
                                            <option value="cancelled">Cancelled</option>
                                            <option value="scheduled">Scheduled</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="filter-select" id="driverFilter">
                                            <option value="">All Drivers</option>
                                            <option value="john">John Doe</option>
                                            <option value="maria">Maria Smith</option>
                                            <option value="robert">Robert Johnson</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="filter-select" id="dateFilter">
                                            <option value="">All Time</option>
                                            <option value="today">Today</option>
                                            <option value="week">This Week</option>
                                            <option value="month">This Month</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3 text-right">
                                        <button class="btn btn-primary" onclick="exportRides()">
                                            <i class="fa fa-download"></i>Export Data
                                        </button>
                                    </div>
                                </div>
                        </div>

                            <!-- Rides Table -->
                            <div class="rides-table-container">
                                <div class="table-header">
                                    <h3 class="table-title">All Rides</h3>
                                    <a href="#" class="add-ride-btn"><i class="fa fa-plus"></i>Create Ride </a>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Ride ID</th>
                                                <th>Route</th>
                                                <th>Driver</th>
                                                <th>Rider</th>
                                                <th>Status</th>
                                                <th>Fare</th>
                                                <th>Duration</th>
                                                <th>Created</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="ridesTableBody">
                                            <!-- Sample Ride Data -->
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12345</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            Downtown Mall</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Airport Terminal</div>
                                                        <small>12.5 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            JD</div>
                                                        <div class="driver-details">
                                                            <h6>John Doe</h6>
                                                            <small>Toyota Camry</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            JS</div>
                                                        <div class="rider-details">
                                                            <h6>Jennifer Smith</h6>
                                                            <small>+1 (555) 123-4567</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-completed">Completed</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $24.50</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        18 min</div>
                                                </td>
                                                <td>2 hours ago</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-track" title="Track Ride"><i class="fa fa-map-marker"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12346</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            Central Station</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Business District</div>
                                                        <small>8.2 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            MS</div>
                                                        <div class="driver-details">
                                                            <h6>Maria Smith</h6>
                                                            <small>Honda Accord</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            MJ</div>
                                                        <div class="rider-details">
                                                            <h6>Michael Johnson</h6>
                                                            <small>+1 (555) 234-5678</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-in-progress">In Progress</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $18.75</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        12 min</div>
                                                </td>
                                                <td>30 min ago</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-track" title="Track Ride"><i class="fa fa-map-marker"></i></a><a href="#" class="btn-action btn-complete" title="Complete Ride"><i class="fa fa-check"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12347</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            University Campus</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Shopping Center</div>
                                                        <small>15.8 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            RJ</div>
                                                        <div class="driver-details">
                                                            <h6>Robert Johnson</h6>
                                                            <small>Ford Fusion</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            SB</div>
                                                        <div class="rider-details">
                                                            <h6>Sarah Brown</h6>
                                                            <small>+1 (555) 345-6789</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-pending">Pending</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $32.20</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        -</div>
                                                </td>
                                                <td>1 hour ago</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Ride"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-cancel" title="Cancel Ride"><i class="fa fa-times"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12348</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            Residential Area</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Hospital</div>
                                                        <small>6.5 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            AL</div>
                                                        <div class="driver-details">
                                                            <h6>Alice Lee</h6>
                                                            <small>Nissan Altima</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            CD</div>
                                                        <div class="rider-details">
                                                            <h6>Christopher Davis</h6>
                                                            <small>+1 (555) 456-7890</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-cancelled">Cancelled</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $0.00</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        -</div>
                                                </td>
                                                <td>3 hours ago</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12349</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            Office Building</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Restaurant District</div>
                                                        <small>4.2 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            DW</div>
                                                        <div class="driver-details">
                                                            <h6>David Wilson</h6>
                                                            <small>Chevrolet Malibu</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            EW</div>
                                                        <div class="rider-details">
                                                            <h6>Emily Wilson</h6>
                                                            <small>+1 (555) 567-8901</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-scheduled">Scheduled</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $12.80</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        -</div>
                                                </td>
                                                <td>Tomorrow 9:00 AM</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Ride"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-cancel" title="Cancel Ride"><i class="fa fa-times"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="ride-info">
                                                        <div class="ride-avatar">
                                                            RID</div>
                                                        <div class="ride-details">
                                                            <h6>#RID12350</h6>
                                                            <small>Ride ID</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="route-info">
                                                        <div class="from">
                                                            Hotel District</div>
                                                        <div class="arrow">
                                                            →</div>
                                                        <div class="to">
                                                            Convention Center</div>
                                                        <small>9.7 km</small>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="driver-info">
                                                        <div class="driver-avatar">
                                                            JD</div>
                                                        <div class="driver-details">
                                                            <h6>John Doe</h6>
                                                            <small>Toyota Camry</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="rider-info">
                                                        <div class="rider-avatar">
                                                            RM</div>
                                                        <div class="rider-details">
                                                            <h6>Robert Miller</h6>
                                                            <small>+1 (555) 678-9012</small>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span class="status-badge status-completed">Completed</span></td>
                                                <td>
                                                    <div class="fare-amount">
                                                        $28.90</div>
                                                </td>
                                                <td>
                                                    <div class="duration">
                                                        22 min</div>
                                                </td>
                                                <td>4 hours ago</td>
                                                <td>
                                                    <div class="action-buttons">
                                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-track" title="Track Ride"><i class="fa fa-map-marker"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                        </div>

                            <!-- Pagination -->
                            <nav aria-label="Rides pagination">
                                <ul class="pagination">
                                    <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a> </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a> </li>
                                    <li class="page-item"><a class="page-link" href="#">2</a> </li>
                                    <li class="page-item"><a class="page-link" href="#">3</a> </li>
                                    <li class="page-item"><a class="page-link" href="#">Next</a> </li>
                                </ul>
                        </nav>
                    </div>
                    </main>

                    <script src="../js/vendor/jquery-2.2.4.min.js"></script>
                    <script src="../js/vendor/bootstrap.min.js"></script>
                    <script>
                        // Search functionality
                        document.getElementById('searchInput').addEventListener('input', function () {
                            const searchTerm = this.value.toLowerCase();
                            const rows = document.querySelectorAll('#ridesTableBody tr');

                            rows.forEach(row => {
                                const text = row.textContent.toLowerCase();
                                if (text.includes(searchTerm)) {
                                    row.style.display = '';
                                } else {
                                    row.style.display = 'none';
                                }
                            });
                        });

                        // Filter functionality
                        document.getElementById('statusFilter').addEventListener('change', function () {
                            filterTable();
                        });

                        document.getElementById('driverFilter').addEventListener('change', function () {
                            filterTable();
                        });

                        document.getElementById('dateFilter').addEventListener('change', function () {
                            filterTable();
                        });

                        function filterTable() {
                            const statusFilter = document.getElementById('statusFilter').value;
                            const driverFilter = document.getElementById('driverFilter').value;
                            const dateFilter = document.getElementById('dateFilter').value;
                            const rows = document.querySelectorAll('#ridesTableBody tr');

                            rows.forEach(row => {
                                let showRow = true;

                                if (statusFilter) {
                                    const statusBadge = row.querySelector('.status-badge');
                                    if (statusBadge && !statusBadge.classList.contains(`status-${statusFilter}`)) {
                                        showRow = false;
                                    }
                                }

                                if (driverFilter && showRow) {
                                    const driverName = row.querySelector('.driver-details h6').textContent.toLowerCase();
                                    if (!driverName.includes(driverFilter)) {
                                        showRow = false;
                                    }
                                }

                                if (dateFilter && showRow) {
                                    // This would typically filter by actual dates
                                    // For demo purposes, we'll just show all rows
                                    showRow = true;
                                }

                                row.style.display = showRow ? '' : 'none';
                            });
                        }

                        // Export functionality
                        function exportRides() {
                            alert('Export functionality would be implemented here');
                        }

                        // Action button handlers
                        document.addEventListener('click', function (e) {
                            if (e.target.closest('.btn-view')) {
                                e.preventDefault();
                                alert('View ride details functionality');
                            } else if (e.target.closest('.btn-edit')) {
                                e.preventDefault();
                                alert('Edit ride functionality');
                            } else if (e.target.closest('.btn-cancel')) {
                                e.preventDefault();
                                if (confirm('Are you sure you want to cancel this ride?')) {
                                    alert('Ride cancelled successfully');
                                }
                            } else if (e.target.closest('.btn-complete')) {
                                e.preventDefault();
                                if (confirm('Are you sure you want to complete this ride?')) {
                                    alert('Ride completed successfully');
                                }
                            } else if (e.target.closest('.btn-track')) {
                                e.preventDefault();
                                alert('Track ride functionality - would open real-time tracking');
                            }
                        });
                    </script>
                </body>
    </html>
</asp:Content>

