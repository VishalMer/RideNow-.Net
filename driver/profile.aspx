﻿<%@ Page Title="" Language="C#" MasterPageFile="~/driver/profile.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="RideNow.driver.profile1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><title>RideNow - Driver Profile</title>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
                    <link rel="stylesheet" href="../css/bootstrap.css">
                    <link rel="stylesheet" href="../css/font-awesome.min.css">
                    <link rel="stylesheet" href="../css/main.css">
                    <link rel="stylesheet" href="../css/intro.css">
                    <link rel="stylesheet" href="../css/auth.css">
                </head>
                <body>
                    <header id="header">
                        <div class="main-menu">
                            <div class="header-content">
                                <a href="../index.aspx" class="logo-text">RideNow</a>
                                <nav id="nav-menu-container">
                                    <ul class="nav-menu">
                                        <li><a href="../index.aspx">Home</a></li>
                                        <li><a href="../about.aspx">About</a></li>
                                        <li><a href="../contact.aspx">Contact</a></li>
                                        <li><a href="dashboard.aspx">Dashboard</a></li>
                                        <li><a href="profile.aspx" class="active">Profile</a></li>
                                        <li><a href="../login.aspx" class="signup-btn">Logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </header>

                    <!-- Hero Section -->
                    <section class="dashboard-hero">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="welcome-content">
                                        <h1 class="welcome-title">Driver Profile</h1>
                                        <p class="welcome-subtitle">
                                            Manage your driver information, vehicle details, and account settings.</p>
                                        <div class="quick-actions">
                                          <button type="button" onclick="window.location.href='dashboard.aspx'" class="btn btn-primary btn-lg"><i class="fa fa-dashboard"></i>Back to Dashboard </button>
                                            <button class="btn btn-outline btn-lg" onclick="showComingSoon()">
                                                <i class="fa fa-save"></i>Save Changes
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="dashboard-illustration">
                                        <div class="profile-illustration">
                                            <div class="profile-avatar-large">
                                                <i class="fa fa-user"></i>
                                            </div>
                                            <div class="profile-badges">
                                                <div class="badge-item">
                                                    <i class="fa fa-star"></i><span>4.9 Rating</span>
                                                </div>
                                                <div class="badge-item">
                                                    <i class="fa fa-trophy"></i><span>Top Driver</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Main Content -->
                    <section class="dashboard-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <!-- Profile Overview Card -->
                                    <div class="dashboard-card profile-overview-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-user"></i>Profile Overview</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="profile-avatar-section">
                                                <div class="avatar-large">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <button class="btn btn-outline btn-sm">
                                                    <i class="fa fa-camera"></i>Change Photo
                                                </button>
                                            </div>
                                            <div class="profile-stats">
                                                <div class="stat-item">
                                                    <div class="stat-number">
                                                        4.9</div>
                                                    <div class="stat-label">
                                                        Rating</div>
                                                </div>
                                                <div class="stat-item">
                                                    <div class="stat-number">
                                                        1,247</div>
                                                    <div class="stat-label">
                                                        Rides</div>
                                                </div>
                                                <div class="stat-item">
                                                    <div class="stat-number">
                                                        98%</div>
                                                    <div class="stat-label">
                                                        Completion</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Account Status Card -->
                                    <div class="dashboard-card account-status-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-shield"></i>Account Status</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="status-items">
                                                <div class="status-item verified">
                                                    <i class="fa fa-check-circle"></i><span>Identity Verified</span>
                                                </div>
                                                <div class="status-item verified">
                                                    <i class="fa fa-check-circle"></i><span>Background Check</span>
                                                </div>
                                                <div class="status-item verified">
                                                    <i class="fa fa-check-circle"></i><span>Vehicle Inspection</span>
                                                </div>
                                                <div class="status-item pending">
                                                    <i class="fa fa-clock-o"></i><span>Insurance Review</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <!-- Profile Information Form -->
                                    <div class="dashboard-card profile-form-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-edit"></i>Personal Information</h3>
                                        </div>
                                        <div class="card-body">
                                            <form class="profile-form">
                                                <div class="form-row">
                                                    <div class="form-group">
                                                        <label>
                                                        First Name</label>
                                                        <input type="text" class="form-control" value="Mike" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>
                                                        Last Name</label>
                                                        <input type="text" class="form-control" value="Johnson" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group">
                                                        <label>
                                                        Email</label>
                                                        <input type="email" class="form-control" value="mike.johnson@example.com" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>
                                                        Phone</label>
                                                        <input type="tel" class="form-control" value="+1 555 123 4567" required>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group">
                                                        <label>
                                                        Date of Birth</label>
                                                        <input type="date" class="form-control" value="1985-06-15" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>
                                                        License Number</label>
                                                        <input type="text" class="form-control" value="D1234567" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                    Address</label>
                                                    <textarea class="form-control" rows="3" placeholder="Enter your full address">123 Main Street, New York, NY 10001</textarea>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                    <!-- Vehicle Information -->
                                    <div class="dashboard-card vehicle-info-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-car"></i>Vehicle Information</h3>
                                            <button class="btn btn-sm btn-outline" onclick="showComingSoon()">
                                                <i class="fa fa-plus"></i>Add Vehicle
                                            </button>
                                        </div>
                                        <div class="card-body">
                                            <div class="vehicle-details">
                                                <div class="vehicle-image">
                                                    <div class="vehicle-placeholder">
                                                        <i class="fa fa-car"></i>
                                                        <p>
                                                            Vehicle Photo</p>
                                                    </div>
                                                    <button class="btn btn-outline btn-sm">
                                                        <i class="fa fa-camera"></i>Upload Photo
                                                    </button>
                                                </div>
                                                <div class="vehicle-form">
                                                    <div class="form-row">
                                                        <div class="form-group">
                                                            <label>
                                                            Make</label>
                                                            <select class="form-control">
                                                                <option>Toyota</option>
                                                                <option>Honda</option>
                                                                <option>Ford</option>
                                                                <option>Chevrolet</option>
                                                                <option>Nissan</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>
                                                            Model</label>
                                                            <input type="text" class="form-control" value="Camry" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group">
                                                            <label>
                                                            Year</label>
                                                            <input type="number" class="form-control" value="2020" min="2000" max="2024" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>
                                                            Color</label>
                                                            <input type="text" class="form-control" value="Silver" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group">
                                                            <label>
                                                            License Plate</label>
                                                            <input type="text" class="form-control" value="ABC-1234" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>
                                                            VIN</label>
                                                            <input type="text" class="form-control" value="1HGBH41JXMN109186" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Document Uploads -->
                                    <div class="dashboard-card documents-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-file-text"></i>Required Documents</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="documents-grid">
                                                <div class="document-item">
                                                    <div class="document-icon">
                                                        <i class="fa fa-id-card"></i>
                                                    </div>
                                                    <div class="document-info">
                                                        <h5>Driver's License</h5>
                                                        <p>
                                                            Upload front and back</p>
                                                        <span class="status verified"><i class="fa fa-check"></i>Verified </span>
                                                    </div>
                                                    <div class="document-actions">
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-upload"></i>Update
                                                        </button>
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-eye"></i>View
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="document-item">
                                                    <div class="document-icon">
                                                        <i class="fa fa-shield"></i>
                                                    </div>
                                                    <div class="document-info">
                                                        <h5>Insurance Certificate</h5>
                                                        <p>
                                                            Current insurance policy</p>
                                                        <span class="status pending"><i class="fa fa-clock-o"></i>Pending Review </span>
                                                    </div>
                                                    <div class="document-actions">
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-upload"></i>Upload
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="document-item">
                                                    <div class="document-icon">
                                                        <i class="fa fa-car"></i>
                                                    </div>
                                                    <div class="document-info">
                                                        <h5>Vehicle Registration</h5>
                                                        <p>
                                                            Current registration document</p>
                                                        <span class="status verified"><i class="fa fa-check"></i>Verified </span>
                                                    </div>
                                                    <div class="document-actions">
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-upload"></i>Update
                                                        </button>
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-eye"></i>View
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="document-item">
                                                    <div class="document-icon">
                                                        <i class="fa fa-certificate"></i>
                                                    </div>
                                                    <div class="document-info">
                                                        <h5>Background Check</h5>
                                                        <p>
                                                            Criminal background verification</p>
                                                        <span class="status verified"><i class="fa fa-check"></i>Verified </span>
                                                    </div>
                                                    <div class="document-actions">
                                                        <button class="btn btn-outline btn-sm">
                                                            <i class="fa fa-eye"></i>View
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Ratings & Feedback -->
                                    <div class="dashboard-card ratings-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-star"></i>Ratings & Feedback</h3>
                                            <div class="rating-summary">
                                                <span class="rating-number">4.9</span>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                                </div>
                                                <span class="rating-count">(1,247 reviews)</span>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="rating-breakdown">
                                                <div class="rating-bar">
                                                    <span class="rating-label">5 stars</span>
                                                    <div class="rating-progress">
                                                        <div class="progress-fill" style="width: 85%">
                                                        </div>
                                                    </div>
                                                    <span class="rating-percentage">85%</span>
                                                </div>
                                                <div class="rating-bar">
                                                    <span class="rating-label">4 stars</span>
                                                    <div class="rating-progress">
                                                        <div class="progress-fill" style="width: 12%">
                                                        </div>
                                                    </div>
                                                    <span class="rating-percentage">12%</span>
                                                </div>
                                                <div class="rating-bar">
                                                    <span class="rating-label">3 stars</span>
                                                    <div class="rating-progress">
                                                        <div class="progress-fill" style="width: 2%">
                                                        </div>
                                                    </div>
                                                    <span class="rating-percentage">2%</span>
                                                </div>
                                                <div class="rating-bar">
                                                    <span class="rating-label">2 stars</span>
                                                    <div class="rating-progress">
                                                        <div class="progress-fill" style="width: 1%">
                                                        </div>
                                                    </div>
                                                    <span class="rating-percentage">1%</span>
                                                </div>
                                                <div class="rating-bar">
                                                    <span class="rating-label">1 star</span>
                                                    <div class="rating-progress">
                                                        <div class="progress-fill" style="width: 0%">
                                                        </div>
                                                    </div>
                                                    <span class="rating-percentage">0%</span>
                                                </div>
                                            </div>
                                            <div class="recent-reviews">
                                                <h5>Recent Reviews</h5>
                                                <div class="review-item">
                                                    <div class="review-header">
                                                        <div class="reviewer-info">
                                                            <span class="reviewer-name">Sarah M.</span>
                                                            <div class="review-stars">
                                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <span class="review-date">2 days ago</span>
                                                    </div>
                                                    <p class="review-text">
                                                        "Excellent driver! Very professional and the car was spotless. Would definitely recommend."</p>
                                                </div>
                                                <div class="review-item">
                                                    <div class="review-header">
                                                        <div class="reviewer-info">
                                                            <span class="reviewer-name">John D.</span>
                                                            <div class="review-stars">
                                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <span class="review-date">1 week ago</span>
                                                    </div>
                                                    <p class="review-text">
                                                        "Great service and very punctual. The ride was smooth and comfortable."</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Account Settings -->
                                    <div class="dashboard-card settings-card">
                                        <div class="card-header">
                                            <h3><i class="fa fa-cog"></i>Account Settings</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="settings-sections">
                                                <div class="settings-section">
                                                    <h5>Notifications</h5>
                                                    <div class="setting-item">
                                                        <div class="setting-info">
                                                            <span class="setting-label">Ride Requests</span> <span class="setting-desc">Get notified of new ride requests</span>
                                                        </div>
                                                        <label class="switch">
                                                        <input type="checkbox" checked> <span class="slider"></span>
                                                        </label>
                                                        &nbsp;</div>
                                                    <div class="setting-item">
                                                        <div class="setting-info">
                                                            <span class="setting-label">Earnings Updates</span> <span class="setting-desc">Daily earnings summary</span>
                                                        </div>
                                                        <label class="switch">
                                                        <input type="checkbox" checked> <span class="slider"></span>
                                                        </label>
                                                        &nbsp;</div>
                                                    <div class="setting-item">
                                                        <div class="setting-info">
                                                            <span class="setting-label">Promotional Offers</span> <span class="setting-desc">Special deals and bonuses</span>
                                                        </div>
                                                        <label class="switch">
                                                        <input type="checkbox"> <span class="slider"></span>
                                                        </label>
                                                        &nbsp;</div>
                                                </div>
                                                <div class="settings-section">
                                                    <h5>Privacy & Security</h5>
                                                    <div class="setting-item">
                                                        <div class="setting-info">
                                                            <span class="setting-label">Two-Factor Authentication</span> <span class="setting-desc">Add extra security to your account</span>
                                                        </div>
                                                        <button class="btn btn-outline btn-sm">
                                                            Enable
                                                        </button>
                                                    </div>
                                                    <div class="setting-item">
                                                        <div class="setting-info">
                                                            <span class="setting-label">Change Password</span> <span class="setting-desc">Update your account password</span>
                                                        </div>
                                                        <button class="btn btn-outline btn-sm">
                                                            Change
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <footer class="footer-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="footer-widget">
                                        <h3>RideNow</h3>
                                        <p>
                                            Your trusted partner for safe, reliable, and affordable transportation services.</p>
                                        <div class="social-links">
                                            <a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a><a href="#"><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="footer-widget">
                                        <h4>Services</h4>
                                        <ul>
                                            <li><a href="#">City Rides</a></li>
                                            <li><a href="#">Airport Transfer</a></li>
                                            <li><a href="#">Event Transport</a></li>
                                            <li><a href="#">Business Travel</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="footer-widget">
                                        <h4>Company</h4>
                                        <ul>
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">Careers</a></li>
                                            <li><a href="#">Press</a></li>
                                            <li><a href="#">Blog</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="footer-widget">
                                        <h4>Support</h4>
                                        <ul>
                                            <li><a href="#">Help Center</a></li>
                                            <li><a href="#">Safety</a></li>
                                            <li><a href="#">Terms</a></li>
                                            <li><a href="#">Privacy</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="footer-widget">
                                        <h4>Download</h4>
                                        <div class="app-links">
                                            <a href="#" class="app-link"><i class="fa fa-apple"></i><span>App Store</span> </a><a href="#" class="app-link"><i class="fa fa-android"></i><span>Google Play</span> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-bottom">
                                <p>
                                    &copy;
                                    <script>document.write(new Date().getFullYear());</script>
                                    RideNow. All rights reserved.</p>
                            </div>
                        </div>
                    </footer>

                    <!-- Coming Soon Modal -->
                    <div class="coming-soon-modal" id="comingSoonModal">
                        <div class="coming-soon-content">
                            <div class="coming-soon-icon">
                                <i class="fa fa-rocket"></i>
                            </div>
                            <h3 class="coming-soon-title">Coming Soon!</h3>
                            <p class="coming-soon-message">
                                This feature is currently under development. We're working hard to bring you an amazing experience. Stay tuned!</p>
                            <button class="coming-soon-close" onclick="closeComingSoon()">
                                Got it!
                            </button>
                        </div>
                    </div>

                    <script src="../js/vendor/jquery-2.2.4.min.js"></script>
                    <script src="../js/vendor/bootstrap.min.js"></script>

                    <script>
                        $(document).ready(function () {
                            // Scroll Animation Observer
                            const observerOptions = {
                                threshold: 0.1,
                                rootMargin: '0px 0px -50px 0px'
                            };

                            const observer = new IntersectionObserver(function (entries) {
                                entries.forEach(entry => {
                                    if (entry.isIntersecting) {
                                        entry.target.classList.add('animate');
                                    }
                                });
                            }, observerOptions);

                            // Observe all scroll animate elements
                            document.querySelectorAll('.scroll-animate, .scroll-animate-left, .scroll-animate-right, .scroll-animate-scale, .scroll-animate-rotate').forEach(el => {
                                observer.observe(el);
                            });

                            // Form validation
                            $('.profile-form input, .profile-form select, .profile-form textarea').on('blur', function () {
                                if ($(this).prop('required') && !$(this).val()) {
                                    $(this).addClass('error');
                                } else {
                                    $(this).removeClass('error');
                                }
                            });

                            // Document upload simulation
                            $('.document-actions .btn').on('click', function () {
                                const $btn = $(this);
                                const originalText = $btn.html();

                                $btn.html('<i class="fa fa-spinner fa-spin"></i> Processing...');
                                $btn.prop('disabled', true);

                                setTimeout(() => {
                                    $btn.html(originalText);
                                    $btn.prop('disabled', false);
                                    showComingSoon();
                                }, 2000);
                            });

                            // Settings toggle
                            $('.switch input').on('change', function () {
                                const $setting = $(this).closest('.setting-item');
                                $setting.addClass('updated');

                                setTimeout(() => {
                                    $setting.removeClass('updated');
                                }, 1000);
                            });
                        });

                        // Coming Soon Modal Functions
                        function showComingSoon() {
                            $('#comingSoonModal').css('display', 'flex');
                            $('body').css('overflow', 'hidden');
                        }

                        function closeComingSoon() {
                            $('#comingSoonModal').css('display', 'none');
                            $('body').css('overflow', 'auto');
                        }

                        // Close modal when clicking outside
                        $(document).on('click', '.coming-soon-modal', function (e) {
                            if (e.target === this) {
                                closeComingSoon();
                            }
                        });
                    </script>

                    <style>

                        /* Driver Profile Specific Styles */
                        .profile-illustration {
                            display: flex;
                            flex-direction: column;
                            align-items: center;
                            justify-content: center;
                            height: 100%;
                        }

                        .profile-avatar-large {
                            width: 120px;
                            height: 120px;
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            border-radius: 50%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: #fff;
                            font-size: 48px;
                            margin-bottom: 30px;
                            animation: pulse 2s infinite;
                        }

                        .profile-badges {
                            display: flex;
                            gap: 20px;
                        }

                        .badge-item {
                            display: flex;
                            align-items: center;
                            gap: 8px;
                            background: rgba(255,255,255,0.2);
                            padding: 10px 20px;
                            border-radius: 25px;
                            color: #fff;
                            font-weight: 500;
                        }

                            .badge-item i {
                                color: #ffc107;
                            }

                        .profile-avatar-section {
                            text-align: center;
                            margin-bottom: 30px;
                        }

                        .avatar-large {
                            width: 100px;
                            height: 100px;
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            border-radius: 50%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: #fff;
                            font-size: 40px;
                            margin: 0 auto 20px;
                        }

                        .profile-stats {
                            display: flex;
                            justify-content: space-around;
                            text-align: center;
                        }

                        .stat-item {
                            display: flex;
                            flex-direction: column;
                            gap: 5px;
                        }

                        .stat-number {
                            font-size: 24px;
                            font-weight: 700;
                            color: #333;
                            font-family: 'Inter', sans-serif;
                        }

                        .stat-label {
                            font-size: 12px;
                            color: #666;
                            text-transform: uppercase;
                            letter-spacing: 0.5px;
                        }

                        .status-items {
                            display: flex;
                            flex-direction: column;
                            gap: 15px;
                        }

                        .status-item {
                            display: flex;
                            align-items: center;
                            gap: 12px;
                            padding: 12px;
                            border-radius: 8px;
                            background: #f8f9fa;
                        }

                            .status-item.verified {
                                background: #d4edda;
                                color: #155724;
                            }

                            .status-item.pending {
                                background: #fff3cd;
                                color: #856404;
                            }

                            .status-item i {
                                font-size: 18px;
                            }

                        .profile-form .form-row {
                            display: flex;
                            gap: 20px;
                            margin-bottom: 20px;
                        }

                        .profile-form .form-group {
                            flex: 1;
                            margin-bottom: 0;
                        }

                        .profile-form label {
                            display: block;
                            font-weight: 600;
                            margin-bottom: 8px;
                            color: #333;
                            font-size: 14px;
                        }

                        .profile-form .form-control {
                            width: 100%;
                            padding: 12px 16px;
                            border-radius: 8px;
                            border: 2px solid #e9ecef;
                            background: #fff;
                            color: #111;
                            transition: all 0.3s ease;
                            font-size: 14px;
                        }

                            .profile-form .form-control:focus {
                                outline: none;
                                border-color: #667eea;
                                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
                            }

                            .profile-form .form-control.error {
                                border-color: #dc3545;
                                box-shadow: 0 0 0 3px rgba(220, 53, 69, 0.1);
                            }

                        .vehicle-details {
                            display: flex;
                            gap: 30px;
                            align-items: flex-start;
                        }

                        .vehicle-image {
                            display: flex;
                            flex-direction: column;
                            align-items: center;
                            gap: 15px;
                        }

                        .vehicle-placeholder {
                            width: 200px;
                            height: 120px;
                            background: #f8f9fa;
                            border: 2px dashed #e9ecef;
                            border-radius: 8px;
                            display: flex;
                            flex-direction: column;
                            align-items: center;
                            justify-content: center;
                            color: #666;
                        }

                            .vehicle-placeholder i {
                                font-size: 32px;
                                margin-bottom: 10px;
                            }

                        .vehicle-form {
                            flex: 1;
                        }

                        .documents-grid {
                            display: grid;
                            grid-template-columns: 1fr 1fr;
                            gap: 20px;
                        }

                        .document-item {
                            display: flex;
                            align-items: center;
                            gap: 15px;
                            padding: 20px;
                            border: 1px solid #e9ecef;
                            border-radius: 10px;
                            transition: all 0.3s ease;
                        }

                            .document-item:hover {
                                border-color: #667eea;
                                background: #f8f9ff;
                            }

                        .document-icon {
                            width: 50px;
                            height: 50px;
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            border-radius: 50%;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: #fff;
                            font-size: 20px;
                        }

                        .document-info {
                            flex: 1;
                        }

                            .document-info h5 {
                                font-size: 16px;
                                font-weight: 600;
                                color: #333;
                                margin: 0 0 5px 0;
                                font-family: 'Inter', sans-serif;
                            }

                            .document-info p {
                                color: #666;
                                margin: 0 0 8px 0;
                                font-size: 14px;
                            }

                        .status {
                            display: inline-flex;
                            align-items: center;
                            gap: 5px;
                            padding: 4px 8px;
                            border-radius: 12px;
                            font-size: 12px;
                            font-weight: 500;
                        }

                            .status.verified {
                                background: #d4edda;
                                color: #155724;
                            }

                            .status.pending {
                                background: #fff3cd;
                                color: #856404;
                            }

                        .document-actions {
                            display: flex;
                            flex-direction: column;
                            gap: 8px;
                        }

                        .rating-summary {
                            display: flex;
                            align-items: center;
                            gap: 15px;
                        }

                        .rating-number {
                            font-size: 32px;
                            font-weight: 700;
                            color: #333;
                            font-family: 'Inter', sans-serif;
                        }

                        .rating-stars {
                            display: flex;
                            gap: 2px;
                        }

                            .rating-stars i {
                                color: #ffc107;
                                font-size: 16px;
                            }

                        .rating-count {
                            color: #666;
                            font-size: 14px;
                        }

                        .rating-breakdown {
                            display: flex;
                            flex-direction: column;
                            gap: 12px;
                            margin-bottom: 30px;
                        }

                        .rating-bar {
                            display: flex;
                            align-items: center;
                            gap: 15px;
                        }

                        .rating-label {
                            font-size: 14px;
                            color: #666;
                            width: 60px;
                        }

                        .rating-progress {
                            flex: 1;
                            height: 8px;
                            background: #e9ecef;
                            border-radius: 4px;
                            overflow: hidden;
                        }

                        .progress-fill {
                            height: 100%;
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            border-radius: 4px;
                            transition: width 0.3s ease;
                        }

                        .rating-percentage {
                            font-size: 14px;
                            color: #666;
                            width: 40px;
                            text-align: right;
                        }

                        .recent-reviews h5 {
                            font-size: 18px;
                            font-weight: 600;
                            color: #333;
                            margin-bottom: 20px;
                            font-family: 'Inter', sans-serif;
                        }

                        .review-item {
                            padding: 20px;
                            border: 1px solid #e9ecef;
                            border-radius: 10px;
                            margin-bottom: 15px;
                        }

                        .review-header {
                            display: flex;
                            justify-content: space-between;
                            align-items: center;
                            margin-bottom: 10px;
                        }

                        .reviewer-info {
                            display: flex;
                            align-items: center;
                            gap: 10px;
                        }

                        .reviewer-name {
                            font-weight: 600;
                            color: #333;
                        }

                        .review-stars {
                            display: flex;
                            gap: 2px;
                        }

                            .review-stars i {
                                color: #ffc107;
                                font-size: 14px;
                            }

                        .review-date {
                            color: #666;
                            font-size: 14px;
                        }

                        .review-text {
                            color: #666;
                            line-height: 1.6;
                            margin: 0;
                        }

                        .settings-sections {
                            display: flex;
                            flex-direction: column;
                            gap: 30px;
                        }

                        .settings-section h5 {
                            font-size: 18px;
                            font-weight: 600;
                            color: #333;
                            margin-bottom: 20px;
                            font-family: 'Inter', sans-serif;
                        }

                        .setting-item {
                            display: flex;
                            justify-content: space-between;
                            align-items: center;
                            padding: 15px 0;
                            border-bottom: 1px solid #f0f0f0;
                        }

                            .setting-item:last-child {
                                border-bottom: none;
                            }

                        .setting-info {
                            display: flex;
                            flex-direction: column;
                            gap: 5px;
                        }

                        .setting-label {
                            font-weight: 500;
                            color: #333;
                        }

                        .setting-desc {
                            font-size: 14px;
                            color: #666;
                        }

                        /* Toggle Switch */
                        .switch {
                            position: relative;
                            display: inline-block;
                            width: 50px;
                            height: 24px;
                        }

                            .switch input {
                                opacity: 0;
                                width: 0;
                                height: 0;
                            }

                        .slider {
                            position: absolute;
                            cursor: pointer;
                            top: 0;
                            left: 0;
                            right: 0;
                            bottom: 0;
                            background-color: #ccc;
                            transition: .4s;
                            border-radius: 24px;
                        }

                            .slider:before {
                                position: absolute;
                                content: "";
                                height: 18px;
                                width: 18px;
                                left: 3px;
                                bottom: 3px;
                                background-color: white;
                                transition: .4s;
                                border-radius: 50%;
                            }

                        input:checked + .slider {
                            background-color: #667eea;
                        }

                            input:checked + .slider:before {
                                transform: translateX(26px);
                            }

                        .setting-item.updated {
                            background: #f8f9ff;
                            border-radius: 8px;
                            padding: 15px;
                            transition: all 0.3s ease;
                        }

                        @media (max-width: 991px) {
                            .vehicle-details {
                                flex-direction: column;
                                align-items: center;
                            }

                            .documents-grid {
                                grid-template-columns: 1fr;
                            }

                            .rating-summary {
                                flex-direction: column;
                                text-align: center;
                                gap: 10px;
                            }
                        }

                        @media (max-width: 767px) {
                            .profile-form .form-row {
                                flex-direction: column;
                                gap: 15px;
                            }

                            .document-item {
                                flex-direction: column;
                                text-align: center;
                            }

                            .document-actions {
                                flex-direction: row;
                                justify-content: center;
                            }

                            .setting-item {
                                flex-direction: column;
                                align-items: flex-start;
                                gap: 15px;
                            }
                        }
                    </style>
                </body>
    </html>
</asp:Content>

