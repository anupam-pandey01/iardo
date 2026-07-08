<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Professional Meta Ads services by IARDO. Scale your business with expert Facebook & Instagram advertising, conversion campaigns, and social media ads management across PAN India.">
    <meta name="keywords" content="Meta Ads, Facebook Ads, Instagram Ads, social media advertising, Meta advertising, Facebook marketing, Instagram marketing, conversion campaigns, PAN India Meta Ads">
    <title>Meta Ads Management Services - Facebook & Instagram Ads | IARDO PAN India</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- <link rel="stylesheet" href="css/swiggy.css"> -->
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Meta/Facebook/Instagram Color Scheme */
    --meta-blue: #1877F2;           /* Facebook Blue - Primary */
    --meta-pink: #E1306C;           /* Instagram Pink */
    --meta-dark-blue: #0C63D4;      
    --meta-light-blue: #4A90E2;     
    --meta-purple: #833AB4;         
    
    /* Light Theme Variables */
    --bg-color: #ffffff;
    --section-bg: #f5f8ff; /* Very light blue tint */
    --text-main: #111111; /* Pure dark for headings */
    --text-muted: #333333; /* Dark gray for text */
    --border-color: rgba(0, 0, 0, 0.08);
    --card-bg: #ffffff;
    
    --gradient-primary: linear-gradient(135deg, #1877F2, #E1306C);
    --gradient-instagram: linear-gradient(135deg, #833AB4, #E1306C, #FD1D1D);
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
    background: linear-gradient(135deg, #ffffff 0%, #f0f5ff 100%);
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
    background: radial-gradient(circle, rgba(24, 119, 242, 0.05), transparent);
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
    background: radial-gradient(circle, rgba(225, 48, 108, 0.05), transparent);
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
    color: var(--meta-blue);
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
.animated-heading .word-highlight:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word:nth-child(8) { animation-delay: 0.8s; }

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
    border-color: var(--meta-blue);
    box-shadow: 0 10px 30px rgba(24, 119, 242, 0.15);
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
    box-shadow: 0 8px 25px rgba(24, 119, 242, 0.3);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(24, 119, 242, 0.5);
}

.btn-secondary {
    background: transparent;
    color: var(--meta-blue);
    border: 3px solid var(--meta-blue);
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
    color: var(--meta-blue);
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
    box-shadow: 0 15px 40px rgba(24, 119, 242, 0.1);
    border-color: var(--meta-pink);
}

.feature-icon {
    width: 70px; height: 70px;
    background: rgba(24, 119, 242, 0.1);
    border-radius: 15px;
    display: flex; align-items: center; justify-content: center;
    font-size: 2.2rem;
    margin-bottom: 1.5rem;
    color: var(--meta-blue);
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
    border-color: var(--meta-blue);
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
    border-color: var(--meta-blue);
    box-shadow: 0 10px 30px rgba(24, 119, 242, 0.1);
}

.trust-item h4 {
    font-size: 1.25rem;
    font-weight: 800;
    color: var(--meta-blue);
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
    color: var(--meta-blue);
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
    color: var(--meta-pink);
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
    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">Scale</span> 
                    <span class="word">Your</span> 
                    <span class="word">Business</span> 
                    <span class="word">with</span> 
                    <span class="word-highlight">Meta Ads</span> 
                    <span class="word">Expertise</span> 
                    <span class="word">by</span> 
                    <span class="word">IARDO</span>
                </h1>
                <p>Unlock the power of Facebook and Instagram advertising with IARDO's expert <span class="highlight">Meta Ads Management</span> services. We create high-converting campaigns across PAN India that reach your ideal customers, drive engagement, and maximize your social media advertising ROI.</p>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">1200+</span>
                        <span class="stat-label">Campaigns Launched</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">600%</span>
                        <span class="stat-label">Avg ROAS Achieved</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">₹75Cr+</span>
                        <span class="stat-label">Ad Spend Managed</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="#contact" class="btn btn-primary">
                        <span><i class="fas fa-rocket"></i> Launch Your Campaign</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fab fa-facebook"></i> Explore Meta Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?auto=format&fit=crop&w=800&q=80" alt="Meta Ads Facebook Instagram Advertising">
            </div>
        </div>
    </section>

    <!-- Trust Badges -->
    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fab fa-meta"></i></span>
                <span>Meta Certified Partner</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>Advanced Targeting</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-chart-line"></i></span>
                <span>Conversion Focused</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-sync-alt"></i></span>
                <span>Real-Time Optimization</span>
            </div>
        </div>
    </section>

    <!-- Why Choose IARDO Section -->
    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Complete Meta Ads Solutions for Business Growth</h2>
            <p class="subtitle">Expert Facebook & Instagram advertising services that deliver results</p>
        </div>
        
        <div class="intro-text">
            <p>With over 3 billion active users across Facebook and Instagram, Meta's advertising platform offers unparalleled reach and targeting capabilities. IARDO's Meta Ads Management services leverage advanced audience targeting, creative excellence, and data-driven optimization to transform your social media presence into a powerful revenue-generating engine.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fab fa-facebook-square"></i></div>
                <h3>Facebook Ads Campaign Management</h3>
                <p>Drive conversions with strategic Facebook advertising. We create and optimize campaigns across news feed, stories, reels, and marketplace to reach your target audience where they're most engaged.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fab fa-instagram"></i></div>
                <h3>Instagram Ads & Stories Campaigns</h3>
                <p>Captivate audiences with visually stunning Instagram ads. We leverage feed posts, stories, reels, and explore placements to build brand awareness and drive action from Instagram's highly engaged user base.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shopping-bag"></i></div>
                <h3>Meta Shopping & Catalog Ads</h3>
                <p>Boost e-commerce sales with dynamic product ads that automatically showcase your inventory to interested shoppers. We optimize product catalogs, create compelling shopping experiences, and implement conversion tracking.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-users"></i></div>
                <h3>Advanced Audience Targeting</h3>
                <p>Reach the right people with precision targeting. We create custom audiences, lookalike audiences, and detailed demographic/interest-based segments to ensure your ads reach high-value potential customers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-video"></i></div>
                <h3>Video & Reel Advertising</h3>
                <p>Engage audiences with compelling video content. We create and optimize video ads, reels, and stories that capture attention, tell your brand story, and drive meaningful engagement and conversions.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-magnet"></i></div>
                <h3>Lead Generation Campaigns</h3>
                <p>Capture qualified leads directly within Facebook and Instagram using optimized lead forms. We design friction-free experiences that collect contact information and nurture prospects through your sales funnel.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-redo-alt"></i></div>
                <h3>Retargeting & Dynamic Remarketing</h3>
                <p>Convert abandoned visitors into customers with strategic retargeting campaigns. We implement pixel tracking, create custom audiences, and deliver personalized ads to users based on their previous interactions.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-palette"></i></div>
                <h3>Creative Design & Ad Copy</h3>
                <p>Stand out with scroll-stopping creatives. Our design team produces high-converting ad visuals, carousel ads, collection ads, and compelling copy optimized for each platform and campaign objective.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Mobile-First Campaign Strategy</h3>
                <p>Optimize for the mobile-majority audience with campaigns designed specifically for mobile devices, ensuring fast loading times, engaging formats, and seamless user experiences across all screen sizes.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-flask"></i></div>
                <h3>A/B Testing & Optimization</h3>
                <p>Maximize performance through continuous testing of ad creatives, copy variations, audience segments, and placements. We use data insights to scale winning combinations and eliminate underperformers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Conversion Tracking & Analytics</h3>
                <p>Measure what matters with comprehensive conversion tracking setup. We implement Meta Pixel, Conversions API, and attribution reporting to track customer journey and optimize for business outcomes.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-cogs"></i></div>
                <h3>Campaign Automation & Scaling</h3>
                <p>Grow efficiently with automated rules, dynamic creative optimization, and campaign budget optimization. We leverage Meta's AI tools while maintaining strategic oversight for maximum efficiency.</p>
            </div>
        </div>
    </section>

    <!-- Who Can Benefit Section -->
    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Benefits from Our Meta Ads Services?</h2>
            <p class="subtitle">Customized social advertising strategies for every business</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-shopping-cart"></i></span>
                <h4>E-commerce & D2C Brands</h4>
                <p>Drive online sales with dynamic product ads, catalog campaigns, and conversion-optimized strategies that turn browsers into buyers across Facebook and Instagram platforms.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tshirt"></i></span>
                <h4>Fashion & Lifestyle Brands</h4>
                <p>Showcase your products with visually appealing Instagram campaigns, influencer collaborations, and collection ads that resonate with style-conscious audiences and drive purchase intent.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-utensils"></i></span>
                <h4>Food & Beverage Businesses</h4>
                <p>Attract hungry customers with mouth-watering food photography, local awareness campaigns, and promotional offers that drive foot traffic, online orders, and brand loyalty.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-heartbeat"></i></span>
                <h4>Health & Wellness Industry</h4>
                <p>Connect with health-conscious consumers through educational content, transformation stories, and targeted campaigns that build trust and drive memberships, bookings, or product sales.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-home"></i></span>
                <h4>Real Estate & Property Developers</h4>
                <p>Generate qualified property inquiries with virtual tours, lead generation campaigns, and geo-targeted ads that showcase listings to buyers actively searching in specific locations.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-certificate"></i></span>
                <h4>Education & Training Programs</h4>
                <p>Enroll more students with targeted campaigns promoting courses, webinars, and educational content to audiences interested in skill development and professional growth.</p>
            </div>
        </div>
    </section>

    <!-- Why Businesses Trust IARDO -->
    <section class="trust-section">
        <div class="section-header">
            <h2>Why Businesses Choose IARDO for Meta Ads Excellence</h2>
            <p class="subtitle">Your partner for profitable Facebook & Instagram advertising</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>Meta Blueprint Certified Team</h4>
                <p>Our specialists hold official Meta certifications and have deep expertise in Facebook Ads Manager, Instagram advertising, and Meta's latest features and algorithm updates.</p>
            </div>
            <div class="trust-item">
                <h4>Creative Excellence</h4>
                <p>We combine stunning visual design with psychology-driven copywriting to create ads that stop the scroll, capture attention, and compel action from your target audience.</p>
            </div>
            <div class="trust-item">
                <h4>Advanced Targeting Strategies</h4>
                <p>Leverage sophisticated audience segmentation using custom audiences, lookalikes, behavioral targeting, and interest-based parameters to reach your ideal customers with precision.</p>
            </div>
            <div class="trust-item">
                <h4>Full-Funnel Approach</h4>
                <p>We design campaigns for every stage of the customer journey—from awareness and consideration to conversion and retention—ensuring consistent messaging and optimal results.</p>
            </div>
            <div class="trust-item">
                <h4>Transparent Performance Reporting</h4>
                <p>Access real-time dashboards and receive detailed monthly reports showing campaign performance, ROAS, conversion metrics, and actionable insights for continuous improvement.</p>
            </div>
            <div class="trust-item">
                <h4>Continuous Optimization</h4>
                <p>We monitor campaigns daily, adjusting bids, refining audiences, testing creatives, and optimizing placements to ensure your ad spend delivers maximum return on investment.</p>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta">
        <div class="cta-content">
            <h2>Ready to Dominate Facebook & Instagram?</h2>
            <p>Let IARDO's Meta Ads experts scale your business with high-converting social campaigns!</p>
            <div class="cta-buttons">
                <a href="#contact" class="btn-cta"><i class="fas fa-rocket"></i> Start Your Meta Ads Campaign Today</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />
    <script src="js/swiggy.js"></script>
</body>
</html>
