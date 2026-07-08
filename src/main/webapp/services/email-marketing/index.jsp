<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Marketing Services - IARDO | Amazon AWS Powered Solutions</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- <link rel="stylesheet" href="/assets/css/email-marketing.css?v=email1"> -->
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* AWS Brand Colors */
    --primary-orange: #FF9900;
    --dark-orange: #EC7211;
    --light-orange: #FFAC31;
    --aws-dark: #232F3E;
    --aws-darker: #161E2E;
    --accent-green: #10B981;
    --accent-blue: #3B82F6;
    
    /* Light Theme Background Colors */
    --bg-dark: #F8F9FA;
    --bg-darker: #FFFFFF;
    --card-bg: #FFFFFF;
    --card-bg-hover: #F0F2F5;
    --light-card: #F8F9FA;
    
    /* Gradients */
    --gradient-primary: linear-gradient(135deg, #FF9900, #EC7211);
    --gradient-secondary: linear-gradient(135deg, #10B981, #FF9900);
    
    /* Light Theme Borders & Shadows */
    --border-color: rgba(255, 153, 0, 0.25);
    --border-subtle: rgba(0, 0, 0, 0.08);
    --shadow-sm: 0 5px 15px rgba(0, 0, 0, 0.03);
    --shadow-md: 0 8px 25px rgba(0, 0, 0, 0.05);
    --shadow-lg: 0 15px 35px rgba(0, 0, 0, 0.08);
    --shadow-orange: 0 8px 32px rgba(255, 153, 0, 0.2);
}

body {
    font-family: 'Poppins', sans-serif;
    background: #FFFFFF !important;
    color: #000000 !important;
    line-height: 1.6;
    overflow-x: hidden;
}

/* =====================================================
   NUCLEAR TEXT OVERRIDES FOR LIGHT THEME VISIBILITY
===================================================== */
.hero-title, 
.feature-card h3, 
.plan-header h3, 
.cta-content h2, 
.popup-title {
    color: #000000 !important; /* PURE BLACK HEADINGS */
}

.hero-description, 
.feature-card p, 
.plan-header p, 
.cta-content p, 
.plan-features li, 
.popup-features li,
.plans-note p,
.section-subtitle,
.popup-subtitle,
.volume-label,
.time-label {
    color: #333333 !important; /* DARK GRAY TEXT */
}

/* Keep gradient text working */
.gradient-text {
    background: var(--gradient-primary) !important;
    -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important;
    color: transparent !important;
    background-clip: text !important;
}

.container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 3rem 0 2rem;
}

/* Top Announcement Bar */
.top-announcement-bar {
    background: linear-gradient(135deg, var(--primary-orange), var(--dark-orange)) !important;
    padding: 0.7rem 1.5rem;
    margin-bottom: 1.5rem;
    border-radius: 50px;
    box-shadow: 0 8px 30px rgba(255, 153, 0, 0.3);
    border: 3px solid rgba(255, 255, 255, 0.8);
    animation: slideInTop 0.8s ease-out, floatBar 3s ease-in-out infinite;
    display: inline-block;
}

