<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BigBasket Seller Onboarding Service in India | Grow Your Grocery Business</title>
    <meta name="description" content="Start selling on BigBasket with expert onboarding services. We help you register, list products, and grow your grocery sales across India.">
    <meta name="keywords" content="BigBasket seller onboarding, BigBasket registration, sell on BigBasket, BigBasket vendor, grocery seller India, FMCG onboarding, IARDO BigBasket services">
    <meta name="robots" content="index, follow">
    <meta property="og:title" content="BigBasket Seller Onboarding Service in India | Grow Your Grocery Business">
    <meta property="og:description" content="Expert BigBasket onboarding services. Account setup, documentation, product listing and sales growth — end-to-end support by IARDO.">
    <meta property="og:type" content="website">
    <link rel="canonical" href="${pageContext.request.contextPath}/bigbasket">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* ================= ROOT & VARIABLES (LIGHT THEME) ================= */
:root {
    --bb-green: #84C225;
    --bb-dark-green: #6FA620;
    --bb-light-green: #9BCF4A;
    
    /* Light Theme Colors */
    --bg-white: #ffffff;
    --bg-light: #f8f9fa;
    --bg-soft-green: #f4f9eb;  /* Very light green tint */
    --text-dark: #111827;      /* Dark grey/black for headings */
    --text-gray: #4b5563;      /* Medium grey for text */
    --border-light: #e5e7eb;   /* Light border */
}

* { margin: 0; padding: 0; box-sizing: border-box; }

body {
    font-family: 'Poppins', sans-serif;
    background: var(--bg-white);
    color: var(--text-dark);
    line-height: 1.6;
    overflow-x: hidden;
    padding-top: 80px;
}

/* ================= HERO ================= */
.hero {
    min-height: 90vh;
    background: linear-gradient(135deg, var(--bg-light) 0%, var(--bg-white) 50%, var(--bg-soft-green) 100%);
    display: flex;
    align-items: center;
    position: relative;
    overflow: hidden;
}

.hero::before {
    content: '';
    position: absolute;
    width: 800px; height: 800px;
    background: radial-gradient(circle, rgba(132,194,37,0.08), transparent);
    border-radius: 50%;
    top: -400px; right: -300px;
    animation: pulse 8s infinite ease-in-out;
}

.hero::after {
    content: '';
    position: absolute;
    width: 600px; height: 600px;
    background: radial-gradient(circle, rgba(155,207,74,0.05), transparent);
    border-radius: 50%;
    bottom: -300px; left: -200px;
    animation: pulse 6s infinite ease-in-out reverse;
}

@keyframes pulse {
    0%, 100% { transform: scale(1); opacity: 0.5; }
    50% { transform: scale(1.1); opacity: 0.8; }
}

.hero-container {
    max-width: 1400px;
    margin: 0 auto;
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
    color: var(--bb-dark-green);
    display: inline-block;
}

/* Animated Heading */
.animated-heading { overflow: hidden; }

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
    background: linear-gradient(135deg, var(--bb-dark-green), var(--bb-green));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: popIn 0.8s cubic-bezier(0.68,-0.55,0.265,1.55) forwards;
}

@keyframes slideUp { to { opacity: 1; transform: translateY(0); } }
@keyframes popIn {
    0%  { opacity: 0; transform: scale(0.5) rotate(-5deg); }
    70% { transform: scale(1.1) rotate(2deg); }
    100%{ opacity: 1; transform: scale(1) rotate(0deg); }
}

.animated-heading .word:nth-child(1) { animation-delay: 0.1s; }
.animated-heading .word:nth-child(2) { animation-delay: 0.2s; }
.animated-heading .word:nth-child(3) { animation-delay: 0.3s; }
.animated-heading .word:nth-child(4) { animation-delay: 0.4s; }
.animated-heading .word:nth-child(5) { animation-delay: 0.5s; }
.animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
.animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
.animated-heading .word:nth-child(8) { animation-delay: 0.8s; }
.animated-heading .word-highlight    { animation-delay: 0.9s; }

.hero-content p {
    font-size: 1.2rem;
    color: var(--text-gray);
    margin-bottom: 3rem;
    line-height: 1.8;
}

