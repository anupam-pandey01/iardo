<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nykaa Seller Onboarding Service | Start Selling on Nykaa India</title>
    <meta name="description" content="Start selling on Nykaa with expert onboarding services. We help with registration, product listing, and sales growth for beauty brands.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- <link rel="stylesheet" href="assets/css/nykaa.css?v=light102"> -->

    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Nykaa Brand Colors */
    --nykaa-pink: #FC2779;
    --nykaa-dark-pink: #E91E63;
    --nykaa-light-pink: #FF4D94;
    --nykaa-hot-pink: #FF1493;
    --nykaa-purple: #C71585;
    
    /* Light Theme Colors */
    --bg-main: #ffffff;
    --bg-sec: #f8f9fa;
    --text-dark: #000000;
    --text-light: #333333;
    --border-color: rgba(252, 39, 121, 0.2);
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
    background: radial-gradient(circle, rgba(252, 39, 121, 0.08), transparent);
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
    background: radial-gradient(circle, rgba(255, 20, 147, 0.08), transparent);
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
    margin-top: 110px; 
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
    color: var(--nykaa-pink);
    display: inline-block;
    animation: glow 2s infinite alternate;
}

@keyframes glow {
    from { text-shadow: 0 0 10px rgba(252, 39, 121, 0.1); }
    to { text-shadow: 0 0 20px rgba(252, 39, 121, 0.3); }
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
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
    filter: drop-shadow(0 0 15px rgba(252, 39, 121, 0.3));
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
    border-color: var(--nykaa-pink);
    box-shadow: 0 10px 30px rgba(252, 39, 121, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
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
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-dark-pink));
    color: white;
    box-shadow: 0 8px 30px rgba(252, 39, 121, 0.3);
}

.btn-primary::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background: var(--nykaa-dark-pink);
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
    box-shadow: 0 12px 40px rgba(252, 39, 121, 0.4);
}

.btn-secondary {
    background: transparent;
    color: var(--nykaa-pink);
    border: 3px solid var(--nykaa-pink);
}

.btn-secondary:hover {
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
    color: white;
    transform: translateY(-3px);
    border-color: transparent;
    box-shadow: 0 8px 25px rgba(252, 39, 121, 0.2);
}

/* IMAGE ALIGNMENT FIX */
.hero-image {
    position: relative;
    animation: float-image 6s infinite ease-in-out;
    align-self: flex-start; /* Ye image ko top par push karega */
    margin-top: 2rem; /* Heading ke sath line-up karne ke liye thoda margin */
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
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
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
    background: linear-gradient(90deg, var(--nykaa-pink), var(--nykaa-hot-pink));
    transform: scaleX(0);
    transition: transform 0.4s;
}

.feature-card:hover::before {
    transform: scaleX(1);
}

.feature-card:hover {
    transform: translateY(-15px);
    box-shadow: 0 20px 60px rgba(252, 39, 121, 0.15);
    border-color: var(--border-color);
}

.feature-icon {
    width: 90px;
    height: 90px;
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    margin-bottom: 2rem;
    box-shadow: 0 10px 30px rgba(252, 39, 121, 0.3);
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
    background: var(--nykaa-light-pink);
    transform: translateY(-10px);
    border-color: var(--nykaa-pink);
    box-shadow: 0 15px 50px rgba(252, 39, 121, 0.15);
}

.benefit-icon {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    display: block;
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.benefit-card h4 {
    font-size: 1.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--nykaa-pink);
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
    border-color: var(--nykaa-pink);
    box-shadow: 0 10px 40px rgba(252, 39, 121, 0.15);
}

.trust-item h4 {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--nykaa-pink);
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
    border-top: 2px solid var(--nykaa-pink);
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
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-hot-pink));
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
    background: linear-gradient(135deg, var(--nykaa-pink), var(--nykaa-dark-pink));
    color: white;
    padding: 1.5rem 3.5rem;
    border-radius: 50px;
    font-size: 1.3rem;
    font-weight: 800;
    text-decoration: none;
    transition: all 0.4s;
    box-shadow: 0 10px 40px rgba(252, 39, 121, 0.3);
    display: inline-flex;
    align-items: center;
    gap: 1rem;
}

