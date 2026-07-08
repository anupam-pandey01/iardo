<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Now Seller Onboarding Service in India – Start Selling Today | IARDO</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/amazon.css?v=amz-light">
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Amazon Brand Colors */
    --amazon-orange: #FF9900;
    --amazon-dark-orange: #E68A00;
    --amazon-yellow: #FFCC00;
    --amazon-blue: #146EB4;
    
    /* Light Theme Colors */
    --bg-main: #ffffff;
    --bg-sec: #f8f9fa;
    --text-dark: #0f1111; /* Standard Amazon Dark Text */
    --text-light: #565959; /* Standard Amazon Secondary Text */
    --border-color: rgba(255, 153, 0, 0.2);
}

body {
    font-family: 'Poppins', sans-serif;
    background: var(--bg-main);
    color: var(--text-dark);
    line-height: 1.6;
    overflow-x: hidden;
}

/* Hero Section */
.hero {
    min-height: 90vh;
    background: linear-gradient(135deg, var(--bg-sec) 0%, var(--bg-main) 50%, var(--bg-sec) 100%);
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
    background: radial-gradient(circle, rgba(255, 153, 0, 0.08), transparent);
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
    background: radial-gradient(circle, rgba(255, 204, 0, 0.08), transparent);
    border-radius: 50%;
    bottom: -300px;
    left: -200px;
    animation: pulse 6s infinite ease-in-out reverse;
}

@keyframes pulse {
    0%, 100% { transform: scale(1); opacity: 0.5; }
    50% { transform: scale(1.1); opacity: 0.8; }
}

/* NAVBAR & IMAGE FIX INCLUDED */
.hero-container {
    max-width: 1400px;
    margin: 0 auto;
    margin-top: 110px; /* Navbar overlap fix */
    padding: 4rem 2rem;
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
    color: var(--text-dark);
    line-height: 1.2;
    margin-bottom: 1.5rem;
}

.hero-content .highlight {
    color: var(--amazon-orange);
    display: inline-block;
    animation: glow 2s infinite alternate;
}

@keyframes glow {
    from { text-shadow: 0 0 10px rgba(255, 153, 0, 0.1); }
    to { text-shadow: 0 0 20px rgba(255, 153, 0, 0.3); }
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
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-dark-orange));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
    filter: drop-shadow(0 0 15px rgba(255, 153, 0, 0.3));
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
.animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
.animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word:nth-child(8) { animation-delay: 0.8s; }
.animated-heading .word-highlight:nth-child(9) { animation-delay: 0.9s; }

.hero-content p {
    font-size: 1.2rem;
    color: var(--text-light);
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
    background: #ffffff;
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
    border-color: var(--amazon-orange);
    box-shadow: 0 10px 30px rgba(255, 153, 0, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-dark-orange));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    line-height: 1.4;
    display: block;
    white-space: normal;
    word-wrap: break-word;
    overflow: visible;
    width: 100%;
}

.stat-label {
    font-size: 0.95rem;
    margin-top: 4px;
    color: var(--text-light);
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
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-dark-orange));
    color: white;
    box-shadow: 0 8px 30px rgba(255, 153, 0, 0.3);
}

.btn-primary::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background: var(--amazon-dark-orange);
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
    box-shadow: 0 12px 40px rgba(255, 153, 0, 0.4);
}

.btn-secondary {
    background: transparent;
    color: var(--amazon-orange);
    border: 3px solid var(--amazon-orange);
}

.btn-secondary:hover {
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-yellow));
    color: white;
    transform: translateY(-3px);
    border-color: transparent;
    box-shadow: 0 8px 25px rgba(255, 153, 0, 0.2);
}

/* IMAGE ALIGNMENT FIX */
.hero-image {
    position: relative;
    animation: float-image 6s infinite ease-in-out;
    align-self: flex-start; /* Image ko top pe align rakhega */
    margin-top: 2rem; 
}

@keyframes float-image {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-20px); }
}

