<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho Seller Onboarding Service | Start Selling on Meesho India</title>
    <meta name="description" content="Start selling on Meesho with expert onboarding services. We help with seller registration, product listing, and sales growth.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <link rel="stylesheet" href="assets/css/meesho.css?v=meesho-light101">

    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    /* Meesho Brand Colors */
    --meesho-purple: #9F2089;
    --meesho-dark-purple: #7a1a6b;
    --meesho-light-purple: #c94cb3;
    --meesho-pink: #e91e8c;
    --meesho-light-pink: #ff4da6;
    
    /* Light Theme Colors */
    --bg-main: #ffffff;
    --bg-sec: #f8f9fa;
    --text-dark: #000000; /* Pure Black for Headings */
    --text-light: #333333; /* Dark Gray for Paragcraphs */
    --border-color: rgba(159, 32, 137, 0.2);
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
    background: radial-gradient(circle, rgba(159, 32, 137, 0.08), transparent);
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
    background: radial-gradient(circle, rgba(233, 30, 140, 0.08), transparent);
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
    color: var(--meesho-purple);
    display: inline-block;
    animation: glow 2s infinite alternate;
}

@keyframes glow {
    from { text-shadow: 0 0 10px rgba(159, 32, 137, 0.1); }
    to { text-shadow: 0 0 20px rgba(159, 32, 137, 0.3); }
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
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
    filter: drop-shadow(0 0 15px rgba(159, 32, 137, 0.3));
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
    border-color: var(--meesho-purple);
    box-shadow: 0 10px 30px rgba(159, 32, 137, 0.15);
}

.stat-number {
    font-size: 1.1rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
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
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-dark-purple));
    color: white;
    box-shadow: 0 8px 30px rgba(159, 32, 137, 0.3);
}

.btn-primary::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 0;
    height: 0;
    background: var(--meesho-dark-purple);
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
    box-shadow: 0 12px 40px rgba(159, 32, 137, 0.4);
}

.btn-secondary {
    background: transparent;
    color: var(--meesho-purple);
    border: 3px solid var(--meesho-purple);
}

.btn-secondary:hover {
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
    color: white;
    transform: translateY(-3px);
    border-color: transparent;
    box-shadow: 0 8px 25px rgba(159, 32, 137, 0.2);
}

/* IMAGE ALIGNMENT FIX */
.hero-image {
    position: relative;
    animation: float-image 6s infinite ease-in-out;
    align-self: flex-start; /* Image ko upar align rakhega */
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
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
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
    background: linear-gradient(90deg, var(--meesho-purple), var(--meesho-pink));
    transform: scaleX(0);
    transition: transform 0.4s;
}

.feature-card:hover::before {
    transform: scaleX(1);
}

.feature-card:hover {
    transform: translateY(-15px);
    box-shadow: 0 20px 60px rgba(159, 32, 137, 0.15);
    border-color: var(--border-color);
}

.feature-icon {
    width: 90px;
    height: 90px;
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 3rem;
    margin-bottom: 2rem;
    box-shadow: 0 10px 30px rgba(159, 32, 137, 0.3);
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
    background: rgba(159, 32, 137, 0.05);
    transform: translateY(-10px);
    border-color: var(--meesho-purple);
    box-shadow: 0 15px 50px rgba(159, 32, 137, 0.15);
}

.benefit-icon {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    display: block;
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.benefit-card h4 {
    font-size: 1.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
    color: var(--meesho-purple);
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
    border-color: var(--meesho-purple);
    box-shadow: 0 10px 40px rgba(159, 32, 137, 0.15);
}

.trust-item h4 {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--meesho-purple);
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
    border-top: 2px solid var(--meesho-purple);
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
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-pink));
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
    background: linear-gradient(135deg, var(--meesho-purple), var(--meesho-dark-purple));
    color: white;
    padding: 1.5rem 3.5rem;
    border-radius: 50px;
    font-size: 1.3rem;
    font-weight: 800;
    text-decoration: none;
    transition: all 0.4s;
    box-shadow: 0 10px 40px rgba(159, 32, 137, 0.3);
    display: inline-flex;
    align-items: center;
    gap: 1rem;
}

