<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Careem Quik Onboarding Services - IARDO | UAE & GCC Markets</title>
    <meta name="description" content="Start selling on Careem Quik in UAE with expert onboarding services. We help with registration, product listing, and sales growth.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <link rel="stylesheet" href="/assets/css/swiggy.css">

    <style>
        :root {
            /* Careem Brand Colors */
            --careem-green: #00B140 !important;
            --careem-dark-green: #008f33 !important;
            --careem-light-green: #00d451 !important;
            --careem-yellow: #FFC700 !important;
            
            /* Light Theme Colors */
            --bg-main: #ffffff !important;
            --bg-sec: #f8f9fa !important;
            --text-dark: #000000 !important;
            --text-light: #333333 !important;
            --border-color: rgba(0, 177, 64, 0.2) !important;
        }

        /* Force Light Background and Dark Text */
        html, body {
            background-color: var(--bg-main) !important;
            color: var(--text-dark) !important;
            font-family: 'Poppins', sans-serif !important;
        }

        h1, h2, h3, h5, h6 { color: var(--text-dark) !important; }
        p, span { color: var(--text-light) !important; }
        
        /* Section Backgrounds */
        section { background-color: var(--bg-main) !important; }
        .trust-badges, .who-benefits, .cta { background-color: var(--bg-sec) !important; }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, var(--bg-sec) 0%, var(--bg-main) 50%, var(--bg-sec) 100%) !important;
            min-height: 90vh;
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
            background: radial-gradient(circle, rgba(0, 177, 64, 0.08), transparent);
            border-radius: 50%;
            top: -400px;
            right: -300px;
        }

        .hero-container {
            max-width: 1400px;
            margin: 0 auto;
            margin-top: 110px !important; /* Navbar overlap fix */
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
            line-height: 1.2;
            margin-bottom: 1.5rem;
        }

        .hero-content .highlight {
            color: var(--careem-green) !important;
            font-weight: 700;
        }

        .word-highlight {
            background: linear-gradient(135deg, var(--careem-green), var(--careem-dark-green)) !important;
            -webkit-background-clip: text !important;
            -webkit-text-fill-color: transparent !important;
            display: inline-block;
        }

        .hero-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .stat-item {
            background: #ffffff !important;
            border: 1px solid var(--border-color) !important;
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03) !important;
        }

        .stat-number {
            font-size: 1.2rem;
            font-weight: 700;
            color: var(--careem-green) !important;
            display: block;
        }

        .stat-label {
            font-size: 0.95rem;
            margin-top: 4px;
            font-weight: 600;
        }

        .hero-buttons {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--careem-green), var(--careem-dark-green)) !important;
            color: #ffffff !important;
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-weight: 700;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
            box-shadow: 0 8px 30px rgba(0, 177, 64, 0.3) !important;
        }

        .btn-primary span, .btn-primary i { color: #ffffff !important; }

        .btn-secondary {
            background: transparent !important;
            color: var(--careem-green) !important;
            border: 2px solid var(--careem-green) !important;
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-weight: 700;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
        }
        
        .btn-secondary span, .btn-secondary i { color: var(--careem-green) !important; }

        .hero-image {
            align-self: flex-start !important;
            margin-top: 2rem !important;
        }

        .hero-image img {
            width: 100%;
            border-radius: 30px;
            border: 3px solid var(--border-color);
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.1);
        }

        /* Badges & Sections */
        .badges-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 2rem;
            padding: 3rem 0;
        }

        .badge {
            display: flex;
            align-items: center;
            gap: 1rem;
            font-weight: 600;
        }

        .badge-icon i {
            font-size: 3rem;
            color: var(--careem-green) !important;
        }

        .section-header { text-align: center; max-width: 900px; margin: 0 auto 4rem; padding-top: 4rem; }
        .intro-text { text-align: center; max-width: 1000px; margin: 0 auto 4rem; font-size: 1.1rem; }

        .features-grid, .benefits-grid, .trust-grid {
            max-width: 1300px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
            padding-bottom: 4rem;
        }

        .feature-card, .benefit-card, .trust-item {
            background: #ffffff !important;
            padding: 3rem 2rem;
            border-radius: 20px;
            text-align: center;
            border: 1px solid var(--border-color) !important;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03) !important;
            transition: all 0.3s;
        }

        .feature-card:hover, .benefit-card:hover, .trust-item:hover {
            transform: translateY(-10px);
            border-color: var(--careem-green) !important;
            box-shadow: 0 15px 40px rgba(0, 177, 64, 0.15) !important;
        }

        .feature-icon i, .benefit-icon i {
            font-size: 3rem;
            color: var(--careem-green) !important;
            margin-bottom: 1.5rem;
            display: block;
        }

        .feature-card h3, .benefit-card h4, .trust-item h4 {
            color: var(--text-dark) !important;
            margin-bottom: 1rem;
            font-size: 1.4rem;
        }

        /* CTA Section */
        .cta {
            text-align: center;
            padding: 6rem 2rem;
            border-top: 2px solid var(--careem-green);
        }
        
        .cta h2 { margin-bottom: 1.5rem; }
        .cta p { margin-bottom: 3rem; font-size: 1.2rem; }
        .cta-buttons { display: flex; justify-content: center; gap: 1.5rem; }

        @media (max-width: 1024px) {
            .hero-container {
                grid-template-columns: 1fr;
                text-align: center;
                margin-top: 80px !important;
            }
            .hero-image { order: -1; align-self: center !important; margin-top: 0 !important; }
            .hero-buttons, .cta-buttons { justify-content: center; }
        }

        @media (max-width: 768px) {
            .hero-stats { grid-template-columns: 1fr; }
            .hero-buttons { flex-direction: column; }
            .btn-primary, .btn-secondary { width: 100%; justify-content: center; margin: 0; }
        }
    </style>