.hero-image img {
    width: 100%;
    border-radius: 30px;
    box-shadow: 0 30px 80px rgba(0, 0, 0, 0.1);
    border: 3px solid var(--border-color);
}

/* Trust Badges */
.trust-badges {
    background: var(--bg-sec);
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
    font-weight: 600;
    color: var(--text-dark);
}

.badge-icon {
    font-size: 3rem;
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-yellow));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

/* Why Choose Section */
.why-choose {
    padding: 6rem 2rem;
    background: var(--bg-main);
}

.section-header {
    text-align: center;
    max-width: 900px;
    margin: 0 auto 5rem;
}

.section-header h2 {
    font-size: clamp(2.5rem, 5vw, 4rem);
    font-weight: 900;
    color: var(--text-dark);
    margin-bottom: 1.5rem;
}

.section-header .subtitle {
    font-size: 1.3rem;
    color: var(--text-light);
}

.intro-text {
    max-width: 1200px;
    margin: 0 auto 4rem;
    font-size: 1.2rem;
    line-height: 1.9;
    color: var(--text-light);
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
    background: #ffffff;
    padding: 3rem;
    border-radius: 25px;
    box-shadow: 0 10px 40px rgba(0,0,0,0.06);
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
    position: relative;
    overflow: hidden;
    border: 1px solid rgba(0,0,0,0.05);
}

.feature-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 5px;
    background: linear-gradient(90deg, var(--amazon-orange), var(--amazon-yellow));
    transform: scaleX(0);
    transition: transform 0.4s;
}

.feature-card:hover::before {
    transform: scaleX(1);
}

.feature-card:hover {
    transform: translateY(-15px);
    box-shadow: 0 20px 60px rgba(255, 153, 0, 0.15);
    border-color: var(--border-color);
}

.feature-icon {
    width: 90px;
    height: 90px;
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-yellow));
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    margin-bottom: 2rem;
    box-shadow: 0 10px 30px rgba(255, 153, 0, 0.3);
    transition: all 0.4s;
    color: white;
}

.feature-card:hover .feature-icon {
    transform: scale(1.1) rotate(5deg);
}

.feature-card h3 {
    font-size: 1.8rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.feature-card p {
    color: var(--text-light);
    line-height: 1.8;
    font-size: 1.05rem;
}

/* Who Benefits Section */
.who-benefits {
    padding: 6rem 2rem;
    background: var(--bg-sec);
}

.benefits-grid {
    max-width: 1400px;
    margin: 3rem auto 0;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 3rem;
}

.benefit-card {
    background: #ffffff;
    padding: 3rem 2rem;
    border-radius: 25px;
    text-align: center;
    border: 1px solid var(--border-color);
    box-shadow: 0 5px 20px rgba(0,0,0,0.03);
    transition: all 0.4s;
}

.benefit-card:hover {
    background: rgba(255, 153, 0, 0.05);
    transform: translateY(-10px);
    border-color: var(--amazon-orange);
    box-shadow: 0 15px 50px rgba(255, 153, 0, 0.15);
}

.benefit-icon {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    display: block;
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-yellow));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.benefit-card h4 {
    font-size: 1.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--amazon-orange);
}

.benefit-card p {
    color: var(--text-light);
    line-height: 1.7;
}

/* Trust Section */
.trust-section {
    padding: 6rem 2rem;
    background: var(--bg-main);
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
    background: #ffffff;
    border-radius: 20px;
    border: 1px solid var(--border-color);
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
    transition: all 0.3s;
}

.trust-item:hover {
    transform: translateY(-5px);
    border-color: var(--amazon-orange);
    box-shadow: 0 10px 40px rgba(255, 153, 0, 0.15);
}

.trust-item h4 {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--amazon-orange);
    margin-bottom: 1rem;
}

.trust-item p {
    color: var(--text-light);
    line-height: 1.7;
}

