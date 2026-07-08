<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Seller Onboarding Service | Start Selling on Amazon India</title>
    <meta name="description" content="Start selling on Amazon with expert onboarding services. We help with seller registration, product listing, account setup, and sales growth.">
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
    	
        .hero-container {
            margin-top: 110px !important;
            padding-top: 3rem !important;
        }
        .hero-content h1 {
            color: #0f1111 !important; /* Amazon standard dark text */
            font-weight: 900 !important;
        }
        .hero-content p {
            color: #565959 !important; /* Amazon standard secondary text */
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
                    <span class="word">Amazon</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">–</span>
                    <span class="word">Start</span>
                    <span class="word">Selling</span>
                    <span class="word">on</span>
                    <span class="word-highlight">Amazon India</span>
                </h1>
                <p>IARDO provides complete end-to-end <span class="highlight">Amazon Seller Onboarding</span> support across PAN India. From account registration to product listing and sales growth — we handle everything so you can focus on your business.</p>

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
                    <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20Amazon" class="btn btn-primary" target="_blank">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/amazonm.webp" alt="Amazon Seller Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-users"></i></span>
                <span>100+ Sellers Onboarded</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Onboarding Process</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-headset"></i></span>
                <span>End-to-End Support</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-map-marker-alt"></i></span>
                <span>PAN India Service</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="about">
        <div class="section-header">
            <h2>What is Amazon?</h2>
            <p class="subtitle">India's largest ecommerce marketplace with millions of customers</p>
        </div>

        <div class="intro-text">
            <p>Amazon is one of the largest ecommerce marketplaces in India where sellers can offer products to millions of customers across the country. It gives businesses a strong platform to grow online, increase brand visibility, and generate consistent sales. If you want to expand your business online, Amazon is one of the best platforms to start with.</p>
        </div>

        <div class="section-header" style="margin-top: 4rem; margin-bottom: 3rem;">
            <h2>Why Sell on Amazon?</h2>
            <p class="subtitle">Selling on Amazon helps businesses build long-term online growth and strong market presence</p>
        </div>

        <div class="features-grid" id="services">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-users"></i></div>
                <h3>Access to Millions of Customers</h3>
                <p>Reach crores of active shoppers across India who trust Amazon for their everyday purchases — from electronics to fashion and groceries.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marker-alt"></i></div>
                <h3>Pan India Reach</h3>
                <p>Sell your products in every state and city across India without building your own delivery infrastructure. Amazon's logistics network does it for you.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rupee-sign"></i></div>
                <h3>High Sales Potential</h3>
                <p>Amazon's massive daily traffic gives your products maximum exposure, leading to consistent orders and higher revenue for your business.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rocket"></i></div>
                <h3>Strong Brand Visibility</h3>
                <p>Build and establish your brand presence on one of the most trusted online platforms. Amazon's brand store features help you stand out from competitors.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-box"></i></div>
                <h3>Easy Logistics &amp; Fulfillment</h3>
                <p>Use Fulfillment by Amazon (FBA) or Easy Ship to handle storage, packing, and delivery — focus on your products while Amazon manages the rest.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Opportunity to Scale Fast</h3>
                <p>Start small and grow quickly. Amazon's seller tools and analytics help you understand your market, optimize listings, and scale operations at your pace.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="process">
        <div class="section-header">
            <h2>Amazon Seller Registration Process</h2>
            <p class="subtitle">The process may look simple, but proper setup is important for smooth approval and better sales performance</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-alt"></i></span>
                <h4>Step 1: Submit Business Details</h4>
                <p>Provide your business name, type, address, and contact information to begin the Amazon seller registration process.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-user-check"></i></span>
                <h4>Step 2: Complete Seller Registration</h4>
                <p>Fill in your Seller Central account details including GST number, PAN card, and business category information.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-id-card"></i></span>
                <h4>Step 3: Verify Documents</h4>
                <p>Submit and verify required documents — GST certificate, PAN card, bank account details, and business address proof.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-box-open"></i></span>
                <h4>Step 4: Create Product Listings</h4>
                <p>Add your products with optimized titles, descriptions, images, pricing, and inventory details to attract buyers.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-truck"></i></span>
                <h4>Step 5: Set Up Shipping &amp; Pricing</h4>
                <p>Configure your fulfillment method (FBA or Easy Ship), shipping templates, and competitive pricing strategy.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>Step 6: Go Live &amp; Start Selling</h4>
                <p>Once approved, your store goes live and you start receiving orders from millions of Amazon customers across India.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="documents">
        <div class="section-header">
            <h2>Documents Required for Amazon Seller Account</h2>
            <p class="subtitle">Keep these documents ready for a smooth and fast registration process</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-file-invoice"></i></div>
                <h3>GST Certificate</h3>
                <p>A valid GST registration certificate is mandatory for selling on Amazon India. It proves your business is tax-compliant and legally registered.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-id-card"></i></div>
                <h3>PAN Card</h3>
                <p>Your business or personal PAN card is required for identity verification and tax-related purposes during Amazon seller registration.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-university"></i></div>
                <h3>Bank Account Details</h3>
                <p>Active bank account details including account number and IFSC code for receiving payments from Amazon for your sales.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marked-alt"></i></div>
                <h3>Business Address Proof</h3>
                <p>A valid proof of your business address such as utility bill, rental agreement, or government-issued document is required.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-envelope"></i></div>
                <h3>Email ID &amp; Mobile Number</h3>
                <p>Active email ID and mobile number for account creation, OTP verification, and ongoing communication with Amazon Seller Central.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-trademark"></i></div>
                <h3>Trademark Details (If Available)</h3>
                <p>If you have a registered trademark, provide the details for Amazon Brand Registry enrollment for enhanced brand protection.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="our-services">
        <div class="section-header">
            <h2>Our Amazon Onboarding Services</h2>
            <p class="subtitle">We provide complete end-to-end support for Amazon seller onboarding and growth</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-user-plus"></i></span>
                <h4>Amazon Seller Account Setup</h4>
                <p>We handle your complete Seller Central account creation, verification, and activation so you can start selling without any hassle.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-signature"></i></span>
                <h4>Documentation &amp; Registration Support</h4>
                <p>We guide you through document preparation, submission, and verification to ensure smooth and fast account approval from Amazon.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-list-alt"></i></span>
                <h4>Product Listing &amp; Catalog Creation</h4>
                <p>We create optimized product listings with the right titles, descriptions, images, and keywords for better discoverability and conversions.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tags"></i></span>
                <h4>Pricing &amp; Inventory Setup</h4>
                <p>We help you set competitive pricing and manage your inventory structure for maximum sales performance on Amazon.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store-alt"></i></span>
                <h4>Brand Store Setup Assistance</h4>
                <p>We help you create a professional Amazon brand store that showcases your products and builds trust with potential customers.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-check-circle"></i></span>
                <h4>Account Activation Support</h4>
                <p>We resolve any verification issues or account holds to ensure your seller account is fully activated and ready for business.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-chart-bar"></i></span>
                <h4>Sales Growth Strategy</h4>
                <p>Beyond onboarding, we provide data-driven strategies to grow your sales, improve rankings, and increase revenue on Amazon.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-headset"></i></span>
                <h4>Ongoing Seller Support</h4>
                <p>We are available to help you with any seller queries, policy issues, account health concerns, or growth challenges at every stage.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="growth">
        <div class="section-header">
            <h2>Grow Your Sales on Amazon</h2>
            <p class="subtitle">Our work does not stop at onboarding — we help you improve your sales performance consistently</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>Product Listing Optimization</h3>
                <p>We optimize your product titles, bullet points, descriptions, and backend keywords using data-driven research to improve organic rankings and click-through rates.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-pen-nib"></i></div>
                <h3>Better Titles &amp; Descriptions</h3>
                <p>Compelling, keyword-rich product titles and engaging descriptions that communicate value clearly and convert browsers into buyers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-key"></i></div>
                <h3>Keyword-Focused Catalog Setup</h3>
                <p>Strategic keyword research and catalog structuring ensures your products appear in the right search results and reach the right customers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-balance-scale"></i></div>
                <h3>Competitive Pricing Strategies</h3>
                <p>We analyze market pricing and competition to help you set prices that are attractive to buyers while maintaining your profit margins.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-warehouse"></i></div>
                <h3>Inventory Planning</h3>
                <p>Smart inventory management to avoid stockouts and overstock situations, ensuring you always have the right products available for your customers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-eye"></i></div>
                <h3>Visibility &amp; Conversion Improvement</h3>
                <p>We work on improving your product visibility through A+ content, enhanced images, and conversion rate optimization strategies.</p>
            </div>
        </div>
        <div class="intro-text" style="margin-top: 3rem; background: rgba(255,153,0,0.08); border-radius: 20px; padding: 2.5rem; border: 1px solid rgba(255,153,0,0.3); color: #333;">
            <p>&#x1F4A5; <strong style="color: var(--amazon-orange);">Result:</strong> Better reach, more orders, and stronger growth on Amazon — that's what we deliver for every seller we work with.</p>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose Us for Amazon Onboarding?</h2>
            <p class="subtitle">We simplify the registration process and help sellers launch faster with the right strategy</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>&#x26A1; Fast &amp; Hassle-Free Onboarding</h4>
                <p>We handle the entire onboarding process quickly and efficiently so you can start selling on Amazon without delays or confusion.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4C8; Sales-Driven Approach</h4>
                <p>Our focus is not just account setup — we build a foundation that drives real sales growth and consistent revenue for your business.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F6D2; Multi-Platform Marketplace Expertise</h4>
                <p>Years of experience helping sellers across Amazon and other top ecommerce platforms means we know what works in the Indian market.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F91D; End-to-End Support</h4>
                <p>From day one to scaling up — we are with you at every step, from registration and listing to growth strategy and account management.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4CA; Proven Results</h4>
                <p>100+ sellers onboarded, &#8377;10L+ in sales generated — our track record speaks for itself. We deliver results that matter.</p>
            </div>
            <div class="trust-item">
                <h4>&#x2705; Compliance &amp; Policy Knowledge</h4>
                <p>Deep understanding of Amazon's seller policies, category requirements, and compliance standards ensures your account stays safe and active.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Amazon Today</h2>
            <p>Want to grow your business on Amazon? Contact us today for a free consultation and get expert support for Amazon seller onboarding and sales growth.</p>
            <div class="cta-buttons">
                <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20Amazon" class="btn-cta" target="_blank">
                    <i class="fab fa-whatsapp"></i> Talk on WhatsApp Now
                </a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

    <script src="assets/js/swiggy.js"></script>
</body>
</html>
