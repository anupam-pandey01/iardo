<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multi-Marketplace Onboarding Services - IARDO | PAN India</title>
    <meta name="description" content="Sell on Amazon, Flipkart, Meesho, Blinkit, Zepto & 15+ marketplaces with expert onboarding. Product listing, account setup & sales growth — PAN India service.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/services/quick-commerce/marketplace/style.css">

    <style>
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
                    <span class="word">Sell</span>
                    <span class="word">on</span>
                    <span class="word-highlight">Multiple</span>
                    <span class="word-highlight">Marketplaces</span>
                    <span class="word">with</span>
                    <span class="word">Expert</span>
                    <span class="word">Onboarding</span>
                </h1>
                <p>We help businesses onboard and grow across multiple marketplaces like <span class="highlight">Amazon, Flipkart, Meesho, Myntra, Ajio,</span> and more. Our expert team ensures smooth registration, optimized product listings, and complete account management to boost your sales across platforms.</p>

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
                        <span><i class="fas fa-rocket"></i> Start Selling Now</span>
                    </a>
                    <a href="https://wa.me/919310194865" target="_blank" class="btn btn-secondary">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/own_store.webp" alt="Multi-Marketplace Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>Multi-Platform Expertise</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Activation</span>
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
            <h2>Why Choose IARDO for Marketplace Onboarding?</h2>
            <p class="subtitle">Complete onboarding solutions for all major e-commerce platforms</p>
        </div>

        <div class="intro-text">
            <p>From quick commerce platforms like <strong>Blinkit, Zepto,</strong> and <strong>Swiggy Instamart</strong> to grocery platforms like <strong>BigBasket</strong> and <strong>JioMart</strong>, we provide end-to-end onboarding and growth solutions for your business. Selling on multiple marketplaces significantly increases your reach and revenue — and IARDO makes the entire process simple, fast, and hassle-free.</p>
        </div>

        <div style="max-width: 1000px; margin: 0 auto 4rem; text-align: center;">
            <h3 style="color: var(--text-dark); font-size: 1.8rem; font-weight: 700; margin-bottom: 1.5rem;">What We Offer</h3>
            <div style="display: flex; flex-wrap: wrap; gap: 1rem; justify-content: center;">
                <span style="background: rgba(255,107,53,0.1); border: 1px solid var(--marketplace-orange); border-radius: 50px; padding: 0.6rem 1.4rem; font-size: 1rem; color: var(--text-dark); font-weight: 500;"><i class="fas fa-check" style="color: var(--marketplace-orange); margin-right: 8px;"></i>Multi-platform seller onboarding</span>
                <span style="background: rgba(255,107,53,0.1); border: 1px solid var(--marketplace-orange); border-radius: 50px; padding: 0.6rem 1.4rem; font-size: 1rem; color: var(--text-dark); font-weight: 500;"><i class="fas fa-check" style="color: var(--marketplace-orange); margin-right: 8px;"></i>Product listing & catalog setup</span>
                <span style="background: rgba(255,107,53,0.1); border: 1px solid var(--marketplace-orange); border-radius: 50px; padding: 0.6rem 1.4rem; font-size: 1rem; color: var(--text-dark); font-weight: 500;"><i class="fas fa-check" style="color: var(--marketplace-orange); margin-right: 8px;"></i>Pricing & inventory management</span>
                <span style="background: rgba(255,107,53,0.1); border: 1px solid var(--marketplace-orange); border-radius: 50px; padding: 0.6rem 1.4rem; font-size: 1rem; color: var(--text-dark); font-weight: 500;"><i class="fas fa-check" style="color: var(--marketplace-orange); margin-right: 8px;"></i>Sales growth strategies</span>
                <span style="background: rgba(255,107,53,0.1); border: 1px solid var(--marketplace-orange); border-radius: 50px; padding: 0.6rem 1.4rem; font-size: 1rem; color: var(--text-dark); font-weight: 500;"><i class="fas fa-check" style="color: var(--marketplace-orange); margin-right: 8px;"></i>Account management support</span>
            </div>
        </div>

        <div class="features-grid">
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>Multi-Platform Account Setup</h3>
                <p>We handle seller registration, documentation, GST verification, bank account linking, and KYC compliance across all major marketplaces including Amazon, Flipkart, Meesho, Myntra, and more.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-file-alt"></i></div>
                <h3>Complete Documentation Support</h3>
                <p>Expert assistance with GSTIN registration, trademark certificates, brand authorization letters, FSSAI licenses, and all platform-specific documentation requirements for seamless approval.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-shopping-bag"></i></div>
                <h3>Product Catalog Creation</h3>
                <p>Professional product listing with SEO-optimized titles, detailed descriptions, high-quality images, accurate categorization, and competitive pricing across all platforms simultaneously.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-sync-alt"></i></div>
                <h3>Inventory Synchronization</h3>
                <p>Real-time inventory management across multiple marketplaces to prevent overselling, maintain stock accuracy, and ensure seamless order fulfillment on all platforms.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-chart-pie"></i></div>
                <h3>Pricing & Competition Analysis</h3>
                <p>Strategic pricing recommendations based on competitor analysis, marketplace dynamics, and profit margin optimization to maximize your sales across all platforms.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-shipping-fast"></i></div>
                <h3>Logistics & Fulfillment Setup</h3>
                <p>Integration with FBA, F-Assured, and other fulfillment services. Setup of shipping methods, warehouse locations, and delivery options for efficient order processing.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-graduation-cap"></i></div>
                <h3>Platform Training & Support</h3>
                <p>Comprehensive training on seller dashboards, order management, customer communication, returns processing, and platform-specific tools for each marketplace.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-bullhorn"></i></div>
                <h3>Marketing & Promotion Setup</h3>
                <p>Assistance with sponsored ads, deals, coupons, lightning deals, and promotional campaigns to boost visibility and drive sales on each platform.</p>
            </div>
            <div class="feature-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <div class="feature-icon"><i class="fas fa-chart-bar"></i></div>
                <h3>Unified Analytics Dashboard</h3>
                <p>Consolidated reporting and analytics across all marketplaces to track performance, monitor sales trends, and make data-driven decisions for business growth.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Can Benefit from Our Marketplace Onboarding Services?</h2>
            <p class="subtitle">Perfect for businesses of all sizes and categories</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-tshirt"></i></span>
                <h4>Fashion & Apparel Brands</h4>
                <p>Expand your clothing, footwear, and accessories business across Myntra, Ajio, Flipkart Fashion, Amazon Fashion, Meesho, and other fashion-focused marketplaces.</p>
            </div>
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-mobile-alt"></i></span>
                <h4>Electronics & Gadgets Sellers</h4>
                <p>Reach tech-savvy customers by listing mobile phones, laptops, accessories, and electronics on Amazon, Flipkart, Croma, Reliance Digital, and Vijay Sales platforms.</p>
            </div>
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-home"></i></span>
                <h4>Home & Lifestyle Products</h4>
                <p>Showcase furniture, home decor, kitchen appliances, and lifestyle products across Pepperfry, Urban Ladder, Amazon Home, Flipkart Furniture, and JioMart.</p>
            </div>
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-heartbeat"></i></span>
                <h4>Health & Beauty Brands</h4>
                <p>Launch cosmetics, skincare, supplements, and wellness products on Nykaa, Purplle, 1mg, Amazon Beauty, Flipkart Health+, and other specialized platforms.</p>
            </div>
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-shopping-cart"></i></span>
                <h4>Grocery & FMCG Suppliers</h4>
                <p>Distribute packaged foods, beverages, and daily essentials through Blinkit, Zepto, Swiggy Instamart, BigBasket, JioMart, Amazon Pantry, and Flipkart Supermart.</p>
            </div>
            <div class="benefit-card" onclick="window.location='${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/'" style="cursor:pointer;">
                <span class="benefit-icon"><i class="fas fa-book"></i></span>
                <h4>Books & Stationery Sellers</h4>
                <p>Sell books, educational materials, office supplies, and stationery across Amazon Books, Flipkart Books, Snapdeal, Paytm Mall, and other platforms.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Businesses Trust IARDO</h2>
            <p class="subtitle">Your reliable partner for multi-marketplace success</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>15+ Marketplace Expertise</h4>
                <p>Deep knowledge of Amazon, Flipkart, Meesho, Myntra, Ajio, Blinkit, Zepto, Swiggy Instamart, JioMart, BigBasket, Nykaa, and more — we know every platform inside out.</p>
            </div>
            <div class="trust-item">
                <h4>Proven Track Record</h4>
                <p>Successfully onboarded 1000+ sellers across multiple categories with 95% approval rate and average go-live time of just 5–7 days per platform.</p>
            </div>
            <div class="trust-item">
                <h4>Complete Compliance Management</h4>
                <p>We ensure 100% compliance with each marketplace's policies, guidelines, and requirements to prevent account suspensions and ensure long-term success.</p>
            </div>
            <div class="trust-item">
                <h4>Ongoing Support & Optimization</h4>
                <p>From onboarding to scaling, we provide continuous support including account health monitoring, policy updates, performance optimization, and strategic guidance.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Selling on Multiple Platforms Today</h2>
            <p>Let IARDO handle your complete multi-marketplace onboarding and maximize your online sales potential!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Get Free Consultation</a>
                <a href="https://wa.me/919310194865" target="_blank" class="btn-cta"><i class="fab fa-whatsapp"></i> Talk on WhatsApp</a>
            </div>
        </div>
    </section>

    <jsp:include page="../../../includes/footer/footer.jsp" />

    <script src="js/swiggy.js"></script>
</body>
</html>
