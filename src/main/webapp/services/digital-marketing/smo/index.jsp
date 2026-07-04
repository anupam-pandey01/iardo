<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Professional SMO services by IARDO. Boost your brand's social media presence with expert Social Media Optimization, engagement strategies, and organic growth across PAN India.">
    <meta name="keywords" content="SMO services, social media optimization, social media marketing, brand engagement, organic growth, Instagram marketing, Facebook marketing, PAN India SMO">
    <title>SMO Services – Social Media Optimization for Business Growth | IARDO</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- <link rel="stylesheet" href="assets/css/smo.css?v=1.1"> -->
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* SMO Social Media Color Scheme */
    --smo-primary: #E91E63;        /* Vibrant Pink */
    --smo-secondary: #9C27B0;      /* Purple */
    --smo-dark-pink: #C2185B;      
    --smo-light-pink: #F06292;     
    
    /* Light Theme Variables */
    --bg-color: #ffffff;
    --section-bg: #f9f4f6; /* Very light pink/grey tint */
    --text-main: #111111; /* Pure dark for headings */
    --text-muted: #333333; /* Dark gray for text */
    --border-color: rgba(0, 0, 0, 0.08);
    --card-bg: #ffffff;
    
    --gradient-primary: linear-gradient(135deg, #E91E63, #9C27B0);
}

body {
    font-family: 'Poppins', sans-serif;
    background: var(--bg-color);
    color: var(--text-main);
    line-height: 1.7;
    overflow-x: hidden;
    font-weight: 500; /* Increased base weight for better visibility */
}

