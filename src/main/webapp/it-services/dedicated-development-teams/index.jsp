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
    
    <title>Dedicated Software Development Teams | Hire Developers | IARDO</title>
    <meta name="description" content="Hire dedicated software development teams to build scalable applications faster. Get expert developers for web, mobile, and custom software projects.">
    <meta name="keywords" content="dedicated software development team, hire developers, dedicated development team, software outsourcing, hire dedicated team">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors */
            --primary: #2563EB;        /* Royal Blue */
            --primary-dark: #1E40AF;   
            --secondary: #7C3AED;      /* Purple */
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light blue/gray tint */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #2563EB, #7C3AED);
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
        .hero-section {
            min-height: 90vh;
            display: flex;
            align-items: center;
            padding: 8rem 5% 4rem; /* Adjusted top padding to clear navbar */
            background: linear-gradient(135deg, #ffffff 0%, #f0f4ff 100%) !important;
            position: relative;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(37, 99, 235, 0.06), transparent);
            border-radius: 50%;
            top: -400px;
            right: -300px;
            animation: pulse 8s infinite ease-in-out;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.5; }
            50% { transform: scale(1.1); opacity: 0.8; }
        }

        .hero-content-wrapper {
            max-width: 1400px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero-content-wrapper h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            font-weight: 900 !important;
            color: var(--text-main) !important;
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }

        .hero-content-wrapper h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: block;
        }

        .hero-content-wrapper p {
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
            box-shadow: 0 8px 25px rgba(37, 99, 235, 0.3);
        }

        .hero-cta-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(37, 99, 235, 0.5);
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
            font-size: 1.15rem;
            font-weight: 600 !important;
            color: var(--text-muted) !important;
            line-height: 1.9;
        }

        /* Process/Benefits Section */
        .features-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .features-container {
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
            display: inline-block;
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

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 3rem;
            margin-top: 3rem;
        }

        .feature-card {
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
        
        .feature-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 4px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: 0.4s;
            transform-origin: left;
        }

        .feature-card:hover::before { transform: scaleX(1); }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(37, 99, 235, 0.1);
            border-color: var(--primary);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 2rem;
            background: rgba(37, 99, 235, 0.1) !important;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.4s;
            color: var(--primary) !important;
            font-weight: 900;
            font-size: 2rem;
        }

        .feature-card:hover .feature-icon {
            background: var(--gradient-primary) !important;
            color: white !important;
            transform: scale(1.1) rotate(5deg);
        }

        .feature-card i {
            font-size: 2.5rem;
        }

        .feature-title {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }
        
        .feature-card p {
            color: var(--text-muted) !important;
            font-weight: 500 !important;
        }

        /* Expertise/Services Section */
        .services-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2.5rem;
        }

        .service-card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            padding: 2.5rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .service-card:hover {
            border-color: var(--primary) !important;
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(37, 99, 235, 0.1);
        }

        .service-card i {
            font-size: 2.5rem;
            color: var(--primary) !important;
            margin-bottom: 1.5rem;
            display: block;
        }

        .service-card h4 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 1rem;
        }

        .service-card ul {
            list-style: none;
            margin-top: 1rem;
        }
        
        .service-card ul li {
            color: var(--text-muted) !important;
            font-weight: 600 !important;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .service-card ul li::before {
            content: '\f058'; /* FontAwesome check-circle */
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            color: var(--secondary);
        }

        /* Why Choose Us & Layout Section */
        .split-section {
            padding: 6rem 5%;
            background: var(--bg-color) !important;
        }

        .split-layout {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 5rem;
            align-items: center;
            margin-top: 4rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .split-content h3 {
            font-size: 2.5rem;
            font-weight: 900 !important;
            color: var(--text-main) !important;
            margin-bottom: 2rem;
        }

        .list-item {
            display: flex;
            align-items: flex-start;
            gap: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .list-check {
            flex-shrink: 0;
            width: 50px;
            height: 50px;
            background: var(--gradient-primary) !important;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .list-check i {
            color: white !important;
            font-size: 1.2rem;
        }

        .list-text h4 {
            font-size: 1.3rem;
            font-weight: 800 !important;
            color: var(--text-main) !important;
            margin-bottom: 0.5rem;
        }

        .list-text p {
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
            box-shadow: 0 10px 30px rgba(37, 99, 235, 0.1);
        }

        .stat-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
            display: block;
        }

        .stat-label {
            font-size: 1.1rem;
            color: var(--text-main) !important;
            font-weight: 800 !important;
        }

        /* CTA Section */
        .cta-section {
            padding: 7rem 5%;
            background: var(--gradient-primary) !important;
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .cta-section::before {
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

        .cta-wrapper {
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .cta-wrapper h2 {
            font-size: clamp(2.5rem, 5vw, 4rem);
            font-weight: 900 !important;
            color: #ffffff !important;
            margin-bottom: 1.5rem;
        }

        .cta-wrapper p {
            font-size: 1.3rem;
            font-weight: 600 !important;
            color: rgba(255,255,255,0.95) !important;
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .cta-btn-primary {
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

        .cta-btn-primary:hover {
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
            .hero-section { padding: 8rem 5% 4rem; }
            .intro-container, .split-layout { grid-template-columns: 1fr; gap: 3rem; text-align: center; }
            .list-item { text-align: left; }
        }

        @media (max-width: 768px) {
            .hero-section { padding: 6rem 1rem 3rem; }
            .hero-cta-buttons { flex-direction: column; width: 100%; }
            .hero-cta-primary, .hero-cta-secondary { width: 100%; justify-content: center; }
            .intro-section, .features-section, .services-section, .split-section, .cta-section { padding: 4rem 1.5rem; }
            .intro-title, .section-title { font-size: 2rem !important; }
            .stats-grid { grid-template-columns: 1fr; }
            .cta-wrapper h2 { font-size: 2.2rem !important; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero-section">
        <div class="hero-content-wrapper">
            <h1>
                Dedicated Software Development Teams 
                <span>Scale Your Development Faster</span>
            </h1>
            <p>
                A dedicated software development team is a group of skilled developers, designers, and project managers who work exclusively on your project. It acts as an extension of your in-house team, helping you build, manage, and scale software efficiently.
            </p>
            <div class="hero-cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="hero-cta-primary">
                    <i class="fas fa-rocket"></i> Hire Dedicated Team
                </a>
                <a href="#services" class="hero-cta-secondary">
                    <i class="fas fa-list"></i> Our Services
                </a>
            </div>
        </div>
    </section>

    <section class="intro-section fade-in" id="about">
        <div class="intro-container">
            <div>
                <h2 class="intro-title">What is a Dedicated Development Team?</h2>
            </div>
            <div>
                <p class="intro-description">
                    A dedicated software development team is a group of skilled developers, designers, and project managers who work exclusively on your project. It acts as an extension of your in-house team, helping you build, manage, and scale software efficiently. With a dedicated team model, businesses get flexibility, faster development, and full control over projects.
                </p>
            </div>
        </div>
    </section>

    <section class="features-section fade-in">
        <div class="features-container">
            <div class="section-header">
                <span class="section-subtitle">The Impact</span>
                <h2 class="section-title">Why Dedicated Development Teams are Important?</h2>
                <p class="section-desc">Dedicated teams help businesses scale development without hiring hassles.</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-bolt"></i></div>
                    <h3 class="feature-title">Faster Project Execution</h3>
                    <p>Accelerate your development cycle and bring your products to market quicker.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-laptop-code"></i></div>
                    <h3 class="feature-title">Access to Skilled Developers</h3>
                    <p>Tap into a global pool of expert engineers and technology specialists instantly.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-piggy-bank"></i></div>
                    <h3 class="feature-title">Cost-Effective Hiring</h3>
                    <p>Eliminate recruitment overhead, training costs, and infrastructure expenses.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-sync-alt"></i></div>
                    <h3 class="feature-title">Full Control & Flexibility</h3>
                    <p>Manage your team directly and scale resources up or down based on project needs.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-rocket"></i></div>
                    <h3 class="feature-title">Faster Time to Market</h3>
                    <p>Streamlined agile processes ensure rapid deployment and continuous delivery.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="services-section fade-in" id="services">
        <div class="services-container" style="max-width: 1400px; margin: 0 auto;">
            <div class="section-header">
                <span class="section-subtitle">What We Provide</span>
                <h2 class="section-title">Our Dedicated Development Services</h2>
                <p class="section-desc">We provide complete development team solutions tailored to your business goals.</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <i class="fas fa-code"></i>
                    <h4>Custom Software Development</h4>
                    <ul>
                        <li>Web & mobile app development</li>
                        <li>Enterprise software solutions</li>
                        <li>SaaS product development</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-layer-group"></i>
                    <h4>Frontend & Backend Development</h4>
                    <ul>
                        <li>UI/UX development</li>
                        <li>API development</li>
                        <li>Database management</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-cubes"></i>
                    <h4>Full-Stack Development</h4>
                    <ul>
                        <li>End-to-end development</li>
                        <li>Scalable architecture</li>
                        <li>Performance optimization</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-users-cog"></i>
                    <h4>Agile Development Teams</h4>
                    <ul>
                        <li>Scrum-based workflow</li>
                        <li>Continuous delivery</li>
                        <li>Fast iterations</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-tools"></i>
                    <h4>Maintenance & Support</h4>
                    <ul>
                        <li>Bug fixing</li>
                        <li>Performance monitoring</li>
                        <li>Ongoing support</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="features-section fade-in">
        <div class="features-container">
            <div class="section-header">
                <span class="section-subtitle">How It Works</span>
                <h2 class="section-title">Our Development Process</h2>
                <p class="section-desc">We ensure smooth, scalable, and high-quality development.</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">1</div>
                    <h3 class="feature-title">Requirement Analysis</h3>
                    <p>We understand your technical requirements and project scope.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">2</div>
                    <h3 class="feature-title">Team Allocation</h3>
                    <p>We handpick the best developers suited for your specific needs.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">3</div>
                    <h3 class="feature-title">Project Planning</h3>
                    <p>Creating agile roadmaps and defining clear milestones.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">4</div>
                    <h3 class="feature-title">Development & Testing</h3>
                    <p>Writing clean code and performing rigorous QA testing.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">5</div>
                    <h3 class="feature-title">Deployment & Support</h3>
                    <p>Launching the product and providing ongoing maintenance.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="split-section fade-in">
        <div class="features-container" style="max-width: 1400px; margin: 0 auto;">
            <div class="section-header">
                <h2 class="section-title">Dedicated Teams for Business & Startups</h2>
                <p class="section-desc">We help businesses build Ecommerce platforms, Mobile applications, SaaS products, Business automation tools, and Custom enterprise solutions. <br><strong>Result: Faster development + scalable products + reduced cost.</strong></p>
            </div>
            
            <div class="split-layout">
                <div class="split-content">
                    <h3>Why Choose Us?</h3>
                    <div class="feature-list">
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-user-tie"></i></div>
                            <div class="list-text">
                                <h4>Experienced Developers</h4>
                                <p>Pre-vetted, highly skilled professionals ready to code.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-stopwatch"></i></div>
                            <div class="list-text">
                                <h4>Fast Onboarding</h4>
                                <p>Get your dedicated team up and running in days, not months.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-sitemap"></i></div>
                            <div class="list-text">
                                <h4>Scalable Team Structure</h4>
                                <p>Add or reduce resources instantly based on project demands.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-microchip"></i></div>
                            <div class="list-text">
                                <h4>Latest Technologies</h4>
                                <p>Expertise in modern frameworks, cloud, and AI solutions.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-comments"></i></div>
                            <div class="list-text">
                                <h4>Transparent Communication</h4>
                                <p>Direct collaboration with your team via daily syncs and modern tools.</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div>
                    <h3 style="font-size: 2.5rem; font-weight: 900; color: var(--text-main); margin-bottom: 2rem;">Our Results</h3>
                    <div class="stats-grid">
                        <div class="stat-card">
                            <i class="fas fa-rocket stat-icon"></i>
                            <div class="stat-label">Faster Project Delivery</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-gem stat-icon"></i>
                            <div class="stat-label">Improved Product Quality</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-hand-holding-usd stat-icon"></i>
                            <div class="stat-label">Reduced Hiring Costs</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-expand-arrows-alt stat-icon"></i>
                            <div class="stat-label">Better Scalability</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section fade-in">
        <div class="cta-wrapper">
            <h2>Hire Dedicated Development Team Today</h2>
            <p>Looking to scale your development team quickly? Build your product faster with our expert engineers.</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-btn-primary">
                    <i class="fas fa-calendar-check"></i> Contact Us Today
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
