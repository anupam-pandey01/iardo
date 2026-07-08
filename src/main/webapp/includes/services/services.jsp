<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IARDO</title> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/includes/services/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Montserrat:wght@600;700;800&display=swap" rel="stylesheet">
    
</head>
<body>

<section class="services-section" id="services">
    <div class="bg-gradient"></div>
    <canvas id="particleCanvas"></canvas>
    
    <div class="floating-elements">
        <div class="floating-circle circle-1"></div>
        <div class="floating-circle circle-2"></div>
        <div class="floating-circle circle-3"></div>
    </div>
    
    <div class="container">
        <div class="section-header">
            <h2 class="section-title">Our Services</h2>
            <p class="section-description">Comprehensive digital solutions that transform your business across every touchpoint.</p>
        </div>

        <div class="services-grid">

            <div class="service-card blinkit" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/blinkit-onboarding-services/">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/blinkit-logo2.png" alt="Blinkit" class="service-logo"> </div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/blinkit-onboarding-services" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Streamlined Blinkit onboarding with real-time inventory sync and 10-min delivery optimization.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Quick Commerce Setup</li><li>Hyperlocal Delivery Integration</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">⚡</div><div class="tool-icon">🕐</div><div class="tool-icon">🛵</div><div class="tool-icon">📍</div><div class="tool-icon">🔄</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card swiggy" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/swiggy-instamart.png" alt="Swiggy Instamart" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Rapid Swiggy Instamart onboarding delivering shopping necessities right to your home.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Store Setup &amp; Registration</li><li>Inventory Optimization</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🛒</div><div class="tool-icon">⚡</div><div class="tool-icon">📦</div><div class="tool-icon">🚚</div><div class="tool-icon">📱</div><div class="tool-icon">💰</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card big-basket" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/big-basket/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/big-basket-logo.png" alt="BigBasket" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/big-basket/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Grow into thousands of cities with BigBasket store setup and listing optimization.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Store Setup &amp; Configuration</li><li>Multi-City Expansion</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🏪</div><div class="tool-icon">📊</div><div class="tool-icon">🎯</div><div class="tool-icon">🌍</div><div class="tool-icon">📈</div><div class="tool-icon">✨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card swiggy-cloud-kitchen">
                <div class="card-inner" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/swiggy-cloud-kitchen/'">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/cloud_kitchen_logo.webp" alt="Cloud Kitchen" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-cloud-kitchen/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Launch and scale your cloud kitchen with multi-platform integration and menu engineering.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Kitchen Setup &amp; Planning</li><li>Multi-Platform Integration</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🍳</div><div class="tool-icon">📱</div><div class="tool-icon">📋</div><div class="tool-icon">⚙️</div><div class="tool-icon">📈</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card zepto" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/zepto/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/zepto_logo.webp" alt="Zepto" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/zepto/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Serve customers in minutes with Zepto quick commerce setup and rapid delivery integration.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Quick Commerce Setup</li><li>Product Optimization</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">⚡</div><div class="tool-icon">🛍️</div><div class="tool-icon">⏱️</div><div class="tool-icon">📍</div><div class="tool-icon">🚴</div><div class="tool-icon">🏙️</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card myntra" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/myntra/'"/>
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/myntra-logo.png" alt="Myntra" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/myntra/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Reach India's fashion-conscious shoppers with brand setup and trend-focused strategies.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Fashion Brand Setup</li><li>Style Catalog Creation</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">👗</div><div class="tool-icon">👟</div><div class="tool-icon">💄</div><div class="tool-icon">📸</div><div class="tool-icon">✨</div><div class="tool-icon">🎨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card nykaa" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/nykaa/'"/>
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/nykaa_logo.webp" alt="Nykaa" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/nykaa/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Maximize Nykaa sales with easy product listings and smooth onboarding for brand visibility.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Beauty &amp; Fashion Catalog</li><li>Brand Visibility Optimization</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">💄</div><div class="tool-icon">👗</div><div class="tool-icon">📸</div><div class="tool-icon">🎨</div><div class="tool-icon">💎</div><div class="tool-icon">⭐</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card amazon" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/amazon-now/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/amazon_logo.webp" alt="Amazon" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/amazon-now/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Reach millions worldwide with Amazon seller setup and product listing optimization.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Seller Account Setup</li><li>Brand Registry Assistance</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">📦</div><div class="tool-icon">🔍</div><div class="tool-icon">⭐</div><div class="tool-icon">🚀</div><div class="tool-icon">📈</div><div class="tool-icon">🌍</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card flipkart" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/flipkart/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/flipkart_logo.webp" alt="Flipkart" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/flipkart/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Tap into India's largest e-commerce market with Flipkart seller registration and catalog management.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Seller Registration</li><li>Catalog Management</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🛒</div><div class="tool-icon">📱</div><div class="tool-icon">💰</div><div class="tool-icon">🎯</div><div class="tool-icon">📊</div><div class="tool-icon">🇮🇳</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card meesho" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/meesho/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/meesho-logo.png" alt="Meesho" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/meesho/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Reach millions of resellers across India with Meesho catalog optimization and strategic pricing.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Seller Account Setup</li><li>Competitive Pricing Strategy</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">👥</div><div class="tool-icon">💰</div><div class="tool-icon">📦</div><div class="tool-icon">📱</div><div class="tool-icon">🎯</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card jio-mart" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/jio-mart/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/jiomart_logo.webp" alt="JioMart" class="service-logo"></div>
                        <a href="a${pageContext.request.contextPath}/services/e-commerce/jio-mart/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Tap into India's largest retail network with JioMart seller registration and hyperlocal setup.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Seller Registration &amp; Verification</li><li>Inventory Management Setup</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🛒</div><div class="tool-icon">🏬</div><div class="tool-icon">📍</div><div class="tool-icon">⚡</div><div class="tool-icon">💳</div><div class="tool-icon">📈</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card shopify" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/shopify/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/shopify_logo.webp" alt="Shopify" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/shopify/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Complete Shopify store setup with listing optimization and payment &amp; shipping integration.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Complete Store Setup</li><li>Theme Customization</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🏪</div><div class="tool-icon">🎨</div><div class="tool-icon">💳</div><div class="tool-icon">🚚</div><div class="tool-icon">📊</div><div class="tool-icon">🌐</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card marketplace" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/marketplace/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/marketplace_logo.webp" alt="Marketplace Marketing" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/marketplace/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Smart multi-marketplace marketing on Amazon, Flipkart, Nykaa and Myntra to maximize visibility.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Amazon &amp; Flipkart Marketing</li><li>Multi-Marketplace Strategy</li></ul></div>
                        <div class="tools-list"><h4>Platforms</h4><div class="tool-icons"><div class="tool-icon">🛒</div><div class="tool-icon">📦</div><div class="tool-icon">📈</div><div class="tool-icon">🎯</div><div class="tool-icon">💼</div><div class="tool-icon">⭐</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card quick" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/quick/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/quik_logo.webp" alt="Careem Quik" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/big-basket/quick" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Launch on Careem's expanding delivery network with integration and merchandising strategy.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Platform Integration</li><li>Growth &amp; Expansion Plans</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🔄</div><div class="tool-icon">🛒</div><div class="tool-icon">📈</div><div class="tool-icon">🚗</div><div class="tool-icon">🌟</div><div class="tool-icon">💚</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card instashop" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/instashop/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/instashop_logo.webp" alt="Instashop" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}services/quick-commerce/instashop/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Grow into thousands of cities with Instashop store setup and creative marketing tactics.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Store Setup &amp; Configuration</li><li>Creative Marketing Tactics</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🏪</div><div class="tool-icon">✨</div><div class="tool-icon">🎯</div><div class="tool-icon">🌆</div><div class="tool-icon">💜</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card ajio" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/ajio/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/ajio_logo.webp" alt="Ajio" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/ajio/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Launch your fashion brand on Ajio with catalog management and trend-focused listings.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Fashion Catalog Setup</li><li>Brand Visibility Strategy</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">👗</div><div class="tool-icon">👟</div><div class="tool-icon">💼</div><div class="tool-icon">✨</div><div class="tool-icon">📸</div><div class="tool-icon">🎨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card web-dev" onclick="window.location.href='${pageContext.request.contextPath}/services/development/web-development/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/web_development_logo.webp" alt="Development" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/development/web-development/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Scalable web apps and cloud-native architecture with modern full-stack frameworks.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Web &amp; Mobile App Development</li><li>API Design &amp; Integration</li></ul></div>
                        <div class="tools-list"><h4>Tools</h4><div class="tool-icons"><div class="tool-icon">⚛️</div><div class="tool-icon">📱</div><div class="tool-icon">☁️</div><div class="tool-icon">🔧</div><div class="tool-icon">⚡</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card app-dev" onclick="window.location.href='${pageContext.request.contextPath}/services/development/app-development/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="${pageContext.request.contextPath}/assets/images/app-dev-logo.png" alt="Mobile App Development" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}services/development/app-development/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Intuitive iOS and Android apps with seamless UX, robust performance and enterprise-grade security.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>iOS &amp; Android Development</li><li>App Store Optimization</li></ul></div>
                        <div class="tools-list"><h4>Tools</h4><div class="tool-icons"><div class="tool-icon">📱</div><div class="tool-icon">🍎</div><div class="tool-icon">🤖</div><div class="tool-icon">⚡</div><div class="tool-icon">🔐</div><div class="tool-icon">🎨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card digital-marketing" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/digital-marketing/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/digital_marketing_logo.webp" alt="Digital Marketing" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/digital-marketing/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Data-driven SEO, social media and paid advertising to amplify your brand and drive growth.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>SEO &amp; Content Strategy</li><li>PPC &amp; Paid Advertising</li></ul></div>
                        <div class="tools-list"><h4>Tools</h4><div class="tool-icons"><div class="tool-icon">📊</div><div class="tool-icon">🎯</div><div class="tool-icon">📱</div><div class="tool-icon">💰</div><div class="tool-icon">📈</div><div class="tool-icon">🌐</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card email-marketing" onclick="window.location.href='${pageContext.request.contextPath}/services/email-marketing/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://tse4.mm.bing.net/th/id/OIP.EhumcjtDSlZ8U_WspNnUSgHaE_?rs=1&pid=ImgDetMain&o=7&rm=3" alt="Email Marketing" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/email-marketing/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Targeted email campaigns with automation and A/B testing to maximize conversion rates.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Campaign Strategy &amp; Automation</li><li>List Segmentation &amp; A/B Testing</li></ul></div>
                        <div class="tools-list"><h4>Tools</h4><div class="tool-icons"><div class="tool-icon">📊</div><div class="tool-icon">🎯</div><div class="tool-icon">📱</div><div class="tool-icon">💰</div><div class="tool-icon">📈</div><div class="tool-icon">🌐</div></div></div>
                    </div>
                </div>
            </div>
            
            <div class="service-card d-mart" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/d-mart/'">
			    <div class="card-inner">
			        <div class="card-header">
			            <div class="card-title">
			                <img src="${pageContext.request.contextPath}/assets/images/dmart.jpg"
			                     alt="DMart Seller Onboarding"
			                     class="service-logo">
			            </div>
			
			            <a href="${pageContext.request.contextPath}/services/dmart-seller-onboarding/"
			               class="card-arrow"
			               onclick="event.stopPropagation()">
			                <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor">
			                    <path d="M7 17L17 7M17 7H7M17 7V17"
			                          stroke-width="2"
			                          stroke-linecap="round"/>
			                </svg>
			            </a>
			        </div>
			
			        <p class="card-description">
			            Launch your products on DMart with complete seller onboarding, product catalog setup, documentation support, and inventory management assistance.
			        </p>
			
			        <div class="card-content">
			            <div class="services-list">
			                <h4>Services</h4>
			                <ul>
			                    <li>Seller Registration & Documentation</li>
			                    <li>Product Listing & Catalog Management</li>
			                </ul>
			            </div>
			
			            <div class="tools-list">
			                <h4>Tools</h4>
			                <div class="tool-icons">
			                    <div class="tool-icon">🏪</div>
			                    <div class="tool-icon">📦</div>
			                    <div class="tool-icon">📝</div>
			                    <div class="tool-icon">📊</div>
			                    <div class="tool-icon">🚚</div>
			                    <div class="tool-icon">💼</div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>

        </div>
    </div>
</section>

</body>
</html>