.hero-stats {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 2rem;
    margin-bottom: 3rem;
}

.stat-item {
    background: var(--bg-white);
    border: 1px solid var(--border-light);
    border-radius: 12px;
    padding: 20px;
    text-align: center;
    min-height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s;
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
}

.stat-item:hover {
    transform: translateY(-5px);
    border-color: var(--bb-green);
    box-shadow: 0 10px 25px rgba(132,194,37,0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 700;
    color: var(--bb-dark-green);
    line-height: 1.4;
    display: block;
    white-space: normal;
    word-wrap: break-word;
    width: 100%;
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
}

.btn-primary {
    background: var(--bb-green);
    color: #fff;
    box-shadow: 0 8px 25px rgba(132,194,37,0.3);
}

.btn-primary:hover { 
    background: var(--bb-dark-green);
    transform: translateY(-3px); 
    box-shadow: 0 12px 30px rgba(132,194,37,0.4); 
}

.btn-secondary {
    background: var(--bg-white);
    color: var(--text-dark);
    border: 2px solid var(--border-light);
}

.btn-secondary:hover {
    background: var(--bg-light);
    border-color: var(--bb-green);
    transform: translateY(-3px);
}

.hero-image img {
    width: 100%;
    border-radius: 30px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.08);
    border: 1px solid var(--border-light);
    animation: float-image 6s infinite ease-in-out;
}

@keyframes float-image {
    0%, 100% { transform: translateY(0); }
    50%       { transform: translateY(-20px); }
}

/* ================= SHARED SECTIONS (LIGHT THEME) ================= */
.trust-badges, .why-sell, .documents-section, .grow-sales, .results-section {
    background: var(--bg-white);
    padding: 6rem 2rem;
}

.what-is-section, .process-section, .services-section, .trust-section {
    background: var(--bg-light);
    padding: 6rem 2rem;
}

.trust-badges { padding: 3rem 2rem; border-top: 1px solid var(--border-light); border-bottom: 1px solid var(--border-light); }

.badges-container { max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-around; align-items: center; gap: 3rem; flex-wrap: wrap; }
.badge { display: flex; align-items: center; gap: 1rem; font-weight: 600; color: var(--text-dark); }
.badge-icon { font-size: 3rem; color: var(--bb-green); }

.section-header { text-align: center; max-width: 900px; margin: 0 auto 5rem; }
.section-header h2 { font-size: clamp(2rem, 4vw, 3.5rem); font-weight: 900; color: var(--text-dark); margin-bottom: 1.5rem; }
.section-header .subtitle { font-size: 1.2rem; color: var(--text-gray); }
.intro-text, .what-is-content p { max-width: 1000px; margin: 0 auto 4rem; font-size: 1.2rem; color: var(--text-gray); text-align: center; }
.what-is-content p { margin-bottom: 1.5rem; }

/* Grids */
.why-sell-grid { max-width: 1000px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(280px,1fr)); gap: 2rem; }
.docs-grid { max-width: 1000px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(180px,1fr)); gap: 2rem; }
.features-grid { max-width: 1400px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(350px,1fr)); gap: 3rem; }
.grow-grid { max-width: 1200px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(200px,1fr)); gap: 2.5rem; }
.trust-grid { max-width: 1200px; margin: 3rem auto 0; display: grid; grid-template-columns: repeat(auto-fit, minmax(250px,1fr)); gap: 2.5rem; }
.results-grid { max-width: 1000px; margin: 0 auto; display: grid; grid-template-columns: repeat(3,1fr); gap: 2rem; }

/* Cards */
.why-card, .doc-card, .feature-card, .grow-card, .trust-item, .result-card {
    background: var(--bg-white);
    border: 1px solid var(--border-light);
    border-radius: 20px;
    padding: 2.5rem;
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
    transition: all 0.4s;
    text-align: center;
}

.why-card { display: flex; align-items: center; gap: 1.5rem; text-align: left; padding: 2rem 2.5rem; font-weight: 600; color: var(--text-dark); }
.feature-card { text-align: left; padding: 3rem; }

