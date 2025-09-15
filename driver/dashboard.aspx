﻿<%@ Page Title="" Language="C#" MasterPageFile="~/driver/dashboard.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="RideNow.driver.dashboard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><title>RideNow - Driver Dashboard</title>
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
                            <li><a href="dashboard.aspx" class="active">Dashboard</a></li>
                            <li><a href="profile.aspx">Profile</a></li>
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
                            <h1 class="welcome-title">Welcome back, Mike!</h1>
                            <p class="welcome-subtitle">
                                Ready to drive? Let's get you connected with riders and earning money.</p>
                            <div class="quick-actions">
                                <button class="btn btn-primary btn-lg" id="toggleStatus">
                                    <i class="fa fa-circle" id="statusIcon"></i><span id="statusText">Go Online</span>
                                </button>
                                <a href="profile.aspx" class="btn btn-outline btn-lg"><i class="fa fa-user"></i>View Profile </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="dashboard-illustration">
                            <div class="ride-animation">
                                <div class="car-icon">
                                    <i class="fa fa-car"></i>
                                </div>
                                <div class="route-line">
                                </div>
                                <div class="destination-icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!-- Stats Section -->
        <section class="dashboard-stats">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card scroll-animate">
                            <div class="stat-icon">
                                <i class="fa fa-dollar"></i>
                            </div>
                            <div class="stat-content">
                                <h3>$245</h3>
                                <p>
                                    Today's Earnings</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card scroll-animate delay-1">
                            <div class="stat-icon">
                                <i class="fa fa-car"></i>
                            </div>
                            <div class="stat-content">
                                <h3>12</h3>
                                <p>
                                    Rides Completed</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card scroll-animate delay-2">
                            <div class="stat-icon">
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="stat-content">
                                <h3>4.9</h3>
                                <p>
                                    Average Rating</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-card scroll-animate delay-3">
                            <div class="stat-icon">
                                <i class="fa fa-clock-o"></i>
                            </div>
                            <div class="stat-content">
                                <h3>6.5h</h3>
                                <p>
                                    Online Time</p>
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
				<!-- Driver Profile Card -->
				        <div class="dashboard-card profile-card">
                            <div class="card-header">
                                <h3><i class="fa fa-user"></i>Driver Profile</h3>
                            </div>
                            <div class="card-body">
                                <div class="profile-avatar">
                                    <div class="avatar-circle">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <div class="profile-info">
                                        <h4>Mike Johnson</h4>
                                        <p>
                                            Professional Driver</p>
                                    </div>
                                </div>
                                <div class="profile-details">
                                    <div class="detail-item">
                                        <i class="fa fa-car"></i><span>Toyota Camry 2020</span>
                                    </div>
                                    <div class="detail-item">
                                        <i class="fa fa-id-card"></i><span>License: D1234567</span>
                                    </div>
                                    <div class="detail-item">
                                        <i class="fa fa-map-marker"></i><span>New York, NY</span>
                                    </div>
                                </div>
                                <button class="btn btn-outline btn-block">
                                    <i class="fa fa-edit"></i>Edit Profile
                                </button>
                            </div>
                        </div>

				<!-- Quick Actions Card -->
				        <div class="dashboard-card quick-actions-card">
                            <div class="card-header">
                                <h3><i class="fa fa-bolt"></i>Quick Actions</h3>
                            </div>
                            <div class="card-body">
                                <div class="action-buttons">
                                    <button class="action-btn" onclick="showComingSoon()">
                                        <i class="fa fa-map-marker"></i><span>Set Location</span>
                                    </button>
                                    <button class="action-btn" onclick="showComingSoon()">
                                        <i class="fa fa-history"></i><span>Ride History</span>
                                    </button>
                                    <button class="action-btn" onclick="showComingSoon()">
                                        <i class="fa fa-credit-card"></i><span>Earnings</span>
                                    </button>
                                    <button class="action-btn" onclick="showComingSoon()">
                                        <i class="fa fa-cog"></i><span>Settings</span>
                                    </button>
                                </div>
                            </div>
                        </div>

				<!-- Performance Metrics Card -->
				        <div class="dashboard-card performance-card">
                            <div class="card-header">
                                <h3><i class="fa fa-chart-line"></i>Performance</h3>
                            </div>
                            <div class="card-body">
                                <div class="performance-metrics">
                                    <div class="metric-item">
                                        <div class="metric-label">
                                            Acceptance Rate</div>
                                        <div class="metric-value">
                                            95%</div>
                                        <div class="metric-bar">
                                            <div class="metric-fill" style="width: 95%">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="metric-item">
                                        <div class="metric-label">
                                            Completion Rate</div>
                                        <div class="metric-value">
                                            98%</div>
                                        <div class="metric-bar">
                                            <div class="metric-fill" style="width: 98%">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="metric-item">
                                        <div class="metric-label">
                                            Response Time</div>
                                        <div class="metric-value">
                                            2.3s</div>
                                        <div class="metric-bar">
                                            <div class="metric-fill" style="width: 85%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
				<!-- Ride Requests Card -->
				        <div class="dashboard-card ride-requests-card">
                            <div class="card-header">
                                <h3><i class="fa fa-bell"></i>Ride Requests</h3>
                                <span class="request-count">3 New</span>
                            </div>
                            <div class="card-body">
                                <div class="requests-list">
                                    <div class="request-item">
                                        <div class="request-icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="request-details">
                                            <div class="request-route">
                                                <span class="from">Central Park</span> <i class="fa fa-arrow-right"></i><span class="to">Times Square</span>
                                            </div>
                                            <div class="request-meta">
                                                <span class="distance">2.3 miles</span> <span class="fare">$12.50</span> <span class="time">5 min away</span>
                                            </div>
                                            <div class="rider-info">
                                                <span class="rider-name">Sarah M.</span> <span class="rider-rating"><i class="fa fa-star"></i>4.8 </span>
                                            </div>
                                        </div>
                                        <div class="request-actions">
                                            <button class="btn btn-success btn-sm">
                                                <i class="fa fa-check"></i>Accept
                                            </button>
                                            <button class="btn btn-outline btn-sm">
                                                <i class="fa fa-times"></i>Decline
                                            </button>
                                        </div>
                                    </div>
                                    <div class="request-item">
                                        <div class="request-icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="request-details">
                                            <div class="request-route">
                                                <span class="from">Brooklyn Bridge</span> <i class="fa fa-arrow-right"></i><span class="to">JFK Airport</span>
                                            </div>
                                            <div class="request-meta">
                                                <span class="distance">18.7 miles</span> <span class="fare">$45.20</span> <span class="time">12 min away</span>
                                            </div>
                                            <div class="rider-info">
                                                <span class="rider-name">John D.</span> <span class="rider-rating"><i class="fa fa-star"></i>4.9 </span>
                                            </div>
                                        </div>
                                        <div class="request-actions">
                                            <button class="btn btn-success btn-sm">
                                                <i class="fa fa-check"></i>Accept
                                            </button>
                                            <button class="btn btn-outline btn-sm">
                                                <i class="fa fa-times"></i>Decline
                                            </button>
                                        </div>
                                    </div>
                                    <div class="request-item">
                                        <div class="request-icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="request-details">
                                            <div class="request-route">
                                                <span class="from">Manhattan Mall</span> <i class="fa fa-arrow-right"></i><span class="to">Grand Central</span>
                                            </div>
                                            <div class="request-meta">
                                                <span class="distance">1.8 miles</span> <span class="fare">$8.75</span> <span class="time">3 min away</span>
                                            </div>
                                            <div class="rider-info">
                                                <span class="rider-name">Emma L.</span> <span class="rider-rating"><i class="fa fa-star"></i>4.7 </span>
                                            </div>
                                        </div>
                                        <div class="request-actions">
                                            <button class="btn btn-success btn-sm">
                                                <i class="fa fa-check"></i>Accept
                                            </button>
                                            <button class="btn btn-outline btn-sm">
                                                <i class="fa fa-times"></i>Decline
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

				<!-- Earnings Overview Card -->
				        <div class="dashboard-card earnings-card">
                            <div class="card-header">
                                <h3><i class="fa fa-dollar"></i>Earnings Overview</h3>
                                <div class="earnings-period">
                                    <button class="period-btn active" data-period="today">
                                        Today
                                    </button>
                                    <button class="period-btn" data-period="week">
                                        This Week
                                    </button>
                                    <button class="period-btn" data-period="month">
                                        This Month
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="earnings-summary">
                                    <div class="earnings-amount">
                                        <span class="currency">$</span> <span class="amount" id="earningsAmount">245.50</span>
                                    </div>
                                    <div class="earnings-breakdown">
                                        <div class="breakdown-item">
                                            <span class="label">Base Fare</span> <span class="value">$180.00</span>
                                        </div>
                                        <div class="breakdown-item">
                                            <span class="label">Tips</span> <span class="value">$45.50</span>
                                        </div>
                                        <div class="breakdown-item">
                                            <span class="label">Bonuses</span> <span class="value">$20.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="earnings-chart">
                                    <div class="chart-placeholder">
                                        <i class="fa fa-chart-bar"></i>
                                        <p>
                                            Earnings Chart</p>
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
                        &copy; <script>document.write(new Date().getFullYear());</script> RideNow. All rights reserved.</p>
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
$(document).ready(function() {
	// Scroll Animation Observer
	const observerOptions = {
		threshold: 0.1,
		rootMargin: '0px 0px -50px 0px'
	};

	const observer = new IntersectionObserver(function(entries) {
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

	// Online/Offline Status Toggle
	let isOnline = false;
	$('#toggleStatus').on('click', function() {
		isOnline = !isOnline;
		const $icon = $('#statusIcon');
		const $text = $('#statusText');
		const $btn = $(this);

		if (isOnline) {
			$icon.removeClass('fa-circle').addClass('fa-circle-o-notch fa-spin');
			$text.text('Going Online...');
			$btn.removeClass('btn-primary').addClass('btn-success');
			
			setTimeout(() => {
				$icon.removeClass('fa-circle-o-notch fa-spin').addClass('fa-circle');
				$text.text('Go Offline');
				$btn.removeClass('btn-success').addClass('btn-warning');
				isOnline = true;
			}, 2000);
		} else {
			$icon.removeClass('fa-circle').addClass('fa-circle-o-notch fa-spin');
			$text.text('Going Offline...');
			$btn.removeClass('btn-warning').addClass('btn-danger');
			
			setTimeout(() => {
				$icon.removeClass('fa-circle-o-notch fa-spin').addClass('fa-circle');
				$text.text('Go Online');
				$btn.removeClass('btn-danger').addClass('btn-primary');
				isOnline = false;
			}, 2000);
		}
	});

	// Earnings Period Toggle
	$('.period-btn').on('click', function() {
		$('.period-btn').removeClass('active');
		$(this).addClass('active');
		
		const period = $(this).data('period');
		let amount = '245.50';
		
		switch(period) {
			case 'week':
				amount = '1,680.25';
				break;
			case 'month':
				amount = '6,420.80';
				break;
		}
		
		$('#earningsAmount').text(amount);
	});

	// Ride Request Actions
	$('.request-actions .btn-success').on('click', function() {
		const $requestItem = $(this).closest('.request-item');
		$(this).text('Accepted').addClass('btn-info').prop('disabled', true);
		$requestItem.find('.btn-outline').hide();
		
		setTimeout(() => {
			$requestItem.fadeOut();
		}, 2000);
	});

	$('.request-actions .btn-outline').on('click', function() {
		const $requestItem = $(this).closest('.request-item');
		$requestItem.fadeOut();
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
$(document).on('click', '.coming-soon-modal', function(e) {
	if (e.target === this) {
		closeComingSoon();
	}
});
</script>

        <style>

/* Driver Dashboard Specific Styles */
.request-count {
	background: #dc3545;
	color: #fff;
	padding: 4px 12px;
	border-radius: 20px;
	font-size: 12px;
	font-weight: 600;
}

.requests-list {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.request-item {
	display: flex;
	align-items: center;
	gap: 20px;
	padding: 20px;
	border: 1px solid #e9ecef;
	border-radius: 10px;
	transition: all 0.3s ease;
}

.request-item:hover {
	border-color: #667eea;
	background: #f8f9ff;
}

.request-icon {
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

.request-details {
	flex: 1;
}

.request-route {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-bottom: 8px;
	font-weight: 500;
	color: #333;
}

.request-route i {
	color: #667eea;
}

.request-meta {
	display: flex;
	gap: 20px;
	font-size: 14px;
	color: #666;
	margin-bottom: 8px;
}

.rider-info {
	display: flex;
	align-items: center;
	gap: 15px;
	font-size: 14px;
}

.rider-name {
	font-weight: 500;
	color: #333;
}

.rider-rating {
	color: #ffc107;
	font-weight: 500;
}

.request-actions {
	display: flex;
	flex-direction: column;
	gap: 10px;
}

.performance-metrics {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.metric-item {
	display: flex;
	flex-direction: column;
	gap: 8px;
}

.metric-label {
	font-size: 14px;
	color: #666;
	font-weight: 500;
}

.metric-value {
	font-size: 18px;
	font-weight: 700;
	color: #333;
	font-family: 'Inter', sans-serif;
}

.metric-bar {
	height: 6px;
	background: #e9ecef;
	border-radius: 3px;
	overflow: hidden;
}

.metric-fill {
	height: 100%;
	background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
	border-radius: 3px;
	transition: width 0.3s ease;
}

.earnings-period {
	display: flex;
	gap: 10px;
}

.period-btn {
	padding: 8px 16px;
	border: 1px solid #e9ecef;
	background: #fff;
	color: #666;
	border-radius: 20px;
	font-size: 12px;
	font-weight: 500;
	cursor: pointer;
	transition: all 0.3s ease;
}

.period-btn.active {
	background: #667eea;
	color: #fff;
	border-color: #667eea;
}

.period-btn:hover {
	border-color: #667eea;
	color: #667eea;
}

.earnings-summary {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 30px;
}

.earnings-amount {
	display: flex;
	align-items: baseline;
	gap: 5px;
}

.currency {
	font-size: 24px;
	font-weight: 600;
	color: #667eea;
}

.amount {
	font-size: 48px;
	font-weight: 700;
	color: #333;
	font-family: 'Inter', sans-serif;
}

.earnings-breakdown {
	display: flex;
	flex-direction: column;
	gap: 10px;
}

.breakdown-item {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 8px 0;
	border-bottom: 1px solid #f0f0f0;
}

.breakdown-item:last-child {
	border-bottom: none;
}

.breakdown-item .label {
	color: #666;
	font-size: 14px;
}

.breakdown-item .value {
	font-weight: 600;
	color: #333;
}

.earnings-chart {
	height: 200px;
	background: #f8f9fa;
	border-radius: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.chart-placeholder {
	text-align: center;
	color: #666;
}

.chart-placeholder i {
	font-size: 48px;
	margin-bottom: 15px;
	color: #667eea;
}

.chart-placeholder p {
	margin: 0;
	font-size: 16px;
	font-weight: 500;
}

.btn-sm {
	padding: 8px 16px;
	font-size: 12px;
}

.btn-success {
	background: #28a745;
	border-color: #28a745;
}

.btn-success:hover {
	background: #218838;
	border-color: #1e7e34;
}

.btn-warning {
	background: #ffc107;
	border-color: #ffc107;
	color: #212529;
}

.btn-warning:hover {
	background: #e0a800;
	border-color: #d39e00;
}

.btn-danger {
	background: #dc3545;
	border-color: #dc3545;
}

.btn-danger:hover {
	background: #c82333;
	border-color: #bd2130;
}

.btn-info {
	background: #17a2b8;
	border-color: #17a2b8;
}

.btn-info:hover {
	background: #138496;
	border-color: #117a8b;
}

@media (max-width: 991px) {
	.earnings-summary {
		flex-direction: column;
		gap: 20px;
		text-align: center;
	}
	
	.earnings-period {
		justify-content: center;
	}
	
	.request-item {
		flex-direction: column;
		text-align: center;
	}
	
	.request-actions {
		flex-direction: row;
		justify-content: center;
	}
}

@media (max-width: 767px) {
	.amount {
		font-size: 36px;
	}
	
	.earnings-breakdown {
		text-align: center;
	}
	
	.period-btn {
		padding: 6px 12px;
		font-size: 11px;
	}
}
        </style>
    </body>
    </html>
</asp:Content>

