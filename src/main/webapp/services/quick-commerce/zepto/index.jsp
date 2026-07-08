<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zepto Seller Onboarding Service in India – Start Selling on Zepto | IARDO</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Zepto Brand Colors */
    --zepto-purple: #8B5CF6;
    --zepto-dark-purple: #7C3AED;
    --zepto-light-purple: #A78BFA;
    --zepto-pink: #EC4899;
    --zepto-blue: #3B82F6;
    
    /* Light Theme Variables */
    --bg-color: #ffffff;
    --section-bg: #f8f6fc; /* Very light purple/grey tint */
    --text-main: #111111; /* Pure dark for headings */
    --text-muted: #333333; /* Dark gray for text */
    --border-color: rgba(0, 0, 0, 0.08);
    --card-bg: #ffffff;
    
    --gradient-primary: linear-gradient(135deg, #8B5CF6, #EC4899);
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
    background: linear-gradient(135deg, #ffffff 0%, #f3f0fa 100%);
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
    background: radial-gradient(circle, rgba(139, 92, 246, 0.06), transparent);
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
    background: radial-gradient(circle, rgba(236, 72, 153, 0.06), transparent);
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
    color: var(--zepto-purple);
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
.animated-heading .word:nth-child(5) { animation-delay: 0.5s; }
.animated-heading .word-highlight:nth-child(6) { animation-delay: 0.6s; }
.animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word:nth-child(8) { animation-delay: 0.8s; }
.animated-heading .word:nth-child(9) { animation-delay: 0.9s; }
.animated-heading .word:nth-child(10) { animation-delay: 1.0s; }
.animated-heading .word-highlight:nth-child(11) { animation-delay: 1.1s; }

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
    border-color: var(--zepto-purple);
    box-shadow: 0 10px 30px rgba(139, 92, 246, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 800; /* Bold numbers */
    background: var(--gradient-primary);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    display: block;
    width: 100%;
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
    box-shadow: 0 8px 25px rgba(139, 92, 246, 0.3);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(139, 92, 246, 0.5);
}

.btn-secondary {
    background: transparent;
    color: var(--zepto-dark-purple);
    border: 3px solid var(--zepto-purple);
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
    color: var(--zepto-purple);
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
    box-shadow: 0 15px 40px rgba(139, 92, 246, 0.1);
    border-color: var(--zepto-light-purple);
}

.feature-icon {
    width: 70px; height: 70px;
    background: rgba(139, 92, 246, 0.1);
    border-radius: 15px;
    display: flex; align-items: center; justify-content: center;
    font-size: 2.2rem;
    margin-bottom: 1.5rem;
    color: var(--zepto-purple);
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
    border-color: var(--zepto-purple);
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
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
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
    border-color: var(--zepto-purple);
    box-shadow: 0 10px 30px rgba(139, 92, 246, 0.1);
}

.trust-item h4 {
    font-size: 1.25rem;
    font-weight: 800;
    color: var(--zepto-purple);
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
    color: var(--zepto-purple);
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
    color: var(--zepto-dark-purple);
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
    <!-- <link rel="stylesheet" href="assets/css/zepto.css?v=1.1"> -->
</head>
<body>
    <jsp:include page="../../../includes/navbar/navbar.jsp" />

    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">Zepto</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">in</span>
                    <span class="word-highlight">India</span>
                    <span class="word">–</span>
                    <span class="word">Start</span>
                    <span class="word">Selling</span>
                    <span class="word">on</span>
                    <span class="word-highlight">Zepto</span>
                </h1>
                <p>IARDO provides specialized <span class="highlight">Zepto Seller Onboarding</span> Services across PAN India to help you tap into India's fastest-growing 10-minute delivery platform and reach urban consumers instantly. If you want to scale your business in the quick commerce space, Zepto is one of the best platforms to start.</p>

                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">PAN India Coverage</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">Quick &amp; Easy Setup</span>
                    </div>
                    <div class="stat-item">
                        <span style="font-weight: 800; line-height: 1.4; font-size: 1.1rem; display: block; background: linear-gradient(90deg, var(--zepto-purple), var(--zepto-pink)); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">24×7 Support</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        <span><i class="fas fa-rocket"></i> Start Onboarding</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/zepto.webp" alt="Zepto Seller Onboarding Service in India">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>Expert Knowledge</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Quick Onboarding</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-star"></i></span>
                <span>End-to-End Support</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>PAN India Service</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>What is Zepto?</h2>
            <p class="subtitle">India's fastest-growing quick commerce platform for daily essentials</p>
        </div>

        <div class="intro-text">
            <p>Zepto is one of India's fastest-growing quick commerce platforms that delivers groceries and daily essentials within minutes. It allows sellers to connect with local customers instantly and generate high-frequency sales. Zepto helps businesses generate quick and consistent revenue through its 10-minute delivery model, high demand in metro cities, fast-moving daily orders, rapidly growing platform, and strong customer base.</p>
        </div>

        <div class="section-header" style="margin-top:50px;">
            <h2>Why Choose IARDO for Zepto Seller Onboarding?</h2>
            <p class="subtitle">Complete end-to-end onboarding and growth support across India</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-user-plus"></i></div>
                <h3>Zepto Seller Account Setup</h3>
                <p>Complete assistance with Zepto seller account creation, business details submission, documentation, and regulatory compliance to ensure quick approval and go-live.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                <h3>Documentation &amp; Approval Assistance</h3>
                <p>We help you prepare and submit all required documents — GST Certificate, PAN Card, Bank Account Details, Business Address Proof, and FSSAI License for food/grocery items.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-box-open"></i></div>
                <h3>Product Listing &amp; Catalog Optimization</h3>
                <p>Expert cataloging with optimized product titles, detailed descriptions, high-resolution images, and accurate categorization tailored to Zepto's quick commerce shoppers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tags"></i></div>
                <h3>Inventory &amp; Pricing Setup</h3>
                <p>Strategic pricing guidance and dynamic inventory management ensuring instant stock updates across Zepto's dark stores, preventing stockouts during peak demand hours.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>Store Activation</h3>
                <p>Support with dark store partnerships, micro-fulfillment setup, and store activation to ensure your products go live on Zepto quickly and efficiently.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Sales Growth Strategy</h3>
                <p>As a result-driven ecommerce growth company, we focus on product visibility optimization, smart pricing strategies, high-demand product selection, inventory management, and performance tracking.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Performance Analytics &amp; Insights</h3>
                <p>Detailed analytics on sales patterns, peak ordering times, customer preferences, and inventory turnover rates to help optimize your Zepto operations for more orders and better revenue.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Zepto Seller Registration Process</h2>
            <p class="subtitle">Without proper guidance, the onboarding process can take time — we simplify it for you</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-alt"></i></span>
                <h4>Step 1: Submit Business Details</h4>
                <p>Share your business information and required documents including GST Certificate, PAN Card, Bank Account Details, Business Address Proof, and FSSAI License for grocery or food items.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tasks"></i></span>
                <h4>Step 2: Product Listing &amp; Catalog Setup</h4>
                <p>We set up your complete product catalog with optimized listings, pricing, and inventory management aligned with Zepto's quick commerce requirements.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-rocket"></i></span>
                <h4>Step 3: Store Activation &amp; Go Live</h4>
                <p>After warehouse or dark store onboarding and final approval, your store goes live on Zepto — ready to receive orders and generate consistent daily sales.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose Us for Zepto Onboarding?</h2>
            <p class="subtitle">Your reliable partner for Zepto seller onboarding success</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>⚡ Fast &amp; Hassle-Free Onboarding</h4>
                <p>We expedite your onboarding process, ensuring you're live on Zepto quickly and can start capturing demand in India's booming quick commerce market.</p>
            </div>
            <div class="trust-item">
                <h4>📈 Sales-Focused Approach</h4>
                <p>We don't just onboard — we help you grow your sales with optimized listings, smart pricing strategies, and high-demand product selection on Zepto.</p>
            </div>
            <div class="trust-item">
                <h4>🛒 Multi-Platform Expertise</h4>
                <p>From Blinkit and Zepto to Amazon and Myntra, we have experience across all major marketplaces and quick commerce platforms across India.</p>
            </div>
            <div class="trust-item">
                <h4>📊 Proven Results</h4>
                <p>100+ sellers onboarded, ₹10L+ sales generated, and consistent growth across platforms — we deliver real results for your business on Zepto.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Zepto Today</h2>
            <p>Want to grow your business on Zepto? Contact us today for a free consultation and let IARDO handle your complete onboarding process — get you selling in days!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Start Your Zepto Seller Journey Today</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
