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
    
    <title>Startup Development Services | MVP, SaaS & App Development | IARDO</title>
    <meta name="description" content="Turn your startup idea into reality with expert development services. Build MVPs, SaaS platforms, and scalable apps for fast growth.">
    <meta name="keywords" content="startup development services, MVP development, tech startup solutions, SaaS development, app development for startups">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Startup Brand Colors */
            --primary: #FF5A5F;        /* Startup Pink/Red */
            --primary-dark: #E11D48;   
            --secondary: #6366F1;      /* Tech Indigo/Blue */
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light slate */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #FF5A5F, #6366F1);
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
        .hero-outsourcing {
            min-height: 90vh;
            display: flex;
            align-items: center;
            padding: 8rem 5% 4rem; /* Adjusted top padding to clear navbar */
            background: linear-gradient(135deg, #ffffff 0%, #fff0f2 100%) !important;
            position: relative;
            overflow: hidden;
        }

        .hero-outsourcing::before {
            content: '';
            position: absolute;
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(255, 90, 95, 0.06), transparent);
            border-radius: 50%;
            top: -400px;
            right: -300px;
            animation: pulse 8s infinite ease-in-out;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.5; }
            50% { transform: scale(1.1); opacity: 0.8; }
        }

        .hero-content-outsourcing {
            max-width: 1400px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero-content-outsourcing h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            font-weight: 900 !important;
            color: var(--text-main) !important;
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }

        .hero-content-outsourcing h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-content-outsourcing p {
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
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
            box-shadow: 0 8px 25px rgba(255, 90, 95, 0.3);
        }

        .hero-cta-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(255, 90, 95, 0.5);
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
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
        }

        .hero-cta-secondary:hover {
            background: var(--gradient-primary) !important;
            color: white !important;
            border-color: transparent !important;
            transform: translateY(-3px);
        }

        /* Introduction Section */
        .intro-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .intro-container {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 1.3fr;
            gap: 5rem;
            align-items: center;
        }

        .intro-title {
            font-size: 3rem;
            font-weight: 900 !important;
            color: var(--text-main) !important;
            line-height: 1.2;
        }

        .intro-description {
            font-size: 1.1rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
            line-height: 1.9;
        }

        /* Process/Benefits Section */
        .process-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .process-container {
            max-width: 1400px;
            margin: 0 auto;
        }

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
        }

        .section-title {
            font-size: 3rem;
            font-weight: 900 !important;
            color: var(--text-main) !important;
            line-height: 1.2;
            margin-bottom: 1.5rem;
        }
        
        .section-desc {
            font-size: 1.15rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
        }

        .process-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 3rem;
            margin-top: 3rem;
        }

        .process-card {
            background: var(--card-bg) !important;
            padding: 3rem 2rem;
            border-radius: 20px;
            text-align: center;
            border: 1px solid var(--border-color);
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
            transition: all 0.4s;
            position: relative;
            overflow: hidden;
        }
        
        .process-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 4px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: 0.4s;
            transform-origin: left;
        }

        .process-card:hover::before { transform: scaleX(1); }

        .process-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(255, 90, 95, 0.1);
            border-color: var(--primary);
        }

        .process-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 2rem;
            background: rgba(255, 90, 95, 0.1) !important;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.4s;
            color: var(--primary) !important;
        }

        .process-card:hover .process-icon {
            background: var(--gradient-primary) !important;
            color: white !important;
            transform: scale(1.1) rotate(5deg);
        }

        .process-icon i {
            font-size: 2.5rem;
        }

        .process-title {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }
        
        .process-card p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
        }

        /* Expertise/Services Section */
        .expertise-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .expertise-container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .expertise-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2.5rem;
        }

        .expertise-card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            padding: 2.5rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .expertise-card:hover {
            border-color: var(--primary) !important;
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(255, 90, 95, 0.1);
        }

        .expertise-card i {
            font-size: 2.5rem;
            color: var(--primary) !important;
            margin-bottom: 1.5rem;
            display: block;
        }

        .expertise-card h4 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }

        .expertise-card ul {
            list-style: none;
            margin-top: 1rem;
        }
        
        .expertise-card ul li {
            color: var(--text-muted) !important;
            font-weight: 600 !important;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .expertise-card ul li::before {
            content: '\f058'; /* FontAwesome check-circle */
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            color: var(--secondary);
        }

        /* Why Choose Us Section */
        .why-choose-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .why-choose-container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .why-choose-layout {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 5rem;
            align-items: center;
            margin-top: 4rem;
        }

        .why-choose-content h3 {
            font-size: 2.5rem;
            font-weight: 900 !important;
            color: var(--text-main) !important;
            margin-bottom: 2rem;
        }

        .feature-list {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        .feature-item {
            display: flex;
            align-items: flex-start;
            gap: 1.5rem;
        }

        .feature-check {
            flex-shrink: 0;
            width: 50px;
            height: 50px;
            background: var(--gradient-primary) !important;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .feature-check i {
            color: white !important;
            font-size: 1.2rem;
        }

        .feature-text h4 {
            font-size: 1.3rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 0.5rem;
        }

        .feature-text p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.7;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 2rem;
        }

        .stat-card {
            background: var(--section-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            padding: 2.5rem;
            text-align: center;
            transition: all 0.3s ease;
        }

        .stat-card:hover {
            border-color: var(--primary) !important;
            transform: scale(1.05);
            background: #fff !important;
            box-shadow: 0 10px 30px rgba(255, 90, 95, 0.1);
        }

        .stat-number {
            font-size: 3.5rem;
            font-weight: 900 !important;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 0.5rem;
        }

        .stat-label {
            font-size: 1.1rem;
            color: var(--text-main) !important;
            font-weight: 700 !important;
        }

        /* CTA Section */
        .cta-outsourcing {
            padding: 7rem 5%;
            background: var(--gradient-primary) !important;
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .cta-outsourcing::before {
            content: '';
            position: absolute;
            font-size: 15rem;
            opacity: 0.1;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(255,255,255,0.8) 0%, transparent 70%);
            animation: pulse 4s infinite alternate;
        }

        .cta-container-outsourcing {
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .cta-container-outsourcing h2 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            font-weight: 900 !important;
            color: #ffffff !important;
            margin-bottom: 1.5rem;
        }

        .cta-container-outsourcing p {
            font-size: 1.3rem;
            font-weight: 600 !important;
            color: rgba(255,255,255,0.95) !important;
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .cta-primary {
            padding: 1.2rem 3.5rem;
            background: #ffffff !important;
            color: var(--primary) !important;
            text-decoration: none;
            font-weight: 800 !important;
            border-radius: 50px;
            transition: all 0.4s ease;
            font-size: 1.2rem;
            display: inline-flex;
            align-items: center;
            gap: 1rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .cta-primary:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            color: var(--primary-dark) !important;
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

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero-outsourcing { padding: 8rem 5% 4rem; }
            .intro-container, .why-choose-layout { grid-template-columns: 1fr; gap: 3rem; text-align: center; }
            .feature-item { text-align: left; }
        }

        @media (max-width: 768px) {
            .hero-outsourcing { padding: 6rem 1rem 3rem; }
            .hero-cta-buttons { flex-direction: column; width: 100%; }
            .hero-cta-primary, .hero-cta-secondary { width: 100%; justify-content: center; }
            .intro-section, .process-section, .expertise-section, .why-choose-section, .cta-outsourcing { padding: 4rem 1.5rem; }
            .intro-title, .section-title { font-size: 2rem !important; }
            .stats-grid { grid-template-columns: 1fr; }
            .cta-container-outsourcing h2 { font-size: 2.2rem !important; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero-outsourcing">
        <div class="hero-content-outsourcing">
            <h1>
                Startup Development <span>Services</span>
            </h1>
            <p>
                Build, Launch & Scale Your Startup. We turn ideas into fully functional digital products and businesses. Validate ideas quickly, launch your MVP, and scale efficiently with expert tech solutions.
            </p>
            <div class="hero-cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="hero-cta-primary">
                    <i class="fas fa-rocket"></i> Launch Your Startup
                </a>
                <a href="#services" class="hero-cta-secondary">
                    <i class="fas fa-list"></i> Our Solutions
                </a>
            </div>
        </div>
    </section>

    <section class="intro-section fade-in" id="about">
        <div class="intro-container">
            <div>
                <h2 class="intro-title">What is Startup Development?</h2>
            </div>
            <div>
                <p class="intro-description">
                    Startup development involves turning an idea into a fully functional product and business. It includes planning, designing, developing, and launching digital solutions like apps, platforms, or SaaS products. With our startup development services, entrepreneurs can quickly build MVPs, validate ideas, and scale their businesses efficiently.
                </p>
            </div>
        </div>
    </section>

    <section class="process-section fade-in">
        <div class="process-container">
            <div class="section-header">
                <span class="section-subtitle">The Impact</span>
                <h2 class="section-title">Why Startup Development is Important?</h2>
                <p class="section-desc">Startup development helps turn ideas into successful businesses faster.</p>
            </div>
            <div class="process-grid">
                <div class="process-card">
                    <div class="process-icon"><i class="fas fa-rocket"></i></div>
                    <h3 class="process-title">Faster Product Launch</h3>
                    <p>Build and release your Minimum Viable Product (MVP) to market quickly.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon"><i class="fas fa-check-circle"></i></div>
                    <h3 class="process-title">Idea Validation</h3>
                    <p>Test your concept with real users and gather actionable feedback.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon"><i class="fas fa-piggy-bank"></i></div>
                    <h3 class="process-title">Cost-Effective</h3>
                    <p>Optimize development costs by focusing on core features first.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon"><i class="fas fa-expand-arrows-alt"></i></div>
                    <h3 class="process-title">Quick Scalability</h3>
                    <p>Build a strong tech foundation that grows seamlessly with your business.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon"><i class="fas fa-bullseye"></i></div>
                    <h3 class="process-title">Better Market Fit</h3>
                    <p>Iterate and improve your product to meet exact customer demands.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="expertise-section fade-in" id="services">
        <div class="expertise-container">
            <div class="section-header">
                <span class="section-subtitle">What We Do</span>
                <h2 class="section-title">Our Startup Development Services</h2>
                <p class="section-desc">We provide complete end-to-end startup tech solutions.</p>
            </div>
            <div class="expertise-grid">
                <div class="expertise-card">
                    <i class="fas fa-laptop-code"></i>
                    <h4>MVP Development</h4>
                    <ul>
                        <li>Rapid product development</li>
                        <li>Core feature implementation</li>
                        <li>Quick market launch</li>
                    </ul>
                </div>
                <div class="expertise-card">
                    <i class="fas fa-paint-brush"></i>
                    <h4>Product Design (UI/UX)</h4>
                    <ul>
                        <li>User-friendly design</li>
                        <li>Wireframing & prototyping</li>
                        <li>Smooth user experience</li>
                    </ul>
                </div>
                <div class="expertise-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h4>Web & Mobile App Development</h4>
                    <ul>
                        <li>Scalable applications</li>
                        <li>Cross-platform development</li>
                        <li>High-performance systems</li>
                    </ul>
                </div>
                <div class="expertise-card">
                    <i class="fas fa-cloud"></i>
                    <h4>SaaS Development</h4>
                    <ul>
                        <li>Subscription-based platforms</li>
                        <li>Cloud-based solutions</li>
                        <li>Scalable architecture</li>
                    </ul>
                </div>
                <div class="expertise-card">
                    <i class="fas fa-chart-line"></i>
                    <h4>Startup Scaling & Support</h4>
                    <ul>
                        <li>Feature upgrades</li>
                        <li>Performance optimization</li>
                        <li>Ongoing technical support</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="process-section fade-in">
        <div class="process-container">
            <div class="section-header">
                <span class="section-subtitle">How We Work</span>
                <h2 class="section-title">Our Development Process</h2>
                <p class="section-desc">We help startups move from idea to launch quickly and efficiently.</p>
            </div>
            <div class="process-grid">
                <div class="process-card">
                    <div class="process-icon">1</div>
                    <h3 class="process-title">Idea Validation</h3>
                    <p>Evaluating market need and technical feasibility.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon">2</div>
                    <h3 class="process-title">Planning & Strategy</h3>
                    <p>Defining features, tech stack, and development roadmap.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon">3</div>
                    <h3 class="process-title">MVP Development</h3>
                    <p>Building the core product quickly for initial market testing.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon">4</div>
                    <h3 class="process-title">Testing & Launch</h3>
                    <p>Ensuring quality, fixing bugs, and deploying the product.</p>
                </div>
                <div class="process-card">
                    <div class="process-icon">5</div>
                    <h3 class="process-title">Scaling & Optimization</h3>
                    <p>Iterating based on user feedback and scaling architecture.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="why-choose-section fade-in">
        <div class="why-choose-container">
            <div class="section-header">
                <h2 class="section-title">Startup Solutions for Founders & Businesses</h2>
                <p class="section-desc">We help build Tech Startups, Ecommerce platforms, SaaS products, Mobile-first startups, and Digital platforms. <strong>Result: Faster launch + scalable product + strong foundation.</strong></p>
            </div>
            
            <div class="why-choose-layout">
                <div class="why-choose-content">
                    <h3>Why Choose Us?</h3>
                    <div class="feature-list">
                        <div class="feature-item">
                            <div class="feature-check"><i class="fas fa-lightbulb"></i></div>
                            <div class="feature-text">
                                <h4>Startup-Focused Approach</h4>
                                <p>We understand the lean startup methodology.</p>
                            </div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-check"><i class="fas fa-fighter-jet"></i></div>
                            <div class="feature-text">
                                <h4>Fast MVP Delivery</h4>
                                <p>Get your product to market rapidly.</p>
                            </div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-check"><i class="fas fa-server"></i></div>
                            <div class="feature-text">
                                <h4>Scalable Architecture</h4>
                                <p>Built to handle growth from day one.</p>
                            </div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-check"><i class="fas fa-users"></i></div>
                            <div class="feature-text">
                                <h4>Experienced Team & Support</h4>
                                <p>End-to-end guidance from tech experts.</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div>
                    <h3 style="font-size: 2.5rem; font-weight: 900; color: var(--text-main); margin-bottom: 2rem;">Our Results</h3>
                    <div class="stats-grid">
                        <div class="stat-card">
                            <div class="stat-number"><i class="fas fa-stopwatch" style="font-size:2.5rem;"></i></div>
                            <div class="stat-label">Faster Time to Market</div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-number"><i class="fas fa-tachometer-alt" style="font-size:2.5rem;"></i></div>
                            <div class="stat-label">Better Product Performance</div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-number"><i class="fas fa-dollar-sign" style="font-size:2.5rem;"></i></div>
                            <div class="stat-label">Optimized Development Cost</div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-number"><i class="fas fa-layer-group" style="font-size:2.5rem;"></i></div>
                            <div class="stat-label">Improved Scalability</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-outsourcing fade-in">
        <div class="cta-container-outsourcing">
            <h2>Launch Your Startup Today</h2>
            <p>Have a startup idea? Let's turn it into reality with our expert development services.</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-primary">
                    <i class="fas fa-calendar-check"></i> Book a Free Strategy Call
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
