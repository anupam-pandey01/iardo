<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Website Design Services - IARDO | PAN India</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Theme Colors */
            --swiggy-orange: #FC8019;
            --swiggy-dark-orange: #E07015;
            --swiggy-light-orange: #FF9633;
            --swiggy-red: #D93F21;
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8f9fa; /* Very light gray */
            --text-main: #111111; /* Pure dark for headings */
            --text-muted: #333333; /* Dark gray for paragraphs (highly visible) */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color);
            color: var(--text-main);
            line-height: 1.7;
            overflow-x: hidden;
            font-weight: 500;
        }

        /* Hero Section */
        .hero {
            min-height: 90vh;
            background: linear-gradient(135deg, #ffffff 0%, #fff5ee 50%, #ffffff 100%);
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(252, 128, 25, 0.08), transparent);
            border-radius: 50%;
            top: -400px;
            right: -300px;
            animation: pulse 8s infinite ease-in-out;
        }

        .hero::after {
            content: '';
            position: absolute;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(217, 63, 33, 0.08), transparent);
            border-radius: 50%;
            bottom: -300px;
            left: -200px;
            animation: pulse 6s infinite ease-in-out reverse;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.5; }
            50% { transform: scale(1.1); opacity: 0.8; }
        }

        .hero-container {
            max-width: 1400px;
            margin: 0 auto;
            /* YAHAN CHANGE KIYA HAI - Top padding ko 8rem kar diya taaki text niche aa jaye */
            padding: 8rem 2rem 4rem 2rem; 
            display: grid;
            grid-template-columns: 1.2fr 1fr;
            gap: 5rem;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        .hero-content h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            font-weight: 900;
            color: var(--text-main);
            line-height: 1.2;
            margin-bottom: 1.5rem;
        }

        .hero-content .highlight {
            color: var(--swiggy-orange);
            display: inline-block;
        }

        .animated-heading {
            overflow: hidden;
        }

        .animated-heading .word {
            display: inline-block;
            opacity: 0;
            transform: translateY(50px);
            animation: slideUp 0.6s ease forwards;
        }

        .animated-heading .word-highlight {
            display: inline-block;
            opacity: 0;
            transform: scale(0.5);
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
        }

        @keyframes slideUp {
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes popIn {
            0% { opacity: 0; transform: scale(0.5) rotate(-5deg); }
            70% { transform: scale(1.1) rotate(2deg); }
            100% { opacity: 1; transform: scale(1) rotate(0deg); }
        }

        .animated-heading .word:nth-child(1) { animation-delay: 0.1s; }
        .animated-heading .word:nth-child(2) { animation-delay: 0.2s; }
        .animated-heading .word:nth-child(3) { animation-delay: 0.3s; }
        .animated-heading .word:nth-child(4) { animation-delay: 0.4s; }
        .animated-heading .word:nth-child(5) { animation-delay: 0.5s; }
        .animated-heading .word-highlight:nth-child(6) { animation-delay: 0.6s; }
        .animated-heading .word:nth-child(7) { animation-delay: 0.8s; }
        .animated-heading .word:nth-child(8) { animation-delay: 0.9s; }
        .animated-heading .word:nth-child(9) { animation-delay: 1s; }

        .hero-content p {
            font-size: 1.15rem;
            font-weight: 600;
            color: var(--text-muted);
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .stat-item {
            background: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            min-height: 80px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
        }

        .stat-item:hover {
            transform: translateY(-5px);
            border-color: var(--swiggy-orange);
            box-shadow: 0 10px 30px rgba(252, 128, 25, 0.15);
        }

        .stat-number {
            font-size: 1.3rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            line-height: 1.4;
            display: block;
            width: 100%;
        }

        .stat-label {
            font-size: 0.95rem;
            font-weight: 700;
            margin-top: 4px;
            color: var(--text-muted);
        }

        .hero-buttons {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-weight: 700;
            font-size: 1.1rem;
            text-decoration: none;
            transition: all 0.4s;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
            position: relative;
            overflow: hidden;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-dark-orange));
            color: white;
            box-shadow: 0 8px 30px rgba(252, 128, 25, 0.3);
        }

        .btn-primary::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: var(--swiggy-red);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }

        .btn-primary:hover::before {
            width: 400px;
            height: 400px;
        }

        .btn-primary span,
        .btn-primary i {
            position: relative;
            z-index: 1;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            color: white;
            box-shadow: 0 12px 40px rgba(252, 128, 25, 0.4);
        }

        .btn-secondary {
            background: transparent;
            color: var(--swiggy-dark-orange);
            border: 3px solid var(--swiggy-orange);
        }

        .btn-secondary:hover {
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-light-orange));
            color: white;
            transform: translateY(-3px);
            border-color: var(--swiggy-light-orange);
            box-shadow: 0 10px 30px rgba(252, 128, 25, 0.2);
        }

        .hero-image {
            position: relative;
            animation: float-image 6s infinite ease-in-out;
        }

        @keyframes float-image {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        .hero-image img {
            width: 100%;
            border-radius: 30px;
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(0,0,0,0.05);
        }

        /* Trust Badges */
        .trust-badges {
            background: var(--section-bg);
            padding: 3rem 2rem;
            text-align: center;
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
        }

        .badges-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-around;
            align-items: center;
            gap: 3rem;
            flex-wrap: wrap;
        }

        .badge {
            display: flex;
            align-items: center;
            gap: 1rem;
            font-weight: 700;
            font-size: 1.1rem;
            color: var(--text-main);
        }

        .badge-icon {
            font-size: 2.5rem;
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* Why Choose Section */
        .why-choose {
            padding: 6rem 2rem;
            background: var(--bg-color);
        }

        .section-header {
            text-align: center;
            max-width: 900px;
            margin: 0 auto 5rem;
        }

        .section-header h2 {
            font-size: clamp(2.2rem, 5vw, 3.5rem);
            font-weight: 900;
            color: var(--text-main);
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }

        .section-header .subtitle {
            font-size: 1.2rem;
            font-weight: 600;
            color: var(--text-muted);
        }

        .intro-text {
            max-width: 1000px;
            margin: 0 auto 4rem;
            font-size: 1.1rem;
            font-weight: 500;
            line-height: 1.9;
            color: var(--text-muted);
            text-align: center;
        }

        .features-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 3rem;
        }

        .feature-card {
            background: var(--card-bg);
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
            border: 1px solid var(--border-color);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--swiggy-orange), var(--swiggy-red));
            transform: scaleX(0);
            transition: transform 0.4s;
            transform-origin: left;
        }

        .feature-card:hover::before {
            transform: scaleX(1);
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
            border-color: rgba(252, 128, 25, 0.3);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, rgba(252, 128, 25, 0.1), rgba(217, 63, 33, 0.1));
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            margin-bottom: 2rem;
            transition: all 0.4s;
            color: var(--swiggy-orange);
            border: 1px solid rgba(252, 128, 25, 0.2);
        }

        .feature-card:hover .feature-icon {
            transform: scale(1.1) rotate(5deg);
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            color: white;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: var(--text-main);
        }

        .feature-card p {
            color: var(--text-muted);
            line-height: 1.7;
            font-size: 1rem;
            font-weight: 500;
        }

        /* Who Benefits Section */
        .who-benefits {
            padding: 6rem 2rem;
            background: var(--section-bg);
        }

        .benefits-grid {
            max-width: 1400px;
            margin: 3rem auto 0;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
        }

        .benefit-card {
            background: var(--card-bg);
            padding: 3rem 2rem;
            border-radius: 20px;
            text-align: center;
            border: 1px solid var(--border-color);
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
            transition: all 0.4s;
        }

        .benefit-card:hover {
            transform: translateY(-10px);
            border-color: rgba(252, 128, 25, 0.3);
            box-shadow: 0 15px 40px rgba(0,0,0,0.08);
        }

        .benefit-icon {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            display: block;
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .benefit-card h4 {
            font-size: 1.4rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: var(--text-main);
        }

        .benefit-card p {
            color: var(--text-muted);
            line-height: 1.7;
            font-weight: 500;
        }

        /* Trust Section */
        .trust-section {
            padding: 6rem 2rem;
            background: var(--bg-color);
        }

        .trust-grid {
            max-width: 1200px;
            margin: 3rem auto 0;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2.5rem;
        }

        .trust-item {
            text-align: center;
            padding: 2.5rem 2rem;
            background: rgba(252, 128, 25, 0.03);
            border-radius: 20px;
            border: 1px solid rgba(252, 128, 25, 0.15);
            transition: all 0.3s;
        }

        .trust-item:hover {
            transform: translateY(-5px);
            border-color: var(--swiggy-orange);
            background: #fff;
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
        }

        .trust-item h4 {
            font-size: 1.3rem;
            font-weight: 800;
            color: var(--swiggy-dark-orange);
            margin-bottom: 1rem;
        }

        .trust-item p {
            color: var(--text-muted);
            line-height: 1.7;
            font-weight: 500;
        }

        /* CTA Section */
        .cta {
            padding: 7rem 2rem;
            background: linear-gradient(135deg, var(--swiggy-orange), var(--swiggy-red));
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .cta::before {
            content: '';
            position: absolute;
            font-size: 15rem;
            opacity: 0.1;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 200px;
            height: 200px;
            animation: rotate 20s linear infinite;
        }

        @keyframes rotate {
            from { transform: translate(-50%, -50%) rotate(0deg); }
            to { transform: translate(-50%, -50%) rotate(360deg); }
        }

        .cta-content {
            max-width: 900px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        .cta h2 {
            font-size: clamp(2.2rem, 5vw, 3.5rem);
            font-weight: 900;
            color: #ffffff;
            margin-bottom: 1.5rem;
        }

        .cta p {
            font-size: 1.3rem;
            font-weight: 600;
            color: rgba(255,255,255,0.9);
            margin-bottom: 3rem;
        }

        .cta-buttons {
            display: flex;
            gap: 2rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn-cta {
            background: #ffffff;
            color: var(--swiggy-red);
            padding: 1.5rem 3.5rem;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: 800;
            text-decoration: none;
            transition: all 0.4s;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            display: inline-flex;
            align-items: center;
            gap: 1rem;
        }

        .btn-cta:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            color: var(--swiggy-dark-orange);
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero-container {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 3rem;
            }
            .hero-stats { grid-template-columns: repeat(3, 1fr); }
            .hero-buttons { justify-content: center; }
            .hero-image { order: -1; }
        }

        @media (max-width: 768px) {
            .hero { min-height: auto; padding: 2rem 0; }
            .hero-container { padding: 6rem 1rem 2rem 1rem; gap: 2rem; } /* Mobile par bhi thoda upar se space choda hai */
            .hero-content h1 { font-size: 2rem; }
            .hero-content p { font-size: 1rem; }
            .hero-stats { grid-template-columns: 1fr; gap: 1rem; }
            .stat-item { padding: 15px; min-height: 70px; }
            .stat-number { font-size: 1.1rem; }
            .stat-label { font-size: 0.9rem; }
            .hero-buttons { flex-direction: column; gap: 1rem; }
            .btn { padding: 1rem 2rem; font-size: 1rem; width: 100%; justify-content: center; }
            .badges-container { gap: 1.5rem; }
            .badge { flex-direction: column; gap: 0.5rem; text-align: center; }
            .badge-icon { font-size: 2rem; }
            .features-grid { grid-template-columns: 1fr; gap: 2rem; }
            .feature-card { padding: 2rem; }
            .feature-icon { width: 70px; height: 70px; font-size: 2.2rem; }
            .feature-card h3 { font-size: 1.3rem; }
            .benefits-grid { grid-template-columns: 1fr; gap: 2rem; }
            .benefit-card { padding: 2rem 1.5rem; }
            .benefit-icon { font-size: 2.5rem; }
            .trust-grid { grid-template-columns: 1fr; gap: 1.5rem; }
            .trust-item { padding: 2rem 1.5rem; }
            .section-header h2 { font-size: 1.8rem; }
            .section-header .subtitle { font-size: 1rem; }
            .intro-text { font-size: 1rem; }
            .cta { padding: 4rem 1rem; }
            .cta h2 { font-size: 1.8rem; }
            .cta p { font-size: 1.1rem; }
            .btn-cta { padding: 1.2rem 2.5rem; font-size: 1.1rem; width: 100%; justify-content: center; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../../includes/navbar/navbar.jsp" />
    
    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">Transform</span> 
                    <span class="word">Your</span> 
                    <span class="word">Business</span> 
                    <span class="word">with</span> 
                    <span class="word-highlight">Professional</span> 
                    <span class="word-highlight">Website Design</span> 
                    <span class="word">Services</span>
                </h1>
                <p>IARDO delivers cutting-edge <span class="highlight">Website Design & Development</span> Services across PAN India to help you establish a powerful online presence and drive business growth with stunning, responsive websites.</p>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">500+</span>
                        <span class="stat-label">Websites Created</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">7 Days</span>
                        <span class="stat-label">Quick Delivery</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">100%</span>
                        <span class="stat-label">Client Satisfaction</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        <span><i class="fas fa-rocket"></i> Start Your Project</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> View Portfolio</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1467232004584-a241de8bcf5d?auto=format&fit=crop&w=800&q=80" alt="Website Design Services">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>Modern Designs</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Loading</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-star"></i></span>
                <span>Mobile Responsive</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>SEO Optimized</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Why Choose IARDO for Website Design Services?</h2>
            <p class="subtitle">Comprehensive web solutions tailored to your business needs</p>
        </div>
        
        <div class="intro-text">
            <p>In today's digital age, having a professional website is crucial for business success. IARDO's Website Design Services combine creativity, functionality, and the latest technology to deliver websites that not only look stunning but also drive real business results. We create digital experiences that engage your audience and convert visitors into customers.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-paint-brush"></i></div>
                <h3>Custom Website Design</h3>
                <p>We create unique, brand-focused designs that reflect your business identity. Every website is custom-built from scratch to match your vision and stand out from competitors.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Responsive Development</h3>
                <p>All our websites are fully responsive and optimized for seamless viewing across all devices - desktop, tablet, and mobile. Your site will look perfect everywhere.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>SEO Optimization</h3>
                <p>Built-in SEO best practices ensure your website ranks well on search engines. We optimize code, content, and structure to improve your online visibility and organic traffic.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shopping-cart"></i></div>
                <h3>E-commerce Solutions</h3>
                <p>Full-featured online stores with secure payment gateways, inventory management, and user-friendly shopping experiences that maximize conversions and sales.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tachometer-alt"></i></div>
                <h3>Performance Optimization</h3>
                <p>Lightning-fast loading speeds and optimized performance ensure better user experience, higher engagement rates, and improved search engine rankings.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-lock"></i></div>
                <h3>Security & SSL Integration</h3>
                <p>We implement robust security measures including SSL certificates, secure hosting, regular backups, and protection against cyber threats to keep your website safe.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-edit"></i></div>
                <h3>Content Management System</h3>
                <p>Easy-to-use CMS platforms that let you update content, add pages, and manage your website without technical knowledge. Full training provided.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Can Benefit from Our Website Design Services?</h2>
            <p class="subtitle">Perfect solutions for every business type and industry</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-briefcase"></i></span>
                <h4>Small & Medium Businesses</h4>
                <p>Establish your online presence with professional websites that showcase your products and services, build credibility, and attract new customers effectively.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>E-commerce Retailers</h4>
                <p>Launch powerful online stores with seamless shopping experiences, secure payments, and features designed to maximize sales and customer satisfaction.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-user-tie"></i></span>
                <h4>Startups & Entrepreneurs</h4>
                <p>Get your business off the ground with affordable, scalable websites that grow with your company and make a strong first impression on potential investors and customers.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Businesses Trust IARDO</h2>
            <p class="subtitle">Your reliable partner for exceptional web design and development</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>Proven Track Record</h4>
                <p>With over 500 successful projects delivered, we have the experience and expertise to handle websites of any complexity and scale for businesses across industries.</p>
            </div>
            <div class="trust-item">
                <h4>Latest Technologies</h4>
                <p>We use cutting-edge technologies and frameworks including React, Angular, WordPress, and custom solutions to build modern, future-proof websites.</p>
            </div>
            <div class="trust-item">
                <h4>End-to-End Support</h4>
                <p>From initial consultation to design, development, launch, and ongoing maintenance, we provide complete support throughout your website's lifecycle.</p>
            </div>
            <div class="trust-item">
                <h4>Affordable Pricing</h4>
                <p>High-quality websites at competitive prices. We offer flexible packages and payment plans designed to fit businesses of all sizes and budgets.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Ready to Launch Your Dream Website?</h2>
            <p>Let IARDO create a stunning, high-performing website that drives your business forward!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Get Your Free Quote Today</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
