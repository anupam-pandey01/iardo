<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="IARDO provides expert SEO services for ecommerce and seller onboarding businesses. Rank higher on Google for amazon seller onboarding, flipkart seller onboarding, blinkit onboarding and quick commerce keywords across PAN India.">
    <meta name="keywords" content="SEO services for ecommerce, seller onboarding SEO, amazon seller onboarding SEO, ecommerce onboarding services, quick commerce SEO, marketplace onboarding SEO, PAN India SEO">
    <title>SEO Services for Ecommerce & Seller Onboarding – Rank & Grow Your Business | IARDO</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* SEO Professional Color Scheme */
            --seo-primary: #0066FF;        /* Vibrant Blue */
            --seo-secondary: #00C853;      /* Success Green */
            --seo-dark-blue: #003D99;      
            --seo-light-blue: #4D94FF;     
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f4f7f6; /* Very light gray/blue tint for sections */
            --text-main: #111111; /* Pure dark for headings */
            --text-muted: #333333; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #0066FF, #00C853);
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--bg-color);
            color: var(--text-main);
            line-height: 1.7;
            overflow-x: hidden;
            font-weight: 500; /* Increased base weight */
        }

        /* Hero Section */
        .hero {
            min-height: 90vh;
            background: linear-gradient(135deg, #ffffff 0%, #eef3f8 100%);
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
            background: radial-gradient(circle, rgba(0, 102, 255, 0.05), transparent);
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
            background: radial-gradient(circle, rgba(0, 200, 83, 0.05), transparent);
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
            /* Padding increased on top to push content below Navbar */
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
            color: var(--seo-primary);
            display: inline-block;
            font-weight: 800;
        }

        /* Animated Heading Styles */
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
            background: var(--gradient-primary);
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
        .animated-heading .word-highlight:nth-child(4) { animation-delay: 0.4s; }
        .animated-heading .word:nth-child(5) { animation-delay: 0.5s; }
        .animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
        .animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
        .animated-heading .word:nth-child(8) { animation-delay: 0.8s; }
        .animated-heading .word:nth-child(9) { animation-delay: 0.9s; }
        .animated-heading .word:nth-child(10) { animation-delay: 1.0s; }
        .animated-heading .word-highlight:nth-child(11) { animation-delay: 1.1s; }
        .animated-heading .word:nth-child(12) { animation-delay: 1.2s; }
        .animated-heading .word:nth-child(13) { animation-delay: 1.3s; }

        .hero-content p {
            font-size: 1.15rem;
            font-weight: 600; /* Bold paragraph */
            color: var(--text-muted);
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
            margin-bottom: 3rem;
        }

        /* Stat item styling */
        .stat-item {
            background: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 15px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
            transition: all 0.3s ease;
        }

        .stat-item:hover {
            transform: translateY(-5px);
            border-color: var(--seo-primary);
            box-shadow: 0 10px 30px rgba(0, 102, 255, 0.15);
        }

        .stat-number {
            font-size: 1.1rem;
            font-weight: 800;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-buttons {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 1.2rem 2.5rem;
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
            background: var(--gradient-primary);
            color: white;
            box-shadow: 0 8px 25px rgba(0, 102, 255, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 35px rgba(0, 102, 255, 0.5);
        }

        .btn-secondary {
            background: transparent;
            color: var(--seo-primary);
            border: 3px solid var(--seo-primary);
        }

        .btn-secondary:hover {
            background: var(--gradient-primary);
            color: white;
            transform: translateY(-3px);
            border-color: transparent;
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
            box-shadow: 0 30px 80px rgba(0,0,0,0.1);
            border: 1px solid var(--border-color);
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
            background: var(--gradient-primary);
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
            margin: 0 auto 4rem;
        }

        .section-header h2 {
            font-size: clamp(2.2rem, 4vw, 3.5rem);
            font-weight: 900;
            color: var(--text-main);
            margin-bottom: 1rem;
            line-height: 1.2;
        }

        .section-header .subtitle {
            font-size: 1.2rem;
            font-weight: 600;
            color: var(--seo-primary);
        }

        .intro-text {
            max-width: 1000px;
            margin: 0 auto 4rem;
            font-size: 1.15rem;
            font-weight: 600;
            line-height: 1.8;
            color: var(--text-muted);
            text-align: center;
        }

        .features-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 3rem;
        }

        .feature-card {
            background: var(--card-bg);
            padding: 3rem 2rem;
            border-radius: 20px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
            transition: all 0.4s;
            border: 1px solid var(--border-color);
            position: relative;
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
            box-shadow: 0 15px 40px rgba(0, 102, 255, 0.1);
            border-color: var(--seo-light-blue);
        }

        .feature-icon {
            width: 70px; height: 70px;
            background: rgba(0, 102, 255, 0.1);
            border-radius: 15px;
            display: flex; align-items: center; justify-content: center;
            font-size: 2.2rem;
            margin-bottom: 1.5rem;
            color: var(--seo-primary);
            transition: 0.4s;
        }

        .feature-card:hover .feature-icon {
            background: var(--gradient-primary);
            color: white;
            transform: scale(1.1) rotate(5deg);
        }

        .feature-card h3 {
            font-size: 1.4rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: var(--text-main);
        }

        .feature-card p {
            color: var(--text-muted);
            line-height: 1.7;
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
            border-color: var(--seo-primary);
            box-shadow: 0 15px 40px rgba(0,0,0,0.08);
        }

        .benefit-icon {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            display: block;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .benefit-card h4 {
            font-size: 1.3rem;
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
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2.5rem;
        }

        .trust-item {
            text-align: left;
            padding: 2.5rem;
            background: var(--card-bg);
            border-radius: 20px;
            border: 1px solid var(--border-color);
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
            transition: all 0.3s;
        }

        .trust-item:hover {
            transform: translateY(-5px);
            border-color: var(--seo-primary);
            box-shadow: 0 10px 30px rgba(0, 102, 255, 0.1);
        }

        .trust-item h4 {
            font-size: 1.25rem;
            font-weight: 800;
            color: var(--seo-primary);
            margin-bottom: 1rem;
        }

        .trust-item p {
            color: var(--text-muted);
            line-height: 1.7;
            font-weight: 600;
        }

        /* CTA Section */
        .cta {
            padding: 7rem 2rem;
            background: var(--gradient-primary);
            text-align: center;
            position: relative;
            overflow: hidden;
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
            color: rgba(255,255,255,0.95);
            margin-bottom: 3rem;
        }

        .cta-buttons {
            display: flex;
            justify-content: center;
        }

        .btn-cta {
            background: #ffffff;
            color: var(--seo-primary);
            padding: 1.5rem 3.5rem;
            border-radius: 50px;
            font-size: 1.2rem;
            font-weight: 800;
            text-decoration: none;
            transition: all 0.4s;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            display: inline-flex;
            align-items: center;
            gap: 1rem;
        }

        .btn-cta:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            color: var(--seo-dark-blue);
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero-container { grid-template-columns: 1fr; text-align: center; gap: 3rem; padding-top: 7rem;}
            .hero-stats { grid-template-columns: repeat(3, 1fr); }
            .hero-buttons { justify-content: center; }
            .hero-image { order: -1; }
        }

        @media (max-width: 768px) {
            .hero { min-height: auto; padding: 2rem 0; }
            .hero-container { padding: 6rem 1rem 2rem 1rem; gap: 2rem; }
            .hero-content h1 { font-size: 2.2rem; }
            .hero-content p { font-size: 1rem; }
            .hero-stats { grid-template-columns: 1fr; gap: 1rem; }
            .stat-item { padding: 15px; min-height: auto; }
            .hero-buttons { flex-direction: column; gap: 1rem; }
            .btn { width: 100%; justify-content: center; }
            .badges-container { gap: 1.5rem; }
            .badge { flex-direction: column; gap: 0.5rem; text-align: center; }
            .features-grid, .benefits-grid, .trust-grid { grid-template-columns: 1fr; gap: 2rem; }
            .section-header h2 { font-size: 1.8rem; }
            .cta h2 { font-size: 1.8rem; }
            .btn-cta { width: 100%; justify-content: center; font-size: 1.1rem; padding: 1.2rem 2rem;}
        }
    </style>
</head>
<body>

    <jsp:include page="../../../includes/navbar/navbar.jsp" />

    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">SEO</span>
                    <span class="word">Services</span>
                    <span class="word">for</span>
                    <span class="word-highlight">Ecommerce</span>
                    <span class="word">&amp;</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">–</span>
                    <span class="word">Rank</span>
                    <span class="word">&amp;</span>
                    <span class="word-highlight">Grow</span>
                    <span class="word">Your</span>
                    <span class="word">Business</span>
                </h1>
                <p>IARDO provides expert <span class="highlight">SEO services for ecommerce and seller onboarding businesses</span> to help you rank higher on Google for high-intent keywords like seller onboarding services, amazon seller onboarding, and ecommerce onboarding services — and generate consistent organic traffic and leads.</p>

                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">PAN India Coverage</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">Quick &amp; Easy Setup</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">24×7 Support</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        <span><i class="fas fa-chart-line"></i> Start SEO Today</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-search"></i> Explore SEO Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/seo.webp" alt="SEO Services for Ecommerce and Seller Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-trophy"></i></span>
                <span>Proven Results</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-chart-bar"></i></span>
                <span>Data-Driven Strategies</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-users"></i></span>
                <span>Expert SEO Team</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-globe"></i></span>
                <span>PAN India Coverage</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>What is SEO &amp; Why Does Your Business Need It?</h2>
            <p class="subtitle">Rank higher on Google for onboarding &amp; ecommerce keywords — generate free, organic leads</p>
        </div>

        <div class="intro-text">
            <p>Search Engine Optimization (SEO) is the process of improving your website's visibility on Google and other search engines. It helps your business rank higher for relevant keywords like seller onboarding services, amazon seller onboarding, and ecommerce onboarding services to generate organic traffic and leads. With the right SEO strategy, you can attract high-intent customers without spending on ads.</p>
        </div>

        <div class="section-header" style="margin-top:50px;">
            <h2>Our SEO Services for Ecommerce &amp; Seller Onboarding</h2>
            <p class="subtitle">Complete SEO solutions focused on onboarding and ecommerce keywords</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-edit"></i></div>
                <h3>On-Page SEO</h3>
                <p>Complete website optimization including title tags, meta tags, keyword optimization for onboarding and ecommerce terms, content optimization, internal linking, and URL structure to maximize your Google rankings.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-code"></i></div>
                <h3>Technical SEO</h3>
                <p>Website speed optimization, mobile-friendly setup, fixing indexing issues, sitemap creation, and site structure improvements to ensure Google can crawl and rank your website effectively.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-link"></i></div>
                <h3>Off-Page SEO</h3>
                <p>High-quality backlink building, business directory listings, and domain authority building through white-hat strategies that improve your website's credibility in Google's eyes.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-file-alt"></i></div>
                <h3>Content SEO</h3>
                <p>Blog writing on onboarding and ecommerce topics, keyword-based content creation, and a complete SEO content strategy designed to rank for high-converting seller onboarding keywords.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-key"></i></div>
                <h3>Keyword Research &amp; Strategy</h3>
                <p>In-depth keyword research focused on onboarding and ecommerce keywords — identifying high-intent, high-value search terms that attract businesses looking for seller onboarding and ecommerce growth services.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marker-alt"></i></div>
                <h3>Local SEO &amp; Google My Business</h3>
                <p>Dominate local search results with optimized Google My Business profiles, local citations, and location-based keyword targeting to attract businesses in your city and region.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-pie"></i></div>
                <h3>Performance Tracking &amp; Reporting</h3>
                <p>Track keyword rankings, organic traffic growth, lead generation, and online visibility improvements with detailed monthly reports and actionable insights for continuous optimization.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                <h3>Website Audit &amp; SEO Fix</h3>
                <p>Comprehensive website audit to identify technical and on-page issues, followed by a structured fix plan to improve your rankings for onboarding and ecommerce keywords.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>SEO for Seller Onboarding Business</h2>
            <p class="subtitle">We specialize in ranking websites for high-converting marketplace onboarding keywords</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>Amazon Seller Onboarding SEO</h4>
                <p>Rank your website for keywords like "amazon seller onboarding", "amazon seller registration service", and "amazon onboarding experts" to attract high-intent clients searching for Amazon onboarding help.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-shopping-cart"></i></span>
                <h4>Flipkart Seller Onboarding SEO</h4>
                <p>Target "flipkart seller onboarding", "flipkart seller registration", and "flipkart marketplace onboarding" keywords to generate consistent organic leads for your Flipkart onboarding services.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-bolt"></i></span>
                <h4>Blinkit Seller Onboarding SEO</h4>
                <p>Rank for "blinkit seller onboarding", "blinkit quick commerce seller", and "blinkit registration service" to capture businesses looking to sell on Blinkit and other quick commerce platforms.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-rocket"></i></span>
                <h4>Quick Commerce Onboarding SEO</h4>
                <p>Target "quick commerce onboarding", "zepto seller onboarding", "swiggy instamart onboarding", and related keywords to rank for India's fastest-growing ecommerce segment.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-briefcase"></i></span>
                <h4>Ecommerce Onboarding Services SEO</h4>
                <p>Rank for broad terms like "ecommerce onboarding services", "marketplace onboarding experts", and "ecommerce growth company" to attract businesses across all marketplace platforms.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-chart-line"></i></span>
                <h4>Our SEO Process</h4>
                <p>Keyword research for onboarding and ecommerce keywords → Website audit → On-page optimization → Content creation → Backlink building → Performance tracking. Result: More traffic & leads.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose IARDO for SEO?</h2>
            <p class="subtitle">Result-driven SEO focused on growing your onboarding and ecommerce business</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>🎯 Result-Driven SEO Strategy</h4>
                <p>We focus on ranking your website for high-converting onboarding and ecommerce keywords that bring in qualified leads — not just traffic. Better rankings mean more clients and more revenue.</p>
            </div>
            <div class="trust-item">
                <h4>📈 Focus on Onboarding &amp; Keywords</h4>
                <p>We specialize in SEO for seller onboarding businesses. Our keyword strategy targets terms that your potential clients are actively searching for on Google across India.</p>
            </div>
            <div class="trust-item">
                <h4>⚡ Fast Execution</h4>
                <p>We move quickly — from website audit and keyword research to on-page optimization and content creation — so you start seeing ranking improvements without unnecessary delays.</p>
            </div>
            <div class="trust-item">
                <h4>🤝 Dedicated Support</h4>
                <p>Our team provides ongoing dedicated support, regular performance updates, and continuous optimization to ensure your website keeps ranking higher for onboarding and ecommerce keywords.</p>
            </div>
            <div class="trust-item">
                <h4>💻 Multi-Platform Expertise</h4>
                <p>We understand ecommerce and marketplace platforms deeply — Amazon, Flipkart, Blinkit, Zepto, Swiggy Instamart, and more — giving us an edge in creating SEO content that ranks and converts.</p>
            </div>
            <div class="trust-item">
                <h4>📊 Proven Results</h4>
                <p>Improved keyword rankings, increased organic traffic, more onboarding leads generated, and better online visibility — we deliver measurable SEO results for your business.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start SEO for Your Business Today</h2>
            <p>Want to rank your website for onboarding and ecommerce keywords? Contact us today for a free SEO consultation and let IARDO grow your business organically!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Get Your Free SEO Consultation Today</a>
            </div>
        </div>
    </section>

     <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
