<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JioMart Seller Onboarding Service | Start Selling on JioMart India</title>
    <meta name="description" content="Start selling on JioMart with expert onboarding services. We help with seller registration, product listing, and sales growth.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- <link rel="stylesheet" href="assets/css/jiomart.css?v=jiomart-light"> -->

    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* JioMart Brand Colors */
    --jio-red: #E60000;
    --jio-dark-red: #B30000;
    --jio-light-red: #FF3333;
    --jio-orange: #FF6600;
    
    /* Light Theme Colors */
    --bg-main: #ffffff;
    --bg-sec: #f8f9fa;
    --text-dark: #000000; /* Pure Black for Headings */
    --text-light: #333333; /* Dark Gray for Paragraphs */
    --border-color: rgba(230, 0, 0, 0.2);
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
    background: radial-gradient(circle, rgba(230, 0, 0, 0.08), transparent);
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
    background: radial-gradient(circle, rgba(255, 102, 0, 0.08), transparent);
    border-radius: 50%;
    bottom: -300px;
    left: -200px;
    animation: pulse 6s infinite ease-in-out reverse;
}

@keyframes pulse {
    0%, 100% { transform: scale(1); opacity: 0.5; }
    50% { transform: scale(1.1); opacity: 0.8; }
}

/* NAVBAR FIX INCLUDED */
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
    color: var(--jio-red);
    display: inline-block;
    animation: glow 2s infinite alternate;
}

@keyframes glow {
    from { text-shadow: 0 0 10px rgba(230, 0, 0, 0.1); }
    to { text-shadow: 0 0 20px rgba(230, 0, 0, 0.3); }
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
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
    filter: drop-shadow(0 0 15px rgba(230, 0, 0, 0.3));
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
    border-color: var(--jio-red);
    box-shadow: 0 10px 30px rgba(230, 0, 0, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
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
    font-weight: 600;
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
    background: linear-gradient(135deg, var(--jio-red), var(--jio-dark-red));
    color: white;
    box-shadow: 0 8px 30px rgba(230, 0, 0, 0.3);
}

.btn-primary::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background: var(--jio-dark-red);
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
    box-shadow: 0 12px 40px rgba(230, 0, 0, 0.4);
}

.btn-secondary {
    background: transparent;
    color: var(--jio-red);
    border: 3px solid var(--jio-red);
}

.btn-secondary:hover {
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
    color: white;
    transform: translateY(-3px);
    border-color: transparent;
    box-shadow: 0 8px 25px rgba(230, 0, 0, 0.2);
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

.badge i {
    font-size: 3rem;
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
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
    background: linear-gradient(90deg, var(--jio-red), var(--jio-orange));
    transform: scaleX(0);
    transition: transform 0.4s;
}

.feature-card:hover::before {
    transform: scaleX(1);
}

.feature-card:hover {
    transform: translateY(-15px);
    box-shadow: 0 20px 60px rgba(230, 0, 0, 0.15);
    border-color: var(--border-color);
}

.feature-card i {
    width: 90px;
    height: 90px;
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    margin-bottom: 2rem;
    box-shadow: 0 10px 30px rgba(230, 0, 0, 0.3);
    transition: all 0.4s;
    color: white;
}

.feature-card:hover i {
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
    background: rgba(230, 0, 0, 0.05);
    transform: translateY(-10px);
    border-color: var(--jio-red);
    box-shadow: 0 15px 50px rgba(230, 0, 0, 0.15);
}

.benefit-card i {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    display: block;
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.benefit-card h4 {
    font-size: 1.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--jio-red);
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
    border-color: var(--jio-red);
    box-shadow: 0 10px 40px rgba(230, 0, 0, 0.15);
}

.trust-item h4 {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--jio-red);
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
    border-top: 2px solid var(--jio-red);
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
    background: linear-gradient(135deg, var(--jio-red), var(--jio-orange));
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
    background: linear-gradient(135deg, var(--jio-red), var(--jio-dark-red));
    color: white;
    padding: 1.5rem 3.5rem;
    border-radius: 50px;
    font-size: 1.3rem;
    font-weight: 800;
    text-decoration: none;
    transition: all 0.4s;
    box-shadow: 0 10px 40px rgba(230, 0, 0, 0.3);
    display: inline-flex;
    align-items: center;
    gap: 1rem;
}

