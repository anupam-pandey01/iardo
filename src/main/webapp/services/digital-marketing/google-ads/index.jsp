<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="IARDO provides expert Google Ads and PPC services for ecommerce and seller onboarding businesses. Run targeted campaigns for seller onboarding ads, ecommerce advertising, and lead generation across PAN India.">
    <meta name="keywords" content="Google Ads services ecommerce, PPC services seller onboarding, seller onboarding ads, ecommerce advertising, lead generation ads, google ads for marketplace onboarding, PAN India PPC">
    <title>Google Ads Services for Ecommerce & Seller Onboarding | IARDO</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- <link rel="stylesheet" href="assets/css/google.css?v=1.1"> -->
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Google Ads Color Scheme */
    --google-red: #EA4335;          /* Google Red - Primary */
    --google-yellow: #FBBC04;       /* Google Yellow - Secondary */
    --google-green: #34A853;        /* Google Green - Accent */
    --google-blue: #4285F4;         /* Google Blue - Support */
    --google-dark-red: #C5221F;     
    --google-light-red: #F28B82;    
    
    /* Light Theme Variables */
    --bg-color: #ffffff;
    --section-bg: #f8f9fa; /* Very light gray */
    --text-main: #111111; /* Pure dark for headings */
    --text-muted: #333333; /* Dark gray for text */
    --border-color: rgba(0, 0, 0, 0.08);
    --card-bg: #ffffff;
    
    --gradient-primary: linear-gradient(135deg, #EA4335, #FBBC04);
}

body {
    font-family: 'Poppins', sans-serif;
    background: var(--bg-color);
    color: var(--text-main);
    line-height: 1.7;
    overflow-x: hidden;
    font-weight: 500; /* Increased base weight for bold look */
}