/* CTA Section */
.cta {
    padding: 8rem 2rem;
    background: linear-gradient(135deg, var(--bg-sec), var(--bg-main));
    text-align: center;
    position: relative;
    overflow: hidden;
    border-top: 2px solid var(--amazon-orange);
}

.cta::before {
    content: '';
    position: absolute;
    font-size: 15rem;
    opacity: 0.03;
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
    font-size: clamp(2.5rem, 5vw, 4rem);
    font-weight: 900;
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-dark-orange));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    margin-bottom: 1.5rem;
}

.cta p {
    font-size: 1.5rem;
    color: var(--text-light);
    margin-bottom: 3rem;
}

.cta-buttons {
    display: flex;
    gap: 2rem;
    justify-content: center;
    flex-wrap: wrap;
}

.btn-cta {
    background: linear-gradient(135deg, var(--amazon-orange), var(--amazon-dark-orange));
    color: white;
    padding: 1.5rem 3.5rem;
    border-radius: 50px;
    font-size: 1.3rem;
    font-weight: 800;
    text-decoration: none;
    transition: all 0.4s;
    box-shadow: 0 10px 40px rgba(255, 153, 0, 0.3);
    display: inline-flex;
    align-items: center;
    gap: 1rem;
}

.btn-cta:hover {
    transform: translateY(-5px) scale(1.05);
    box-shadow: 0 15px 50px rgba(255, 153, 0, 0.4);
}

/* Responsive Design */
@media (max-width: 1024px) {
    .hero-container {
        grid-template-columns: 1fr;
        text-align: center;
        gap: 3rem;
    }

    .hero-stats {
        grid-template-columns: repeat(3, 1fr);
    }

    .hero-buttons {
        justify-content: center;
    }

    .hero-image {
        order: -1;
        align-self: center; /* Mobile par image wapas center me */
        margin-top: 0;
    }
}

@media (max-width: 768px) {
    .hero {
        min-height: auto;
        padding: 2rem 0;
    }

    .hero-container {
        margin-top: 80px; 
        padding: 2rem 1rem;
        gap: 2rem;
    }

    .hero-content h1 {
        font-size: 2rem;
    }

    .hero-content p {
        font-size: 1rem;
    }

    .hero-stats {
        grid-template-columns: 1fr;
        gap: 1rem;
    }

    .stat-item {
        padding: 15px;
        min-height: 70px;
    }

    .stat-number {
        font-size: 1rem;
    }

    .stat-label {
        font-size: 0.85rem;
    }

    .hero-buttons {
        flex-direction: column;
        gap: 1rem;
    }

    .btn {
        padding: 1rem 2rem;
        font-size: 1rem;
        width: 100%;
        justify-content: center;
    }

    .badges-container {
        gap: 1.5rem;
    }

    .badge {
        flex-direction: column;
        gap: 0.5rem;
        text-align: center;
    }

    .badge-icon {
        font-size: 2rem;
    }

    .features-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
    }

    .feature-card {
        padding: 2rem;
    }

    .feature-icon {
        width: 70px;
        height: 70px;
        font-size: 2.5rem;
    }

    .feature-card h3 {
        font-size: 1.5rem;
    }

    .benefits-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
    }

    .benefit-card {
        padding: 2rem 1.5rem;
    }

    .benefit-icon {
        font-size: 3rem;
    }

    .trust-grid {
        grid-template-columns: 1fr;
        gap: 1.5rem;
    }

    .trust-item {
        padding: 2rem 1.5rem;
    }

    .section-header h2 {
        font-size: 2rem;
    }

    .section-header .subtitle {
        font-size: 1.1rem;
    }

    .intro-text {
        font-size: 1rem;
    }

    .cta {
        padding: 4rem 1rem;
    }

    .cta h2 {
        font-size: 2rem;
    }

    .cta p {
        font-size: 1.1rem;
    }

    .btn-cta {
        padding: 1.2rem 2.5rem;
        font-size: 1.1rem;
        width: 100%;
        justify-content: center;
    }
}

