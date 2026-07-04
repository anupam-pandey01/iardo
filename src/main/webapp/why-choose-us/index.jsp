<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IARDO | Why Choose Us</title>
<link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<link rel="apple-touch-icon" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700;800;900&family=Source+Serif+4:ital,wght@0,300;0,400;0,600;1,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./style.css">
</head>
<body>

<jsp:include page="../includes/navbar/navbar.jsp" />

<div class="blob blob-1"></div>
<div class="blob blob-2"></div>
<div class="blob blob-3"></div>

<!-- HERO -->
<section class="hero">
  <div class="hero-eyebrow">India's Top Ecommerce Enabler</div>
  <h1>Scale Faster.<span class="line2">Sell Everywhere.</span></h1>
  <p class="hero-sub">We onboard, grow, and manage your seller presence across every major marketplace and quick commerce platform in India.</p>
</section>

<!-- STATS -->
<div class="stats-wrap reveal">
  <div class="stats-bar">
    <div class="stat-item">
      <div class="stat-num">100+</div>
      <div class="stat-label">Active Sellers</div>
    </div>
    <div class="stat-item">
      <div class="stat-num">₹1Cr+</div>
      <div class="stat-label">Revenue Generated</div>
    </div>
    <div class="stat-item">
      <div class="stat-num">10+</div>
      <div class="stat-label">Platforms Covered</div>
    </div>
  </div>
</div>

<!-- WHY CHOOSE US -->
<section class="section">
  <div class="section-label reveal">
    <h2>Why Choose Us for<br><span>Marketplace &amp; Quick Commerce?</span></h2>
    <p>Everything you need to launch, grow, and dominate across platforms.</p>
  </div>

  <div class="features-grid">

    <div class="feat feat-1 reveal">
      <div class="feat-top">
        <div class="feat-icon-wrap">⚡</div>
        <span class="feat-num-bg">01</span>
      </div>
      <span class="feat-tag">Speed</span>
      <div class="feat-title">Fast &amp; Hassle-Free Onboarding</div>
      <div class="feat-desc">We ensure quick seller account setup on Blinkit, Amazon, Meesho, Flipkart and other platforms without delays or complications. Go live in days, not weeks — with zero paperwork stress on your end.</div>
    </div>

    <div class="feat feat-2 reveal" data-delay="1">
      <div class="feat-top">
        <div class="feat-icon-wrap">📈</div>
        <span class="feat-num-bg">02</span>
      </div>
      <span class="feat-tag">Growth</span>
      <div class="feat-title">Sales Growth Focus</div>
      <div class="feat-desc">We don't just onboard — we help you grow with optimized listings, pricing strategies, and visibility improvements across platforms.</div>
    </div>

    <div class="feat feat-3 reveal" data-delay="1">
      <div class="feat-top">
        <div class="feat-icon-wrap">🛒</div>
        <span class="feat-num-bg">03</span>
      </div>
      <span class="feat-tag">Multi-Platform</span>
      <div class="feat-title">Multi-Platform Expertise</div>
      <div class="feat-desc">From Blinkit and Zepto to Amazon and Myntra — we cover every major marketplace and quick commerce platform.</div>
    </div>

    <div class="feat feat-4 reveal" data-delay="2">
      <div class="feat-top">
        <div class="feat-icon-wrap">📦</div>
        <span class="feat-num-bg">04</span>
      </div>
      <span class="feat-tag">End-to-End</span>
      <div class="feat-title">End-to-End Support</div>
      <div class="feat-desc">From registration to catalog management and scaling — we handle everything for you so you can focus on your product.</div>
    </div>

    <div class="feat feat-5 reveal" data-delay="3">
      <div class="feat-top">
        <div class="feat-icon-wrap">🚀</div>
        <span class="feat-num-bg">05</span>
      </div>
      <span class="feat-tag">Approval</span>
      <div class="feat-title">Quick Approval &amp; Setup</div>
      <div class="feat-desc">We know the process inside out. Your store goes live faster than usual with our streamlined approval pipeline.</div>
    </div>

    <div class="feat feat-6 reveal" data-delay="1">
      <div class="feat-top">
        <div class="feat-icon-wrap">✅</div>
        <span class="feat-num-bg">06</span>
      </div>
      <span class="feat-tag">Results</span>
      <div class="feat-title">Proven Results Across Sellers</div>
      <div class="feat-desc">We've successfully onboarded hundreds of sellers and helped them generate consistent, scalable sales across platforms — month after month.</div>
    </div>

    <div class="feat feat-7 reveal" data-delay="2">
      <div class="feat-top">
        <div class="feat-icon-wrap">🤝</div>
        <span class="feat-num-bg">07</span>
      </div>
      <span class="feat-tag">Support</span>
      <div class="feat-title">Dedicated Ongoing Support</div>
      <div class="feat-desc">Our team is with you even after going live — solving issues, managing accounts, and constantly improving your performance metrics.</div>
    </div>

  </div>