.btn-cta:hover {
    transform: translateY(-5px) scale(1.05);
    box-shadow: 0 15px 50px rgba(159, 32, 137, 0.4);
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
                    <span class="word">Meesho</span>
                    <span class="word">Seller</span>
                    <span class="word">Onboarding</span>
                    <span class="word">Service</span>
                    <span class="word">&#8211;</span>
                    <span class="word">Start</span>
                    <span class="word">Selling</span>
                    <span class="word">on</span>
                    <span class="word-highlight">Meesho</span>
                </h1>
                <p>IARDO provides complete end-to-end <span class="highlight">Meesho Seller Onboarding</span> support across PAN India. From account registration to product listing and sales growth — we handle everything so you can focus on your business.</p>

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
                    <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20Meesho" class="btn btn-primary" target="_blank">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/meesho.webp" alt="Meesho Seller Onboarding">
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
            <h2>What is Meesho?</h2>
            <p class="subtitle">One of India's fastest-growing ecommerce platforms for sellers and resellers</p>
        </div>

        <div class="intro-text">
            <p>Meesho is one of India's fastest-growing ecommerce platforms that allows sellers to reach millions of customers without heavy investment. It is especially popular for resellers and small businesses. If you want to start selling online with low cost and high reach, Meesho is a great platform to start with.</p>
        </div>

        <div class="section-header" style="margin-top: 4rem; margin-bottom: 3rem;">
            <h2>Why Sell on Meesho?</h2>
            <p class="subtitle">Meesho is perfect for small businesses and new sellers looking to grow online</p>
        </div>

        <div class="features-grid" id="services">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rupee-sign"></i></div>
                <h3>Zero or Low Commission</h3>
                <p>Meesho offers zero or very low commission in many categories, making it one of the most cost-effective platforms for sellers to start and grow their online business.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-users"></i></div>
                <h3>Access to Millions of Customers</h3>
                <p>Reach crores of active shoppers and resellers across India who use Meesho daily to buy products across fashion, home, beauty, and more categories.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-box"></i></div>
                <h3>Easy Order Management</h3>
                <p>Meesho's simple seller panel makes it easy to manage orders, track deliveries, and handle returns — even for first-time online sellers with no prior experience.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marker-alt"></i></div>
                <h3>Pan India Reach</h3>
                <p>Sell your products across every state and city in India. Meesho's strong delivery network ensures your products reach customers in tier 2 and tier 3 cities too.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-rocket"></i></div>
                <h3>Fast-Growing Platform</h3>
                <p>Meesho is one of India's fastest-growing ecommerce platforms with millions of new users joining every month — giving your products a growing and expanding audience.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Opportunity to Scale Fast</h3>
                <p>Start with minimal investment and scale your business quickly. Meesho's tools and reseller network help you grow your orders and revenue at a fast pace.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="process">
        <div class="section-header">
            <h2>Meesho Seller Registration Process</h2>
            <p class="subtitle">Simple process, but proper setup is important for better sales on Meesho</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-mobile-alt"></i></span>
                <h4>Step 1: Sign Up</h4>
                <p>Register on Meesho using your mobile number or email ID to create your seller account and begin the onboarding process.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-alt"></i></span>
                <h4>Step 2: Submit Business Details</h4>
                <p>Provide your business name, type, address, and contact information to complete your Meesho seller profile setup.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-id-card"></i></span>
                <h4>Step 3: Upload Required Documents</h4>
                <p>Submit GST certificate, PAN card, bank account details, and business address proof for account verification on Meesho.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-box-open"></i></span>
                <h4>Step 4: Add Product Catalog</h4>
                <p>Upload your products with optimized titles, images, descriptions, and pricing to make your catalog attractive to buyers and resellers.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-check-circle"></i></span>
                <h4>Step 5: Account Activation</h4>
                <p>Once documents are verified and catalog is approved, your Meesho seller account gets activated and is ready for orders.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-store"></i></span>
                <h4>Step 6: Start Receiving Orders</h4>
                <p>Your store goes live and you start receiving orders from millions of Meesho customers and resellers across India.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="documents">
        <div class="section-header">
            <h2>Documents Required for Meesho Seller Account</h2>
            <p class="subtitle">Keep these documents ready — some categories allow selling without GST too</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-file-invoice"></i></div>
                <h3>GST Certificate</h3>
                <p>A valid GST registration certificate is required for most categories on Meesho. However, some categories allow unregistered sellers to start without GST.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-id-card"></i></div>
                <h3>PAN Card</h3>
                <p>Your business or personal PAN card is required for identity verification and tax-related purposes during Meesho seller registration.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-university"></i></div>
                <h3>Bank Account Details</h3>
                <p>Active bank account details including account number and IFSC code for receiving payments from Meesho directly into your account.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-map-marked-alt"></i></div>
                <h3>Business Address</h3>
                <p>A valid proof of your business or pickup address is required for Meesho's logistics and delivery network to function smoothly for your orders.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-envelope"></i></div>
                <h3>Email ID &amp; Mobile Number</h3>
                <p>Active email ID and mobile number for account creation, OTP verification, and ongoing communication with Meesho seller support team.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-camera"></i></div>
                <h3>Product Images &amp; Details</h3>
                <p>Clear product images and complete product details including size, color, weight, and category for creating your Meesho product catalog.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="our-services">
        <div class="section-header">
            <h2>Our Meesho Onboarding Services</h2>
            <p class="subtitle">We provide complete end-to-end support to help you start and grow on Meesho</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-user-plus"></i></span>
                <h4>Meesho Seller Account Setup</h4>
                <p>We handle your complete Meesho seller account creation, verification, and activation so you can start selling without any hassle or confusion.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-file-signature"></i></span>
                <h4>Registration &amp; Documentation Support</h4>
                <p>We guide you through document preparation, submission, and verification to ensure smooth and fast account approval from Meesho.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-list-alt"></i></span>
                <h4>Product Catalog &amp; Listing Creation</h4>
                <p>We create optimized product listings with the right titles, descriptions, images, and keywords for better discoverability and more orders on Meesho.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tags"></i></span>
                <h4>Pricing &amp; Margin Strategy</h4>
                <p>We help you set the right pricing strategy that keeps your products competitive on Meesho while maintaining healthy profit margins for your business.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-check-circle"></i></span>
                <h4>Account Setup &amp; Activation</h4>
                <p>We resolve any verification issues or holds to ensure your Meesho seller account is fully activated and ready to receive orders from day one.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-chart-bar"></i></span>
                <h4>Sales Growth Strategy</h4>
                <p>Beyond onboarding, we provide strategies to grow your sales, improve product rankings, and increase consistent revenue on Meesho.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-box-open"></i></span>
                <h4>Catalog Improvement Support</h4>
                <p>We regularly review and improve your product catalog — titles, images, pricing, and descriptions — to keep your listings performing at their best.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-headset"></i></span>
                <h4>Ongoing Seller Support</h4>
                <p>We are available to help you with seller queries, order issues, account health concerns, or any growth challenges at every stage of your Meesho journey.</p>
            </div>
        </div>
    </section>

    <section class="why-choose" id="growth">
        <div class="section-header">
            <h2>Grow Your Sales on Meesho</h2>
            <p class="subtitle">Our work does not stop at onboarding — we help you increase orders and grow consistently</p>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>Product Listing Optimization</h3>
                <p>We optimize your product titles, descriptions, and keywords to improve visibility in Meesho's search results and attract more buyers and resellers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-fire"></i></div>
                <h3>High-Demand Product Selection</h3>
                <p>We help you identify high-demand products and trending categories on Meesho so you can focus your catalog on what sells fast and generates consistent orders.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-balance-scale"></i></div>
                <h3>Competitive Pricing Strategy</h3>
                <p>We analyze competitor pricing on Meesho and help you set prices that attract more buyers while keeping your margins healthy and your business profitable.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-image"></i></div>
                <h3>Catalog Improvement</h3>
                <p>Better product images, cleaner titles, and stronger descriptions — we continuously improve your catalog to increase click-through rates and conversions on Meesho.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-clipboard-list"></i></div>
                <h3>Order Management Support</h3>
                <p>We help you set up smooth order management processes to ensure timely dispatch, fewer cancellations, and better seller ratings on the Meesho platform.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Performance Tracking</h3>
                <p>We track your key metrics — orders, returns, ratings, and revenue — and take action to continuously improve your sales performance on Meesho.</p>
            </div>
        </div>
        <div class="intro-text" style="margin-top: 3rem; background: rgba(159,32,137,0.08); border-radius: 20px; padding: 2.5rem; border: 1px solid rgba(159,32,137,0.3); color: #333;">
            <p>&#x1F4A5; <strong style="color: var(--meesho-purple);">Result:</strong> More orders and consistent growth on Meesho — that's what we deliver for every seller we work with.</p>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Choose Us for Meesho Onboarding?</h2>
            <p class="subtitle">We simplify the registration process and help sellers launch faster with the right strategy</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>&#x26A1; Fast Onboarding Process</h4>
                <p>We handle the entire onboarding process quickly and efficiently so you can start selling on Meesho without delays or confusion.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4C8; Sales-Driven Approach</h4>
                <p>Our focus is not just account setup — we build a foundation that drives real sales growth and consistent revenue for your Meesho business.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F6D2; Multi-Platform Expertise</h4>
                <p>Years of experience helping sellers across Meesho and other top ecommerce platforms means we know what works in the Indian market.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F91D; End-to-End Support</h4>
                <p>From day one to scaling up — we are with you at every step, from registration and listing to growth strategy and account management on Meesho.</p>
            </div>
            <div class="trust-item">
                <h4>&#x1F4CA; Proven Results</h4>
                <p>100+ sellers onboarded, &#8377;10L+ in sales generated — our track record speaks for itself. We deliver results that matter for every seller.</p>
            </div>
            <div class="trust-item">
                <h4>&#x2705; Compliance &amp; Policy Knowledge</h4>
                <p>Deep understanding of Meesho's seller policies, category requirements, and compliance standards ensures your account stays safe and active.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Meesho Today</h2>
            <p>Want to start your online business on Meesho? Contact us today for a free consultation and get expert support for Meesho seller onboarding and sales growth.</p>
            <div class="cta-buttons">
                <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20start%20selling%20on%20Meesho" class="btn-cta" target="_blank">
                    <i class="fab fa-whatsapp"></i> Talk on WhatsApp Now
                </a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

    <script src="assets/js/swiggy.js"></script>
</body>
</html>