/* Hero Section */
.hero {
    min-height: 90vh;
    background: linear-gradient(135deg, #ffffff 0%, #fff7f0 100%); /* Soft red/yellow tint */
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
    background: radial-gradient(circle, rgba(234, 67, 53, 0.06), transparent);
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
    background: radial-gradient(circle, rgba(251, 188, 4, 0.06), transparent);
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
    /* Added top padding to push content below fixed navbar */
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
    color: var(--google-red);
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
.animated-heading .word:nth-child(4) { animation-delay: 0.4s; }
.animated-heading .word-highlight:nth-child(5) { animation-delay: 0.5s; }
.animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
.animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word-highlight:nth-child(8) { animation-delay: 0.8s; }

.hero-content p {
    font-size: 1.15rem;
    font-weight: 600; /* Bold text */
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
    border-color: var(--google-red);
    box-shadow: 0 10px 30px rgba(234, 67, 53, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 800; /* Bold numbers */
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
    box-shadow: 0 8px 25px rgba(234, 67, 53, 0.3);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(234, 67, 53, 0.5);
}

.btn-secondary {
    background: transparent;
    color: var(--google-red);
    border: 3px solid var(--google-red);
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
    color: var(--google-red);
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
    box-shadow: 0 15px 40px rgba(234, 67, 53, 0.1);
    border-color: var(--google-light-red);
}

.feature-icon {
    width: 70px; height: 70px;
    background: rgba(234, 67, 53, 0.1);
    border-radius: 15px;
    display: flex; align-items: center; justify-content: center;
    font-size: 2.2rem;
    margin-bottom: 1.5rem;
    color: var(--google-red);
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
    border-color: var(--google-red);
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
    border-color: var(--google-red);
    box-shadow: 0 10px 30px rgba(234, 67, 53, 0.1);
}

.trust-item h4 {
    font-size: 1.25rem;
    font-weight: 800;
    color: var(--google-red);
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
    color: var(--google-red);
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
    color: var(--google-dark-red);
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
                    <span class="word">Google</span>
                    <span class="word">Ads</span>
                    <span class="word">Services</span>
                    <span class="word">for</span>
                    <span class="word-highlight">Ecommerce</span>
                    <span class="word">&amp;</span>
                    <span class="word">Seller</span>
                    <span class="word-highlight">Onboarding</span>
                </h1>
                <p>We provide expert <span class="highlight">Google Ads services and PPC services</span> to help businesses generate high-quality leads and grow faster online. Our campaigns are designed to target users actively searching for seller onboarding services, ecommerce solutions, and business growth opportunities.</p>

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
                        <span><i class="fas fa-chart-line"></i> Start Growing Today</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-ad"></i> Explore PPC Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/google_ads.webp" alt="Google Ads Services for Ecommerce and Seller Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fab fa-google"></i></span>
                <span>Google Certified</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>Precision Targeting</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-money-bill-wave"></i></span>
                <span>ROI Focused</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-clock"></i></span>
                <span>24/7 Optimization</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Google Ads &amp; PPC Services for Ecommerce &amp; Seller Onboarding</h2>
            <p class="subtitle">Targeted ad campaigns that bring instant traffic, leads, and conversions</p>
        </div>

        <div class="intro-text">
            <p>As part of our lead generation ads strategy, we focus on running highly targeted campaigns that bring instant traffic and conversions. Whether you want to promote seller onboarding ads or expand your reach through ecommerce advertising, our team ensures maximum ROI and performance. From keyword targeting and ad copy creation to campaign optimization and scaling, we manage everything to help you generate consistent leads and increase sales. Our goal is simple — run profitable ad campaigns that bring real business results.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>Search Ads for Seller Onboarding</h3>
                <p>Capture high-intent users searching for seller onboarding services with optimized search campaigns. We target keywords like "amazon seller onboarding", "flipkart seller registration", and "ecommerce onboarding services" to bring qualified leads directly to you.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-bullseye"></i></div>
                <h3>Lead Generation Ads</h3>
                <p>Run highly targeted lead generation campaigns designed to attract businesses looking for onboarding and ecommerce growth services. We create compelling ad copies and landing pages that convert clicks into real leads.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shopping-cart"></i></div>
                <h3>Ecommerce Advertising</h3>
                <p>Boost your ecommerce visibility with Google Shopping ads, product-specific campaigns, and smart bidding strategies that drive consistent sales and revenue across your ecommerce platforms.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-edit"></i></div>
                <h3>Keyword Targeting &amp; Ad Copy Creation</h3>
                <p>We research and target the most effective keywords for your seller onboarding and ecommerce business, then craft persuasive ad copies that attract high-intent clicks and maximize your ad performance.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-redo"></i></div>
                <h3>Remarketing &amp; Retargeting</h3>
                <p>Re-engage users who visited your website but didn't convert. Our remarketing campaigns bring potential clients back with personalized ads, improving conversion rates and reducing cost-per-lead for your onboarding business.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-image"></i></div>
                <h3>Display &amp; Banner Advertising</h3>
                <p>Build brand awareness for your seller onboarding services across Google's Display Network. We create eye-catching banner ads that keep your brand visible to businesses actively looking for ecommerce and marketplace solutions.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-mouse-pointer"></i></div>
                <h3>Landing Page Optimization</h3>
                <p>Maximize conversions with optimized landing pages aligned with your ad campaigns. We design and refine pages that communicate your onboarding services clearly and guide visitors to take action.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-sliders-h"></i></div>
                <h3>Campaign Optimization &amp; Scaling</h3>
                <p>We continuously optimize bids, ad copies, targeting, and budgets to reduce cost-per-lead and scale your best-performing campaigns for maximum ROI and consistent business growth.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-pie"></i></div>
                <h3>Conversion Tracking &amp; Reporting</h3>
                <p>Track exactly how your ads are performing with detailed conversion tracking, Google Analytics integration, and regular performance reports showing leads generated, cost-per-lead, and overall campaign ROI.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tasks"></i></div>
                <h3>A/B Testing &amp; Performance Improvement</h3>
                <p>We continuously test ad copies, landing pages, keywords, and targeting options to identify what drives the best results for your seller onboarding and ecommerce advertising campaigns.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-ban"></i></div>
                <h3>Negative Keyword Management</h3>
                <p>Eliminate wasted ad spend by filtering out irrelevant searches. We manage negative keywords to ensure your budget is spent only on high-intent users searching for onboarding and ecommerce services.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-cog"></i></div>
                <h3>Campaign Setup &amp; Account Structure</h3>
                <p>Build a solid Google Ads foundation with properly structured campaigns, ad groups, and tracking systems that enable efficient management and consistent performance from day one.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Benefits from Our Google Ads Services?</h2>
            <p class="subtitle">Tailored PPC strategies for ecommerce and onboarding businesses</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>Seller Onboarding Service Providers</h4>
                <p>Run targeted ads for "amazon seller onboarding", "flipkart seller registration", and "marketplace onboarding services" to attract businesses actively looking for onboarding help across India.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-bolt"></i></span>
                <h4>Quick Commerce Onboarding Businesses</h4>
                <p>Promote your Blinkit, Zepto, Swiggy Instamart, and Flipkart Minutes onboarding services with targeted PPC campaigns that reach brands wanting to sell on quick commerce platforms.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-shopping-cart"></i></span>
                <h4>Ecommerce &amp; Online Stores</h4>
                <p>Drive consistent sales and revenue with Shopping ads, search campaigns, and dynamic remarketing that targets buyers at every stage of their ecommerce purchase journey.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-handshake"></i></span>
                <h4>B2B &amp; Lead Generation Businesses</h4>
                <p>Generate high-quality business leads with targeted search campaigns and conversion-optimized landing pages designed to capture and convert B2B prospects into paying clients.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-map-marker-alt"></i></span>
                <h4>Local Service Businesses</h4>
                <p>Attract nearby customers with local search ads, Google Maps integration, call extensions, and precise location targeting that drives inquiries and calls to your business.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-briefcase"></i></span>
                <h4>Ecommerce Growth Companies</h4>
                <p>Scale your ecommerce growth services business with Google Ads campaigns targeting brands and sellers looking for marketplace management, catalog optimization, and sales growth solutions.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose IARDO for Google Ads &amp; PPC Services?</h2>
            <p class="subtitle">Result-driven Google Ads management for onboarding and ecommerce businesses</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>🎯 Result-Driven Ad Strategy</h4>
                <p>We focus on running profitable ad campaigns that bring real business results — more leads, more clients, and higher revenue for your seller onboarding and ecommerce business.</p>
            </div>
            <div class="trust-item">
                <h4>📈 Focus on Onboarding &amp; Ecommerce Keywords</h4>
                <p>We specialize in targeting high-intent keywords for seller onboarding, marketplace onboarding, and ecommerce services — ensuring your ads reach the right audience at the right time.</p>
            </div>
            <div class="trust-item">
                <h4>⚡ Fast Campaign Setup &amp; Execution</h4>
                <p>We launch your Google Ads campaigns quickly — from keyword research and ad copy creation to campaign setup and go-live — so you start generating leads without unnecessary delays.</p>
            </div>
            <div class="trust-item">
                <h4>💻 Multi-Platform Expertise</h4>
                <p>Our deep understanding of ecommerce marketplaces — Amazon, Flipkart, Blinkit, Zepto, and more — gives us a unique advantage in creating ad campaigns that speak directly to your target audience.</p>
            </div>
            <div class="trust-item">
                <h4>🤝 Dedicated Support</h4>
                <p>Our team provides ongoing dedicated support, regular performance reviews, and continuous campaign optimization to ensure your Google Ads consistently deliver maximum ROI.</p>
            </div>
            <div class="trust-item">
                <h4>📊 Proven Results</h4>
                <p>Improved lead quality, reduced cost-per-lead, increased conversions, and consistent business growth — we deliver measurable Google Ads results for your onboarding and ecommerce business.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Generating Leads with Google Ads Today</h2>
            <p>Want to run profitable Google Ads campaigns for your ecommerce or seller onboarding business? Contact IARDO today for a free consultation and let us grow your business faster!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Get Your Free Google Ads Consultation Now</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