</head>
<body>
 <jsp:include page="../../../includes/navbar/navbar.jsp" />

    <section class="hero" id="home">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="animated-heading">
                    <span class="word">Start</span> 
                    <span class="word">Selling</span> 
                    <span class="word">on</span> 
                    <span class="word-highlight">Careem Quik</span> 
                    <span class="word">with</span> 
                    <span class="word">Expert</span> 
                    <span class="word">Onboarding</span> 
                    <span class="word">Solutions</span>
                </h1>
                <p>IARDO provides complete <span class="highlight">Careem Quik Onboarding</span> Services across UAE & GCC markets to help you list your products on the region's most trusted quick commerce platform and deliver to millions of Careem users instantly.</p>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">GCC</span>
                        <span class="stat-label">Wide Reach</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">48hrs</span>
                        <span class="stat-label">Quick Setup</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">100%</span>
                        <span class="stat-label">Expert Support</span>
                    </div>
                </div>

                <div class="hero-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                        <span><i class="fas fa-rocket"></i> Launch on Careem Quik</span>
                    </a>
                    <a href="#services" class="btn btn-secondary">
                        <span><i class="fas fa-clipboard-list"></i> Our Services</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?auto=format&fit=crop&w=800&q=80" alt="Careem Quik Onboarding">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>GCC Expertise</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Onboarding</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-star"></i></span>
                <span>Complete Assistance</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>Instant Delivery</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Why Choose IARDO for Careem Quik Onboarding?</h2>
            <p class="subtitle">Comprehensive onboarding solutions for quick commerce success</p>
        </div>
        
        <div class="intro-text">
            <p>Careem Quik is revolutionizing quick commerce in the Middle East as part of the trusted Careem Super App ecosystem. With millions of active users across UAE, Saudi Arabia, and other GCC markets, Careem Quik offers unparalleled access to customers seeking instant delivery of groceries, essentials, and everyday products. IARDO's Careem Quik Onboarding Services ensure you can quickly tap into this massive market and start selling to Careem's loyal customer base.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-user-check"></i></div>
                <h3>Seller Account Registration</h3>
                <p>Complete assistance with Careem Quik seller registration, trade license verification, Emirates ID documentation, bank account setup, and all necessary approvals for UAE and GCC markets.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-box-open"></i></div>
                <h3>Product Catalog Creation</h3>
                <p>Professional product listing with Arabic and English descriptions, high-quality images, accurate categorization, and competitive pricing optimized for Careem's diverse customer base.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-warehouse"></i></div>
                <h3>Dark Store Integration</h3>
                <p>Setup and integration with Careem Quik's dark store network across Dubai, Abu Dhabi, Riyadh, Jeddah, and other major GCC cities for ultra-fast delivery fulfillment.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-sync"></i></div>
                <h3>Real-Time Inventory Management</h3>
                <p>Implementation of advanced inventory systems for real-time stock updates, automatic replenishment alerts, and seamless synchronization across multiple dark store locations.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-tags"></i></div>
                <h3>Pricing Strategy & Localization</h3>
                <p>Expert guidance on competitive pricing in AED and SAR, market-specific strategies for UAE and Saudi consumers, and optimization for Careem Quik's marketplace dynamics.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-certificate"></i></div>
                <h3>Compliance & Regulatory Support</h3>
                <p>Assistance with Dubai Municipality approvals, Saudi Food & Drug Authority compliance, food safety certifications, halal compliance, and all GCC regulatory requirements.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-graduation-cap"></i></div>
                <h3>Platform Training & Support</h3>
                <p>Comprehensive training on Careem Quik seller dashboard, order management, delivery coordination, promotions, and platform features in English and Arabic languages.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                <h3>Performance Analytics</h3>
                <p>Regular performance reports tracking delivery times, customer ratings, sales trends, promotional effectiveness, and actionable insights to optimize your Careem Quik operations.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Can Benefit from Our Careem Quik Onboarding Services?</h2>
            <p class="subtitle">Perfect for various product categories in UAE & GCC markets</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-shopping-basket"></i></span>
                <h4>Grocery & Fresh Food Suppliers</h4>
                <p>Ideal for suppliers of fresh fruits, vegetables, dairy products, bakery items, and daily essentials looking to reach millions of Careem users across UAE and GCC.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-utensils"></i></span>
                <h4>Packaged Food & Beverages</h4>
                <p>Perfect for FMCG brands selling snacks, beverages, canned goods, frozen foods, and packaged items catering to GCC's diverse expat and local populations.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-pump-soap"></i></span>
                <h4>Personal Care & Household Essentials</h4>
                <p>Great opportunity for sellers of toiletries, cleaning supplies, baby products, beauty items, and household goods that customers need delivered instantly.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Businesses Trust IARDO</h2>
            <p class="subtitle">Your reliable partner for Careem Quik marketplace success</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>GCC Market Expertise</h4>
                <p>Deep understanding of UAE, Saudi Arabia, and GCC e-commerce landscape, consumer behavior, cultural nuances, and Careem Quik's specific requirements for successful onboarding.</p>
            </div>
            <div class="trust-item">
                <h4>Bilingual Support</h4>
                <p>Full support in English and Arabic languages for documentation, product listings, customer communication, and compliance with local regulations across all GCC markets.</p>
            </div>
            <div class="trust-item">
                <h4>Quick Commerce Specialization</h4>
                <p>Specialized knowledge of ultra-fast delivery operations, dark store logistics, inventory management, and integration with Careem's trusted delivery network.</p>
            </div>
            <div class="trust-item">
                <h4>End-to-End Service</h4>
                <p>Complete support from initial registration to ongoing optimization, including dark store setup, regulatory compliance, promotional strategies, and performance monitoring.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Ready to Start Selling on Careem Quik?</h2>
            <p>Let IARDO handle your complete Careem Quik onboarding and reach millions of customers across UAE & GCC markets!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-primary"><i class="fas fa-rocket"></i> Begin Your Careem Quik Journey Now</a>
            </div>
        </div>
    </section>

<jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
