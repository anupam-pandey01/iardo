<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopify Store Setup Service | Build Your Ecommerce Website</title>
    <meta name="description" content="Build your Shopify store with expert setup services. We help with website design, product setup, and sales growth for your ecommerce business.">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/services/quick-commerce/shopify/style.css">

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
                    <span class="word">Shopify</span>
                    <span class="word">Store</span>
                    <span class="word-highlight">Setup</span>
                    <span class="word">Service</span>
                    <span class="word">–</span>
                    <span class="word">Build</span>
                    <span class="word">Your</span>
                    <span class="word">Online</span>
                    <span class="word">Store</span>
                    <span class="word">&</span>
                    <span class="word">Start</span>
                    <span class="word">Selling</span>
                </h1>
                <p>IARDO provides complete <span class="highlight">Shopify Store Setup & Onboarding</span> Services across India & Global markets. Build your own brand website, control your products & pricing, and start selling online with the world's leading ecommerce platform.</p>

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
                        <span><i class="fas fa-rocket"></i> Launch Your Shopify Store</span>
                    </a>
                    <a href="https://wa.me/919310194865" target="_blank" class="btn btn-secondary">
                        <span><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</span>
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://iardo.pages.dev/shopify.webp" alt="Shopify Store Setup Service">
            </div>
        </div>
    </section>

    <section class="trust-badges">
        <div class="badges-container">
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                <span>Shopify Experts</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                <span>Fast Setup</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-star"></i></span>
                <span>Custom Themes</span>
            </div>
            <div class="badge">
                <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                <span>SEO Optimized</span>
            </div>
        </div>
    </section>

    <section class="why-choose" id="services">
        <div class="section-header">
            <h2>Why Choose Shopify for Your Online Business?</h2>
            <p class="subtitle">Complete ecommerce solutions to build and grow your own brand</p>
        </div>

        <div class="intro-text">
            <p>Shopify is the world's leading ecommerce platform, trusted by millions of businesses globally. It allows you to build your own brand website, sell products directly to customers, and grow independently without relying on marketplaces. With higher profit margins, full control over products & pricing, and better customer data, Shopify helps you build a long-term brand and independent business.</p>
        </div>

        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-globe"></i></div>
                <h3>Own Your Brand Website</h3>
                <p>Build a professional ecommerce website under your own brand domain. No marketplace commissions — sell directly to your customers and keep 100% of your profits.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-store"></i></div>
                <h3>Complete Store Setup</h3>
                <p>Full Shopify account creation, domain configuration, SSL certificate setup, payment gateway integration, and store settings optimization — everything done for you.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-palette"></i></div>
                <h3>Custom Website Design</h3>
                <p>Professional theme selection and customization with your brand colors, logo, fonts, and design elements. Conversion-optimized layouts that turn visitors into buyers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-boxes"></i></div>
                <h3>Product Listing & Catalog Setup</h3>
                <p>Complete product upload with detailed descriptions, high-quality images, variants, pricing, inventory setup, and organized collections for easy browsing and discovery.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-credit-card"></i></div>
                <h3>Payment Gateway Setup</h3>
                <p>Setup of multiple payment options including Razorpay, PayPal, Shopify Payments, UPI, and credit cards. Accept payments seamlessly from Indian and global customers.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-shipping-fast"></i></div>
                <h3>Shipping Configuration</h3>
                <p>Configuration of shipping zones, rates, carriers, and integration with Indian and international courier services for efficient order fulfillment and delivery tracking.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Mobile-Friendly Design</h3>
                <p>Fully optimized mobile shopping experience with responsive design, fast loading speeds, and seamless checkout process across all devices — smartphones, tablets, and desktops.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-search"></i></div>
                <h3>SEO-Friendly Setup</h3>
                <p>Complete SEO setup with meta tags, URL optimization, sitemap creation, Google Analytics integration, and marketing tools configuration for better visibility and organic traffic.</p>
            </div>
        </div>
    </section>

    <section class="who-benefits" id="benefits">
        <div class="section-header">
            <h2>Who Can Benefit from Our Shopify Setup Services?</h2>
            <p class="subtitle">Perfect for all types of online businesses in India & globally</p>
        </div>
        <div class="benefits-grid">
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-tshirt"></i></span>
                <h4>Fashion & Apparel Brands</h4>
                <p>Ideal for clothing brands, boutiques, jewelry stores, and fashion accessories looking to build their own website with beautiful product showcases and size/variant options.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-laptop"></i></span>
                <h4>Electronics & Gadgets</h4>
                <p>Perfect for tech retailers, mobile accessories, consumer electronics, and gadget sellers wanting to grow their own brand independently beyond marketplace platforms.</p>
            </div>
            <div class="benefit-card">
                <span class="benefit-icon"><i class="fas fa-home"></i></span>
                <h4>Home & Lifestyle Products</h4>
                <p>Great for furniture stores, home decor, kitchenware, and lifestyle brands seeking to build custom online shopping experiences and scale their business with higher margins.</p>
            </div>
        </div>
    </section>

    <section class="trust-section">
        <div class="section-header">
            <h2>Why Businesses Choose IARDO</h2>
            <p class="subtitle">Your reliable partner for Shopify ecommerce success</p>
        </div>
        <div class="trust-grid">
            <div class="trust-item">
                <h4>100+ Stores Created</h4>
                <p>We have successfully set up over 100 Shopify stores for businesses across India and globally, with proven results in conversions, design quality, and sales growth.</p>
            </div>
            <div class="trust-item">
                <h4>₹10L+ Sales Generated</h4>
                <p>Our stores have collectively generated over ₹10 lakh in sales. We focus on conversion-optimized design and sales-driven strategies that actually deliver results.</p>
            </div>
            <div class="trust-item">
                <h4>Sales-Driven Approach</h4>
                <p>Every store is built with a focus on conversions and revenue. From product page optimization to fast loading speeds, every detail is designed to maximize your sales.</p>
            </div>
            <div class="trust-item">
                <h4>End-to-End Support</h4>
                <p>Beyond setup, we provide training, marketing integration, app recommendations, and 24×7 ongoing support to help your online business thrive long-term.</p>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <h2>Start Your Shopify Store Today</h2>
            <p>Want to build your own ecommerce website? Contact us today for a free consultation and start selling online in days, not months!</p>
            <div class="cta-buttons">
                <a href="https://wa.me/919310194865" target="_blank" class="btn-cta"><i class="fab fa-whatsapp"></i> Talk on WhatsApp Now</a>
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-rocket"></i> Start Your Shopify Journey</a>
            </div>
        </div>
    </section>

<jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