@keyframes slideInTop { from { transform: translateY(-30px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
@keyframes floatBar { 0%, 100% { transform: translateY(0); } 50% { transform: translateY(-5px); } }

.announcement-content { display: flex; align-items: center; justify-content: center; gap: 0.8rem; }
.announcement-icon { font-size: 1.4rem; color: white !important; animation: bounce 2s infinite; }

@keyframes bounce { 0%, 100% { transform: translateY(0) scale(1); } 50% { transform: translateY(-3px) scale(1.1); } }

.announcement-text {
    font-size: 1rem; font-weight: 700; color: white !important; text-align: center;
    font-family: 'Montserrat', sans-serif; letter-spacing: 0.3px;
}

.announcement-bolt { font-size: 1.1rem; color: #FFD700 !important; animation: flash 1.5s infinite; }
@keyframes flash { 0%, 100% { opacity: 1; transform: scale(1); } 50% { opacity: 0.4; transform: scale(1.2); } }

/* Scroll Animations */
.animate-slide-down { opacity: 0; transform: translateY(-50px); animation: slideDown 0.8s ease-out forwards; }
.animate-slide-up { opacity: 0; transform: translateY(30px); animation: slideUp 0.8s ease-out forwards; display: block; }
.animate-fade-in { opacity: 0; animation: fadeIn 0.8s ease-out forwards; }
.animate-zoom-in { opacity: 0; transform: scale(0.95); animation: zoomIn 1s ease-out forwards; animation-delay: 0.5s; }
.animate-on-scroll { opacity: 0; transform: translateY(30px); transition: all 0.8s cubic-bezier(0.4, 0, 0.2, 1); }
.animate-on-scroll.visible { opacity: 1; transform: translateY(0); }

@keyframes slideDown { to { opacity: 1; transform: translateY(0); } }
@keyframes slideUp { to { opacity: 1; transform: translateY(0); } }
@keyframes fadeIn { to { opacity: 1; } }
@keyframes zoomIn { to { opacity: 1; transform: scale(1); } }

/* Side Popup */
.side-popup {
    position: fixed; top: 120px; right: -400px; width: 350px;
    background: #FFFFFF !important; border: 2px solid var(--primary-orange);
    border-radius: 20px 0 0 20px; padding: 2rem 1.5rem;
    box-shadow: -10px 10px 40px rgba(0, 0, 0, 0.1), -5px 5px 20px rgba(255, 153, 0, 0.15);
    z-index: 9999; transition: right 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.side-popup.show { right: 0; }

.popup-close {
    position: absolute; top: 15px; right: 15px; width: 35px; height: 35px;
    background: transparent; border: 2px solid var(--primary-orange); border-radius: 50%;
    color: #000000 !important; font-size: 1.2rem; cursor: pointer; transition: all 0.3s ease;
    display: flex; align-items: center; justify-content: center;
}

.popup-close:hover { background: var(--primary-orange) !important; color: white !important; transform: rotate(90deg); }

.popup-icon {
    width: 60px; height: 60px; background: var(--gradient-primary); border-radius: 15px;
    display: flex; align-items: center; justify-content: center; font-size: 2rem; color: white !important; margin: 0 auto 1rem;
}

.popup-title { font-size: 1.5rem; font-weight: 700; text-align: center; margin-bottom: 0.5rem; }
.popup-subtitle { text-align: center; font-size: 1.2rem; font-weight: 600; margin-bottom: 1.5rem; }

.timer-section {
    background: #F8F9FA !important; border: 1px solid rgba(0,0,0,0.1); border-radius: 15px;
    padding: 1rem; margin-bottom: 1.5rem;
}

.timer-label { text-align: center; color: var(--primary-orange) !important; font-weight: 600; font-size: 0.9rem; margin-bottom: 0.8rem; }
.countdown-timer { display: flex; justify-content: center; align-items: center; gap: 0.5rem; }

.time-unit {
    background: #FFFFFF !important; border: 2px solid var(--primary-orange); border-radius: 10px;
    padding: 0.5rem 0.8rem; text-align: center; min-width: 60px;
}

.time-value { display: block; font-size: 1.8rem; font-weight: 900; font-family: 'Montserrat', sans-serif; color: var(--primary-orange) !important; line-height: 1; }
.time-label { display: block; font-size: 0.65rem; margin-top: 0.2rem; text-transform: uppercase; }
.time-separator { font-size: 1.5rem; color: var(--primary-orange) !important; font-weight: 700; }

.popup-features { list-style: none; margin-bottom: 1.5rem; }
.popup-features li { display: flex; align-items: center; gap: 0.6rem; font-size: 0.9rem; margin-bottom: 0.6rem; }
.popup-features i { color: #10B981 !important; font-size: 1rem; }

.popup-btn {
    display: flex; align-items: center; justify-content: center; gap: 0.6rem;
    background: var(--gradient-primary) !important; color: white !important; padding: 0.9rem 1.5rem;
    border-radius: 50px; font-weight: 700; text-decoration: none; transition: all 0.3s ease; box-shadow: 0 8px 25px rgba(255, 153, 0, 0.3);
}

.popup-btn:hover { transform: translateY(-3px); box-shadow: 0 12px 35px rgba(255, 153, 0, 0.5); }

/* Hero Section */
.hero {
    min-height: 90vh; position: relative; display: flex; align-items: center;
    padding: 120px 0 6rem; overflow: hidden;
    background: linear-gradient(180deg, #FFFFFF 0%, #F8F9FA 100%) !important;
}

.hero-background { position: absolute; width: 100%; height: 100%; top: 0; left: 0; overflow: hidden; z-index: 0; }
.gradient-orb { position: absolute; border-radius: 50%; filter: blur(100px); opacity: 0.15; animation: float-orb 20s infinite ease-in-out; }
.orb-1 { width: 600px; height: 600px; background: radial-gradient(circle, rgba(255, 153, 0, 0.5), transparent); top: -200px; right: -100px; }
.orb-2 { width: 500px; height: 500px; background: radial-gradient(circle, rgba(16, 185, 129, 0.3), transparent); bottom: -150px; left: -100px; animation-delay: 2s; }

.hero-grid { position: relative; z-index: 2; display: grid; grid-template-columns: 1fr 500px; gap: 4rem; align-items: center; }
.hero-content-left { max-width: 750px; text-align: left; }

.hero-badge {
    display: inline-flex; align-items: center; gap: 1rem;
    background: rgba(255, 153, 0, 0.1) !important; border: 2px solid var(--primary-orange) !important;
    padding: 1rem 2.5rem; border-radius: 50px; color: var(--primary-orange) !important; font-size: 1.4rem;
    font-weight: 800; margin-bottom: 2rem; position: relative; overflow: hidden;
}

.hero-badge i { font-size: 2rem; color: var(--primary-orange) !important; }

.hero-title { font-family: 'Montserrat', sans-serif; font-size: clamp(2.5rem, 5vw, 4rem); font-weight: 900; line-height: 1.2; margin-bottom: 1.5rem; }
.hero-description { font-size: 1.2rem; line-height: 1.8; margin-bottom: 2.5rem; }

.hero-features { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem; margin-bottom: 2.5rem; }

.feature-badge {
    display: flex; align-items: center; gap: 0.5rem;
    background: #FFFFFF !important; border: 1px solid var(--border-subtle);
    padding: 0.7rem 1.3rem; border-radius: 50px; color: #333333 !important;
    font-size: 0.9rem; transition: all 0.3s ease; box-shadow: 0 2px 10px rgba(0,0,0,0.02);
}

.feature-badge:hover { border-color: var(--primary-orange); transform: translateY(-3px); }
.feature-badge i { color: var(--primary-orange) !important; }

.hero-buttons { display: flex; gap: 1.5rem; flex-wrap: wrap; justify-content: flex-start; }

/* Hero Image Right Side */
.hero-image-right {
    position: relative; height: 550px; border-radius: 30px; overflow: hidden;
    box-shadow: var(--shadow-md); border: 1px solid var(--border-subtle);
}

.hero-image-right img { width: 100%; height: 100%; object-fit: cover; }

.btn {
    display: inline-flex; align-items: center; gap: 0.6rem; padding: 1.1rem 2.5rem;
    border-radius: 50px; font-weight: 700; font-size: 1rem; text-decoration: none; transition: all 0.3s ease; cursor: pointer; border: none;
}

.btn-primary { background: var(--gradient-primary) !important; color: white !important; box-shadow: 0 8px 25px rgba(255, 153, 0, 0.3); }
.btn-primary:hover { transform: translateY(-3px); box-shadow: 0 12px 35px rgba(255, 153, 0, 0.4); }
.btn-secondary { background: transparent !important; color: var(--primary-orange) !important; border: 2px solid var(--primary-orange) !important; }
.btn-secondary:hover { background: rgba(255, 153, 0, 0.05) !important; transform: translateY(-3px); }
.btn-large { padding: 1.3rem 3rem; font-size: 1.1rem; }

/* Features Section */
.features { padding: 8rem 0; background: #FFFFFF !important; position: relative; }
.features::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 1px; background: var(--border-subtle); }

.section-header { text-align: center; max-width: 800px; margin: 0 auto 5rem; position: relative; }
.section-header h2 {
    font-family: 'Montserrat', sans-serif; font-size: clamp(2.5rem, 4vw, 3.8rem); font-weight: 900;
    margin-bottom: 1.5rem; background: var(--gradient-primary) !important; -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important; color: transparent !important; line-height: 1.2;
}

.aws-logo-container { display: flex; justify-content: center; align-items: center; margin-bottom: 1rem; }
.aws-logo-container img { height: 80px; width: auto; filter: brightness(0); opacity: 0.8; animation: float-logo 3s ease-in-out infinite; } /* Made dark */

.section-subtitle { font-size: 1.3rem; }

.features-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); gap: 2.5rem; }

.feature-card {
    background: #FFFFFF !important; border: 1px solid var(--border-subtle);
    border-radius: 25px; padding: 2.5rem; transition: all 0.4s ease; position: relative;
    overflow: hidden; box-shadow: var(--shadow-sm);
}

.feature-card:hover { transform: translateY(-12px); border-color: rgba(255, 153, 0, 0.5); box-shadow: var(--shadow-md); }

.feature-icon {
    width: 70px; height: 70px; background: var(--gradient-primary); border-radius: 18px;
    display: flex; align-items: center; justify-content: center; font-size: 2rem; color: white !important; margin-bottom: 1.5rem; transition: transform 0.4s ease;
}

.feature-card:first-child .feature-icon { background: transparent !important; border: 2px solid var(--primary-orange) !important; }
.feature-card:first-child .feature-icon i { color: var(--primary-orange) !important; }
.feature-card:hover .feature-icon { transform: scale(1.1) rotate(5deg); }

.feature-card h3 { font-size: 1.5rem; font-weight: 700; margin-bottom: 1rem; }
.feature-card p { line-height: 1.7; }

/* Plans Section */
.plans { padding: 8rem 0; background: #F8F9FA !important; position: relative; }
.plans::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 1px; background: var(--border-subtle); }
.plans-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2.5rem; margin-bottom: 3rem; }

.plan-card {
    background: #FFFFFF !important; border: 1px solid var(--border-subtle); border-radius: 25px;
    padding: 2.5rem; transition: all 0.4s ease; position: relative; display: flex; flex-direction: column;
    box-shadow: var(--shadow-sm); overflow: hidden;
}

.plan-card:hover { transform: translateY(-12px); border-color: rgba(255, 153, 0, 0.4); box-shadow: var(--shadow-md); }

.plan-card.popular { border-color: var(--primary-orange) !important; background: #FFFFFF !important; box-shadow: var(--shadow-orange), var(--shadow-md); }

.popular-badge {
    position: absolute; top: 20px; right: 20px; background: var(--gradient-primary); color: white !important;
    padding: 0.5rem 1.2rem; border-radius: 50px; font-size: 0.85rem; font-weight: 700; box-shadow: 0 4px 15px rgba(255, 153, 0, 0.3);
}

.plan-header { margin-bottom: 2rem; }
.plan-header h3 { font-size: 2rem; font-weight: 800; margin-bottom: 0.5rem; font-family: 'Montserrat', sans-serif; }
.plan-header p { font-size: 1rem; }

.plan-volume {
    background: linear-gradient(135deg, rgba(255, 153, 0, 0.05), rgba(0, 200, 83, 0.05)) !important;
    border: 1px solid var(--primary-orange); border-radius: 20px; padding: 2.5rem 1.5rem; text-align: center; margin-bottom: 2rem; position: relative; overflow: hidden;
}

.volume-number {
    position: relative; z-index: 1; display: block; font-size: 4rem; font-weight: 900;
    font-family: 'Montserrat', sans-serif; background: var(--gradient-primary) !important; -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important; color: transparent !important; line-height: 1; margin-bottom: 0.8rem;
}

.volume-label { position: relative; z-index: 1; display: block; font-size: 1.1rem; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; }

.plan-features { list-style: none; margin-bottom: 2rem; flex-grow: 1; }
.plan-features li { display: flex; align-items: center; gap: 0.7rem; padding: 0.6rem 0; font-size: 0.95rem; }
.plan-features i { color: #10B981 !important; font-size: 1rem; flex-shrink: 0; }

.plan-btn {
    display: flex; align-items: center; justify-content: center; gap: 0.6rem;
    background: var(--gradient-primary) !important; color: white !important; padding: 1.1rem 2rem;
    border-radius: 50px; font-weight: 700; text-decoration: none; transition: all 0.3s ease; box-shadow: 0 8px 20px rgba(255, 153, 0, 0.3); position: relative; z-index: 5; cursor: pointer;
}

.plan-btn:hover { transform: translateY(-3px); box-shadow: 0 12px 25px rgba(255, 153, 0, 0.4); }

.plans-note {
    max-width: 900px; margin: 0 auto; text-align: center; background: #FFFFFF !important;
    border: 1px solid var(--border-subtle); border-radius: 20px; padding: 1.5rem 2rem; display: flex;
    align-items: center; justify-content: center; gap: 1rem; box-shadow: var(--shadow-sm);
}

.plans-note i { color: var(--primary-orange) !important; font-size: 1.5rem; flex-shrink: 0; }

/* CTA Section */
.cta { padding: 8rem 0; background: #FFFFFF !important; position: relative; }
.cta::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 1px; background: var(--border-subtle); }

.cta-content { max-width: 800px; margin: 0 auto; text-align: center; }
.cta-content h2 { font-family: 'Montserrat', sans-serif; font-size: clamp(2.5rem, 4vw, 3.5rem); font-weight: 900; margin-bottom: 1.5rem; }
.cta-content p { font-size: 1.2rem; margin-bottom: 2.5rem; }
.cta-buttons { display: flex; gap: 1.5rem; justify-content: center; flex-wrap: wrap; margin-bottom: 2rem; }

.clickable-card { cursor: pointer; transition: transform 0.3s ease, box-shadow 0.3s ease; }
.clickable-card::before { pointer-events: none; }
.clickable-card:hover { transform: translateY(-5px); box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08); }

/* Responsive Design */
@media (max-width: 1024px) {
    .hero-grid { grid-template-columns: 1fr; gap: 3rem; }
    .hero-image-right { height: 400px; width: 100%; }
    .side-popup { width: 320px; }
}

@media (max-width: 768px) {
    .container { padding: 0 1.5rem; }
    .top-announcement-bar { padding: 0.6rem 1.2rem; margin-bottom: 1.2rem; }
    .announcement-content { gap: 0.6rem; }
    .announcement-icon { font-size: 1.2rem; }
    .announcement-text { font-size: 0.9rem; }
    .hero { padding: 100px 0 4rem; }
    .features-grid, .plans-grid, .hero-features { grid-template-columns: 1fr; }
    .hero-image-right { height: 350px; }
    .side-popup { width: 85%; max-width: 340px; right: -100%; top: 100px; padding: 1.5rem 1.2rem; }
    .volume-number { font-size: 3.5rem; }
    .features, .plans, .cta { padding: 5rem 0; }
    .section-header { margin-bottom: 3rem; }
    .hero-badge { font-size: 1.2rem; padding: 1rem 2rem; }
    .hero-badge i { font-size: 1.7rem; }
}

@media (max-width: 480px) {
    .container { padding: 0 1rem; }
    .top-announcement-bar { padding: 0.5rem 1rem; margin-bottom: 1rem; }
    .announcement-text { font-size: 0.8rem; }
    .hero { padding: 90px 0 3rem; }
    .hero-title { font-size: 1.8rem; line-height: 1.3; }
    .hero-description { font-size: 1rem; margin-bottom: 1.5rem; }
    .hero-badge { padding: 0.9rem 1.8rem; font-size: 1.1rem; margin-bottom: 1.5rem; }
    .hero-badge i { font-size: 1.5rem; }
    .section-header h2 { font-size: 1.8rem; }
    .volume-number { font-size: 2.8rem; }
    .plan-volume { padding: 1.8rem 1rem; }
    .time-unit { min-width: 55px; padding: 0.5rem 0.5rem; }
    .time-value { font-size: 1.4rem; }
    .hero-image-right { height: 280px; }
    .feature-badge { font-size: 0.85rem; padding: 0.6rem 1rem; }
    .btn { padding: 0.9rem 1.8rem; font-size: 0.95rem; }
    .hero-buttons, .cta-buttons { flex-direction: column; width: 100%; }
    .hero-buttons .btn, .cta-buttons .btn { width: 100%; justify-content: center; }
    .side-popup { width: 90%; max-width: 320px; padding: 1.5rem 1rem; top: 80px; }
    .feature-card, .plan-card { padding: 2rem 1.5rem; }
    .cta-content h2 { font-size: 2rem; margin-bottom: 1rem; }
    .cta-content p { font-size: 1rem; margin-bottom: 2rem; }
    .features, .plans, .cta { padding: 4rem 0; }
}
    	
    </style>
</head>
<body>

<jsp:include page="../../includes/navbar/navbar.jsp" />

       

<!-- Hero Section -->
<section class="hero">
    <div class="hero-background">
        <div class="gradient-orb orb-1"></div>
        <div class="gradient-orb orb-2"></div>
    </div>
    
    <div class="container">
        <div class="hero-grid">
            <!-- Left Content -->
            <div class="hero-content-left">
                <!-- Announcement Bar - Just above content -->
                <div class="top-announcement-bar">
                    <div class="announcement-content">
                        <i class="fab fa-aws announcement-icon"></i>
                        <span class="announcement-text">Powered by Amazon AWS </span>
                        <i class="fas fa-bolt announcement-bolt"></i>
                    </div>
                </div>
                
                <!-- <div class="hero-badge animate-slide-down">
                    <i class="fab fa-aws"></i>
                    <span>Powered by Amazon AWS</span>
                </div> -->
                
                <h1 class="hero-title">
                    <span class="animate-slide-up" style="animation-delay: 0.2s">Professional Email Marketing</span>
                    <span class="gradient-text animate-slide-up" style="animation-delay: 0.4s">Powered by Amazon AWS</span>
                </h1>
                
                <p class="hero-description animate-fade-in" style="animation-delay: 0.6s">
                    Send bulk emails at lightning speed with Amazon AWS infrastructure. 
                    Experience the most reliable, secure, and affordable email marketing platform in India.
                </p>
                
                <div class="hero-features animate-fade-in" style="animation-delay: 0.8s">
                    <div class="feature-badge">
                        <i class="fas fa-bolt"></i>
                        <span>Lightning Fast</span>
                    </div>
                    <div class="feature-badge">
                        <i class="fas fa-dollar-sign"></i>
                        <span>Most Affordable</span>
                    </div>
                    <div class="feature-badge">
                        <i class="fas fa-shield-alt"></i>
                        <span>100% Secure</span>
                    </div>
                    <div class="feature-badge">
                        <i class="fas fa-server"></i>
                        <span>AWS Infrastructure</span>
                    </div>
                </div>
                
                <div class="hero-buttons animate-fade-in" style="animation-delay: 1s">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        Buy Now <i class="fas fa-shopping-cart"></i>
                    </a>
                    <a href="#plans" class="btn btn-secondary">
                        View Plans <i class="fas fa-list"></i>
                    </a>
                </div>
            </div>
            
            <!-- Right Image from Unsplash -->
            <div class="hero-image-right animate-zoom-in">
                <img src="https://iardo.pages.dev/aws.webp" alt="AWS Logo">
                
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="features">
    <div class="container">
        <div class="section-header">
            
            <h2 class="animate-on-scroll">Why Choose Our Platform</h2>
            <p class="section-subtitle animate-on-scroll" data-delay="0.2">Enterprise-grade features for your email campaigns</p>
        </div>
        
        <div class="features-grid">
            <div class="feature-card animate-on-scroll" data-delay="0">
                <div class="feature-icon">
                    <i class="fab fa-aws"></i>
                </div>
                <h3>Amazon AWS Infrastructure</h3>
                <p>Built on world-class AWS cloud ensuring maximum reliability, scalability, and performance.</p>
            </div>
            
            <div class="feature-card animate-on-scroll" data-delay="0.1">
                <div class="feature-icon">
                    <i class="fas fa-tachometer-alt"></i>
                </div>
                <h3>High-Speed Email Delivery</h3>
                <p>Industry-leading delivery speed. Send massive campaigns in minutes, not hours.</p>
            </div>
            
            <div class="feature-card animate-on-scroll" data-delay="0.2">
                <div class="feature-icon">
                    <i class="fas fa-dollar-sign"></i>
                </div>
                <h3>Most Affordable Pricing</h3>
                <p>Best rates in India with transparent pricing. No hidden fees or setup charges.</p>
            </div>
            
            <div class="feature-card animate-on-scroll" data-delay="0.3">
                <div class="feature-icon">
                    <i class="fas fa-lock"></i>
                </div>
                <h3>Bank-Grade Security</h3>
                <p>SSL encryption, GDPR compliance, and enterprise security for your data protection.</p>
            </div>
            
            <div class="feature-card animate-on-scroll" data-delay="0.4">
                <div class="feature-icon">
                    <i class="fas fa-chart-line"></i>
                </div>
                <h3>Real-Time Analytics</h3>
                <p>Track opens, clicks, bounces, and conversions with detailed reporting dashboards.</p>
            </div>
            
            <div class="feature-card animate-on-scroll" data-delay="0.5">
                <div class="feature-icon">
                    <i class="fas fa-headset"></i>
                </div>
                <h3>24/7 Support</h3>
                <p>Dedicated support team available round the clock via email, chat, and phone.</p>
            </div>
        </div>
    </div>
</section>




<!-- Plans Section -->
<section class="plans" id="plans">
    <div class="container">
        <div class="section-header">
            <h2 class="animate-on-scroll">Choose Your Perfect Plan</h2>
            <p class="section-subtitle animate-on-scroll" data-delay="0.2">Transparent pricing with no hidden costs</p>
        </div>
        
        <div class="plans-grid">
            <!-- Starter Plan -->
            <div class="plan-card animate-on-scroll clickable-card" data-delay="0" onclick="window.location.href='<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=starter'">
                <div class="plan-header">
                    <h3>Starter</h3>
                    <p>Perfect for small businesses</p>
                </div>
                
                <div class="plan-volume">
                    <div class="volume-number">3 Lakhs</div>
                    <div class="volume-label">Emails/Month</div>
                </div>
                
                <ul class="plan-features">
                    <li><i class="fas fa-check"></i> Amazon AWS Powered</li>
                    <li><i class="fas fa-check"></i> 12 Emails Per Second</li>
                    <li><i class="fas fa-check"></i> Advanced Analytics</li>
                    <li><i class="fas fa-check"></i> Email Templates</li>
                    <li><i class="fas fa-check"></i> List Management</li>
                    <li><i class="fas fa-check"></i> Email Support</li>
                </ul>
                <a href="<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=starter" class="plan-btn" onclick="event.stopPropagation()">
                    Get Custom Quote <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <!-- Growth Plan -->
            <div class="plan-card popular animate-on-scroll clickable-card" data-delay="0.1" onclick="window.location.href='<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=growth'">
                <div class="popular-badge">Most Popular</div>
                <div class="plan-header">
                    <h3>Growth</h3>
                    <p>Ideal for growing businesses</p>
                </div>
                
                <div class="plan-volume">
                    <div class="volume-number">6 Lakhs</div>
                    <div class="volume-label">Emails/Month</div>
                </div>
                
                <ul class="plan-features">
                    <li><i class="fas fa-check"></i> Amazon AWS Powered</li>
                    <li><i class="fas fa-check"></i> 24 Emails Per Second</li>
                    <li><i class="fas fa-check"></i> Advanced Analytics</li>
                    <li><i class="fas fa-check"></i> Premium Templates</li>
                    <li><i class="fas fa-check"></i> A/B Testing</li>
                    <li><i class="fas fa-check"></i> Automation Workflows</li>
                    <li><i class="fas fa-check"></i> Priority Support</li>
                    <li><i class="fas fa-check"></i> Custom Domain</li>
                </ul>
                
                <a href="<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=growth" class="plan-btn" onclick="event.stopPropagation()">
                    Get Custom Quote <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <!-- Professional Plan -->
            <div class="plan-card animate-on-scroll clickable-card" data-delay="0.2" onclick="window.location.href='<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=professional'">
                <div class="plan-header">
                    <h3>Professional</h3>
                    <p>For established businesses</p>
                </div>
                
                <div class="plan-volume">
                    <div class="volume-number">9 Lakhs</div>
                    <div class="volume-label">Emails/Month</div>
                    <div style="margin-top: 0.5rem; color: var(--accent-green); font-size: 1rem; font-weight: 700;">+ 1 Lakh FREE</div>
                    <div style="margin-top: 0.5rem; color: var(--accent-green); font-size: 1rem; font-weight: 700;">for limited users</div>
                </div>
                
                <ul class="plan-features">
                    <li><i class="fas fa-check"></i> Amazon AWS Powered</li>
                    <li><i class="fas fa-check"></i> 36 Emails Per Second</li>
                    <li><i class="fas fa-check"></i> Advanced Analytics</li>
                    <li><i class="fas fa-check"></i> Unlimited Templates</li>
                    <li><i class="fas fa-check"></i> Advanced A/B Testing</li>
                    <li><i class="fas fa-check"></i> Full Automation</li>
                    <li><i class="fas fa-check"></i> Dedicated Support</li>
                    <li><i class="fas fa-check"></i> Multiple Domains</li>
                    <li><i class="fas fa-check"></i> API Access</li>
                </ul>
                
                <a href="<%= request.getContextPath() %>/${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/?plan=professional" class="plan-btn" onclick="event.stopPropagation()">
                    Get Custom Quote <i class="fas fa-arrow-right"></i>
                </a>
            </div>
        </div>
        
        <div class="plans-note animate-on-scroll" data-delay="0.3">
            <i class="fas fa-info-circle"></i>
            <p>All plans include AWS infrastructure, SSL encryption, GDPR compliance, and spam protection. Contact us for custom pricing based on your needs.</p>
        </div>
    </div>
</section>






<!-- CTA Section -->
<section class="cta">
    <div class="container">
        <div class="cta-content">
            <h2 class="animate-on-scroll">Ready to Transform Your Email Marketing?</h2>
            <p class="animate-on-scroll" data-delay="0.2">Get started with the most powerful email marketing platform. Custom pricing available based on your volume needs.</p>
            
            <div class="cta-buttons animate-on-scroll" data-delay="0.4">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-secondary btn-large">
                    Schedule Demo <i class="fas fa-calendar"></i>
                </a>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../../includes/footer/footer.jsp" />

<script>
// Countdown Timer
function startCountdown() {
    let totalSeconds = 24 * 60 * 60 - 1; // 23:59:59
    
    setInterval(() => {
        const hours = Math.floor(totalSeconds / 3600);
        const minutes = Math.floor((totalSeconds % 3600) / 60);
        const seconds = totalSeconds % 60;
        
        document.getElementById('hours').textContent = String(hours).padStart(2, '0');
        document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
        document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
        
        if (totalSeconds > 0) {
            totalSeconds--;
        } else {
            totalSeconds = 24 * 60 * 60 - 1;
        }
    }, 1000);
}

// Show side popup after 3 seconds
setTimeout(() => {
    document.getElementById('sidePopup').classList.add('show');
}, 3000);

// Close popup
function closePopup() {
    document.getElementById('sidePopup').classList.remove('show');
}

// Start countdown when page loads
startCountdown();

// Smooth scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Scroll Animation Observer
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('visible');
            observer.unobserve(entry.target);
        }
    });
}, observerOptions);

// Observe all elements with animate-on-scroll class
document.addEventListener('DOMContentLoaded', () => {
    const animatedElements = document.querySelectorAll('.animate-on-scroll');
    animatedElements.forEach(el => observer.observe(el));
});
</script>

</body>
</html>