</section>

<!-- LIVE DASHBOARD -->
<div class="live-section reveal">
  <div class="live-card">
    <div>
      <div class="live-label"><span class="live-dot"></span>Live Dashboard</div>
      <div class="live-title">Real-Time Performance</div>
      <div class="live-sub">Watch our sellers grow in real time across all platforms.</div>
    </div>
    <div class="metrics">
      <div class="metric-box">
        <div class="metric-label">Orders Today</div>
        <div class="metric-value" id="orders">47</div>
      </div>
      <div class="metric-box">
        <div class="metric-label">Revenue Today</div>
        <div class="metric-value">₹<span id="rev">68,400</span></div>
      </div>
      <div class="metric-box">
        <div class="metric-label">Active Sellers</div>
        <div class="metric-value">100+</div>
      </div>
      <div class="metric-box">
        <div class="metric-label">Platforms</div>
        <div class="metric-value">10+</div>
      </div>
    </div>
  </div>
</div>

<!-- TESTIMONIALS -->
<section class="testi-section reveal">
  <h2 class="testi-heading">What Our <span style="background:linear-gradient(120deg,#6C63FF,#FF6B6B);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">Clients Say</span></h2>
  <div class="testi-track">
    <div class="testi-card">
      <div class="testi-quote">"</div>
      <div class="testi-text">We reached ₹3L/month in just 20 days of going live on Blinkit. IARDO made it happen.</div>
      <div class="testi-author"><strong>Rajesh K.</strong><span>FMCG Seller, Delhi</span></div>
    </div>
    <div class="testi-card">
      <div class="testi-quote">"</div>
      <div class="testi-text">Got our first orders within the first week. The team handled everything from listing to approval seamlessly.</div>
      <div class="testi-author"><strong>Priya M.</strong><span>Fashion Brand, Mumbai</span></div>
    </div>
    <div class="testi-card">
      <div class="testi-quote">"</div>
      <div class="testi-text">Best onboarding experience I've had. Professional, fast, and they actually care about growth — not just setup.</div>
      <div class="testi-author"><strong>Amit S.</strong><span>Electronics Seller, Pune</span></div>
    </div>
    <div class="testi-card">
      <div class="testi-quote">"</div>
      <div class="testi-text">Now getting daily sales on 4 platforms. IARDO's support team is always there whenever something needs fixing.</div>
      <div class="testi-author"><strong>Neha R.</strong><span>Home &amp; Kitchen Brand, Bangalore</span></div>
    </div>
  </div>
</section>

<!-- CTA -->
<section class="cta-section reveal">
  <div class="cta-box">
    <h2>Ready to Start Selling? 🚀</h2>
    <p>Join 100+ sellers who trust IARDO to manage their marketplace presence and scale their revenue.</p>
    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-primary">
      Book a Free Consultation →
    </a>
  </div>
</section>

<jsp:include page="../includes/footer/footer.jsp" />

<a href="https://wa.me/919310194865" class="whatsapp" title="Chat on WhatsApp">💬</a>
<script src="./app.js"></script>
</body>
</html>
