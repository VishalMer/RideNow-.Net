﻿<%@ Page Title="" Language="C#" MasterPageFile="~/contact.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="RideNow.contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

                <!DOCTYPE html>
                <html>
                <head>
                    <!-- Mobile Specific Meta -->
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
                    <title>Contact Us - RideNow Transportation Services</title>
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
                                        <li><a href="index.aspx">Home</a></li>
                                        <li><a href="about.aspx">About</a></li>
                                        <li><a href="contact.aspx" class="active">Contact</a></li>
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
                                        <h1 class="hero-title">Get in Touch</h1>
                                        <p class="hero-subtitle">
                                            Have questions, feedback, or need assistance? We're here to help! Reach out to our dedicated support team and we'll get back to you as soon as possible.</p>
                                        <div class="hero-buttons">
                                            <a href="#contact-form" class="btn btn-primary">Send Message</a> <a href="tel:+1234567890" class="btn btn-outline">Call Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="hero-image">
                                        <div class="contact-illustration">
                                            <div class="contact-icons">
                                                <div class="contact-icon">
                                                    <i class="fa fa-phone"></i>
                                                </div>
                                                <div class="contact-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </div>
                                                <div class="contact-icon">
                                                    <i class="fa fa-map-marker"></i>
                                                </div>
                                                <div class="contact-icon">
                                                    <i class="fa fa-comments"></i>
                                                </div>
                                            </div>
                                            <div class="support-message">
                                                <p>
                                                    24/7 Customer Support</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Contact Info Section -->
                    <section class="contact-info-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="contact-card">
                                        <div class="contact-card-icon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <h3>Phone Support</h3>
                                        <p>
                                            Speak directly with our support team</p>
                                        <div class="contact-details">
                                            <p>
                                                <strong>24/7 Support:</strong> +1 (555) 123-4567</p>
                                            <p>
                                                <strong>Business Hours:</strong> Mon-Fri 9AM-6PM</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="contact-card">
                                        <div class="contact-card-icon">
                                            <i class="fa fa-envelope"></i>
                                        </div>
                                        <h3>Email Support</h3>
                                        <p>
                                            Send us a detailed message</p>
                                        <div class="contact-details">
                                            <p>
                                                <strong>General:</strong> info@ride.com</p>
                                            <p>
                                                <strong>Support:</strong> support@ride.com</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="contact-card">
                                        <div class="contact-card-icon">
                                            <i class="fa fa-map-marker"></i>
                                        </div>
                                        <h3>Visit Us</h3>
                                        <p>
                                            Come see us at our headquarters</p>
                                        <div class="contact-details">
                                            <p>
                                                <strong>Address:</strong> 123 Transportation Ave<br>City, State 12345</p>
                                            <p>
                                                <strong>Hours:</strong> Mon-Fri 9AM-6PM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Contact Form Section -->
                    <section class="contact-form-section" id="contact-form">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="contact-form-card scroll-animate-left">
                                        <h2>Send us a Message</h2>
                                        <p>
                                            Fill out the form below and we'll get back to you within 24 hours.</p>
                                        <form class="contact-form" id="contactForm" action="#" method="post">
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label for="contact-name">
                                                    Full Name *</label>
                                                    <input type="text" id="contact-name" name="name" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="contact-email">
                                                    Email Address *</label>
                                                    <input type="email" id="contact-email" name="email" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label for="contact-phone">
                                                    Phone Number</label>
                                                    <input type="tel" id="contact-phone" name="phone" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="contact-subject">
                                                    Subject *</label>
                                                    <select id="contact-subject" name="subject" class="form-control" required>
                                                        <option value="">Select a subject</option>
                                                        <option value="general">General Inquiry</option>
                                                        <option value="support">Technical Support</option>
                                                        <option value="billing">Billing Question</option>
                                                        <option value="feedback">Feedback</option>
                                                        <option value="partnership">Partnership</option>
                                                        <option value="other">Other</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="contact-message">
                                                Message *</label>
                                                <textarea id="contact-message" name="message" class="form-control" rows="6" placeholder="Tell us how we can help you..." required></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary btn-lg">
                                                Send Message
                                            </button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="contact-sidebar scroll-animate-right">
                                        <div class="sidebar-card scroll-animate-scale">
                                            <h3>Quick Help</h3>
                                            <div class="help-links">
                                                <a href="#" class="help-link"><i class="fa fa-question-circle"></i><span>Frequently Asked Questions</span> </a><a href="#" class="help-link"><i class="fa fa-book"></i><span>User Guide</span> </a><a href="#" class="help-link"><i class="fa fa-shield"></i><span>Safety Guidelines</span> </a><a href="#" class="help-link"><i class="fa fa-credit-card"></i><span>Payment Help</span> </a>
                                            </div>
                                        </div>
                                        <div class="sidebar-card scroll-animate-scale delay-1">
                                            <h3>Response Times</h3>
                                            <div class="response-times">
                                                <div class="response-item">
                                                    <span class="response-type">Email</span> <span class="response-time">Within 24 hours</span>
                                                </div>
                                                <div class="response-item">
                                                    <span class="response-type">Phone</span> <span class="response-time">Immediate</span>
                                                </div>
                                                <div class="response-item">
                                                    <span class="response-type">Live Chat</span> <span class="response-time">Within 5 minutes</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- FAQ Section -->
                    <section class="faq-section">
                        <div class="container">
                            <div class="section-header">
                                <h2>Frequently Asked Questions</h2>
                                <p>
                                    Quick answers to common questions</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="faq-item">
                                        <h4>How do I book a ride?</h4>
                                        <p>
                                            Simply download our app, create an account, enter your destination, and choose your preferred vehicle. You'll be matched with a nearby driver in minutes.</p>
                                    </div>
                                    <div class="faq-item">
                                        <h4>What payment methods do you accept?</h4>
                                        <p>
                                            We accept all major credit cards, debit cards, PayPal, and digital wallets like Apple Pay and Google Pay for your convenience.</p>
                                    </div>
                                    <div class="faq-item">
                                        <h4>How do I become a driver?</h4>
                                        <p>
                                            Visit our driver application page, complete the registration process, pass our background check, and start earning with flexible hours.</p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="faq-item">
                                        <h4>Is my personal information safe?</h4>
                                        <p>
                                            Absolutely. We use industry-standard encryption and never share your personal information with third parties without your consent.</p>
                                    </div>
                                    <div class="faq-item">
                                        <h4>What if I need to cancel my ride?</h4>
                                        <p>
                                            You can cancel your ride free of charge up to 2 minutes after booking. After that, a small cancellation fee may apply.</p>
                                    </div>
                                    <div class="faq-item">
                                        <h4>Do you offer corporate accounts?</h4>
                                        <p>
                                            Yes! We have special corporate accounts with features like centralized billing, trip reporting, and dedicated account management.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- CTA Section -->
                    <section class="cta-section">
                        <div class="container">
                            <div class="cta-content">
                                <h2>Still Have Questions?</h2>
                                <p>
                                    Our support team is available 24/7 to help you with any questions or concerns.</p>
                                <div class="cta-buttons">
                                    <a href="tel:+1234567890" class="btn btn-primary btn-lg">Call Support</a> <a href="register.aspx" class="btn btn-outline btn-lg">Get Started</a>
                                </div>
                            </div>
                        </div>
                    </section>

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
                                            <li><a href="about.aspx">About Us</a></li>
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
                                            <li><a href="contact.aspx">Help Center</a></li>
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

                            // Contact form validation
                            $('#contactForm').on('submit', function (e) {
                                e.preventDefault();

                                let isValid = true;
                                $('.contact-form .form-control[required]').each(function () {
                                    if (!validateContactField($(this))) {
                                        isValid = false;
                                    }
                                });

                                if (isValid) {
                                    // Show success message
                                    $('.btn-primary').html('<i class="fa fa-spinner fa-spin"></i> Sending...');
                                    $('.btn-primary').prop('disabled', true);

                                    setTimeout(function () {
                                        $('.btn-primary').html('<i class="fa fa-check"></i> Message Sent!');
                                        $('.btn-primary').removeClass('btn-primary').addClass('btn-success');

                                        // Reset form
                                        $('#contactForm')[0].reset();
                                        $('.form-group').removeClass('has-error');
                                        $('.form-error').remove();
                                    }, 2000);
                                }
                            });

                            // Real-time validation
                            $('.contact-form .form-control').on('blur input', function () {
                                validateContactField($(this));
                            });

                            // Coming soon functionality for buttons
                            $('a[href="#"], button:not(.coming-soon-close):not(.btn-primary)').on('click', function (e) {
                                e.preventDefault();
                                showComingSoon();
                            });
                        });

                        // Contact form validation function
                        function validateContactField(field) {
                            const value = field.val().trim();
                            const fieldName = field.attr('name');
                            let isValid = true;
                            let errorMessage = '';

                            // Remove previous error states
                            field.removeClass('error success');
                            field.closest('.form-group').removeClass('has-error');
                            field.siblings('.form-error').remove();

                            // Required field validation
                            if (field.prop('required') && value === '') {
                                isValid = false;
                                errorMessage = 'This field is required';
                            }

                            // Email validation
                            if (fieldName === 'email' && value !== '') {
                                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                if (!emailRegex.test(value)) {
                                    isValid = false;
                                    errorMessage = 'Please enter a valid email address';
                                }
                            }

                            // Phone validation
                            if (fieldName === 'phone' && value !== '') {
                                const phoneRegex = /^[\+]?[1-9][\d]{0,15}$/;
                                if (!phoneRegex.test(value.replace(/\s/g, ''))) {
                                    isValid = false;
                                    errorMessage = 'Please enter a valid phone number';
                                }
                            }

                            // Name validation
                            if (fieldName === 'name' && value !== '') {
                                if (value.length < 2) {
                                    isValid = false;
                                    errorMessage = 'Name must be at least 2 characters long';
                                }
                            }

                            // Message validation
                            if (fieldName === 'message' && value !== '') {
                                if (value.length < 10) {
                                    isValid = false;
                                    errorMessage = 'Message must be at least 10 characters long';
                                }
                            }

                            // Set field state
                            if (isValid) {
                                field.addClass('success');
                            } else {
                                field.addClass('error');
                                field.closest('.form-group').addClass('has-error');
                                field.after(`<div class="form-error">${errorMessage}</div>`);
                            }

                            return isValid;
                        }

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