/* Hero Section */
.hero {
    min-height: 90vh;
    background: linear-gradient(135deg, #ffffff 0%, #fff0f5 100%);
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
    background: radial-gradient(circle, rgba(233, 30, 99, 0.05), transparent);
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
    background: radial-gradient(circle, rgba(156, 39, 176, 0.05), transparent);
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
    /* Extra top padding so it doesn't hide behind the navbar */
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
    color: var(--smo-primary);
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
.animated-heading .word-highlight:nth-child(5) { animation-delay: 0.5s; }
.animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
.animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word:nth-child(8) { animation-delay: 0.8s; }

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
    border-color: var(--smo-primary);
    box-shadow: 0 10px 30px rgba(233, 30, 99, 0.15);
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
    box-shadow: 0 8px 25px rgba(233, 30, 99, 0.3);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(233, 30, 99, 0.5);
}

.btn-secondary {
    background: transparent;
    color: var(--smo-primary);
    border: 3px solid var(--smo-primary);
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
    color: var(--smo-primary);
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
    box-shadow: 0 15px 40px rgba(233, 30, 99, 0.1);
    border-color: var(--smo-light-pink);
}

.feature-icon {
    width: 70px; height: 70px;
    background: rgba(233, 30, 99, 0.1);
    border-radius: 15px;
    display: flex; align-items: center; justify-content: center;
    font-size: 2.2rem;
    margin-bottom: 1.5rem;
    color: var(--smo-primary);
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
    border-color: var(--smo-primary);
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
    border-color: var(--smo-primary);
    box-shadow: 0 10px 30px rgba(233, 30, 99, 0.1);
}

.trust-item h4 {
    font-size: 1.25rem;
    font-weight: 800;
    color: var(--smo-primary);
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
    color: var(--smo-primary);
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
    color: var(--smo-dark-pink);
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
                    <span class="word">SMO</span> 
                    <span class="word">Services</span> 
                    <span class="word">–</span> 
                    <span class="word-highlight">Social Media</span> 
                    <span class="word-highlight">Optimization</span> 
                    <span class="word">for</span> 
                    <span class="word">Business</span> 
                    <span class="word">Growth</span>
                </h1>
                <p>IARDO's expert <span class="highlight">Social Media Optimization</span> services help businesses across PAN India grow organically on platforms like Instagram, Facebook, LinkedIn, and more — building a strong online presence that attracts real customers and generates leads.</p>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">PAN India Coverage</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">Quick & Easy Setup</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">24×7 Support</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        <span><i class="fas fa-rocket"></i> Grow Your Social Media</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-share-alt"></i> Explore SMO Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/smo.webp" alt="Social Media Optimization and Marketing">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-chart-line"></i></span>
                <span>Organic Growth Strategy</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-users"></i></span>
                <span>Community Building</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-hashtag"></i></span>
                <span>Hashtag Optimization</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-globe"></i></span>
                <span>Multi-Platform Strategy</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Comprehensive SMO Services for Business Growth</h2>
            <p class="subtitle">Complete social media optimization solutions for organic visibility and lead generation</p>
        </div>
        
        <div class="intro-text">
            <p>Social Media Optimization (SMO) is the process of optimizing your social media profiles and content to increase visibility, engagement, and brand awareness. With the right SMO strategy, businesses can build a strong online presence, attract potential customers, and grow organically — without relying solely on paid ads. IARDO delivers targeted, growth-focused SMO solutions designed for long-term results.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-users-cog"></i></div>
                <h3>Profile Optimization & Branding</h3>
                <p>We set up and optimize your social media profiles with compelling bios, professional branding, and strategic keywords — ensuring consistent brand identity across Instagram, Facebook, LinkedIn, and more.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-pen-fancy"></i></div>
                <h3>Content Strategy & Planning</h3>
                <p>From content calendars to post designs and captions, we plan and create platform-specific content that resonates with your audience and keeps your brand active and engaging.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-hashtag"></i></div>
                <h3>Hashtag Strategy & Research</h3>
                <p>We research and implement the right mix of trending, niche, and branded hashtags to improve your content's discoverability and attract your ideal audience organically.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-comments"></i></div>
                <h3>Engagement & Community Management</h3>
                <p>We actively manage your audience interactions — responding to comments and messages, nurturing conversations, and building a loyal community that supports and advocates for your brand.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Organic Growth Strategy</h3>
                <p>Our SMO process is designed for sustained, long-term growth — increasing followers, improving reach, and boosting engagement through platform-specific optimization techniques.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>Profile Audit & Optimization</h3>
                <p>We begin with a thorough audit of your existing social presence — identifying gaps, missed opportunities, and quick wins to immediately improve performance across all platforms.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Performance Tracking & Reporting</h3>
                <p>Track your growth with detailed reports covering follower growth, engagement rates, reach metrics, and content performance — with actionable insights for continuous improvement.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>SMO for Ecommerce & Onboarding</h3>
                <p>We help promote seller onboarding services, ecommerce solutions, and digital growth offerings through targeted social media content — driving more visibility, engagement, and qualified leads.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Benefits from Our SMO Services?</h2>
            <p class="subtitle">Tailored social media strategies for every business type</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fab fa-instagram"></i></span>
                <h4>E-commerce & Retail Brands</h4>
                <p>Drive organic traffic and sales from social media with optimized profiles, product showcases, and engagement strategies that convert followers into customers.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-utensils"></i></span>
                <h4>Restaurants & Food Businesses</h4>
                <p>Attract more customers with compelling food content, user-generated reviews, and location-based social strategies that fill tables and drive orders.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-dumbbell"></i></span>
                <h4>Health & Fitness Brands</h4>
                <p>Build a loyal following with transformation stories, fitness tips, and community challenges that inspire your audience and position your brand as a trusted authority.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-graduation-cap"></i></span>
                <h4>Education & E-learning</h4>
                <p>Grow your audience with educational content, student success stories, and interactive posts that attract learners and establish your brand as a knowledge leader.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-paint-brush"></i></span>
                <h4>Creative & Design Agencies</h4>
                <p>Showcase your portfolio, share creative process content, and attract high-value clients through a visually stunning and strategically optimized social media presence.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-building"></i></span>
                <h4>B2B & Professional Services</h4>
                <p>Build credibility on LinkedIn, share industry insights, and generate quality leads through a consistent B2B social media optimization strategy that positions you as an expert.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Brands Choose IARDO for SMO</h2>
            <p class="subtitle">Your partner for consistent, long-term social media growth</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>🎯 Growth-Focused Strategy</h4>
                <p>Every decision we make is driven by one goal — growing your social media presence in a way that generates real leads and business outcomes, not just vanity metrics.</p>
            </div>
            <div class="trust-item">
                <h4>🎯 Targeted Audience Engagement</h4>
                <p>We don't chase random followers. Our strategies focus on attracting and engaging your target audience — people who are genuinely interested in your products or services.</p>
            </div>
            <div class="trust-item">
                <h4>🎯 Consistent Content Execution</h4>
                <p>We maintain a steady, high-quality content output with planned calendars and scheduled posts — keeping your brand visible, active, and relevant across all platforms.</p>
            </div>
            <div class="trust-item">
                <h4>🎯 Social Media Expertise</h4>
                <p>Our team understands the nuances of each platform — Instagram, Facebook, LinkedIn, YouTube, and more — and applies platform-specific best practices for maximum impact.</p>
            </div>
            <div class="trust-item">
                <h4>🎯 End-to-End Support</h4>
                <p>From the initial audit and strategy to content creation, posting, and performance reporting — we handle everything so you can focus on running your business.</p>
            </div>
            <div class="trust-item">
                <h4>🎯 Long-Term Organic Growth</h4>
                <p>We focus on sustainable, organic growth strategies that build lasting brand presence — delivering increased followers, better engagement, and consistent lead generation over time.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Ready to Grow Your Business on Social Media?</h2>
            <p>Let IARDO's SMO experts build your brand's social presence and generate organic leads consistently!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Get a Free Consultation Today</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