.btn-cta:hover {
    transform: translateY(-5px) scale(1.05);
    box-shadow: 0 15px 50px rgba(230, 0, 0, 0.4);
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
        margin-top: 80px; /* Mobile navbar adjust */
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

    .badge i {
        font-size: 2rem;
    }

    .features-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
    }

    .feature-card {
        padding: 2rem;
    }

    .feature-card i {
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

    .benefit-card i {
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
        .hero-image {
            align-self: flex-start !important; 
            margin-top: 2rem !important; 
        }
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
                    <span class="word">JioMart</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">&#8211;</span>
                    <span class="word-highlight">Start Selling</span>
                    <span class="word">on</span>
                    <span class="word">JioMart</span>
                </h1>
                <p>IARDO provides complete end-to-end <span class="highlight">JioMart Seller Onboarding</span> support across PAN India. From account registration to product listing and sales growth — we handle everything so you can focus on your business.</p>

                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">100+ Sellers Onboarded</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">&#8377;10L+ Sales Generated</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">PAN India Service</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20JioMart" class="btn btn-primary" target="_blank">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/jiomart.webp" alt="JioMart Seller Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <i class="fas fa-users"></i>
                <span>100+ Sellers Onboarded</span>
            </div>
            <div class="badge">
                <i class="fas fa-bolt"></i>
                <span>Fast Onboarding Process</span>
            </div>
            <div class="badge">
                <i class="fas fa-headset"></i>
                <span>End-to-End Support</span>
            </div>
            <div class="badge">
                <i class="fas fa-map-marker-alt"></i>
                <span>PAN India Service</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="about">
        <div class="section-header">
            <h2>What is JioMart?</h2>
            <p class="subtitle">Reliance's ecommerce platform connecting sellers with customers across India</p>
        </div>

        <div class="intro-text">
            <p>JioMart is Reliance's ecommerce platform that connects sellers with customers across India for groceries, daily essentials, and other products. It allows businesses to sell online and reach a wide audience through Reliance's strong network. If you want to grow your grocery or retail business online, JioMart is a great platform to start with.</p>
        </div>

        <div class="section-header" style="margin-top: 4rem; margin-bottom: 3rem;">
            <h2>Why Sell on JioMart?</h2>
            <p class="subtitle">JioMart helps sellers grow steadily in the online grocery and retail market</p>
        </div>

        <div class="features-grid" id="services">
            <div class="feature-card">
                <i class="fas fa-shopping-cart"></i>
                <h3>Strong Grocery &amp; Retail Demand</h3>
                <p>JioMart has a massive and growing customer base looking for groceries, daily essentials, and retail products — giving your business a strong and consistent demand base.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-map-marker-alt"></i>
                <h3>Expanding Reach Across India</h3>
                <p>JioMart is rapidly expanding its delivery network to cover more cities and towns across India, helping you reach new customers in both metro and non-metro areas.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-rupee-sign"></i>
                <h3>Consistent Order Flow</h3>
                <p>With daily essential products in demand, JioMart sellers enjoy a consistent and predictable order flow that helps you plan inventory and scale operations easily.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-rocket"></i>
                <h3>Backed by Reliance Ecosystem</h3>
                <p>JioMart is powered by Reliance's massive infrastructure, retail network, and brand trust — giving your products a strong platform with credibility and reach.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-box"></i>
                <h3>Easy Logistics Support</h3>
                <p>JioMart provides logistics support for order fulfillment and delivery, making it easy for sellers to manage shipments and ensure timely delivery to customers.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-chart-line"></i>
                <h3>Opportunity to Scale Fast</h3>
                <p>Start with your current product range and scale quickly as JioMart grows. The platform's tools and seller support help you increase sales and expand your catalog.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="process">
        <div class="section-header">
            <h2>JioMart Seller Registration Process</h2>
            <p class="subtitle">Proper setup ensures faster approval and better performance on JioMart</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <i class="fas fa-file-alt"></i>
                <h4>Step 1: Submit Business Details</h4>
                <p>Provide your business name, type, address, and contact information to begin the JioMart seller registration process.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-user-check"></i>
                <h4>Step 2: Complete Seller Registration</h4>
                <p>Fill in your JioMart seller account details including GST number, PAN card, and business category information for your store.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-id-card"></i>
                <h4>Step 3: Upload Required Documents</h4>
                <p>Submit GST certificate, PAN card, bank account details, business address proof, and FSSAI license (for grocery items) for verification.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-box-open"></i>
                <h4>Step 4: Product Listing &amp; Catalog Setup</h4>
                <p>Add your products with optimized titles, descriptions, images, pricing, and inventory details to make your catalog ready for customers.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-store"></i>
                <h4>Step 5: Store Onboarding</h4>
                <p>Complete your JioMart store setup including shipping configuration, return policies, and seller profile to make your store ready for launch.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-check-circle"></i>
                <h4>Step 6: Go Live &amp; Start Selling</h4>
                <p>Once your store is approved and activated, you go live and start receiving orders from JioMart customers across India.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="documents">
        <div class="section-header">
            <h2>Documents Required for JioMart Seller Account</h2>
            <p class="subtitle">Keep these documents ready for a smooth and fast registration process</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <i class="fas fa-file-invoice"></i>
                <h3>GST Certificate</h3>
                <p>A valid GST registration certificate is mandatory for selling on JioMart. It proves your business is tax-compliant and legally registered in India.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-id-card"></i>
                <h3>PAN Card</h3>
                <p>Your business or personal PAN card is required for identity verification and tax-related purposes during JioMart seller registration.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-university"></i>
                <h3>Bank Account Details</h3>
                <p>Active bank account details including account number and IFSC code for receiving payments from JioMart directly into your account.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-map-marked-alt"></i>
                <h3>Business Address Proof</h3>
                <p>A valid proof of your business address such as utility bill, rental agreement, or government-issued document is required for verification.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-shield-alt"></i>
                <h3>FSSAI License</h3>
                <p>For sellers dealing in grocery, food, or packaged consumables — a valid FSSAI license is required to sell on JioMart as per food safety regulations.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-envelope"></i>
                <h3>Email ID &amp; Mobile Number</h3>
                <p>Active email ID and mobile number for account creation, OTP verification, and ongoing communication with JioMart seller support team.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="our-services">
        <div class="section-header">
            <h2>Our JioMart Onboarding Services</h2>
            <p class="subtitle">We provide complete end-to-end support for JioMart seller onboarding and growth</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <i class="fas fa-user-plus"></i>
                <h4>JioMart Seller Account Setup</h4>
                <p>We handle your complete JioMart seller account creation, verification, and activation so you can start selling without any hassle.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-file-signature"></i>
                <h4>Registration &amp; Documentation Support</h4>
                <p>We guide you through document preparation, submission, and verification to ensure smooth and fast account approval from JioMart.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-list-alt"></i>
                <h4>Product Listing &amp; Catalog Creation</h4>
                <p>We create optimized product listings with the right titles, descriptions, images, and pricing for better discoverability on JioMart.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-warehouse"></i>
                <h4>Inventory &amp; Pricing Setup</h4>
                <p>We help you set up smart inventory management and competitive pricing to maximize your sales performance on JioMart.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-check-circle"></i>
                <h4>Store Activation Support</h4>
                <p>We resolve any verification issues or holds to ensure your JioMart seller store is fully activated and ready to receive orders.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-chart-bar"></i>
                <h4>Sales Growth Strategy</h4>
                <p>Beyond onboarding, we provide strategies to grow your sales, improve product visibility, and increase consistent revenue on JioMart.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-tags"></i>
                <h4>Catalog &amp; Pricing Optimization</h4>
                <p>We continuously review and improve your catalog and pricing to keep your listings competitive and performing at their best on JioMart.</p>
            </div>
            <div class="benefit-card">
                <i class="fas fa-headset"></i>
                <h4>Ongoing Seller Support</h4>
                <p>We are available to help you with seller queries, order issues, account health, or any growth challenges at every stage of your JioMart journey.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="growth">
        <div class="section-header">
            <h2>Grow Your Sales on JioMart</h2>
            <p class="subtitle">Our work does not stop at onboarding — we help you increase orders and grow consistently</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <i class="fas fa-search"></i>
                <h3>Product Visibility Optimization</h3>
                <p>We optimize your product titles, descriptions, and categories to improve visibility in JioMart's search results and attract more buyers to your store.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-balance-scale"></i>
                <h3>Smart Pricing Strategies</h3>
                <p>We analyze competitor pricing on JioMart and help you set smart prices that attract more buyers while keeping your margins healthy and business profitable.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-fire"></i>
                <h3>High-Demand Product Selection</h3>
                <p>We identify high-demand grocery and retail products on JioMart so you can focus your catalog on items that generate fast and consistent orders.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-warehouse"></i>
                <h3>Inventory Planning</h3>
                <p>Smart inventory management to avoid stockouts and overstock situations, ensuring you always have the right products available for JioMart customers.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-chart-line"></i>
                <h3>Performance Tracking</h3>
                <p>We track your key metrics — orders, returns, ratings, and revenue — and take continuous action to improve your sales performance on JioMart.</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-eye"></i>
                <h3>Visibility &amp; Conversion Improvement</h3>
                <p>We work on improving your product visibility through better images, stronger content, and conversion optimization strategies specific to JioMart.</p>
            </div>
        </div>
        <div class="intro-text" style="margin-top: 3rem; background: rgba(230,0,0,0.06); border-radius: 20px; padding: 2.5rem; border: 1px solid rgba(230,0,0,0.3); color: #333;">
            <p>&#x1F4A5; <strong style="color: var(--jio-red);">Result:</strong> More orders and consistent revenue on JioMart — that's what we deliver for every seller we work with.</p>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose Us for JioMart Onboarding?</h2>
            <p class="subtitle">We simplify the registration process and help sellers launch faster with the right strategy</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>&#x26A1; Fast Onboarding Process</h4>
                <p>We handle the entire onboarding process quickly and efficiently so you can start selling on JioMart without delays or confusion.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4C8; Sales-Focused Approach</h4>
                <p>Our focus is not just account setup — we build a foundation that drives real sales growth and consistent revenue for your JioMart business.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F6D2; Multi-Platform Expertise</h4>
                <p>Years of experience helping sellers across JioMart and other top ecommerce platforms means we know what works in the Indian market.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F91D; End-to-End Support</h4>
                <p>From day one to scaling up — we are with you at every step, from registration and listing to growth strategy and account management on JioMart.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4CA; Proven Results</h4>
                <p>100+ sellers onboarded, &#8377;10L+ in sales generated — our track record speaks for itself. We deliver results that matter for every seller.</p>
            </div>
            <div class="trust-item">
                <h4>&#x2705; Compliance &amp; Policy Knowledge</h4>
                <p>Deep understanding of JioMart's seller policies, FSSAI requirements, and compliance standards ensures your account stays safe and active.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on JioMart Today</h2>
            <p>Want to grow your business on JioMart? Contact us today for a free consultation and get expert support for JioMart seller onboarding and sales growth.</p>
            <div class="cta-buttons">
                <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20JioMart" class="btn-cta" target="_blank">
                    <i class="fab fa-whatsapp"></i> Talk on WhatsApp Now
                </a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

    <script src="assets/js/swiggy.js"></script>
</body>
</html>