.why-card:hover, .doc-card:hover, .feature-card:hover, .grow-card:hover, .trust-item:hover, .result-card:hover {
    transform: translateY(-8px);
    border-color: var(--bb-green);
    box-shadow: 0 15px 35px rgba(132,194,37,0.15);
    background: var(--bg-soft-green);
}

.why-icon, .doc-icon, .feature-icon, .grow-icon, .trust-emoji, .result-label i {
    color: var(--bb-green);
    font-size: 3rem;
    margin-bottom: 1.5rem;
    display: inline-block;
}
.why-icon { font-size: 2rem; margin-bottom: 0; min-width: 2.5rem; }

.feature-icon {
    width: 90px; height: 90px;
    background: #f4f9eb;
    border: 1px solid #d4e7b5;
    border-radius: 20px;
    display: flex; align-items: center; justify-content: center;
}

.feature-card:hover .feature-icon {
    background: var(--bb-green);
    color: white;
    transform: scale(1.1) rotate(5deg);
}

.doc-card h4, .feature-card h3, .grow-card h4, .trust-item h4 {
    font-size: 1.5rem;
    font-weight: 700;
    color: var(--text-dark);
    margin-bottom: 1rem;
}
.doc-card h4, .grow-card h4, .trust-item h4 { font-size: 1.2rem; }
.why-card span:last-child { font-size: 1.05rem; }

.doc-card p, .feature-card p, .grow-card p, .trust-item p { color: var(--text-gray); line-height: 1.7; }

