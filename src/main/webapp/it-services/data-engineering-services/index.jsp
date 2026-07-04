<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>Data Engineering Services | ETL, Data Pipelines & Warehousing | IARDO</title>
    <meta name="description" content="Get expert data engineering services for building scalable data pipelines, ETL processes, and data warehouses. Turn data into actionable insights.">
    <link rel="canonical" href="/data-engineering-services" />

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* =====================================================
           Data Engineering Services - Enhanced Professional UI
           Modern Glassmorphism Light Theme
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Light Theme Backgrounds */
            --bg-main: #f4f6f9;
            --bg-gradient-1: #e2e8f0;
            --bg-gradient-2: #ffffff;
            
            /* Glassmorphism Cards */
            --bg-card: rgba(255, 255, 255, 0.7);
            --bg-card-hover: rgba(255, 255, 255, 0.95);
            
            /* Text Colors for High Contrast */
            --text-main: #1e293b;
            --text-muted: #475569;
            --text-dim: #64748b;
            
            /* Vibrant Primary & Accents */
            --primary: #0284c7;        
            --primary-light: #0ea5e9;  
            --primary-glow: rgba(2, 132, 199, 0.2);
            
            --accent: #e11d48;         
            --accent-glow: rgba(225, 29, 72, 0.15);
            
            /* Borders & Highlights */
            --highlight-bg: rgba(2, 132, 199, 0.05);
            --border-color: rgba(0, 0, 0, 0.06);
            --border-glow: rgba(2, 132, 199, 0.15);
            
            /* Shadows */
            --shadow-sm: 0 4px 15px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 10px 30px rgba(0, 0, 0, 0.05);
            --shadow-lg: 0 20px 40px -10px rgba(0, 0, 0, 0.08);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Outfit', -apple-system, BlinkMacSystemFont, sans-serif;
            background: linear-gradient(135deg, var(--bg-main) 0%, var(--bg-gradient-1) 50%, var(--bg-gradient-2) 100%);
            color: var(--text-main);
            overflow-x: hidden;
            line-height: 1.7;
            position: relative;
        }

        /* Animated Particle Background */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                radial-gradient(circle at 20% 30%, var(--primary-glow) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, var(--accent-glow) 0%, transparent 50%),
                radial-gradient(circle at 40% 70%, rgba(147, 51, 234, 0.1) 0%, transparent 50%);
            background-size: 200% 200%;
            animation: particleFloat 30s ease-in-out infinite;
            pointer-events: none;
            z-index: -2;
            opacity: 0.8;
        }

        /* Grid Pattern Overlay */
        body::after {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                linear-gradient(rgba(0, 0, 0, 0.04) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0, 0, 0, 0.04) 1px, transparent 1px);
            background-size: 50px 50px;
            pointer-events: none;
            z-index: -1;
            opacity: 0.6;
        }

        @keyframes particleFloat {
            0%, 100% { background-position: 0% 0%, 100% 0%, 50% 100%; opacity: 0.6; }
            50% { background-position: 100% 50%, 0% 100%, 50% 0%; opacity: 0.8; }
        }

        /* Hero Section */
        .hero {
            min-height: 100vh;
            display: grid;
            grid-template-columns: 1.2fr 1fr;
            gap: 4rem;
            align-items: center;
            padding: 140px 5% 80px;
            position: relative;
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.6rem 1.2rem;
            background: var(--bg-card);
            border: 1px solid rgba(255, 255, 255, 0.6);
            border-radius: 50px;
            color: var(--primary);
            font-size: 0.9rem;
            font-weight: 700;
            margin-bottom: 2rem;
            animation: fadeSlideDown 0.8s ease-out;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: var(--shadow-sm);
            backdrop-filter: blur(10px);
        }

        .hero-label i {
            animation: pulse 2s ease-in-out infinite;
            color: var(--accent);
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.7; transform: scale(1.1); }
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: 900;
            line-height: 1.15;
            margin-bottom: 1.5rem;
            color: var(--text-main);
            letter-spacing: -1.5px;
            animation: fadeSlideUp 0.8s ease-out 0.2s both;
        }

        .hero h1 span {
            display: block;
            background: linear-gradient(135deg, var(--primary) 0%, #2563eb 50%, var(--accent) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 3.2rem;
            margin-top: 10px;
        }

        .hero-description {
            font-size: 1.2rem;
            color: var(--text-muted);
            margin-bottom: 2.5rem;
            line-height: 1.8;
            max-width: 650px;
            animation: fadeSlideUp 0.8s ease-out 0.4s both;
        }

        .hero-cta {
            display: flex;
            gap: 1.5rem;
            align-items: center;
            flex-wrap: wrap;
            animation: fadeSlideUp 0.8s ease-out 0.6s both;
        }

        .cta-primary {
            padding: 1.1rem 2.5rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            color: #ffffff;
            text-decoration: none;
            font-weight: 700;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.05rem;
            box-shadow: 0 8px 20px var(--primary-glow);
        }

        .cta-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(2, 132, 199, 0.4);
        }

        .cta-secondary {
            padding: 1.1rem 2.5rem;
            background: var(--bg-card);
            backdrop-filter: blur(10px);
            color: var(--primary);
            text-decoration: none;
            font-weight: 700;
            border: 2px solid var(--primary-light);
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.05rem;
        }

        .cta-secondary:hover {
            background: var(--highlight-bg);
            transform: translateY(-3px);
            border-color: var(--primary);
        }

        .hero-visual {
            position: relative;
            z-index: 2;
            animation: fadeSlideLeft 0.8s ease-out 0.3s both;
        }

        .visual-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
        }

        .visual-card {
            background: var(--bg-card);
            border: 1px solid rgba(255, 255, 255, 0.8);
            border-radius: 20px;
            padding: 2rem;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            backdrop-filter: blur(15px);
            box-shadow: var(--shadow-md);
            text-align: center;
        }

        .visual-card:hover {
            border-color: var(--primary-light);
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
            background: var(--bg-card-hover);
        }

        .visual-card i {
            font-size: 2.5rem;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1rem;
            display: block;
        }

        .visual-card h4 {
            font-size: 1.15rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
            color: var(--text-main);
        }

        .visual-card p {
            font-size: 0.95rem;
            color: var(--text-muted);
            line-height: 1.5;
        }

        /* Highlight Section (Why Important) */
        .highlight-section {
            padding: 80px 5%;
            position: relative;
            z-index: 1;
        }

        .importance-banner {
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.08) 0%, rgba(225, 29, 72, 0.05) 100%);
            border: 1px solid rgba(255, 255, 255, 0.6);
            border-radius: 24px;
            padding: 4rem;
            box-shadow: var(--shadow-md);
            backdrop-filter: blur(15px);
            text-align: center;
            max-width: 1400px;
            margin: 0 auto;
        }

        .importance-banner h2 {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--text-main);
            margin-bottom: 2rem;
        }

        .benefits-flex {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1.5rem;
        }

        .benefit-badge {
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            padding: 1rem 1.5rem;
            border-radius: 50px;
            font-weight: 600;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: var(--shadow-sm);
            transition: all 0.3s ease;
        }

        .benefit-badge:hover {
            transform: translateY(-3px);
            border-color: var(--primary-light);
            background: #ffffff;
        }

        .benefit-badge i {
            color: var(--accent);
        }

        /* Services Section */
        .services {
            padding: 80px 5%;
            position: relative;
            z-index: 1;
        }

        .section-intro {
            max-width: 800px;
            margin: 0 auto 4rem;
            text-align: center;
        }

        .section-tag {
            color: var(--primary);
            font-size: 0.95rem;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 1rem;
            display: inline-block;
            background: var(--highlight-bg);
            padding: 5px 15px;
            border-radius: 50px;
        }

        .section-heading {
            font-size: 3rem;
            font-weight: 900;
            margin-bottom: 1.5rem;
            color: var(--text-main);
            letter-spacing: -1px;
        }

        .section-description {
            font-size: 1.15rem;
            color: var(--text-muted);
            line-height: 1.8;
        }

        .services-wrapper {
            max-width: 1400px;
            margin: 0 auto;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
        }

        .service-item {
            background: var(--bg-card);
            border: 1px solid rgba(255, 255, 255, 0.8);
            border-radius: 20px;
            padding: 2.5rem;
            transition: all 0.4s ease;
            backdrop-filter: blur(15px);
            box-shadow: var(--shadow-md);
            display: flex;
            flex-direction: column;
        }

        .service-item:hover {
            border-color: var(--primary-light);
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            background: var(--bg-card-hover);
        }

        .service-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.1), rgba(2, 132, 199, 0.02));
            border: 1px solid rgba(2, 132, 199, 0.1);
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            transition: transform 0.4s ease;
        }

        .service-item:hover .service-icon {
            transform: scale(1.1) rotate(5deg);
            background: rgba(2, 132, 199, 0.15);
        }

        .service-icon i {
            font-size: 2rem;
            color: var(--primary);
        }

        .service-item h3 {
            font-size: 1.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: var(--text-main);
        }

        .service-item ul {
            list-style: none;
            margin-top: auto;
        }

        .service-item ul li {
            color: var(--text-muted);
            margin-bottom: 10px;
            display: flex;
            align-items: flex-start;
            gap: 10px;
            font-size: 1rem;
        }

        .service-item ul li i {
            color: var(--primary-light);
            margin-top: 5px;
            font-size: 0.85rem;
        }

        /* Process & Results Section */
        .process-results {
            padding: 80px 5%;
            position: relative;
            z-index: 1;
        }

        .process-container {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
        }

        .process-list {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .process-step {
            background: var(--bg-card);
            border-left: 4px solid var(--primary);
            padding: 1.5rem 2rem;
            border-radius: 0 12px 12px 0;
            box-shadow: var(--shadow-sm);
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .process-step:hover {
            background: var(--bg-card-hover);
            transform: translateX(10px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent);
        }

        .step-number {
            font-size: 2rem;
            font-weight: 900;
            color: rgba(2, 132, 199, 0.2);
        }

        .process-step h4 {
            font-size: 1.25rem;
            font-weight: 700;
            color: var(--text-main);
        }

        .capabilities-stats {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
        }

        .stat-box {
            background: var(--bg-card);
            border: 1px solid rgba(255, 255, 255, 0.8);
            border-radius: 20px;
            padding: 2.5rem 2rem;
            text-align: center;
            transition: all 0.3s ease;
            backdrop-filter: blur(15px);
            box-shadow: var(--shadow-md);
        }

        .stat-box:hover {
            border-color: var(--primary-light);
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .stat-box i {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 1rem;
        }

        .stat-label {
            color: var(--text-main);
            font-size: 1.1rem;
            font-weight: 700;
            line-height: 1.4;
        }

        /* Why Choose Us Scrolling Section */
        .technologies {
            padding: 60px 5% 100px;
            position: relative;
            z-index: 1;
        }

        .tech-scroll-container {
            max-width: 1400px;
            margin: 3rem auto 0;
            overflow: hidden;
            position: relative;
        }

        .tech-scroll {
            display: flex;
            gap: 2rem;
            animation: scroll 20s linear infinite;
        }

        .tech-scroll:hover {
            animation-play-state: paused;
        }

        @keyframes scroll {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }

        .tech-badge {
            flex-shrink: 0;
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            border-radius: 50px;
            padding: 1rem 2.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
            transition: all 0.3s ease;
            box-shadow: var(--shadow-sm);
            backdrop-filter: blur(10px);
        }

        .tech-badge:hover {
            border-color: var(--primary);
            background: #ffffff;
            transform: translateY(-3px);
            box-shadow: var(--shadow-md);
        }

        .tech-badge i {
            font-size: 1.5rem;
            color: var(--primary);
        }

        .tech-badge span {
            font-weight: 700;
            color: var(--text-main);
            white-space: nowrap;
        }

        /* CTA Section */
        .cta-section {
            padding: 0 5% 100px;
            position: relative;
            z-index: 1;
        }

        .cta-container {
            max-width: 1200px;
            margin: 0 auto;
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.9) 0%, rgba(14, 165, 233, 0.9) 100%);
            border-radius: 24px;
            padding: 5rem 3rem;
            text-align: center;
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            color: white;
        }

        .cta-container::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.2) 0%, transparent 60%);
            animation: rotate 20s linear infinite;
        }

        .cta-container h2 {
            font-size: 3.5rem;
            font-weight: 900;
            margin-bottom: 1.5rem;
            position: relative;
            z-index: 1;
            color: white;
        }

        .cta-container p {
            font-size: 1.25rem;
            margin-bottom: 2.5rem;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            position: relative;
            z-index: 1;
            color: rgba(255, 255, 255, 0.9);
        }

        .cta-buttons {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
            flex-wrap: wrap;
            position: relative;
            z-index: 1;
        }
        
        .cta-btn-white {
            padding: 1.1rem 2.5rem;
            background: #ffffff;
            color: var(--primary);
            text-decoration: none;
            font-weight: 800;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.1rem;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .cta-btn-white:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            background: var(--bg-main);
        }

        /* Animations */
        @keyframes fadeSlideDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeSlideUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeSlideLeft {
            from { opacity: 0; transform: translateX(30px); }
            to { opacity: 1; transform: translateX(0); }
        }

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
            .hero {
                grid-template-columns: 1fr;
                gap: 3rem;
                padding: 120px 5% 60px;
                text-align: center;
            }

            .hero-description {
                margin: 0 auto 2.5rem;
            }

            .hero-cta {
                justify-content: center;
            }

            .hero h1 { font-size: 3.5rem; }
            
            .services-grid { grid-template-columns: repeat(2, 1fr); }
            
            .process-container {
                grid-template-columns: 1fr;
                gap: 3rem;
            }
        }

        @media (max-width: 768px) {
            .hero { padding: 100px 1.5rem 40px; }
            .hero h1 { font-size: 2.8rem; }
            .hero h1 span { font-size: 2.4rem; }
            .hero-description { font-size: 1.1rem; }
            
            .hero-cta {
                flex-direction: column;
                align-items: stretch;
            }
            .cta-primary, .cta-secondary { width: 100%; text-align: center; }

            .section-heading { font-size: 2.2rem; }
            .importance-banner h2 { font-size: 1.8rem; }
            
            .services-grid { grid-template-columns: 1fr; }
            .capabilities-stats { grid-template-columns: 1fr; }
            
            .importance-banner { padding: 2.5rem 1.5rem; }
            .cta-container { padding: 3rem 1.5rem; }
            .cta-container h2 { font-size: 2.2rem; }
        }

        @media (max-width: 480px) {
            .hero h1 { font-size: 2.2rem; }
            .hero h1 span { font-size: 1.8rem; }
            .section-heading { font-size: 1.8rem; }
            .visual-grid { grid-template-columns: 1fr; }
            .cta-btn-white { width: 100%; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero">
        <div class="hero-content">
            <div class="hero-label">
                <i class="fas fa-database"></i> Smart Data Solutions
            </div>
            <h1>
                Data Engineering Services
                <span>Build Scalable & Reliable Pipelines</span>
            </h1>
            <p class="hero-description">
                Data engineering is the process of designing, building, and managing data systems that collect, store, and process large volumes of data. We transform raw data into valuable insights.
            </p>
            <div class="hero-cta">
                <a href="#services" class="cta-primary">Explore Solutions</a>
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-secondary">Free Consultation</a>
            </div>
        </div>
        <div class="hero-visual">
            <div class="visual-grid">
                <div class="visual-card">
                    <i class="fas fa-project-diagram"></i>
                    <h4>Data Pipelines</h4>
                    <p>Robust ETL & ELT Processing</p>
                </div>
                <div class="visual-card">
                    <i class="fas fa-warehouse"></i>
                    <h4>Warehousing</h4>
                    <p>Cloud Storage & Management</p>
                </div>
                <div class="visual-card">
                    <i class="fas fa-server"></i>
                    <h4>Big Data</h4>
                    <p>Large-scale processing systems</p>
                </div>
                <div class="visual-card">
                    <i class="fas fa-shield-alt"></i>
                    <h4>Data Quality</h4>
                    <p>Security & Governance</p>
                </div>
            </div>
        </div>
    </section>

    <section class="highlight-section fade-in">
        <div class="importance-banner">
            <h2>Why Data Engineering is Important?</h2>
            <div class="benefits-flex">
                <div class="benefit-badge"><i class="fas fa-sitemap"></i> Better Data Management</div>
                <div class="benefit-badge"><i class="fas fa-bolt"></i> Faster Data Processing</div>
                <div class="benefit-badge"><i class="fas fa-chart-pie"></i> Data-Driven Decisions</div>
                <div class="benefit-badge"><i class="fas fa-cogs"></i> Improved Operational Efficiency</div>
                <div class="benefit-badge"><i class="fas fa-layer-group"></i> Scalable Data Infrastructure</div>
            </div>
            <p style="margin-top: 2rem; font-size: 1.15rem; color: var(--text-muted); font-weight: 500;">
                👉 Data engineering helps businesses unlock the true value of their data.
            </p>
        </div>
    </section>

    <section class="services fade-in" id="services">
        <div class="services-wrapper">
            <div class="section-intro">
                <span class="section-tag">Our Services</span>
                <h2 class="section-heading">Our Data Engineering Services</h2>
                <p class="section-description">
                    We provide complete data solutions designed to seamlessly integrate, manage, and scale your business operations.
                </p>
            </div>

            <div class="services-grid">
                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-project-diagram"></i></div>
                    <h3>Data Pipeline Development</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> ETL/ELT pipeline setup</li>
                        <li><i class="fas fa-check-circle"></i> Data ingestion & processing</li>
                        <li><i class="fas fa-check-circle"></i> Real-time data pipelines</li>
                    </ul>
                </div>

                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-warehouse"></i></div>
                    <h3>Data Warehousing</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Data warehouse design</li>
                        <li><i class="fas fa-check-circle"></i> Cloud data storage</li>
                        <li><i class="fas fa-check-circle"></i> Structured data management</li>
                    </ul>
                </div>

                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-server"></i></div>
                    <h3>Big Data Solutions</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Large-scale data processing</li>
                        <li><i class="fas fa-check-circle"></i> Distributed systems</li>
                        <li><i class="fas fa-check-circle"></i> Performance optimization</li>
                    </ul>
                </div>

                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-network-wired"></i></div>
                    <h3>Data Integration</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> API & system integration</li>
                        <li><i class="fas fa-check-circle"></i> Data consolidation</li>
                        <li><i class="fas fa-check-circle"></i> Cross-platform connectivity</li>
                    </ul>
                </div>

                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-shield-alt"></i></div>
                    <h3>Data Quality & Governance</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Data cleaning & validation</li>
                        <li><i class="fas fa-check-circle"></i> Data security architecture</li>
                        <li><i class="fas fa-check-circle"></i> Compliance management</li>
                    </ul>
                </div>

                <div class="service-item">
                    <div class="service-icon"><i class="fas fa-building"></i></div>
                    <h3>For Business & Startups</h3>
                    <ul>
                        <li><i class="fas fa-check-circle"></i> Ecommerce & SaaS platforms</li>
                        <li><i class="fas fa-check-circle"></i> Enterprise data systems</li>
                        <li><i class="fas fa-check-circle"></i> Business intelligence setup</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="process-results fade-in">
        <div class="process-container">
            <div>
                <span class="section-tag">How We Work</span>
                <h2 class="section-heading">Our Data Engineering Process</h2>
                <p class="section-description" style="margin-bottom: 2rem;">
                    We build secure, scalable, and high-performance data systems using a proven methodology.
                </p>
                <div class="process-list">
                    <div class="process-step">
                        <div class="step-number">01</div>
                        <h4>Requirement Analysis</h4>
                    </div>
                    <div class="process-step">
                        <div class="step-number">02</div>
                        <h4>Data Architecture Design</h4>
                    </div>
                    <div class="process-step">
                        <div class="step-number">03</div>
                        <h4>Pipeline Development</h4>
                    </div>
                    <div class="process-step">
                        <div class="step-number">04</div>
                        <h4>Testing & Validation</h4>
                    </div>
                    <div class="process-step">
                        <div class="step-number">05</div>
                        <h4>Deployment & Optimization</h4>
                    </div>
                </div>
            </div>

            <div>
                <span class="section-tag">The Impact</span>
                <h2 class="section-heading">Our Results</h2>
                <p class="section-description" style="margin-bottom: 2rem;">
                    Clean data + better insights + faster decision-making. Here is the value we bring:
                </p>
                <div class="capabilities-stats">
                    <div class="stat-box">
                        <i class="fas fa-bolt"></i>
                        <div class="stat-label">Faster Data Processing</div>
                    </div>
                    <div class="stat-box">
                        <i class="fas fa-bullseye"></i>
                        <div class="stat-label">Improved Data Accuracy</div>
                    </div>
                    <div class="stat-box">
                        <i class="fas fa-piggy-bank"></i>
                        <div class="stat-label">Reduced Operational Costs</div>
                    </div>
                    <div class="stat-box">
                        <i class="fas fa-chart-bar"></i>
                        <div class="stat-label">Better Analytics Performance</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="technologies fade-in" id="tech">
        <div class="section-intro">
            <span class="section-tag">Why Choose Us</span>
            <h2 class="section-heading">Your Trusted Data Partner</h2>
            <p class="tion-description">
                End-to-end support, data expertise, and scalable solutions built to handle your toughest challenges.
            </p>
        </div>

        <div class="tech-scroll-container">
            <div class="tech-scroll">
                <div class="tech-badge"><i class="fas fa-users"></i> <span>Data Experts</span></div>
                <div class="tech-badge"><i class="fas fa-expand-arrows-alt"></i> <span>Scalable Solutions</span></div>
                <div class="tech-badge"><i class="fas fa-laptop-code"></i> <span>Modern Tools & Tech</span></div>
                <div class="tech-badge"><i class="fas fa-lock"></i> <span>Secure Data Handling</span></div>
                <div class="tech-badge"><i class="fas fa-hands-helping"></i> <span>End-to-End Support</span></div>
                
                <div class="tech-badge"><i class="fas fa-users"></i> <span>Data Experts</span></div>
                <div class="tech-badge"><i class="fas fa-expand-arrows-alt"></i> <span>Scalable Solutions</span></div>
                <div class="tech-badge"><i class="fas fa-laptop-code"></i> <span>Modern Tools & Tech</span></div>
                <div class="tech-badge"><i class="fas fa-lock"></i> <span>Secure Data Handling</span></div>
                <div class="tech-badge"><i class="fas fa-hands-helping"></i> <span>End-to-End Support</span></div>
            </div>
        </div>
    </section>

    <section class="cta-section fade-in" id="cta">
        <div class="cta-container">
            <h2>Start Your Data Engineering Project Today</h2>
            <p>Want to turn your data into powerful, actionable insights? Contact us today for a free consultation and let's unlock your data's true value.</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-btn-white">Schedule Free Consultation</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../includes/footer/footer.jsp" />

    <script>
        document.addEventListener("DOMContentLoaded", function() {
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
        });
    </script>
</body>
</html>