@media (max-width: 480px) {
    .hero-content h1 {
        font-size: 1.75rem;
    }

    .stat-number {
        font-size: 0.9rem;
    }

    .btn {
        padding: 0.9rem 1.5rem;
        font-size: 0.95rem;
    }

    .feature-card h3 {
        font-size: 1.3rem;
    }

    .benefit-card h4 {
        font-size: 1.3rem;
    }

    .trust-item h4 {
        font-size: 1.2rem;
    }
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
                    <span class="word">Amazon</span>
                    <span class="word">Now</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">in</span>
                    <span class="word-highlight">India</span>
                    <span class="word">–</span>
                    <span class="word">Start</span>
                    <span class="word">Selling</span>
                    <span class="word-highlight">Today</span>
                </h1>
                <p>We provide expert <span class="highlight">Amazon Now seller onboarding services</span> to help businesses start selling on Amazon's quick commerce and instant delivery platform. With the growing demand for fast delivery, becoming an Amazon quick commerce seller allows you to reach customers instantly and generate consistent daily orders.</p>

                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">PAN India Coverage</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">Quick &amp; Easy Setup</span>
                    </div>
                    <div class="stat-item">
                        <span style=" font-weight: 700; line-height: 1.4; font-size: 1.1rem; display: block; background:  linear-gradient(135deg, var(--amazon-orange), var(--amazon-yellow));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;">24×7 Support</span>
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
                <img src="https://iardo.pages.dev/amazonm.webp" alt="Amazon Now Seller Onboarding Service in India">
            </div>
        </div>
    </section>

    <!-- Trust Badges -->
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

    <!-- What is Amazon Now + Why Choose IARDO Section -->
    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>What is Amazon Now?</h2>
            <p class="subtitle">Amazon's Quick Commerce &amp; Instant Delivery Platform for Sellers</p>
        </div>

        <div class="intro-text">
            <p>We provide expert Amazon Now seller onboarding services to help businesses start selling on Amazon's quick commerce and instant delivery platform. From Amazon Now seller registration to complete account setup, our team ensures a smooth and hassle-free onboarding process. We assist with documentation, product listing, catalog optimization, and store activation so you can easily sell on Amazon Now without delays. As part of our quick commerce onboarding solutions, we also help you optimize your listings, manage inventory efficiently, and implement pricing strategies that improve visibility and boost sales. Our goal is simple — help you onboard faster and grow your business on Amazon Now. If you want to grow in the quick commerce space, Amazon Now is a great opportunity.</p>
        </div>

        <div class="section-header" style="margin-top:50px;">
            <h2>Why Choose IARDO for Amazon Now Seller Onboarding?</h2>
            <p class="subtitle">Complete end-to-end Amazon Now onboarding and growth support across India</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-user-plus"></i></div>
                <h3>Amazon Now Seller Onboarding</h3>
                <p>Complete end-to-end Amazon Now seller onboarding including account creation, business verification, GST enrollment, PAN verification, and bank account linkage for a smooth go-live.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                <h3>Amazon Now Seller Registration Support</h3>
                <p>We handle your Amazon Now seller registration from start to finish — business details submission, document verification, compliance, and approval assistance to ensure hassle-free setup.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-box-open"></i></div>
                <h3>Product Listing &amp; Catalog Optimization</h3>
                <p>Expert catalog creation with keyword-optimized titles, bullet points, enhanced content, backend search terms, and professional product images for maximum visibility on Amazon Now.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tags"></i></div>
                <h3>Inventory &amp; Pricing Setup</h3>
                <p>Strategic inventory management and smart pricing strategies to ensure your products are always available, competitively priced, and high-performing on Amazon Now.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>Store Activation</h3>
                <p>End-to-end support for Amazon Now store onboarding, fulfillment center integration, and complete store activation — so your products go live quickly and start generating orders.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Sales Growth Strategy</h3>
                <p>As a result-driven ecommerce growth company, we help you optimize product visibility, improve pricing strategy, select high-demand products, manage inventory, and increase conversions for more orders and higher revenue on Amazon Now.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Performance Analytics &amp; Account Health</h3>
                <p>Regular monitoring of account health metrics, order performance, customer feedback, and sales analytics to continuously improve your Amazon Now operations.</p>
            </div>
        </div>
    </section>

    <!-- Who Can Benefit Section -->
    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Amazon Now Seller Registration Process</h2>
            <p class="subtitle">Proper setup is important for approval and performance — we handle it all for you</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-alt"></i></span>
                <h4>Step 1: Submit Business Details &amp; Registration</h4>
                <p>Share your business information and complete your Amazon Now seller registration. Required documents include GST Certificate, PAN Card, Bank Account Details, Business Address Proof, and FSSAI License for food or grocery items.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tasks"></i></span>
                <h4>Step 2: Document Verification &amp; Listing Setup</h4>
                <p>We complete document verification and set up your full product listing and catalog with optimized content, inventory management, and competitive pricing aligned with Amazon Now requirements.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-rocket"></i></span>
                <h4>Step 3: Store Onboarding &amp; Go Live</h4>
                <p>After store onboarding and final approval, your Amazon Now store goes live — ready to receive instant delivery orders and generate fast, consistent revenue every day.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tshirt"></i></span>
                <h4>Fashion &amp; Lifestyle Brands</h4>
                <p>Perfect for clothing, footwear, accessories, jewelry, watches, and fashion brands looking to leverage Amazon's strong customer trust and instant delivery model.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-mobile-alt"></i></span>
                <h4>Electronics &amp; Technology Sellers</h4>
                <p>Ideal for smartphones, laptops, accessories, gadgets, and tech products with proper certifications and compliance for Amazon Now's electronics category.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-home"></i></span>
                <h4>Home &amp; Household Essentials</h4>
                <p>For businesses selling home decor, kitchen appliances, and household products targeting urban customers who demand quick and reliable delivery.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-heartbeat"></i></span>
                <h4>Health &amp; Personal Care Brands</h4>
                <p>Suppliers of beauty products, personal care items, supplements, wellness products, and health essentials meeting Amazon Now's category-specific requirements.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-shopping-bag"></i></span>
                <h4>FMCG &amp; Grocery Suppliers</h4>
                <p>Packaged foods, beverages, personal care essentials, and household products — ideal for high-frequency daily orders on Amazon Now's instant delivery platform.</p>
            </div>
        </div>
    </section>

    <!-- Why Businesses Trust IARDO -->
    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose Us for Amazon Now Onboarding?</h2>
            <p class="subtitle">Your reliable ecommerce growth partner for Amazon Now seller success</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>⚡ Fast Onboarding Process</h4>
                <p>We streamline the entire Amazon Now onboarding process — handling documentation, compliance, and technical setup so you can start selling and generating revenue quickly without delays.</p>
            </div>
            <div class="trust-item">
                <h4>📈 Sales-Focused Approach</h4>
                <p>We don't just onboard — we help you grow. Our sales growth strategies and performance optimization ensure consistent orders, better visibility, and higher revenue on Amazon Now.</p>
            </div>
            <div class="trust-item">
                <h4>🛒 Multi-Platform Expertise</h4>
                <p>From Amazon Now and Blinkit to Zepto and Flipkart Minutes, we have hands-on experience across all major marketplaces and quick commerce platforms across India.</p>
            </div>
            <div class="trust-item">
                <h4>📊 Proven Results</h4>
                <p>100+ sellers onboarded, ₹10L+ in sales generated, and consistent growth across platforms — we deliver real, measurable results for your business on Amazon Now.</p>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Amazon Now Today</h2>
            <p>Want to start selling on Amazon Now and grow your business? Contact us today for a free consultation — let IARDO handle your complete onboarding and get you live in days!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Start Your Amazon Now Seller Journey Today</a>
            </div>
        </div>
    </section>

   <jsp:include page="../../../includes/footer/footer.jsp" />
</body>
</html>