/* Process Steps */
.process-steps { max-width: 1400px; margin: 0 auto; display: flex; align-items: center; justify-content: center; flex-wrap: wrap; gap: 1rem; }
.step-card {
    background: var(--bg-white); border: 1px solid var(--border-light); border-radius: 20px;
    padding: 2.5rem 1.5rem; text-align: center; width: 200px; transition: all 0.4s; position: relative;
    box-shadow: 0 4px 15px rgba(0,0,0,0.03);
}
.step-card:hover { border-color: var(--bb-green); transform: translateY(-10px); box-shadow: 0 15px 30px rgba(132,194,37,0.15); }
.step-number {
    position: absolute; top: -16px; left: 50%; transform: translateX(-50%);
    background: var(--bb-green); color: #fff; font-weight: 900; font-size: 0.85rem; padding: 4px 14px; border-radius: 20px;
}
.step-icon { font-size: 2.5rem; color: var(--bb-green); margin: 0.5rem 0 1rem; display: block; }
.step-card h4 { font-size: 1rem; font-weight: 700; color: var(--text-dark); margin-bottom: 0.6rem; }
.step-card p { font-size: 0.85rem; color: var(--text-gray); line-height: 1.5; }
.step-arrow { font-size: 1.5rem; color: #d1d5db; padding: 0 0.5rem; }
.process-note { max-width: 700px; margin: 3rem auto 0; text-align: center; background: var(--bg-soft-green); border: 1px solid #d4e7b5; border-radius: 12px; padding: 1.5rem 2rem; color: var(--text-gray); font-size: 1.05rem; }

/* Results */
.result-number { display: block; font-size: clamp(1.6rem, 3.5vw, 3rem); font-weight: 900; color: var(--bb-green); margin-bottom: 1rem; }
.result-label { font-size: 0.95rem; font-weight: 600; color: var(--text-gray); }
.result-banner { max-width: 600px; margin: 3.5rem auto 0; text-align: center; background: var(--bb-green); color: #fff; font-size: 1.3rem; font-weight: 900; padding: 1.5rem 3rem; border-radius: 50px; box-shadow: 0 10px 30px rgba(132,194,37,0.3); }

/* ================= CTA (BULLETPROOF CENTERED) ================= */
section.cta {
    background: linear-gradient(135deg, var(--bg-soft-green), var(--bg-white)) !important;
    border-top: 3px solid var(--bb-green) !important;
    padding: 8rem 2rem !important;
    width: 100% !important;
    display: flex !important; 
    flex-direction: column !important;
    justify-content: center !important;
    align-items: center !important;
    text-align: center !important;
}

section.cta .cta-content {
    max-width: 900px !important;
    width: 100% !important;
    margin: 0 auto !important;
    display: flex !important;
    flex-direction: column !important;
    align-items: center !important;
    justify-content: center !important;
    text-align: center !important;
}

section.cta .cta-content h2 {
    font-size: clamp(2.5rem, 5vw, 4rem) !important;
    font-weight: 900 !important;
    color: var(--text-dark) !important;
    margin-bottom: 1.5rem !important;
    text-align: center !important;
    width: 100% !important;
}

section.cta .cta-content p {
    font-size: 1.3rem !important;
    color: var(--text-gray) !important;
    margin-bottom: 3rem !important;
    text-align: center !important;
    width: 100% !important;
}

section.cta .cta-buttons {
    display: flex !important;
    justify-content: center !important;
    align-items: center !important;
    width: 100% !important;
}

.btn-cta {
    background: var(--bb-green) !important;
    color: white !important;
    padding: 1.5rem 3.5rem !important;
    border-radius: 50px !important;
    font-size: 1.3rem !important;
    font-weight: 800 !important;
    text-decoration: none !important;
    transition: all 0.4s !important;
    box-shadow: 0 10px 30px rgba(132,194,37,0.3) !important;
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    gap: 1rem !important;
    margin: 0 auto !important;
}

.btn-cta:hover {
    transform: translateY(-5px) scale(1.05) !important;
    background: var(--bb-dark-green) !important;
    box-shadow: 0 15px 40px rgba(132,194,37,0.4) !important;
}

/* ================= RESPONSIVE ================= */
@media (max-width: 1024px) {
    .hero-container { grid-template-columns: 1fr; text-align: center; }
    .hero-stats { grid-template-columns: repeat(3,1fr); }
    .hero-buttons { justify-content: center; }
    .step-arrow { display: none; }
}

@media (max-width: 768px) {
    body { padding-top: 70px; }
    .hero-stats { grid-template-columns: 1fr; }
    .features-grid { grid-template-columns: 1fr; }
    .process-steps { flex-direction: column; align-items: center; }
    .step-card { width: 100%; max-width: 320px; }
    .step-arrow { display: none; }
    .docs-grid { grid-template-columns: repeat(2,1fr); }
    .grow-grid { grid-template-columns: 1fr; }
    .results-grid { grid-template-columns: 1fr; }
    .result-number { font-size: clamp(1.4rem,6vw,2rem); }
    .what-is-content { padding: 0 1rem; }
    .what-is-content p { font-size: 1rem; }
    .why-sell-grid { grid-template-columns: 1fr; }
    .result-card { padding: 2rem 1rem; }
    .trust-grid { grid-template-columns: 1fr; }
    .section-header { margin: 0 auto 3rem; }
    .badges-container { gap: 1.5rem; }
    .hero-content h1 { font-size: 2rem; }
    .hero-content p { font-size: 1rem; }
    .hero-buttons { flex-direction: column; align-items: center; }
    .btn { width: 100%; justify-content: center; }
    .badge { flex-direction: column; gap: 0.5rem; text-align: center; }
    .badge-icon { font-size: 2rem; }
    section.cta { padding: 5rem 1rem !important; }
    .cta p { font-size: 1.1rem !important; }
    .btn-cta { width: 100% !important; justify-content: center !important; }
}

@media (max-width: 480px) {
    body { padding-top: 65px; }
    .result-number { font-size: 1.4rem; }
    .docs-grid { grid-template-columns: 1fr; }
    .section-header h2 { font-size: 1.6rem; }
    .hero-content h1 { font-size: 1.75rem; }
    .cta h2 { font-size: 2rem !important; }
    .btn-cta { font-size: 1rem !important; padding: 1rem 2rem !important; }
    .feature-card { padding: 2rem; }
    .feature-icon { width: 70px; height: 70px; font-size: 2.5rem; }
    .feature-card h3 { font-size: 1.3rem; }
}
</style>
</head>
<body>

<jsp:include page="../../../includes/navbar/navbar.jsp" />

<section class="hero" id="home">
    <div class="hero-container">
        <div class="hero-content">
            <h1 class="animated-heading">
                <span class="word">BigBasket</span>
                <span class="word">Seller</span>
                <span class="word">Onboarding</span>
                <span class="word">Service</span>
                <span class="word">–</span>
                <span class="word">Start</span>
                <span class="word">Selling</span>
                <span class="word">on</span>
                <span class="word-highlight">BigBasket</span>
            </h1>
            <p>IARDO provides expert end-to-end <span class="highlight">BigBasket Seller Onboarding</span> across India — from registration to sales growth, we handle it all so you can focus on your grocery business.</p>

            <div class="hero-stats">
                <div class="stat-item">
                    <span class="stat-number">100+ Sellers</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">₹10L+ Sales</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number">24×7 Support</span>
                </div>
            </div>

            <div class="hero-buttons">
                <a href="https://wa.me/9310194865" class="btn btn-primary" target="_blank">
                    <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                </a>
                <a href="#services" class="btn btn-secondary">
                    <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                </a>
            </div>
        </div>
        <div class="hero-image">
            <img src="https://iardo.pages.dev/bigbasketm.webp" alt="BigBasket Seller Onboarding Service India">
        </div>
    </div>
</section>

<section class="trust-badges">
    <div class="badges-container">
        <div class="badge">
            <span class="badge-icon"><i class="fas fa-bolt"></i></span>
            <span>Fast Onboarding</span>
        </div>
        <div class="badge">
            <span class="badge-icon"><i class="fas fa-chart-line"></i></span>
            <span>Sales-Focused</span>
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

<section class="what-is-section" id="about">
    <div class="section-header">
        <h2>What is BigBasket?</h2>
        <p class="subtitle">India's leading online grocery & daily essentials platform</p>
    </div>
    <div class="what-is-content">
        <p>BigBasket is India's leading online grocery platform that delivers fruits, vegetables, FMCG products, and daily essentials across major cities. It connects sellers with millions of customers looking for quality grocery products.</p>
        <p>If you want to scale your grocery or FMCG business online, BigBasket is one of the best platforms to start.</p>
    </div>
</section>

<section class="why-sell" id="why-sell">
    <div class="section-header">
        <h2><i class="fas fa-chart-line" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Why Sell on BigBasket?</h2>
        <p class="subtitle">BigBasket helps sellers generate stable and long-term revenue</p>
    </div>
    <div class="why-sell-grid">
        <div class="why-card">
            <span class="why-icon"><i class="fas fa-shopping-cart"></i></span>
            <span>Access to millions of grocery buyers</span>
        </div>
        <div class="why-card">
            <span class="why-icon"><i class="fas fa-map-marker-alt"></i></span>
            <span>Strong presence in metro & tier-1 cities</span>
        </div>
        <div class="why-card">
            <span class="why-icon"><i class="fas fa-rupee-sign"></i></span>
            <span>High demand for daily-use products</span>
        </div>
        <div class="why-card">
            <span class="why-icon"><i class="fas fa-box"></i></span>
            <span>Bulk & repeat orders</span>
        </div>
        <div class="why-card">
            <span class="why-icon"><i class="fas fa-rocket"></i></span>
            <span>Trusted brand with strong logistics</span>
        </div>
    </div>
</section>

<section class="process-section" id="process">
    <div class="section-header">
        <h2><i class="fas fa-file-alt" style="color: var(--bb-green); margin-right: 0.5rem;"></i> BigBasket Seller Registration Process</h2>
        <p class="subtitle">Becoming a seller on BigBasket involves these steps</p>
    </div>
    <div class="process-steps">
        <div class="step-card">
            <div class="step-number">01</div>
            <div class="step-icon"><i class="fas fa-building"></i></div>
            <h4>Business Registration</h4>
            <p>Submit your complete business information for registration</p>
        </div>
        <div class="step-arrow"><i class="fas fa-chevron-right"></i></div>
        <div class="step-card">
            <div class="step-number">02</div>
            <div class="step-icon"><i class="fas fa-file-upload"></i></div>
            <h4>Document Verification</h4>
            <p>Submit GST, PAN, FSSAI, and other necessary documents</p>
        </div>
        <div class="step-arrow"><i class="fas fa-chevron-right"></i></div>
        <div class="step-card">
            <div class="step-number">03</div>
            <div class="step-icon"><i class="fas fa-box-open"></i></div>
            <h4>Product Listing & Catalog</h4>
            <p>Set up your product catalog with optimized listings</p>
        </div>
        <div class="step-arrow"><i class="fas fa-chevron-right"></i></div>
        <div class="step-card">
            <div class="step-number">04</div>
            <div class="step-icon"><i class="fas fa-warehouse"></i></div>
            <h4>Warehouse Onboarding</h4>
            <p>Configure your warehouse or store for fulfillment</p>
        </div>
        <div class="step-arrow"><i class="fas fa-chevron-right"></i></div>
        <div class="step-card">
            <div class="step-number">05</div>
            <div class="step-icon"><i class="fas fa-check-circle"></i></div>
            <h4>Approval & Go-Live</h4>
            <p>Get approved by BigBasket and start selling</p>
        </div>
    </div>
    <div class="process-note">
        <i class="fas fa-info-circle"></i> Without proper guidance, approval can take time and effort. That's where we come in.
    </div>
</section>

<section class="documents-section" id="documents">
    <div class="section-header">
        <h2><i class="fas fa-file-invoice" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Documents Required for BigBasket Seller</h2>
        <p class="subtitle">Keep these documents ready before starting your registration</p>
    </div>
    <div class="docs-grid">
        <div class="doc-card">
            <span class="doc-icon"><i class="fas fa-receipt"></i></span>
            <h4>GST Certificate</h4>
        </div>
        <div class="doc-card">
            <span class="doc-icon"><i class="fas fa-id-card"></i></span>
            <h4>PAN Card</h4>
        </div>
        <div class="doc-card">
            <span class="doc-icon"><i class="fas fa-university"></i></span>
            <h4>Bank Account Details</h4>
        </div>
        <div class="doc-card">
            <span class="doc-icon"><i class="fas fa-map-marker-alt"></i></span>
            <h4>Business Address Proof</h4>
        </div>
        <div class="doc-card">
            <span class="doc-icon"><i class="fas fa-leaf"></i></span>
            <h4>FSSAI License</h4>
            <p style="font-size:0.85rem; color: var(--text-gray); margin-top:0.3rem;">(mandatory for food items)</p>
        </div>
    </div>
</section>

<section class="services-section" id="services">
    <div class="section-header">
        <h2><i class="fas fa-briefcase" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Our BigBasket Onboarding Services</h2>
        <p class="subtitle">Complete end-to-end support for onboarding and growth</p>
    </div>
    <div class="intro-text">
        <p>We help you launch and scale your business on BigBasket. Our team provides comprehensive support from registration to revenue growth on India's largest grocery platform.</p>
    </div>
    <div class="features-grid">
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-user-plus"></i></div>
            <h3>BigBasket Seller Account Registration</h3>
            <p>We manage the complete registration process including business documentation, KYC, and vendor account activation so you're live without hassle.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-file-alt"></i></div>
            <h3>Documentation & Approval Assistance</h3>
            <p>Our team handles all paperwork — GST, FSSAI, PAN, address proof — and ensures smooth approval from the BigBasket vendor team.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-box-open"></i></div>
            <h3>Product Listing & Catalog Optimization</h3>
            <p>We create compelling product listings with optimized titles, descriptions, and images that meet BigBasket's standards and attract buyers.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-tags"></i></div>
            <h3>Inventory & Pricing Setup</h3>
            <p>We set up real-time inventory tracking and competitive pricing strategies that maximize sales volume and profit margins.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-store"></i></div>
            <h3>Store Activation Support</h3>
            <p>Full end-to-end store activation including supply chain configuration, delivery scheduling, and logistics integration for smooth fulfillment.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
            <h3>Sales Growth Strategy</h3>
            <p>Beyond onboarding, we implement data-driven strategies for product visibility, high-demand selection, and performance tracking for consistent growth.</p>
        </div>
    </div>
</section>

<section class="grow-sales" id="growth">
    <div class="section-header">
        <h2><i class="fas fa-chart-bar" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Grow Your Sales on BigBasket</h2>
        <p class="subtitle">Our expert team focuses on driving consistent, measurable results</p>
    </div>
    <div class="grow-grid">
        <div class="grow-card">
            <span class="grow-icon"><i class="fas fa-eye"></i></span>
            <h4>Product Ranking & Visibility</h4>
            <p>Strategic placement and optimization for maximum discoverability on BigBasket</p>
        </div>
        <div class="grow-card">
            <span class="grow-icon"><i class="fas fa-tags"></i></span>
            <h4>Competitive Pricing Strategy</h4>
            <p>Market analysis and dynamic pricing to stay ahead in the grocery space</p>
        </div>
        <div class="grow-card">
            <span class="grow-icon"><i class="fas fa-fire"></i></span>
            <h4>High-Demand Product Selection</h4>
            <p>Data-driven insights to identify and list the most in-demand grocery products</p>
        </div>
        <div class="grow-card">
            <span class="grow-icon"><i class="fas fa-boxes"></i></span>
            <h4>Inventory Planning</h4>
            <p>Prevent stockouts and overselling with smart inventory monitoring</p>
        </div>
        <div class="grow-card">
            <span class="grow-icon"><i class="fas fa-tachometer-alt"></i></span>
            <h4>Performance Tracking</h4>
            <p>Regular analytics reports on sales trends, ratings, and fulfillment rates</p>
        </div>
    </div>
    <div class="result-banner">
        <i class="fas fa-bolt"></i> Result: More orders, repeat customers & consistent revenue
    </div>
</section>

<section class="trust-section" id="why-us">
    <div class="section-header">
        <h2><i class="fas fa-trophy" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Why Choose Us for BigBasket Onboarding?</h2>
        <p class="subtitle">Your reliable partner for BigBasket seller success</p>
    </div>
    <div class="trust-grid">
        <div class="trust-item">
            <span class="trust-emoji"><i class="fas fa-bolt"></i></span>
            <h4>Fast & Hassle-Free Onboarding</h4>
            <p>We expedite the entire process with efficient documentation handling so you go live quickly.</p>
        </div>
        <div class="trust-item">
            <span class="trust-emoji"><i class="fas fa-chart-line"></i></span>
            <h4>Sales-Driven Approach</h4>
            <p>We don't stop at registration — our strategies are built to drive consistent orders and revenue.</p>
        </div>
        <div class="trust-item">
            <span class="trust-emoji"><i class="fas fa-shopping-bag"></i></span>
            <h4>Multi-Platform Expertise</h4>
            <p>Deep knowledge across platforms like Blinkit, Amazon, and more to give you a competitive edge.</p>
        </div>
        <div class="trust-item">
            <span class="trust-emoji"><i class="fas fa-handshake"></i></span>
            <h4>End-to-End Support</h4>
            <p>From initial registration to post-launch growth, we're with you every step of the way.</p>
        </div>
    </div>
</section>

<section class="results-section" id="results">
    <div class="section-header">
        <h2><i class="fas fa-chart-pie" style="color: var(--bb-green); margin-right: 0.5rem;"></i> Our Achievements</h2>
        <p class="subtitle">Consistent growth across platforms</p>
    </div>
    <div class="results-grid">
        <div class="result-card">
            <span class="result-number">100+</span>
            <span class="result-label"><i class="fas fa-rocket"></i> Sellers Onboarded</span>
        </div>
        <div class="result-card">
            <span class="result-number">₹10L+</span>
            <span class="result-label"><i class="fas fa-rupee-sign"></i> Sales Generated</span>
        </div>
        <div class="result-card">
            <span class="result-number">Consistent</span>
            <span class="result-label"><i class="fas fa-chart-line"></i> Performance Growth</span>
        </div>
    </div>
</section>

<section class="cta">
    <div class="cta-content">
        <h2>Start Selling on BigBasket Today</h2>
        <p>Want to grow your grocery business online? Get in touch for a free consultation and start selling on BigBasket.</p>
        <div class="cta-buttons">
            <a href="https://wa.me/9310194865" class="btn-cta" target="_blank">
                <i class="fab fa-whatsapp"></i> Talk on WhatsApp Now
            </a>
        </div>
    </div>
</section>

<jsp:include page="../../../includes/footer/footer.jsp" />

<script src="assets/js/swiggy.js"></script>
</body>
</html>
