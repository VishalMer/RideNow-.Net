﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/drivers.Master" AutoEventWireup="true" CodeBehind="drivers.aspx.cs" Inherits="RideNow.admin.drivers1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Drivers Management - RideNow Admin</title>
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

        .drivers-table-container {
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

        .add-driver-btn {
            background: var(--accent-yellow);
            color: var(--primary-blue);
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 5px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .add-driver-btn:hover {
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

        .driver-info {
            display: flex;
            align-items: center;
        }

        .driver-avatar {
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

        .driver-details h6 {
            margin: 0;
            font-weight: 600;
            color: var(--primary-blue);
        }

        .driver-details small {
            color: #6c757d;
        }

        .status-badge {
            padding: 0.4rem 0.8rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
            text-transform: uppercase;
        }

        .status-active {
            background: #d4edda;
            color: var(--success-green);
        }

        .status-inactive {
            background: #f8d7da;
            color: var(--error-red);
        }

        .status-pending {
            background: #fff3cd;
            color: var(--warning-orange);
        }

        .rating {
            color: var(--accent-yellow);
            font-size: 1.1rem;
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

        .btn-suspend {
            background: var(--error-red);
            color: var(--white);
        }

        .btn-activate {
            background: var(--success-green);
            color: var(--white);
        }

        .btn-delete {
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

        @media (max-width: 768px) {
            .action-buttons {
                flex-direction: column;
            }
            
            .table-responsive {
                font-size: 0.9rem;
            }
            
            .driver-info {
                flex-direction: column;
                text-align: center;
            }
            
            .driver-avatar {
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
                    <li class="nav-item"><a class="nav-link active" href="drivers.aspx"><i class="fa fa-users"></i>Drivers </a></li>
                    <li class="nav-item"><a class="nav-link" href="riders.aspx"><i class="fa fa-user"></i>Riders </a></li>
                    <li class="nav-item"><a class="nav-link" href="rides.aspx"><i class="fa fa-road"></i>Rides </a></li>
                    <li class="nav-item"><a class="nav-link" href="support-tickets.aspx"><i class="fa fa-ticket"></i>Support </a></li>
                </ul>
            </div>
        </nav>

    <!-- Main Content -->
        <main class="main-content">
        <div class="container">
            <!-- Page Header -->
            <div class="page-header">
                <h1 class="page-title">Drivers Management</h1>
                <p class="page-subtitle">
                    Manage all drivers, view their details, and perform administrative actions</p>
            </div>

            <!-- Stats Cards -->
            <div class="stats-cards">
                <div class="stat-card">
                    <div class="stat-number">
                        156</div>
                    <div class="stat-label">
                        Total Drivers</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">
                        142</div>
                    <div class="stat-label">
                        Active Drivers</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">
                        8</div>
                    <div class="stat-label">
                        Pending Approval</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">
                        6</div>
                    <div class="stat-label">
                        Suspended</div>
                </div>
            </div>

            <!-- Filters Section -->
            <div class="filters-section">
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="search-box">
                            <i class="fa fa-search"></i>
                            <input type="text" placeholder="Search drivers..." id="searchInput">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <select class="filter-select" id="statusFilter">
                            <option value="">All Status</option>
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                            <option value="pending">Pending</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <select class="filter-select" id="ratingFilter">
                            <option value="">All Ratings</option>
                            <option value="5">5 Stars</option>
                            <option value="4">4+ Stars</option>
                            <option value="3">3+ Stars</option>
                        </select>
                    </div>
                    <div class="col-md-4 text-right">
                        <button class="btn btn-primary" onclick="exportDrivers()">
                            <i class="fa fa-download"></i>Export Data
                        </button>
                    </div>
                </div>
            </div>

            <!-- Drivers Table -->
            <div class="drivers-table-container">
                <div class="table-header">
                    <h3 class="table-title">All Drivers</h3>
                    <a href="#" class="add-driver-btn"><i class="fa fa-plus"></i>Add New Driver </a>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Driver</th>
                                <th>Contact</th>
                                <th>Vehicle</th>
                                <th>Status</th>
                                <th>Rating</th>
                                <th>Total Rides</th>
                                <th>Join Date</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="driversTableBody">
                            <!-- Sample Driver Data -->
                            <tr>
                                <td>
                                    <div class="driver-info">
                                        <div class="driver-avatar">
                                            JD</div>
                                        <div class="driver-details">
                                            <h6>John Doe</h6>
                                            <small>ID: DRV001</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        john.doe@email.com</div>
                                    <small>+1 (555) 123-4567</small> </td>
                                <td>
                                    <div>
                                        Toyota Camry</div>
                                    <small>ABC-1234</small> </td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td><span class="rating">★★★★★ 4.8</span></td>
                                <td>1,247</td>
                                <td>Jan 15, 2023</td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Driver"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-suspend" title="Suspend Driver"><i class="fa fa-ban"></i></a><a href="#" class="btn-action btn-delete" title="Delete Driver"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="driver-info">
                                        <div class="driver-avatar">
                                            MS</div>
                                        <div class="driver-details">
                                            <h6>Maria Smith</h6>
                                            <small>ID: DRV002</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        maria.smith@email.com</div>
                                    <small>+1 (555) 234-5678</small> </td>
                                <td>
                                    <div>
                                        Honda Accord</div>
                                    <small>XYZ-5678</small> </td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td><span class="rating">★★★★☆ 4.6</span></td>
                                <td>892</td>
                                <td>Feb 20, 2023</td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Driver"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-suspend" title="Suspend Driver"><i class="fa fa-ban"></i></a><a href="#" class="btn-action btn-delete" title="Delete Driver"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="driver-info">
                                        <div class="driver-avatar">
                                            RJ</div>
                                        <div class="driver-details">
                                            <h6>Robert Johnson</h6>
                                            <small>ID: DRV003</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        robert.j@email.com</div>
                                    <small>+1 (555) 345-6789</small> </td>
                                <td>
                                    <div>
                                        Ford Fusion</div>
                                    <small>DEF-9012</small> </td>
                                <td><span class="status-badge status-pending">Pending</span></td>
                                <td><span class="rating">★★★★☆ 4.2</span></td>
                                <td>0</td>
                                <td>Dec 10, 2023</td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Driver"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-activate" title="Approve Driver"><i class="fa fa-check"></i></a><a href="#" class="btn-action btn-delete" title="Delete Driver"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="driver-info">
                                        <div class="driver-avatar">
                                            AL</div>
                                        <div class="driver-details">
                                            <h6>Alice Lee</h6>
                                            <small>ID: DRV004</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        alice.lee@email.com</div>
                                    <small>+1 (555) 456-7890</small> </td>
                                <td>
                                    <div>
                                        Nissan Altima</div>
                                    <small>GHI-3456</small> </td>
                                <td><span class="status-badge status-inactive">Suspended</span></td>
                                <td><span class="rating">★★★☆☆ 3.8</span></td>
                                <td>456</td>
                                <td>Mar 5, 2023</td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Driver"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-activate" title="Activate Driver"><i class="fa fa-check"></i></a><a href="#" class="btn-action btn-delete" title="Delete Driver"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="driver-info">
                                        <div class="driver-avatar">
                                            DW</div>
                                        <div class="driver-details">
                                            <h6>David Wilson</h6>
                                            <small>ID: DRV005</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        david.wilson@email.com</div>
                                    <small>+1 (555) 567-8901</small> </td>
                                <td>
                                    <div>
                                        Chevrolet Malibu</div>
                                    <small>JKL-7890</small> </td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td><span class="rating">★★★★★ 4.9</span></td>
                                <td>2,134</td>
                                <td>Jan 8, 2023</td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="#" class="btn-action btn-view" title="View Details"><i class="fa fa-eye"></i></a><a href="#" class="btn-action btn-edit" title="Edit Driver"><i class="fa fa-edit"></i></a><a href="#" class="btn-action btn-suspend" title="Suspend Driver"><i class="fa fa-ban"></i></a><a href="#" class="btn-action btn-delete" title="Delete Driver"><i class="fa fa-trash"></i></a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Pagination -->
            <nav aria-label="Drivers pagination">
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
        document.getElementById('searchInput').addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const rows = document.querySelectorAll('#driversTableBody tr');
            
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
        document.getElementById('statusFilter').addEventListener('change', function() {
            filterTable();
        });

        document.getElementById('ratingFilter').addEventListener('change', function() {
            filterTable();
        });

        function filterTable() {
            const statusFilter = document.getElementById('statusFilter').value;
            const ratingFilter = document.getElementById('ratingFilter').value;
            const rows = document.querySelectorAll('#driversTableBody tr');
            
            rows.forEach(row => {
                let showRow = true;
                
                if (statusFilter) {
                    const statusBadge = row.querySelector('.status-badge');
                    if (statusBadge && !statusBadge.classList.contains(`status-${statusFilter}`)) {
                        showRow = false;
                    }
                }
                
                if (ratingFilter && showRow) {
                    const rating = row.querySelector('.rating');
                    if (rating) {
                        const ratingValue = parseFloat(rating.textContent.match(/\d+\.?\d*/)[0]);
                        if (ratingValue < parseFloat(ratingFilter)) {
                            showRow = false;
                        }
                    }
                }
                
                row.style.display = showRow ? '' : 'none';
            });
        }

        // Export functionality
        function exportDrivers() {
            alert('Export functionality would be implemented here');
        }

        // Action button handlers
        document.addEventListener('click', function(e) {
            if (e.target.closest('.btn-view')) {
                e.preventDefault();
                alert('View driver details functionality');
            } else if (e.target.closest('.btn-edit')) {
                e.preventDefault();
                alert('Edit driver functionality');
            } else if (e.target.closest('.btn-suspend')) {
                e.preventDefault();
                if (confirm('Are you sure you want to suspend this driver?')) {
                    alert('Driver suspended successfully');
                }
            } else if (e.target.closest('.btn-activate')) {
                e.preventDefault();
                if (confirm('Are you sure you want to activate this driver?')) {
                    alert('Driver activated successfully');
                }
            } else if (e.target.closest('.btn-delete')) {
                e.preventDefault();
                if (confirm('Are you sure you want to delete this driver? This action cannot be undone.')) {
                    alert('Driver deleted successfully');
                }
            }
        });
    </script>
    </body>
    </html>
</asp:Content>

