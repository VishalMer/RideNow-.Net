﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RideNow.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

                <!DOCTYPE html>
                <html>
                <head>
                    <!-- Mobile Specific Meta jdncjsbjsv -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <!-- Favicon-->
                    <link rel="shortcut icon" href="img/fav.png">
                    <!-- Author Meta -->
                    <meta name="author" content="colorlib">
                    <!-- Meta Description -->
                    <meta name="description" content="">
                    <!-- Meta Keyword -->
                    <meta name="keywords" content="">
                    <!-- meta character set -->
                    <meta charset="UTF-8">
                    <!-- Site Title -->
                    <title>RideNow - Your Ultimate Transportation Solution</title>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
                    <!--
		CSS
		============================================= -->
                    <link rel="stylesheet" href="css/linearicons.css">
                    <link rel="stylesheet" href="css/font-awesome.min.css">
                    <link rel="stylesheet" href="css/bootstrap.css">
                    <link rel="stylesheet" href="css/magnific-popup.css">
                    <link rel="stylesheet" href="css/nice-select.css">
                    <link rel="stylesheet" href="css/animate.min.css">
                    <link rel="stylesheet" href="css/jquery-ui.css">
                    <link rel="stylesheet" href="css/main.css">
                    <link rel="stylesheet" href="css/intro.css">
                </head>
                <body>
                    <header id="header">
                        <div class="main-menu">
                            <div class="header-content">
                                <a href="index.aspx" class="logo-text">RideNow</a>
                                <nav id="nav-menu-container">
                                    <ul class="nav-menu">
                                        <li><a href="index.aspx" class="active">Home</a></li>
                                        <li><a href="about.aspx">About</a></li>
                                        <li><a href="contact.aspx">Contact</a></li>
                                        <li><a href="login.aspx">Log in</a></li>
                                        <li><a href="register.aspx" class="login-btn">Get Started</a></li>
                                    </ul>
                                </nav>
                                <!-- #nav-menu-container -->
                            </div>
                        </div>
                    </header>
                    <!-- #header -->

                    <!-- Hero Section -->
                    <section class="intro-hero">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="hero-content">
                                        <h1 class="hero-title">Your Ultimate Transportation Solution</h1>
                                        <p class="hero-subtitle">
                                            Experience seamless rides with our premium transportation services. From daily commutes to special events, we've got you covered.</p>
                                        <div class="hero-buttons">
                                            <a href="book-ride.aspx" class="btn btn-primary">Start Riding</a> <a href="#features" class="btn btn-outline">Learn More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="hero-image">
                                        <div class="transport-illustration">
                                            <div class="car-fleet">
                                                <div class="car car-1">
                                                </div>
                                                <div class="car car-2">
                                                </div>
                                                <div class="car car-3">
                                                </div>
                                            </div>
                                            <div class="city-scape">
                                                <div class="building building-1">
                                                </div>
                                                <div class="building building-2">
                                                </div>
                                                <div class="building building-3">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Features Section -->
                    <section class="features-section" id="features">
                        <div class="container">
                            <div class="section-header scroll-animate">
                                <h2>Why Choose RideNow?</h2>
                                <p>
                                    Discover the features that make us the preferred choice for millions of riders worldwide</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="feature-card scroll-animate">
                                        <div class="feature-icon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                        <h3>24/7 Availability</h3>
                                        <p>
                                            Get a ride anytime, anywhere. Our service operates round the clock to meet your transportation needs.</p>
                                    </div>
                                </div>
                                <!-- <div class="col-lg-4 col-md-6">
						<div class="feature-card">
							<div class="feature-icon">
								<i class="fa fa-shield"></i>
							</div>
							<h3>Safe & Secure</h3>
							<p>Your safety is our priority. All drivers are verified and vehicles are regularly inspected for your peace of mind.</p>
						</div>
					</div> -->
                                <!-- <div class="col-lg-4 col-md-6">
						<div class="feature-card">
							<div class="feature-icon">
								<i class="fa fa-dollar"></i>
							</div>
							<h3>Affordable Pricing</h3>
							<p>Transparent pricing with no hidden fees. Pay only for what you use with competitive rates.</p>
						</div>
					</div> -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="feature-card scroll-animate delay-1">
                                        <div class="feature-icon">
                                            <i class="fa fa-mobile"></i>
                                        </div>
                                        <h3>Easy Booking</h3>
                                        <p>
                                            Book your ride in seconds with our user-friendly app. Track your ride in real-time.</p>
                                    </div>
                                </div>
                                <!-- <div class="col-lg-4 col-md-6">
						<div class="feature-card">
							<div class="feature-icon">
								<i class="fa fa-users"></i>
							</div>
							<h3>Professional Drivers</h3>
							<p>Experienced and courteous drivers who know the city well and provide excellent service.</p>
						</div>
					</div> -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="feature-card scroll-animate delay-2">
                                        <div class="feature-icon">
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <h3>Premium Experience</h3>
                                        <p>
                                            Clean, comfortable vehicles with modern amenities for a luxurious travel experience.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="cta-section">
                        <div class="container">
                            <div class="cta-content">
                                <h2>Ready to Start Your Journey?</h2>
                                <p>
                                    Join millions of satisfied customers and experience the future of transportation</p>
                                <div class="cta-buttons">
                                    <a href="book-ride.aspx" class="btn btn-primary btn-lg">Get Started Now</a> <a href="contact.aspx" class="btn btn-outline btn-lg">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Services Section -->
                    <section class="services-section" id="services">
                        <div class="container">
                            <div class="section-header scroll-animate">
                                <h2>Our Services</h2>
                                <p>
                                    Comprehensive transportation solutions for every need</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="service-card scroll-animate-left">
                                        <div class="service-image">
                                            <div class="service-icon">
                                                <i class="fa fa-car"></i>
                                            </div>
                                        </div>
                                        <div class="service-content">
                                            <h3>City Rides</h3>
                                            <p>
                                                Quick and convenient rides around the city for your daily commute, shopping, or leisure activities.</p>
                                            <ul>
                                                <li>Instant booking</li>
                                                <li>Real-time tracking</li>
                                                <li>Multiple payment options</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-lg-6 col-md-6">
						<div class="service-card">
							<div class="service-image">
								<div class="service-icon">
									<i class="fa fa-plane"></i>
								</div>
							</div>
							<div class="service-content">
								<h3>Airport Transfers</h3>
								<p>Reliable airport pickup and drop-off services with flight tracking and flexible scheduling.</p>
								<ul>
									<li>Flight monitoring</li>
									<li>Luggage assistance</li>
									<li>Meet & greet service</li>
								</ul>
							</div>
						</div>
					</div> -->
                                <div class="col-lg-6 col-md-6">
                                    <div class="service-card scroll-animate-right">
                                        <div class="service-image">
                                            <div class="service-icon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                        <div class="service-content">
                                            <h3>Event Transportation</h3>
                                            <p>
                                                Special transportation for weddings, corporate events, parties, and other special occasions.</p>
                                            <ul>
                                                <li>Group bookings</li>
                                                <li>Luxury vehicles</li>
                                                <li>Professional chauffeurs</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-lg-6 col-md-6">
						<div class="service-card">
							<div class="service-image">
								<div class="service-icon">
									<i class="fa fa-briefcase"></i>
								</div>
							</div>
							<div class="service-content">
								<h3>Business Travel</h3>
								<p>Professional transportation services for business meetings, conferences, and corporate travel.</p>
								<ul>
									<li>Corporate accounts</li>
									<li>Receipt management</li>
									<li>Priority booking</li>
								</ul>
							</div>
						</div>
					</div> -->
                            </div>
                        </div>
                    </section>

                    <!-- Stats Section -->
                    <section class="stats-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="stat-item">
                                        <div class="stat-number">
                                            1M+</div>
                                        <div class="stat-label">
                                            Happy Customers</div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="stat-item">
                                        <div class="stat-number">
                                            50K+</div>
                                        <div class="stat-label">
                                            Verified Drivers</div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="stat-item">
                                        <div class="stat-number">
                                            100+</div>
                                        <div class="stat-label">
                                            Cities Covered</div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="stat-item">
                                        <div class="stat-number">
                                            99.9%</div>
                                        <div class="stat-label">
                                            On-Time Rate</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- CTA Section -->


                    <!-- Footer -->
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
                                    &copy; 2024 RideNow. All rights reserved.</p>
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

                    <script src="js/vendor/jquery-2.2.4.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                    <script src="js/vendor/bootstrap.min.js"></script>
                    <script src="js/easing.min.js"></script>
                    <script src="js/hoverIntent.js"></script>
                    <script src="js/superfish.min.js"></script>
                    <script src="js/jquery.ajaxchimp.min.js"></script>
                    <script src="js/jquery.magnific-popup.min.js"></script>
                    <script src="js/jquery-ui.js"></script>
                    <script src="js/jquery.nice-select.min.js"></script>
                    <script src="js/mail-script.js"></script>
                    <script src="js/main.js"></script>

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

                            // Coming soon functionality for buttons
                            $('a[href="#"], button:not(.coming-soon-close):not(.btn-primary)').on('click', function (e) {
                                e.preventDefault();
                                showComingSoon();
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
                </body>
    </html>
</asp:Content>

