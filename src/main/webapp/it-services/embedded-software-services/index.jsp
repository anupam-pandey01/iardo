<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Embedded Software Services | IoT, Firmware & System Development | IARDO</title>
    <meta name="description" content="Get expert embedded software services for IoT, firmware, and smart device development. Build reliable and high-performance embedded systems.">
    <meta name="keywords" content="embedded software services, firmware development, IoT development, embedded system design, device drivers">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors for Embedded */
            --primary: #FF4757;        /* Coral Red */
            --primary-dark: #E83A4A;   
            --secondary: #1DD1A1;      /* Turquoise/Mint */
            --accent: #FCA311;         /* Yellow/Orange */
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8f9fa; /* Very light gray */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #FF4757, #1DD1A1);
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color) !important;
            color: var(--text-main) !important;
            overflow-x: hidden;
            line-height: 1.7;
            font-weight: 500; /* Increased base weight for bold look */
        }

        /* Floating Particles Background */
        .particles {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            z-index: 0; pointer-events: none;
        }

        .particle {
            position: absolute;
            width: 6px; height: 6px;
            background: var(--primary);
            border-radius: 50%;
            opacity: 0.4;
            animation: float 15s infinite ease-in-out;
        }
        .particle:nth-child(2) { background: var(--secondary); }
        .particle:nth-child(4) { background: var(--accent); }
        .particle:nth-child(5) { background: var(--secondary); }

        .particle:nth-child(1) { left: 10%; top: 20%; animation-delay: 0s; animation-duration: 12s; }
        .particle:nth-child(2) { left: 25%; top: 60%; animation-delay: 2s; animation-duration: 15s; }
        .particle:nth-child(3) { left: 50%; top: 30%; animation-delay: 4s; animation-duration: 18s; }
        .particle:nth-child(4) { left: 70%; top: 70%; animation-delay: 1s; animation-duration: 14s; }
        .particle:nth-child(5) { left: 85%; top: 15%; animation-delay: 3s; animation-duration: 16s; }
        .particle:nth-child(6) { left: 40%; top: 80%; animation-delay: 5s; animation-duration: 13s; }

        @keyframes float {
            0%, 100% { transform: translate(0, 0); }
            25% { transform: translate(30px, -40px); }
            50% { transform: translate(-20px, -80px); }
            75% { transform: translate(40px, -40px); }
        }

        /* Hero Section */
        .hero {
            position: relative;
            min-height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            overflow: hidden;
            padding-top: 5rem; /* Push below navbar */
        }

        .hero-bg-slideshow {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
        }

        .hero-bg-slide {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            object-fit: cover;
            filter: brightness(0.9) grayscale(0.2); /* Lightened for light theme */
            opacity: 0;
            animation: heroSlideshow 24s infinite;
        }

        .hero-bg-slide:nth-child(1) { animation-delay: 0s; }
        .hero-bg-slide:nth-child(2) { animation-delay: 6s; }
        .hero-bg-slide:nth-child(3) { animation-delay: 12s; }
        .hero-bg-slide:nth-child(4) { animation-delay: 18s; }

        @keyframes heroSlideshow {
            0% { opacity: 0; transform: scale(1); }
            4% { opacity: 1; transform: scale(1); }
            20% { opacity: 1; transform: scale(1.08); }
            25% { opacity: 0; transform: scale(1.08); }
            100% { opacity: 0; transform: scale(1.08); }
        }

        /* Light Overlay */
        .hero-overlay {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.9), rgba(245, 247, 250, 0.85));
        }

        .hero-content {
            position: relative;
            z-index: 10;
            padding: 0 5%;
            max-width: 1200px;
        }

        .hero h1 {
            font-size: clamp(2.5rem, 6vw, 5.5rem);
            font-weight: 900 !important;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            color: var(--text-main) !important;
            animation: fadeInUp 1s ease-out;
        }

        .gradient-text {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            font-size: 1.3rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
            max-width: 800px;
            margin: 0 auto 3rem;
            animation: fadeInUp 1s ease-out 0.2s both;
            line-height: 1.8;
        }

        .hero-buttons {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
            flex-wrap: wrap;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .btn-primary, .btn-secondary {
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 800 !important;
            cursor: pointer;
            transition: all 0.3s;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .btn-primary {
            background: var(--gradient-primary) !important;
            color: white !important;
            box-shadow: 0 10px 30px rgba(255, 71, 87, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(255, 71, 87, 0.5);
        }

        .btn-secondary {
            background: transparent !important;
            color: var(--primary) !important;
            border: 3px solid var(--primary) !important;
        }

        .btn-secondary:hover {
            background: var(--primary) !important;
            color: white !important;
            transform: translateY(-3px);
        }

        /* Container & Shared Styles */
        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 5%;
        }
        
        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-header h2 {
            font-size: clamp(2rem, 4vw, 3.5rem);
            font-weight: 900 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
        }

        .section-header p {
            color: var(--text-muted) !important;
            font-size: 1.2rem;
            font-weight: 600 !important;
        }

        /* Info Section (Design & Firmware) */
        .info-section {
            padding: 6rem 0;
            background: var(--bg-color) !important;
        }
        
        .info-section.alt-bg {
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
        }

        .info-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 6rem;
            align-items: center;
        }

        .info-text h2 {
            font-size: clamp(2rem, 4vw, 3.2rem);
            font-weight: 900 !important;
            margin-bottom: 2rem;
            color: var(--text-main) !important;
            line-height: 1.2;
        }

        .info-text p {
            font-size: 1.15rem;
            line-height: 1.9;
            font-weight: 500 !important;
            color: var(--text-muted) !important;
        }

        .info-image { position: relative; }
        .info-image img {
            width: 100%; max-width: 500px; height: 500px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid transparent;
            background: linear-gradient(var(--bg-color), var(--bg-color)) padding-box,
                        var(--gradient-primary) border-box;
            box-shadow: 0 20px 60px rgba(0,0,0,0.05);
            transition: transform 0.4s, box-shadow 0.4s;
        }
        .info-section.alt-bg .info-image img {
            background: linear-gradient(var(--section-bg), var(--section-bg)) padding-box,
                        var(--gradient-primary) border-box;
        }

        .info-image img:hover {
            transform: scale(1.05);
            box-shadow: 0 30px 80px rgba(255, 71, 87, 0.2);
        }

        /* Services Grid */
        .services {
            padding: 8rem 5%;
            background: var(--bg-color) !important;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2.5rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .service-card {
            background: var(--card-bg) !important;
            border-radius: 20px;
            padding: 3rem 2rem;
            border: 1px solid var(--border-color);
            transition: transform 0.4s, box-shadow 0.4s;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 5px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: 0.4s;
            transform-origin: left;
        }

        .service-card:hover::before { transform: scaleX(1); }

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(255, 71, 87, 0.1);
            border-color: var(--primary);
        }

        .service-icon {
            width: 80px; height: 80px;
            background: rgba(255, 71, 87, 0.1) !important;
            border-radius: 20px;
            display: flex; align-items: center; justify-content: center;
            font-size: 2.5rem;
            color: var(--primary) !important;
            margin-bottom: 1.5rem;
            transition: 0.4s;
        }

        .service-card:hover .service-icon {
            background: var(--gradient-primary) !important;
            color: white !important;
            transform: scale(1.1) rotate(5deg);
        }

        .service-card h3 {
            font-size: 1.5rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }

        .service-card p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.8;
            margin-bottom: 1.5rem;
        }

        .service-card ul {
            list-style: none;
        }

        .service-card li {
            padding: 0.4rem 0 0.4rem 1.5rem;
            color: var(--text-muted) !important;
            font-weight: 600 !important;
            position: relative;
        }

        .service-card li::before {
            content: '\f058';
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            position: absolute;
            left: 0;
            color: var(--secondary);
        }

        /* RTOS / Process Section */
        .rtos-section {
            padding: 8rem 0;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .rtos-title {
            font-size: clamp(2.2rem, 4vw, 3.5rem);
            font-weight: 900 !important;
            margin-bottom: 5rem;
            color: var(--text-main) !important;
            line-height: 1.3;
            text-align: center;
        }

        .rtos-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 3rem;
        }

        .rtos-item {
            position: relative;
            padding: 2.5rem;
            background: var(--card-bg) !important;
            border-radius: 20px;
            border: 1px solid var(--border-color);
            transition: all 0.3s;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.02);
        }

        .rtos-item:hover {
            border-color: var(--primary) !important;
            box-shadow: 0 15px 40px rgba(255, 71, 87, 0.1);
            transform: translateY(-5px);
        }

        .rtos-number {
            width: 80px; height: 80px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 2rem; font-weight: 900; color: white;
            margin: 0 auto 1.5rem;
            box-shadow: 0 10px 20px rgba(255, 71, 87, 0.3);
        }

        .rtos-item h3 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
        }

        .rtos-item p {
            font-size: 1rem;
            line-height: 1.8;
            font-weight: 500 !important;
            color: var(--text-muted) !important;
        }

        /* Features Section (Why Choose Us) */
        .features {
            padding: 8rem 5%;
            background: var(--bg-color) !important;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .feature-item {
            text-align: center;
            border-radius: 20px;
            padding: 3rem 2rem;
            transition: all 0.4s;
            border: 1px solid var(--border-color);
            background: var(--card-bg) !important;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        .feature-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(255, 71, 87, 0.1);
            border-color: var(--primary) !important;
        }

        .feature-icon {
            width: 90px; height: 90px;
            margin: 0 auto 1.5rem;
            background: rgba(255, 71, 87, 0.1) !important;
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 2.5rem; color: var(--primary) !important;
            transition: transform 0.5s;
        }

        .feature-item:hover .feature-icon {
            background: var(--gradient-primary) !important;
            color: white !important;
            transform: rotate(360deg) scale(1.1);
        }

        .feature-item h3 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
        }

        .feature-item p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.8;
        }

        /* Final CTA Section */
        .final-cta {
            position: relative;
            min-height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            text-align: center;
            background: var(--gradient-primary) !important;
        }

        .final-cta::before {
            content: '';
            position: absolute;
            font-size: 15rem;
            opacity: 0.15;
            top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            width: 400px; height: 400px;
            background: radial-gradient(circle, rgba(255,255,255,0.8) 0%, transparent 70%);
            animation: pulse 4s infinite alternate;
        }

        .cta-content-wrapper {
            position: relative;
            z-index: 10;
            padding: 0 5%;
            max-width: 1000px;
        }

        .final-cta h2 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            font-weight: 900 !important;
            margin-bottom: 1.5rem;
            color: white !important;
        }

        .final-cta p {
            font-size: 1.3rem;
            font-weight: 600 !important;
            color: rgba(255,255,255,0.95) !important;
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .cta-buttons {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
            flex-wrap: wrap;
        }
        
        .btn-cta-primary {
            padding: 1.2rem 3rem;
            background: white !important;
            color: var(--primary) !important;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 800 !important;
            text-decoration: none;
            transition: all 0.3s;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        .btn-cta-primary:hover {
            transform: translateY(-3px) scale(1.02);
            color: var(--primary-dark) !important;
        }

        /* Responsive */
        @media (max-width: 968px) {
            .info-content { grid-template-columns: 1fr; gap: 3rem; text-align: center; }
            .info-image img { margin: 0 auto; display: block; }
            .rtos-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 768px) {
            .hero { padding-top: 6rem; min-height: 80vh; }
            .hero h1 { font-size: 2.5rem; }
            .hero p { font-size: 1.1rem; }
            .hero-buttons { flex-direction: column; gap: 1rem; }
            .btn-primary, .btn-secondary { width: 100%; justify-content: center; }
            
            .info-section, .services, .rtos-section, .features { padding: 4rem 5%; }
            .info-image img { max-width: 350px; height: 350px; }
            
            .rtos-grid { grid-template-columns: 1fr; gap: 2rem; }
            .rtos-title { font-size: 2rem !important; }
            
            .final-cta h2 { font-size: 2.2rem !important; }
            .cta-buttons { flex-direction: column; }
            .btn-cta-primary { width: 100%; justify-content: center; }
        }
        
        @media (max-width: 480px) {
            .info-image img { max-width: 300px; height: 300px; }
        }
    </style>
</head>
<body>
    <div class="particles">
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
        <div class="particle"></div>
    </div>

    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero" id="home">
        <div class="hero-bg-slideshow">
            <img src="https://images.unsplash.com/photo-1518770660439-4636190af475?w=1920&q=80" alt="Hero 1" class="hero-bg-slide">
            <img src="https://images.unsplash.com/photo-1581092921461-eab62e97a780?w=1920&q=80" alt="Hero 2" class="hero-bg-slide">
            <img src="https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1920&q=80" alt="Hero 3" class="hero-bg-slide">
        </div>
        <div class="hero-overlay"></div>
        
        <div class="hero-content">
            <h1>
                Embedded Software <span class="gradient-text">Services</span>
            </h1>
            <p>
                Smart & Reliable Embedded Solutions. Embedded software is specialized programming designed to run on hardware devices like IoT systems, machines, and electronic products. It controls device functionality and ensures smooth, real-time operations.
            </p>
            <div class="hero-buttons">
                <button class="btn-primary" onclick="location.href='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'">
                    <i class="fas fa-rocket"></i> Start Your Project
                </button>               
                <button class="btn-secondary" onclick="location.href='#services'">
                    <i class="fas fa-microchip"></i> Explore Solutions
                </button>          
            </div>
        </div>
    </section>

    <section class="info-section">
        <div class="container">
            <div class="info-content">
                <div class="info-text">
                    <h2>Why Embedded Software is Important?</h2>
                    <p>With embedded software services, businesses can build efficient, secure, and high-performance smart systems. Embedded software powers modern smart devices and automation systems.</p>
                    <ul style="list-style: none; margin-top: 1.5rem;">
                        <li style="margin-bottom: 10px; font-weight: 600; color: var(--text-muted);"><i class="fas fa-check-circle" style="color: var(--secondary); margin-right: 10px;"></i> Real-time system performance</li>
                        <li style="margin-bottom: 10px; font-weight: 600; color: var(--text-muted);"><i class="fas fa-check-circle" style="color: var(--secondary); margin-right: 10px;"></i> Efficient hardware utilization</li>
                        <li style="margin-bottom: 10px; font-weight: 600; color: var(--text-muted);"><i class="fas fa-check-circle" style="color: var(--secondary); margin-right: 10px;"></i> Improved security & reliability</li>
                        <li style="margin-bottom: 10px; font-weight: 600; color: var(--text-muted);"><i class="fas fa-check-circle" style="color: var(--secondary); margin-right: 10px;"></i> Faster device functionality</li>
                        <li style="margin-bottom: 10px; font-weight: 600; color: var(--text-muted);"><i class="fas fa-check-circle" style="color: var(--secondary); margin-right: 10px;"></i> Scalable smart solutions</li>
                    </ul>
                </div>
                <div class="info-image">
                    <img src="https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=800&q=80" alt="Embedded Systems">
                </div>
            </div>
        </div>
    </section>

    <section class="services alt-bg" id="services">
        <div class="section-header">
            <h2>Our Embedded Software <span class="gradient-text">Services</span></h2>
            <p>We provide end-to-end embedded solutions</p>
        </div>
        <div class="services-grid">
            
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-microchip"></i></div>
                <h3>Firmware Development</h3>
                <p>Low-level programming and device control systems.</p>
                <ul>
                    <li>Microcontroller coding</li>
                    <li>Hardware-software integration</li>
                    <li>Performance optimization</li>
                </ul>
            </div>
            
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-wifi"></i></div>
                <h3>IoT Development</h3>
                <p>Smart device integration and sensor-based systems.</p>
                <ul>
                    <li>IoT platform connectivity</li>
                    <li>Wireless communication</li>
                    <li>Cloud integration</li>
                </ul>
            </div>
            
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-cogs"></i></div>
                <h3>Device Driver Development</h3>
                <p>Seamless communication between hardware and OS.</p>
                <ul>
                    <li>Driver customization</li>
                    <li>Hardware abstraction</li>
                    <li>OS integration</li>
                </ul>
            </div>
            
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-project-diagram"></i></div>
                <h3>Embedded System Design</h3>
                <p>From architecture to final product development.</p>
                <ul>
                    <li>System architecture</li>
                    <li>Prototyping & testing</li>
                    <li>Product lifecycle management</li>
                </ul>
            </div>

            <div class="service-card">
                <div class="service-icon"><i class="fas fa-bug"></i></div>
                <h3>Testing & Optimization</h3>
                <p>Ensuring reliable, scalable, and high-performance solutions.</p>
                <ul>
                    <li>Debugging</li>
                    <li>Performance tuning</li>
                    <li>System validation</li>
                </ul>
            </div>

        </div>
    </section>

    <section class="rtos-section">
        <div class="container">
            <h2 class="rtos-title">Our Development <span class="gradient-text">Process</span></h2>
            <p style="text-align: center; margin-top: -3rem; margin-bottom: 4rem; font-size: 1.2rem; font-weight: 600; color: var(--text-muted);">We ensure reliable, scalable, and high-performance embedded solutions.</p>
            <div class="rtos-grid">
                <div class="rtos-item">
                    <div class="rtos-number">1</div>
                    <h3>Requirement Analysis</h3>
                    <p>Understanding hardware constraints, performance needs, and user requirements.</p>
                </div>
                <div class="rtos-item">
                    <div class="rtos-number">2</div>
                    <h3>System Design</h3>
                    <p>Creating architecture, selecting microcontrollers, and defining communication protocols.</p>
                </div>
                <div class="rtos-item">
                    <div class="rtos-number">3</div>
                    <h3>Firmware Development</h3>
                    <p>Writing efficient low-level code and developing necessary drivers.</p>
                </div>
                <div class="rtos-item">
                    <div class="rtos-number">4</div>
                    <h3>Testing & Debugging</h3>
                    <p>Hardware-in-loop testing, performance tuning, and robust debugging.</p>
                </div>
                <div class="rtos-item" style="grid-column: 1 / -1; max-width: 600px; margin: 0 auto;">
                    <div class="rtos-number">5</div>
                    <h3>Deployment & Support</h3>
                    <p>Final flashing, OTA update configurations, and continuous maintenance support.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="info-section alt-bg">
        <div class="container">
            <div class="info-content" style="grid-template-columns: 1.2fr 1fr;">
                <div class="info-image">
                    <img src="https://images.unsplash.com/photo-1518432031352-d6fc5c10da5a?w=800&q=80" alt="Industry Solutions">
                </div>
                <div class="info-text">
                    <h2>Embedded Solutions for Business & Industries</h2>
                    <p>We help businesses build smart products that deliver better performance and reliable systems.</p>
                    <ul style="list-style: none; margin-top: 1.5rem;">
                        <li style="margin-bottom: 15px; font-weight: 700; color: var(--text-main); font-size: 1.1rem;"><i class="fas fa-network-wired" style="color: var(--primary); margin-right: 15px; font-size: 1.3rem;"></i> IoT Devices</li>
                        <li style="margin-bottom: 15px; font-weight: 700; color: var(--text-main); font-size: 1.1rem;"><i class="fas fa-industry" style="color: var(--primary); margin-right: 15px; font-size: 1.3rem;"></i> Industrial Automation Systems</li>
                        <li style="margin-bottom: 15px; font-weight: 700; color: var(--text-main); font-size: 1.1rem;"><i class="fas fa-memory" style="color: var(--primary); margin-right: 15px; font-size: 1.3rem;"></i> Smart Electronics</li>
                        <li style="margin-bottom: 15px; font-weight: 700; color: var(--text-main); font-size: 1.1rem;"><i class="fas fa-mobile" style="color: var(--primary); margin-right: 15px; font-size: 1.3rem;"></i> Consumer Devices</li>
                        <li style="margin-bottom: 15px; font-weight: 700; color: var(--text-main); font-size: 1.1rem;"><i class="fas fa-heartbeat" style="color: var(--primary); margin-right: 15px; font-size: 1.3rem;"></i> Healthcare & Automotive Systems</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="features" id="features">
        <div class="section-header">
            <h2>Why Choose Us for <span class="gradient-text">Embedded Software?</span></h2>
            <p>Excellence in every aspect of embedded development</p>
        </div>
        <div class="features-grid">
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-users-cog"></i></div>
                <h3>Experienced Engineers</h3>
                <p>Team of expert embedded developers and hardware specialists.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-tachometer-alt"></i></div>
                <h3>High-Performance</h3>
                <p>Optimized firmware for minimal latency and maximum efficiency.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-layer-group"></i></div>
                <h3>Scalable Design</h3>
                <p>Architectures built to accommodate future feature updates.</p>
            </div>
            <div class="feature-item">
                <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                <h3>Security-Focused</h3>
                <p>Secure boot, encrypted communications, and protected hardware.</p>
            </div>
        </div>

        <div class="section-header" style="margin-top: 6rem;">
            <h2>Our <span class="gradient-text">Results</span></h2>
        </div>
        <div class="features-grid">
            <div class="feature-item" style="background: var(--section-bg) !important; border: none; box-shadow: none;">
                <h3 style="font-size: 2rem; color: var(--primary) !important;"><i class="fas fa-rocket"></i></h3>
                <h3 style="margin-top: 10px;">Faster Development</h3>
                <p>Reduced time to market.</p>
            </div>
            <div class="feature-item" style="background: var(--section-bg) !important; border: none; box-shadow: none;">
                <h3 style="font-size: 2rem; color: var(--primary) !important;"><i class="fas fa-microchip"></i></h3>
                <h3 style="margin-top: 10px;">Improved Performance</h3>
                <p>Better hardware utilization.</p>
            </div>
            <div class="feature-item" style="background: var(--section-bg) !important; border: none; box-shadow: none;">
                <h3 style="font-size: 2rem; color: var(--primary) !important;"><i class="fas fa-dollar-sign"></i></h3>
                <h3 style="margin-top: 10px;">Reduced Costs</h3>
                <p>Lower operational expenses.</p>
            </div>
            <div class="feature-item" style="background: var(--section-bg) !important; border: none; box-shadow: none;">
                <h3 style="font-size: 2rem; color: var(--primary) !important;"><i class="fas fa-check-double"></i></h3>
                <h3 style="margin-top: 10px;">Reliable Systems</h3>
                <p>Stable, crash-free functionality.</p>
            </div>
        </div>
    </section>

    <section class="final-cta">
        <div class="cta-content-wrapper">
            <h2>Start Your Embedded Project Today</h2>
            <p>Looking to build smart and reliable embedded systems? Let's discuss your requirements.</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta-primary">
                    <i class="fas fa-calendar-check"></i> Schedule Free Consultation
                </a>
            </div>
        </div>
    </section>

    <script>
        // Parallax effect for particles
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const particles = document.querySelectorAll('.particle');
            particles.forEach((particle, index) => {
                const speed = (index + 1) * 0.02;
                particle.style.transform = `translateY(${scrolled * speed}px)`;
            });
        });
    </script>
    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>
