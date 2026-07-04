<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>Automation Testing Services | Improve Software Quality & Performance</title>
    <meta name="description" content="Get expert automation testing services for faster testing, better performance, and bug-free applications.">
    <meta name="keywords" content="automation testing services, software testing, QA automation, automated testing, API testing, UI testing">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors for Automation */
            --primary: #8A2BE2;        /* Vibrant Purple */
            --primary-dark: #5c149e;
            --cyan: #00CFCF;           /* Cyan/Teal Accent */
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light slate/gray */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #8A2BE2, #00CFCF);
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color) !important;
            color: var(--text-main) !important;
            overflow-x: hidden;
            line-height: 1.7;
            font-weight: 500; /* Increased base weight for bold look */
        }

        /* Hero Section */
        .hero-automation {
            min-height: 90vh;
            display: flex;
            align-items: center;
            padding: 8rem 5% 4rem; /* Adjusted top padding to clear navbar */
            background: 
                linear-gradient(135deg, rgba(255, 255, 255, 0.95) 0%, rgba(240, 244, 255, 0.92) 100%),
                url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=2000');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            position: relative;
            overflow: hidden;
        }

        .hero-automation::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background: radial-gradient(circle at 30% 50%, rgba(138, 43, 226, 0.08) 0%, transparent 50%);
        }

        .hero-automation::after {
            content: '';
            position: absolute;
            top: -50%; right: -20%; width: 100%; height: 200%;
            background: radial-gradient(circle, rgba(0, 207, 207, 0.08) 0%, transparent 70%);
            animation: float 20s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translate(0, 0) rotate(0deg); }
            50% { transform: translate(-50px, 50px) rotate(180deg); }
        }

        .hero-content-automation {
            max-width: 1400px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.6rem 1.5rem;
            background: rgba(138, 43, 226, 0.1);
            border: 2px solid rgba(138, 43, 226, 0.2);
            border-radius: 50px;
            color: var(--primary);
            font-size: 0.95rem;
            font-weight: 800;
            margin-bottom: 2rem;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            box-shadow: 0 0 20px rgba(138, 43, 226, 0.1);
        }

        .hero-content-automation h1 {
            font-size: clamp(2.8rem, 5vw, 4.8rem);
            font-weight: 900 !important;
            color: var(--text-main) !important;
            margin-bottom: 1.5rem;
            line-height: 1.1;
        }

        .hero-content-automation h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: block;
        }

        .hero-content-automation p {
            font-size: 1.2rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
            max-width: 900px;
            margin: 0 auto 3rem;
            line-height: 1.8;
        }

        .hero-cta-buttons {
            display: flex;
            gap: 1.5rem;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .hero-cta-primary {
            padding: 1.2rem 3rem;
            background: var(--gradient-primary) !important;
            color: white !important;
            text-decoration: none;
            font-weight: 800 !important;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
            box-shadow: 0 8px 25px rgba(138, 43, 226, 0.3);
        }

        .hero-cta-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(138, 43, 226, 0.5);
        }

        .hero-cta-secondary {
            padding: 1.2rem 3rem;
            background: transparent !important;
            color: var(--primary) !important;
            text-decoration: none;
            font-weight: 800 !important;
            border: 3px solid var(--primary) !important;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
        }

        .hero-cta-secondary:hover {
            background: var(--primary) !important;
            color: white !important;
            border-color: transparent !important;
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(138, 43, 226, 0.2);
        }

        /* Stats Section */
        .stats-section {
            padding: 80px 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .stats-container {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 3rem;
        }

        .stat-item {
            text-align: center;
            padding: 2rem;
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 12px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .stat-item::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; height: 4px;
            background: var(--gradient-primary);
            border-radius: 12px 12px 0 0;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .stat-item:hover {
            border-color: transparent;
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(138, 43, 226, 0.1);
        }

        .stat-item:hover::before { opacity: 1; }

        .stat-number {
            font-size: 3rem;
            margin-bottom: 0.5rem;
        }

        .stat-number i {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .stat-label {
            font-size: 1.1rem;
            color: var(--text-main) !important;
            font-weight: 800 !important;
        }

        /* Section Global Styles */
        .section-header {
            text-align: center;
            margin-bottom: 4rem;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
        }

        .section-subtitle {
            color: var(--primary) !important;
            font-size: 1.1rem;
            font-weight: 800 !important;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 1rem;
            display: inline-block;
        }

        .section-title {
            font-size: 3rem;
            font-weight: 900 !important;
            color: var(--text-main) !important;
            line-height: 1.2;
            margin-bottom: 1.5rem;
        }

        .section-description {
            font-size: 1.15rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
        }

        /* Services Overview Section */
        .services-overview {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .services-container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2.5rem;
        }

        .service-card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 2.5rem;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.02);
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 4px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: 0.4s;
            transform-origin: left;
        }

        .service-card:hover::before { transform: scaleX(1); }

        .service-card:hover {
            border-color: var(--cyan);
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(138, 43, 226, 0.1);
        }

        .service-icon {
            width: 75px; height: 75px;
            background: rgba(138, 43, 226, 0.1) !important;
            border-radius: 15px;
            display: flex; align-items: center; justify-content: center;
            margin-bottom: 1.5rem;
            transition: transform 0.4s ease;
        }

        .service-card:hover .service-icon {
            background: var(--gradient-primary) !important;
            transform: scale(1.1) rotate(5deg);
        }

        .service-icon i {
            font-size: 2.2rem;
            color: var(--primary) !important;
        }

        .service-card:hover .service-icon i { color: white !important; }

        .service-card h3 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }

        .service-card p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.7;
        }

        /* Benefits Section */
        .benefits-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
        }

        .benefits-container { max-width: 1400px; margin: 0 auto; }

        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 3rem;
        }

        .benefit-item {
            display: flex;
            gap: 2rem;
            align-items: flex-start;
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 15px;
            border: 1px solid var(--border-color);
            transition: all 0.4s;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .benefit-item:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
            box-shadow: 0 15px 30px rgba(138, 43, 226, 0.1);
        }

        .benefit-icon-wrap {
            flex-shrink: 0;
            width: 70px; height: 70px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            box-shadow: 0 10px 25px rgba(138, 43, 226, 0.3);
            transition: transform 0.4s;
        }

        .benefit-item:hover .benefit-icon-wrap {
            transform: rotate(360deg) scale(1.1);
        }

        .benefit-icon-wrap i { font-size: 2rem; color: white; }

        .benefit-content h3 {
            font-size: 1.5rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 0.8rem;
        }

        .benefit-content p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.7;
        }

        /* Frameworks Section */
        .frameworks-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .frameworks-container { max-width: 1400px; margin: 0 auto; }

        .framework-features {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 2.5rem;
        }

        .framework-card {
            background: var(--section-bg) !important;
            border-left: 5px solid var(--primary);
            padding: 2.5rem;
            border-radius: 8px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .framework-card:hover {
            background: var(--card-bg) !important;
            transform: translateX(10px);
            border-left-color: var(--cyan);
            box-shadow: 0 10px 25px rgba(0, 207, 207, 0.15);
        }

        .framework-card h4 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 0.8rem;
        }

        .framework-card p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
        }

        /* Process Section */
        .process-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .process-container { max-width: 1400px; margin: 0 auto; }

        .process-timeline {
            margin-top: 4rem;
            position: relative;
        }

        .process-timeline::before {
            content: '';
            position: absolute;
            left: 50%; top: 0; bottom: 0; width: 4px;
            background: var(--gradient-primary);
            transform: translateX(-50%);
        }

        .process-step {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            margin-bottom: 4rem;
            position: relative;
        }

        .process-step:nth-child(even) .step-content { order: 2; }
        .process-step:nth-child(even) .step-number-wrap { order: 1; }

        .step-content {
            padding: 2.5rem;
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 15px;
            transition: all 0.3s ease;
            box-shadow: 0 5px 20px rgba(0,0,0,0.02);
        }

        .step-content:hover {
            border-color: var(--primary);
            box-shadow: 0 15px 35px rgba(138, 43, 226, 0.15);
            transform: translateY(-5px);
        }

        .step-content h4 {
            font-size: 1.5rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 0.8rem;
        }

        .step-content p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.7;
        }

        .step-number-wrap {
            display: flex; align-items: center; justify-content: center;
        }

        .step-number {
            width: 80px; height: 80px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 2rem; font-weight: 900; color: white;
            box-shadow: 0 10px 25px rgba(138, 43, 226, 0.4);
            border: 5px solid var(--bg-color);
            z-index: 2;
            transition: transform 0.4s;
        }
        .process-step:hover .step-number { transform: scale(1.15) rotate(360deg); }

        /* Why Choose Us Section */
        .why-choose-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .why-choose-container { max-width: 1400px; margin: 0 auto; }

        .why-choose-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
        }

        .why-choose-card {
            background: var(--section-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 15px;
            padding: 3rem 2rem;
            text-align: center;
            transition: all 0.4s ease;
        }

        .why-choose-card:hover {
            border-color: var(--cyan);
            transform: translateY(-10px);
            background: var(--card-bg) !important;
            box-shadow: 0 15px 40px rgba(0, 207, 207, 0.15);
        }

        .why-choose-icon {
            width: 85px; height: 85px;
            background: rgba(0, 207, 207, 0.1) !important;
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            margin: 0 auto 1.5rem;
            transition: all 0.4s;
        }

        .why-choose-icon i {
            font-size: 2.5rem;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .why-choose-card:hover .why-choose-icon {
            background: var(--gradient-primary) !important;
            transform: scale(1.1);
        }
        .why-choose-card:hover .why-choose-icon i {
            -webkit-text-fill-color: white;
        }

        .why-choose-card h4 {
            font-size: 1.3rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
        }

        /* CTA Section */
        .cta-automation {
            padding: 8rem 5%;
            background: var(--gradient-primary) !important;
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .cta-automation::before {
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

        .cta-container-automation {
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .cta-container-automation h2 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            font-weight: 900 !important;
            color: #ffffff !important;
            margin-bottom: 1.5rem;
        }

        .cta-container-automation p {
            font-size: 1.3rem;
            font-weight: 600 !important;
            color: rgba(255,255,255,0.95) !important;
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .cta-buttons {
            display: flex; gap: 1.5rem; justify-content: center; flex-wrap: wrap;
        }

        .btn-cta-primary {
            padding: 1.2rem 3.5rem;
            background: #ffffff !important;
            color: var(--primary) !important;
            text-decoration: none;
            font-weight: 800 !important;
            border-radius: 50px;
            transition: all 0.4s ease;
            font-size: 1.2rem;
            display: inline-flex; align-items: center; gap: 1rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .btn-cta-primary:hover {
            transform: translateY(-5px) scale(1.02);
            color: var(--primary-dark) !important;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }

        .btn-cta-secondary {
            padding: 1.2rem 3.5rem;
            background: transparent !important;
            color: white !important;
            border: 3px solid white !important;
            text-decoration: none;
            font-weight: 800 !important;
            border-radius: 50px;
            transition: all 0.4s ease;
            font-size: 1.2rem;
            display: inline-flex; align-items: center; gap: 1rem;
        }

        .btn-cta-secondary:hover {
            background: white !important;
            color: var(--primary) !important;
            transform: translateY(-5px);
        }

        /* Animations */
        .fade-in {
            opacity: 0;
            transform: translateY(30px);
            transition: opacity 0.8s ease, transform 0.8s ease;
        }
        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .hero-automation { padding: 8rem 5% 4rem; }
            .stats-container, .benefits-grid, .framework-features { grid-template-columns: repeat(2, 1fr); gap: 2rem;}
            .services-grid { grid-template-columns: repeat(2, 1fr); }
            .process-step { grid-template-columns: 1fr; gap: 2rem; text-align: center; }
            .process-timeline::before { left: 0; }
            .process-step:nth-child(even) .step-content { order: 1; }
            .process-step:nth-child(even) .step-number-wrap { order: 2; }
            .step-number-wrap { justify-content: flex-start; padding-left: 2rem; position: absolute; top: -30px; left: -40px; }
            .step-number { width: 60px; height: 60px; font-size: 1.5rem; }
            .why-choose-grid { grid-template-columns: repeat(2, 1fr); }
        }

        @media (max-width: 768px) {
            .hero-automation { padding: 7rem 1rem 3rem; }
            .hero-cta-buttons, .cta-buttons { flex-direction: column; width: 100%; }
            .hero-cta-primary, .hero-cta-secondary, .btn-cta-primary, .btn-cta-secondary { width: 100%; justify-content: center; }
            .stats-container, .services-grid, .benefits-grid, .framework-features, .why-choose-grid { grid-template-columns: 1fr; }
            .stats-section, .services-overview, .benefits-section, .frameworks-section, .process-section, .why-choose-section { padding: 4rem 1.5rem; }
            .section-title { font-size: 2.2rem !important; }
            .step-number-wrap { left: -10px; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero-automation">
        <div class="hero-content-automation">
            <div class="hero-badge">
                <i class="fas fa-robot"></i> WHAT IS AUTOMATION TESTING?
            </div>
            <h1>
                Automation Testing Services<br>
                <span>Improve Software Quality & Performance</span>
            </h1>
            <p>
                Automation testing is the process of using tools and scripts to test software applications automatically. It helps detect bugs faster, improve accuracy, and ensure high-quality performance without manual effort. With automation testing, businesses can save time, reduce errors, and deliver better software products.
            </p>
            <div class="hero-cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="hero-cta-primary">
                    Get Started <i class="fas fa-arrow-right"></i>
                </a>
                <a href="#services" class="hero-cta-secondary">
                    Explore Services <i class="fas fa-chevron-down"></i>
                </a>
            </div>
        </div>
    </section>

    <section class="stats-section fade-in">
        <div class="stats-container">
            <div class="stat-item">
                <div class="stat-number"><i class="fas fa-check-circle"></i></div>
                <div class="stat-label">Improved Software Quality</div>
            </div>
            <div class="stat-item">
                <div class="stat-number"><i class="fas fa-shipping-fast"></i></div>
                <div class="stat-label">Faster Release Cycles</div>
            </div>
            <div class="stat-item">
                <div class="stat-number"><i class="fas fa-hand-holding-usd"></i></div>
                <div class="stat-label">Reduced Testing Cost</div>
            </div>
            <div class="stat-item">
                <div class="stat-number"><i class="fas fa-tachometer-alt"></i></div>
                <div class="stat-label">Better Performance</div>
            </div>
        </div>
    </section>

    <section class="services-overview fade-in" id="services">
        <div class="services-container">
            <div class="section-header">
                <span class="section-subtitle">Our Expertise</span>
                <h2 class="section-title">Our Automation Testing Services</h2>
                <p class="section-description">
                    We provide complete testing solutions ensuring smooth and error-free applications from end-to-end.
                </p>
            </div>

            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-cogs"></i></div>
                    <h3>Functional Testing</h3>
                    <p>Test application features, validate workflows, and ensure correct functionality across all your digital products.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-redo"></i></div>
                    <h3>Regression Testing</h3>
                    <p>Deploy automated test scripts and continuous testing mechanisms for rapid bug detection after code updates.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-network-wired"></i></div>
                    <h3>API Testing</h3>
                    <p>Conduct robust API validation, comprehensive integration testing, and in-depth performance checks.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-tachometer-alt"></i></div>
                    <h3>Performance Testing</h3>
                    <p>Ensure stability through load testing, stress testing, and complete speed optimization for your systems.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-desktop"></i></div>
                    <h3>UI Testing</h3>
                    <p>Automate website UI testing, mobile app interface testing, and user flow validation for seamless experiences.</p>
                </div>
                
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-check-double"></i></div>
                    <h3>End-to-End Solutions</h3>
                    <p>We ensure reliable and scalable testing environments, saving time and resources while reducing manual efforts.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="benefits-section fade-in">
        <div class="benefits-container">
            <div class="section-header">
                <span class="section-subtitle">Why Automate</span>
                <h2 class="section-title">Why Automation Testing is Important?</h2>
            </div>

            <div class="benefits-grid">
                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-bolt"></i></div>
                    <div class="benefit-content">
                        <h3>Faster testing process</h3>
                        <p>Dramatically reduce the time it takes to execute test suites and get immediate feedback on code changes.</p>
                    </div>
                </div>

                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-bullseye"></i></div>
                    <div class="benefit-content">
                        <h3>Higher accuracy & reliability</h3>
                        <p>Eliminate human error by running precise, repeatable, and robust automated test scripts.</p>
                    </div>
                </div>

                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-money-bill-wave"></i></div>
                    <div class="benefit-content">
                        <h3>Reduce manual testing cost</h3>
                        <p>Lower operational expenses significantly by replacing repetitive manual tasks with automated systems.</p>
                    </div>
                </div>

                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-rocket"></i></div>
                    <div class="benefit-content">
                        <h3>Faster product delivery</h3>
                        <p>Accelerate your software release cycles and bring new features to the market without delay.</p>
                    </div>
                </div>

                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-star"></i></div>
                    <div class="benefit-content">
                        <h3>Improved software quality</h3>
                        <p>Catch edge cases and complex bugs early, leading to superior application performance and stability.</p>
                    </div>
                </div>

                <div class="benefit-item">
                    <div class="benefit-icon-wrap"><i class="fas fa-shield-alt"></i></div>
                    <div class="benefit-content">
                        <h3>Smooth & error-free applications</h3>
                        <p>Automation testing acts as a reliable safety net, ensuring a flawless experience for your end users.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="frameworks-section fade-in">
        <div class="frameworks-container">
            <div class="section-header">
                <span class="section-subtitle">Industry Focus</span>
                <h2 class="section-title">Automation Testing for Business & Ecommerce</h2>
                <p class="section-description">
                    We help businesses test multiple channels to ensure bug-free performance and a better user experience.
                </p>
            </div>

            <div class="framework-features">
                <div class="framework-card">
                    <h4>Ecommerce platforms</h4>
                    <p>Ensure seamless shopping carts, checkout flows, and catalog browsing experiences.</p>
                </div>

                <div class="framework-card">
                    <h4>Seller onboarding systems</h4>
                    <p>Validate the workflows and integrations for onboarding new merchants securely.</p>
                </div>

                <div class="framework-card">
                    <h4>Mobile apps & websites</h4>
                    <p>Cross-device and cross-browser testing for consistent mobile performance.</p>
                </div>

                <div class="framework-card">
                    <h4>Business automation software</h4>
                    <p>Test internal tools, ERPs, and B2B software for reliable operational excellence.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="process-section fade-in">
        <div class="process-container">
            <div class="section-header">
                <span class="section-subtitle">Our Methodology</span>
                <h2 class="section-title">Our Testing Process</h2>
                <p class="section-description">
                    We ensure reliable and scalable testing solutions through our strategic 6-step framework.
                </p>
            </div>

            <div class="process-timeline">
                <div class="process-step">
                    <div class="step-content">
                        <h4>Requirement analysis</h4>
                        <p>We deeply evaluate your project needs, scope, and specific quality objectives.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">1</div>
                    </div>
                </div>

                <div class="process-step">
                    <div class="step-content">
                        <h4>Test strategy creation</h4>
                        <p>Developing a customized roadmap and approach for optimal automation coverage.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">2</div>
                    </div>
                </div>

                <div class="process-step">
                    <div class="step-content">
                        <h4>Automation framework setup</h4>
                        <p>Configuring robust, scalable architectures tailored to your technology stack.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">3</div>
                    </div>
                </div>

                <div class="process-step">
                    <div class="step-content">
                        <h4>Test script development</h4>
                        <p>Writing and maintaining clean, reusable automated test scripts for your application.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">4</div>
                    </div>
                </div>

                <div class="process-step">
                    <div class="step-content">
                        <h4>Execution & reporting</h4>
                        <p>Running continuous tests and delivering actionable, transparent quality metrics.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">5</div>
                    </div>
                </div>

                <div class="process-step">
                    <div class="step-content">
                        <h4>Optimization & maintenance</h4>
                        <p>Continuously tuning performance and updating tests to align with new code releases.</p>
                    </div>
                    <div class="step-number-wrap">
                        <div class="step-number">6</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="why-choose-section fade-in">
        <div class="why-choose-container">
            <div class="section-header">
                <span class="section-subtitle">Our Differentiators</span>
                <h2 class="section-title">Why Choose Us for Automation Testing?</h2>
            </div>

            <div class="why-choose-grid">
                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-tools"></i></div>
                    <h4>Advanced testing tools & frameworks</h4>
                </div>

                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-search"></i></div>
                    <h4>Quality-focused approach</h4>
                </div>

                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-tachometer-alt"></i></div>
                    <h4>Faster test execution</h4>
                </div>

                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-users"></i></div>
                    <h4>Experienced QA team</h4>
                </div>

                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-hands-helping"></i></div>
                    <h4>End-to-end support</h4>
                </div>

                <div class="why-choose-card">
                    <div class="why-choose-icon"><i class="fas fa-chart-line"></i></div>
                    <h4>Proven, Scalable Results</h4>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-automation fade-in">
        <div class="cta-container-automation">
            <h2>Start Automation Testing Today</h2>
            <p>
                Want to improve your software quality? Contact us today for a free consultation and let's make your applications bug-free.
            </p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta-primary">
                    Contact Us Today <i class="fas fa-arrow-right"></i>
                </a>
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta-secondary">
                    Free Consultation <i class="fas fa-calendar-check"></i>
                </a>
            </div>
        </div>
    </section>

    <script>
        // Scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver(function(entries) {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                }
            });
        }, observerOptions);

        document.querySelectorAll('.fade-in').forEach(element => {
            observer.observe(element);
        });

        // Smooth scroll
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
    </script>

    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>