.btn-cta:hover {
    transform: translateY(-5px) scale(1.05);
    box-shadow: 0 15px 50px rgba(252, 39, 121, 0.4);
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
        align-self: center; /* Mobile par wapas center mein */
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
    
        .hero-container {
            margin-top: 110px !important;
            padding-top: 3rem !important;
        }
        .hero-content h1 {
            color: #000000 !important; 
            font-weight: 900 !important;
        }
        .hero-content p {
            color: #333333 !important; 
        }
        /* IMAGE KO UPAR LAANE KA FIX */
        .hero-image {
            align-self: flex-start !important; /* Center se hata kar upar align karega */
            margin-top: 2rem !important; /* Heading ke exactly samne set karne ke liye */
        }
        /* Mobile View Fix */
        @media (max-width: 1024px) {
            .hero-container {
                margin-top: 80px !important;
            }
            .hero-image {
                align-self: center !important;
                margin-top: 0 !important;
            }
        }
    </style>
</head>
<body>

    <jsp:include page="../../../includes/navbar/navbar.jsp" />

    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">Nykaa</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">–</span>
                    <span class="word-highlight">Start Selling on Nykaa</span>
                    <span class="word">with</span>
                    <span class="word">Expert</span>
                    <span class="word">Support</span>
                </h1>
                <p>Nykaa is India's leading beauty and wellness marketplace. IARDO offers complete <span class="highlight">Nykaa Seller Onboarding Services</span> across PAN India to help beauty brands launch, list products, and reach millions of beauty-focused customers.</p>

                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">100+ Sellers Onboarded</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">₹10L+ Sales Generated</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">PAN India Service</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="https://wa.me/9310194865" class="btn btn-primary">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/nykaa.webp" alt="Nykaa Seller Onboarding Service">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>100+ Sellers Onboarded</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Onboarding Process</span>
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
            <h2>Why Sell on Nykaa?</h2>
            <p class="subtitle">Nykaa helps brands build identity and generate premium sales</p>
        </div>

        <div class="intro-text">
            <p>Nykaa is India's leading beauty and wellness marketplace where brands sell cosmetics, skincare, haircare, and personal care products. It connects sellers with millions of beauty-focused customers across India. If you want to grow your beauty or cosmetic brand online, Nykaa is one of the best platforms.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-users"></i></div>
                <h3>Huge Beauty-Focused Audience</h3>
                <p>Reach millions of beauty enthusiasts and wellness-conscious customers who actively shop for cosmetics, skincare, and personal care products on Nykaa every day.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marker-alt"></i></div>
                <h3>Pan India Reach</h3>
                <p>Deliver your beauty products to customers across every city and town in India with Nykaa's strong pan-India logistics and delivery network.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rupee-sign"></i></div>
                <h3>High-Value Customers</h3>
                <p>Nykaa's premium beauty-focused customer base places high-value orders, giving beauty brands better margins and a more profitable selling experience.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-award"></i></div>
                <h3>Trusted Platform</h3>
                <p>Selling on Nykaa adds credibility to your beauty brand. Customers trust Nykaa-listed brands, helping you build a strong identity in the beauty market.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rocket"></i></div>
                <h3>Strong Brand Visibility</h3>
                <p>Get discovered through Nykaa's powerful search, recommendations, Hot Pink Sale events, and promotional campaigns that drive massive traffic to your listings.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="process">
        <div class="section-header">
            <h2>Nykaa Seller Registration Process</h2>
            <p class="subtitle">Nykaa onboarding is strict and requires proper guidance — we simplify it for you</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-alt"></i></span>
                <h4>Submit Brand & Business Details</h4>
                <p>Share your brand and business information to begin the Nykaa seller registration and brand approval process with the Nykaa team.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-folder-open"></i></span>
                <h4>Documentation Verification</h4>
                <p>GST Certificate, PAN Card, Bank Account Details, Brand Trademark (important) and Business Address Proof — all managed and submitted by us.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-certificate"></i></span>
                <h4>Brand Approval Process</h4>
                <p>We handle Nykaa's strict brand authorization, cosmetic compliance documentation, regulatory approvals and category approval to get your brand listed.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-box-open"></i></span>
                <h4>Product Listing & Catalog Setup</h4>
                <p>Detailed product catalogs with ingredient lists, shade descriptions, usage instructions and benefit-focused content optimized for beauty shoppers on Nykaa.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>Go Live on Nykaa</h4>
                <p>Complete store activation and go-live on Nykaa so you can start receiving orders from beauty-focused customers across India immediately.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="our-services">
        <div class="section-header">
            <h2>Our Nykaa Seller Onboarding Services</h2>
            <p class="subtitle">We help you launch and scale your beauty brand on Nykaa — complete end-to-end support</p>
        </div>

        <div class="intro-text">
            <p>Selling on Nykaa connects you with millions of beauty enthusiasts and wellness-conscious customers across India. As a premium beauty marketplace with strict quality standards and compliance requirements, Nykaa demands careful onboarding. IARDO's Nykaa Onboarding Services help beauty brands navigate platform requirements and build a thriving presence.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
                <h3>Nykaa Seller Account Setup</h3>
                <p>Full Nykaa seller account setup including documentation, KYC verification, brand certification and cosmetic compliance — handled end-to-end by our expert team.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-certificate"></i></div>
                <h3>Brand Approval Assistance</h3>
                <p>Complete assistance with brand authorization documents, trademark verification, CDSCO compliance, cruelty-free certifications and Nykaa's brand onboarding process.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-file-signature"></i></div>
                <h3>Documentation Support</h3>
                <p>We prepare, organize and submit all required documents — including cosmetic registration and ingredient disclosure — to ensure smooth and fast approval from Nykaa.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-camera"></i></div>
                <h3>Product Catalog & Listing Optimization</h3>
                <p>Professional beauty photography guidance, Nykaa-approved image standards, shade descriptions, ingredient benefits and SEO-optimized content for maximum visibility.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tags"></i></div>
                <h3>Pricing & Strategy Setup</h3>
                <p>Competitive pricing analysis, margin optimization and guidance on participating in Nykaa's Hot Pink Sale, Beauty Bonanza and seasonal promotional campaigns.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>Store Launch & Activation</h3>
                <p>Complete store activation, inventory and batch management setup, logistics integration and go-live support so your beauty brand is ready to sell from day one.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Sales Growth Planning</h3>
                <p>Ongoing support with product visibility, catalog optimization, brand positioning, competitive pricing strategy and performance tracking for consistent growth.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Marketing & Performance Analytics</h3>
                <p>Strategic guidance on Nykaa Network advertising, influencer collaborations, beauty content creation and regular performance reports to optimize your Nykaa presence.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Can Benefit from Our Nykaa Onboarding Services?</h2>
            <p class="subtitle">Our services are ideal for various beauty and wellness business categories</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-spray-can"></i></span>
                <h4>Cosmetics & Makeup Brands</h4>
                <p>Perfect for makeup brands offering lipsticks, foundations, eyeshadows, and color cosmetics targeting Nykaa's beauty-savvy customer base.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-seedling"></i></span>
                <h4>Skincare & Natural Beauty</h4>
                <p>Ideal for skincare brands, organic beauty products, clean beauty lines, and natural cosmetics appealing to conscious consumers on Nykaa.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-cut"></i></span>
                <h4>Haircare & Styling Products</h4>
                <p>Great for shampoo brands, hair treatments, styling products and hair tools leveraging Nykaa's strong and fast-growing haircare category.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-spa"></i></span>
                <h4>Personal Care & Hygiene</h4>
                <p>Excellent for personal care, bath & body, oral care, feminine hygiene and grooming products serving daily beauty and wellness needs.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-leaf"></i></span>
                <h4>Wellness & Supplements</h4>
                <p>Perfect for health supplements, vitamins, nutrition products and wellness items in Nykaa's expanding health and wellness category.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-gem"></i></span>
                <h4>Fragrance & Luxury Beauty</h4>
                <p>Ideal for perfumes, luxury skincare, premium beauty tools and high-end cosmetics targeting Nykaa's affluent and premium shoppers.</p>
            </div>
        </div>
    </section>

    <section class="trust-section" id="why-us">
        <div class="section-header">
            <h2>Why Choose IARDO for Nykaa Onboarding?</h2>
            <p class="subtitle">Proven results. Beauty expertise. Real support.</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>Fast Onboarding Process</h4>
                <p>We streamline the entire Nykaa onboarding process so your beauty brand goes live faster and starts reaching customers without unnecessary delays.</p>
            </div>
            <div class="trust-item">
                <h4>Beauty Marketplace Expertise</h4>
                <p>Our team has specialized knowledge of Nykaa's beauty-focused marketplace, cosmetic compliance requirements and beauty product listing optimization.</p>
            </div>
            <div class="trust-item">
                <h4>Sales-Focused Approach</h4>
                <p>We don't just onboard — we build a full strategy focused on product visibility, brand positioning and consistent sales growth on Nykaa.</p>
            </div>
            <div class="trust-item">
                <h4>End-to-End Support</h4>
                <p>From brand registration to live selling and ongoing optimization — we support you at every step of your Nykaa seller journey.</p>
            </div>
            <div class="trust-item">
                <h4>Proven Results</h4>
                <p>100+ sellers onboarded. ₹10L+ sales generated. Consistent growth across platforms — results that speak for themselves.</p>
            </div>
            <div class="trust-item">
                <h4>Regulatory Compliance Knowledge</h4>
                <p>Deep understanding of cosmetic regulations, ingredient disclosure requirements, certifications and quality standards specific to the beauty industry.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Nykaa Today</h2>
            <p>Want to launch your beauty brand on Nykaa? Contact us today for a free consultation. Let IARDO handle your complete onboarding and get you selling in days!</p>
            <div class="cta-buttons">
                <a href="https://wa.me/9310194865" class="btn-cta"><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

    <script src="assets/js/swiggy.js"></script>
</body>
</html>
