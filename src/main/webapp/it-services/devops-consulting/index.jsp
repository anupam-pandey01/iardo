<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>DevOps Consulting Services | Accelerate Development & Deployment | IARDO</title>
    <meta name="description" content="Get expert DevOps consulting services to streamline software development and IT operations. Accelerate delivery with CI/CD, cloud management, and automation.">
    <meta name="keywords" content="DevOps consulting services, CI/CD pipeline, cloud infrastructure management, DevSecOps, DevOps automation">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors for DevOps */
            --primary-orange: #FF5722;   
            --dark-orange: #E64A19;
            --primary-green: #10B981;    
            --dark-green: #059669;
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light slate */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #FF5722, #10B981);
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
        .hero-devops {
            min-height: 90vh;
            display: flex;
            align-items: center;
            padding: 8rem 5% 4rem; /* Adjusted top padding to clear navbar */
            background: linear-gradient(135deg, #ffffff 0%, #fff5f2 100%) !important;
            position: relative;
            overflow: hidden;
        }

        .hero-devops::before {
            content: '';
            position: absolute;
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(255, 87, 34, 0.06), transparent);
            border-radius: 50%;
            top: -400px;
            right: -300px;
            animation: pulse 8s infinite ease-in-out;
        }

        .hero-devops::after {
            content: '';
            position: absolute;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(16, 185, 129, 0.06), transparent);
            border-radius: 50%;
            bottom: -300px;
            left: -200px;
            animation: pulse 6s infinite ease-in-out reverse;
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

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 0.7rem;
            padding: 0.5rem 1.5rem;
            background: rgba(255, 87, 34, 0.1);
            border: 2px solid rgba(255, 87, 34, 0.2);
            border-radius: 50px;
            color: var(--primary-orange);
            font-size: 0.95rem;
            font-weight: 800;
            margin-bottom: 2rem;
            text-transform: uppercase;
            letter-spacing: 1px;
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
            box-shadow: 0 8px 25px rgba(255, 87, 34, 0.3);
        }

        .hero-cta-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(255, 87, 34, 0.5);
        }

        .hero-cta-secondary {
            padding: 1.2rem 3rem;
            background: transparent !important;
            color: var(--primary-green) !important;
            text-decoration: none;
            font-weight: 800 !important;
            border: 3px solid var(--primary-green) !important;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-size: 1.1rem;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
        }

        .hero-cta-secondary:hover {
            background: var(--primary-green) !important;
            color: white !important;
            border-color: transparent !important;
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(16, 185, 129, 0.3);
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

        .features-section.alt-bg {
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
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
            color: var(--primary-orange) !important;
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
            box-shadow: 0 15px 40px rgba(255, 87, 34, 0.1);
            border-color: var(--primary-orange);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 2rem;
            background: rgba(255, 87, 34, 0.1) !important;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.4s;
            color: var(--primary-orange) !important;
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
            border-color: var(--primary-green) !important;
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(16, 185, 129, 0.1);
        }

        .service-card i {
            font-size: 2.5rem;
            color: var(--primary-green) !important;
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
            color: var(--primary-orange);
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
            border-color: var(--primary-orange) !important;
            transform: scale(1.05);
            background: #fff !important;
            box-shadow: 0 10px 30px rgba(255, 87, 34, 0.1);
        }

        .stat-icon {
            font-size: 2.5rem;
            color: var(--primary-orange);
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
            color: var(--primary-orange) !important;
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
            color: var(--dark-orange) !important;
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

    <section class="hero-devops hero-section">
        <div class="hero-content-wrapper">
            <div class="hero-tag">
                <i class="fas fa-infinity"></i> DEVOPS CONSULTING
            </div>
            <h1>
                DevOps Consulting Services <br>
                <span>Accelerate Development & Deployment</span>
            </h1>
            <p>
                DevOps consulting helps businesses streamline their software development and IT operations by combining development (Dev) and operations (Ops). It enables faster delivery, better collaboration, and more reliable deployments.
            </p>
            <div class="hero-cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="hero-cta-primary">
                    <i class="fas fa-rocket"></i> Start DevOps Consulting
                </a>
                <a href="#services" class="hero-cta-secondary">
                    <i class="fas fa-list"></i> Explore Services
                </a>
            </div>
        </div>
    </section>

    <section class="intro-section fade-in" id="about">
        <div class="intro-container">
            <div>
                <h2 class="intro-title">What is DevOps Consulting?</h2>
            </div>
            <div>
                <p class="intro-description">
                    DevOps consulting helps businesses streamline their software development and IT operations by combining development (Dev) and operations (Ops). It enables faster delivery, better collaboration, and more reliable deployments. With DevOps consulting services, companies can automate workflows, reduce errors, and improve overall system performance.
                </p>
            </div>
        </div>
    </section>

    <section class="features-section fade-in">
        <div class="features-container">
            <div class="section-header">
                <span class="section-subtitle">The Impact</span>
                <h2 class="section-title">Why DevOps is Important?</h2>
                <p class="section-desc">DevOps ensures smooth, efficient, and scalable software delivery.</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-shipping-fast"></i></div>
                    <h3 class="feature-title">Faster Development & Deployment</h3>
                    <p>Shorten your development cycles and deploy updates seamlessly.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-sync-alt"></i></div>
                    <h3 class="feature-title">Continuous Integration & Delivery</h3>
                    <p>Automate code testing and deployment with robust CI/CD pipelines.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-users"></i></div>
                    <h3 class="feature-title">Improved Collaboration</h3>
                    <p>Break down silos between development and operations teams.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                    <h3 class="feature-title">Faster Time to Market</h3>
                    <p>Launch products faster and stay ahead of the competition.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-piggy-bank"></i></div>
                    <h3 class="feature-title">Reduced Operational Costs</h3>
                    <p>Optimize infrastructure and resources for maximum efficiency.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="services-section fade-in" id="services">
        <div class="services-container" style="max-width: 1400px; margin: 0 auto;">
            <div class="section-header">
                <span class="section-subtitle">What We Provide</span>
                <h2 class="section-title">Our DevOps Consulting Services</h2>
                <p class="section-desc">We provide complete DevOps solutions tailored to your infrastructure.</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <i class="fas fa-code-branch"></i>
                    <h4>CI/CD Pipeline Setup</h4>
                    <ul>
                        <li>Continuous integration</li>
                        <li>Automated deployments</li>
                        <li>Faster release cycles</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-cloud"></i>
                    <h4>Cloud & Infrastructure</h4>
                    <ul>
                        <li>AWS, Azure, Google Cloud setup</li>
                        <li>Scalable infrastructure</li>
                        <li>Cost optimization</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-desktop"></i>
                    <h4>Automation & Monitoring</h4>
                    <ul>
                        <li>Workflow automation</li>
                        <li>Real-time monitoring</li>
                        <li>Performance tracking</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-box"></i>
                    <h4>Containerization & Orchestration</h4>
                    <ul>
                        <li>Docker implementation</li>
                        <li>Kubernetes setup</li>
                        <li>Scalable deployments</li>
                    </ul>
                </div>
                <div class="service-card">
                    <i class="fas fa-shield-alt"></i>
                    <h4>Security & Compliance</h4>
                    <ul>
                        <li>DevSecOps practices</li>
                        <li>Secure pipelines</li>
                        <li>Compliance management</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="features-section alt-bg fade-in">
        <div class="features-container">
            <div class="section-header">
                <span class="section-subtitle">How It Works</span>
                <h2 class="section-title">Our DevOps Process</h2>
                <p class="section-desc">We deliver fast, secure, and scalable DevOps solutions.</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">1</div>
                    <h3 class="feature-title">Requirement Analysis</h3>
                    <p>Evaluating business needs, workflows, and current bottlenecks.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">2</div>
                    <h3 class="feature-title">Infrastructure Assessment</h3>
                    <p>Auditing current systems and architecture for improvements.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">3</div>
                    <h3 class="feature-title">CI/CD Setup</h3>
                    <p>Designing and implementing automated pipelines.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">4</div>
                    <h3 class="feature-title">Automation Implementation</h3>
                    <p>Setting up infrastructure as code and orchestration.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">5</div>
                    <h3 class="feature-title">Monitoring & Optimization</h3>
                    <p>Continuous monitoring, security checks, and performance tuning.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="split-section fade-in">
        <div class="features-container" style="max-width: 1400px; margin: 0 auto;">
            <div class="section-header">
                <h2 class="section-title">DevOps for Business & Startups</h2>
                <p class="section-desc">We help businesses with Web & mobile applications, Ecommerce platforms, SaaS products, Enterprise systems, and Startup tech infrastructure. <br><strong>Result: Faster releases + better performance + scalable systems.</strong></p>
            </div>
            
            <div class="split-layout">
                <div class="split-content">
                    <h3>Why Choose Us for DevOps Consulting?</h3>
                    <div class="feature-list">
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-tachometer-alt"></i></div>
                            <div class="list-text">
                                <h4>Fast Implementation</h4>
                                <p>Rapid deployment of DevOps tools and practices without disruption.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-expand-arrows-alt"></i></div>
                            <div class="list-text">
                                <h4>Scalable Solutions</h4>
                                <p>Infrastructure designed to handle growth and traffic spikes seamlessly.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-users-cog"></i></div>
                            <div class="list-text">
                                <h4>Experienced Engineers</h4>
                                <p>Certified professionals in AWS, Azure, Docker, and Kubernetes.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-robot"></i></div>
                            <div class="list-text">
                                <h4>Automation-Driven</h4>
                                <p>Eliminating manual tasks to improve reliability and speed.</p>
                            </div>
                        </div>
                        <div class="list-item">
                            <div class="list-check"><i class="fas fa-headset"></i></div>
                            <div class="list-text">
                                <h4>End-to-End Support</h4>
                                <p>Ongoing maintenance, monitoring, and dedicated assistance.</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div>
                    <h3 style="font-size: 2.5rem; font-weight: 900; color: var(--text-main); margin-bottom: 2rem;">Our Results</h3>
                    <div class="stats-grid">
                        <div class="stat-card">
                            <i class="fas fa-forward stat-icon"></i>
                            <div class="stat-label">Faster Deployment Cycles</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-microchip stat-icon"></i>
                            <div class="stat-label">Improved System Performance</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-money-bill-wave stat-icon"></i>
                            <div class="stat-label">Reduced Infrastructure Costs</div>
                        </div>
                        <div class="stat-card">
                            <i class="fas fa-shield-check stat-icon"></i>
                            <div class="stat-label">Better Reliability & Uptime</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section fade-in">
        <div class="cta-wrapper">
            <h2>Start DevOps Consulting Today</h2>
            <p>Want to speed up your development and deployment? Connect with our experts to transform your IT operations.</p>
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
