<%
if (request.getRequestURI().endsWith("index.jsp")) {
response.setStatus(301);
response.setHeader("Location", request.getContextPath() + "/");
return;
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Iardo - Your trusted partner in digital transformation and innovation">
<title>Iardo - Digital Innovation & Solutions</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/index-page-css/style.css"> <!-- this is the styling of the service card that shown of home page  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<link rel="apple-touch-icon" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<style>

:root {
    --bg:          #F0F4FF;
    --border:      #D1D9F0;
    --dark:        #1A1F3C;
    --accent:      #6C63FF;
    --accent-dk:   #5248d4;
    --accent-lt:   #E8ECFF;
    --coral:       #FF6B6B;
    --coral-dk:    #e04f4f;
    --surface:     #ffffff;
    --surface-2:   #F5F7FF;
    --text-body:   #3D4466;
    --text-muted:  #8B91B3;
    --emerald:     #1A1F3C;
    --emerald-md:  #2d3460;
    --gold:        #6C63FF;
    --gold-lt:     #a89fff;
    --teal-bg:     #E8ECFF;
    --teal-text:   #3d3aa8;
}

/* =====================================================
   GLOBAL FONTS & BASE
===================================================== */
html, body {
    background-color: var(--bg) !important;
    font-family: 'Source Serif 4', serif !important;
    color: var(--text-body) !important;
    scroll-behavior: smooth;
}

h1, h2, h3, h5, h6 {
    font-family: 'Montserrat', sans-serif !important;
    color: var(--dark) !important;
    letter-spacing: -0.02em;
}

p, li, span, td, th, label {
    font-family: 'Source Serif 4', serif !important;
}

a, button, .btn, .navbar, nav {
    font-family: 'Montserrat', sans-serif !important;
}
.btn {
    transition: all 0.3s ease;
}

.btn:hover {
    transform: scale(1.05);
}

/* =====================================================
   REMOVE ANIMATIONS / CANVAS
===================================================== */
#particleCanvas, .bg-gradient, .floating-elements {
    display: none !important;
    opacity: 0 !important;
    visibility: hidden !important;
    z-index: -9999 !important;
    pointer-events: none !important;
}

/* =====================================================
   HERO SECTION
===================================================== */
.hero-premium {
    position: relative;
    min-height: 100vh !important;
    display: flex;
    padding-top: 220px !important;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    background: var(--bg) !important;
    background-image: none !important;
}

/* violet top accent bar */
.hero-premium::after {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 3px;
    background: linear-gradient(90deg, var(--accent), var(--coral));
    z-index: 10;
}

/* subtle geometric bg decoration */
.hero-premium::before {
    content: '';
    position: absolute;
    top: -120px; right: -120px;
    width: 480px; height: 480px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(108,99,255,0.08), transparent 70%);
    pointer-events: none;
    z-index: 0;
}

/* =====================================================
   WHY CHOOSE SECTION
===================================================== */
.why-choose {
    padding: 120px 0;
    background: var(--surface) !important;
    position: relative;
    overflow: hidden;
}

.why-choose::before {
    content: '';
    position: absolute;
    top: -50%;
    left: 50%;
    transform: translateX(-50%);
    width: 150%;
    height: 150%;
    background: radial-gradient(circle at 50% 0%, rgba(108,99,255,0.05), transparent 60%);
    pointer-events: none;
}

.why-choose h2 {
    text-align: center;
    font-family: 'Montserrat', sans-serif !important;
    font-size: clamp(2.5rem, 5vw, 4rem);
    font-weight: 900;
    margin-bottom: 20px;
    color: var(--dark) !important;
    -webkit-text-fill-color: var(--dark) !important;
    letter-spacing: -0.03em;
    position: relative;
    animation: fadeInUp 1s ease-out;
}

.subtitle {
    font-family: 'Source Serif 4', serif !important;
    text-align: center;
    font-size: 1.25rem;
    color: var(--text-body) !important;
    margin-bottom: 80px;
    animation: fadeInUp 1s ease-out 0.2s backwards;
}

/* =====================================================
   FEATURE CARDS
===================================================== */
.features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 32px;
    position: relative;
    z-index: 1;
    align-items: stretch;
}

.feature-card {
    perspective: 1500px;
    position: relative;
    display: flex;
    height: 100%;
    animation: fadeInUp 1s ease-out backwards;
}

.feature-card:nth-child(1) { animation-delay: 0.3s; }
.feature-card:nth-child(2) { animation-delay: 0.4s; }
.feature-card:nth-child(3) { animation-delay: 0.5s; }
.feature-card:nth-child(4) { animation-delay: 0.6s; }

.feature-card-inner {
    position: relative;
    background: var(--surface) !important;
    padding: 50px 40px;
    border-radius: 24px;
    border: 1.5px solid var(--border) !important;
    transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
    overflow: hidden;
    box-shadow: 0 2px 16px rgba(108,99,255,0.06);
    height: 100%;
    min-height: 320px;
    flex: 1;
    width: 100%;
}

/* left accent bar on hover */
.feature-card-inner::before {
    content: '';
    position: absolute;
    top: 0; left: 0; bottom: 0;
    width: 4px;
    background: linear-gradient(180deg, var(--accent), var(--coral));
    opacity: 0;
    transition: opacity 0.35s ease;
    border-radius: 24px 0 0 24px;
}

.feature-card:hover .feature-card-inner::before { opacity: 1; }

.feature-card:hover .feature-card-inner {
    border-color: var(--accent) !important;
    transform: translateY(-10px);
    box-shadow: 0 24px 48px rgba(108,99,255,0.14);
}

.card-shine {
    position: absolute;
    top: -50%; left: -50%;
    width: 200%; height: 200%;
    background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,0.5) 50%, rgba(255,255,255,0) 100%);
    transform: rotate(45deg) translateX(-100%);
    transition: transform 0.9s cubic-bezier(0.23, 1, 0.32, 1);
    pointer-events: none;
    z-index: 1;
}

.feature-card:hover .card-shine { transform: rotate(45deg) translateX(100%); }

.feature-icon {
    font-size: 3.2rem;
    margin-bottom: 28px;
    position: relative;
    z-index: 2;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 72px;
    height: 72px;
    background: var(--accent-lt);
    border-radius: 18px;
    transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
}

.feature-card:hover .feature-icon {
    background: var(--accent);
    transform: scale(1.1) rotateZ(4deg);
}

.feature-card h3 {
    font-family: 'Montserrat', sans-serif !important;
    color: var(--dark) !important;
    font-size: 1.45rem;
    font-weight: 800;
    margin-bottom: 16px;
    letter-spacing: -0.03em;
    position: relative;
    z-index: 2;
}

.feature-card p {
    font-family: 'Source Serif 4', serif !important;
    color: var(--text-muted) !important;
    font-size: 1.05rem;
    line-height: 1.85;
    position: relative;
    z-index: 2;
}

.feature-card:hover p {
    color: var(--text-body) !important;
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

@media (max-width: 1024px) {
    .features-grid { grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 24px; }
    .why-choose { padding: 80px 0; }
    .subtitle { margin-bottom: 60px; }
}

@media (max-width: 768px) {
    .features-grid { grid-template-columns: 1fr; }
    .feature-card-inner { padding: 36px 28px; }
    .why-choose { padding: 60px 0; }
    .subtitle { margin-bottom: 50px; font-size: 1.1rem; }
    .feature-icon { font-size: 2.8rem; width: 64px; height: 64px; }
    .logos-container { display: none !important; }
}

@media (prefers-reduced-motion: reduce) {
    *, *::before, *::after {
        animation-duration: 0.01ms !important;
        animation-iteration-count: 1 !important;
        transition-duration: 0.01ms !important;
    }
}

/* =====================================================
   LOGOS CONTAINER
===================================================== */
.logos-container {
    position: fixed;
    right: 40px;
    top: 55%;
    transform: translateY(-50%);
    display: flex;
    flex-direction: column;
    gap: 20px;
    z-index: 8;
}

.logo-item {
    width: 68px;
    height: 68px;
    background: var(--surface);
    border: 1.5px solid var(--border);
    border-radius: 16px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 14px rgba(108,99,255,0.08);
    transition: all 0.3s ease;
}

.logo-item:hover {
    border-color: var(--accent);
    box-shadow: 0 8px 24px rgba(108,99,255,0.18);
    transform: translateX(-4px);
}

.logo-item img {
    width: 76%;
    height: auto;
    object-fit: contain;
    filter: none !important;
    opacity: 1 !important;
    transition: all 0.3s ease;
}

/* =====================================================
   SERVICES SECTION — layout only, cards handled by services.jsp
===================================================== */
.services-section {
    position: relative;
    overflow: visible;
}

/* =====================================================
   BUTTON STYLES
===================================================== */
.hero-cta .btn-primary:hover {
    background: var(--accent-dk) !important;
    transform: translateY(-3px);
    box-shadow: 0 12px 32px rgba(108,99,255,0.4) !important;
}

.hero-cta .btn-secondary:hover {
    background: var(--accent-lt) !important;
    border-color: var(--accent) !important;
    color: var(--accent) !important;
    transform: translateY(-3px);
}

/* =====================================================
   DELIVERY BOY IMAGE
===================================================== */
.delivery-boy {
    max-width: 100%;
    height: auto;
    object-fit: contain;
}

/* =====================================================
   SCROLL REVEAL
===================================================== */
.reveal {
    opacity: 0;
    transform: translateY(60px);
    transition: all 1s cubic-bezier(0.23, 1, 0.32, 1);
}

.reveal.active {
    opacity: 1;
    transform: translateY(0);
}

/* =====================================================
   HAMBURGER
===================================================== */
.hamburger.active span,
.hamburger span {
    display: block !important;
    opacity: 1 !important;
    visibility: visible !important;
}

.navbar-dark .navbar-toggler-icon {
    filter: none;
}

/* =====================================================
   PLATFORM TAGS
===================================================== */
.platform-tag {
    font-family: 'Montserrat', sans-serif;
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 0.04em;
    color: var(--accent);
    background: var(--accent-lt);
    border: 1.5px solid rgba(108,99,255,0.25);
    border-radius: 8px;
    padding: 6px 16px;
    transition: all 0.25s ease;
    display: inline-block;
}

.platform-tag:hover {
    background: var(--accent);
    color: #fff;
    border-color: var(--accent);
    transform: translateY(-2px);
}

/* =====================================================
   EYEBROW BADGE
===================================================== */
.eyebrow-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: var(--surface);
    border: 1.5px solid var(--border);
    border-radius: 999px;
    padding: 6px 18px 6px 14px;
    margin-bottom: 28px;
    box-shadow: 0 2px 8px rgba(108,99,255,0.08);
}

.eyebrow-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: var(--coral);
    display: inline-block;
    flex-shrink: 0;
}

.eyebrow-text {
    font-family: 'Montserrat', sans-serif;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 0.09em;
    text-transform: uppercase;
    color: var(--text-body);
}

/* =====================================================
   TRUST LINE DIVIDER
===================================================== */
.trust-line {
    margin-top: 32px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 16px;
    margin-bottom: 20px;
}

.trust-rule {
    flex: 1;
    max-width: 100px;
    height: 1px;
    background: linear-gradient(90deg, transparent, var(--border));
    display: inline-block;
}

.trust-rule-r {
    background: linear-gradient(90deg, var(--border), transparent);
}

.trust-text {
    font-family: 'Montserrat', sans-serif;
    font-size: 11px;
    font-weight: 600;
    letter-spacing: 0.07em;
    text-transform: uppercase;
    color: var(--text-muted);
    margin: 0;
}

/* =====================================================
   LOGOS CONTAINER — UNCHANGED POSITION & SIZE
===================================================== */
.logos-container {
    position: fixed;
    right: 40px;
    top: 55%;
    transform: translateY(-50%);
    display: flex;
    flex-direction: column;
    gap: 25px;
    z-index: 8;
}

.logo-item {
    width: 70px;
    height: 70px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.logo-item img {
    width: 100%;
    max-width: 120px;
    height: auto;
    object-fit: contain;
    filter: none !important;
    opacity: 1 !important;
    transition: all 0.4s ease;
}

.logo-item:hover img {
    filter: none !important;
    opacity: 1 !important;
    transform: scale(1.15);
}

</style>

</head>

<body>

<jsp:include page="./includes/navbar/navbar.jsp" />

<section class="hero-premium">
  <div class="delivery-group">
    <img src="https://iardo.pages.dev/dilevery_boy.webp" alt="Delivery Boy" class="delivery-boy">
  </div>

  <div class="hero-content-wrapper" style="text-align:center; max-width:960px; margin:auto; z-index:2; position:relative;">

    <!-- EYEBROW BADGE -->

    <!-- HEADLINE -->
<h1 class="hero-title" style="font-family:'Montserrat',sans-serif; font-size:clamp(2.4rem,4.2vw,3.8rem); font-weight:900; line-height:1.1; letter-spacing:-0.03em; color:#1A1F3C; margin-bottom:20px;">
Scale your Business new
<span style="background:linear-gradient(135deg, #6C63FF, #FF6B6B); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; font-weight:900; display:block; margin-top:4px;">
through Quick Commerce Giants Guys
</span>
</h1>

    <!-- PLATFORM SUBTITLE -->
    <p style="font-family:'Montserrat',sans-serif; font-size:1rem; font-weight:600; letter-spacing:0.06em; text-transform:uppercase; color:#8B91B3; margin-bottom:8px;">
      Blinkit &nbsp;·&nbsp; Swiggy Instamart &nbsp;·&nbsp; Bigbasket &nbsp;·&nbsp; Zepto
    </p>

    <!-- SUBTITLE -->
    <p class="hero-subtitle" style="font-family:'Source Serif 4',serif; font-size:1.15rem; color:#3D4466; line-height:1.85; margin-bottom:32px; max-width:680px; margin-left:auto; margin-right:auto;">
      We help brands <strong style="color:#6C63FF; font-style:italic; font-weight:600;">onboard, optimize &amp; scale sales</strong> across
      <strong style="color:#1A1F3C; font-weight:700;">Blinkit</strong>,
      <strong style="color:#1A1F3C; font-weight:700;">Swiggy Instamart</strong>,
      <strong style="color:#1A1F3C; font-weight:700;">BigBasket</strong>,
      <strong style="color:#1A1F3C; font-weight:700;">Meesho</strong>,
      <strong style="color:#1A1F3C; font-weight:700;">Amazon</strong> &amp;
      <strong style="color:#1A1F3C; font-weight:700;">Flipkart</strong>
    </p>

    <!-- PLATFORM TAGS -->
    <div style="display:flex; flex-wrap:wrap; justify-content:center; gap:10px; margin-bottom:40px;">
      <span class="platform-tag">Blinkit</span>
      <span class="platform-tag">Swiggy Instamart</span>
      <span class="platform-tag">BigBasket</span>
      <span class="platform-tag">Amazon</span>
      <span class="platform-tag">Flipkart</span>
      <span class="platform-tag">Meesho</span>
    </div>

    <!-- CTA BUTTONS -->
    <div class="hero-cta" style="display:flex; justify-content:center; gap:16px; flex-wrap:wrap;">
      <a href="#services" class="btn btn-primary"
         style="font-family:'Montserrat',sans-serif; font-size:12px; font-weight:800; letter-spacing:0.06em; text-transform:uppercase; padding:13px 28px; border-radius:50px; background:linear-gradient(135deg,#6C63FF,#8B84FF); color:#ffffff; text-decoration:none; border:none; box-shadow:0 10px 28px rgba(108,99,255,0.35); transition:0.3s; width:auto !important; display:inline-block !important;">
        Explore Services
      </a>
      <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting" class="btn btn-secondary"
         style="font-family:'Montserrat',sans-serif; font-size:12px; font-weight:700; letter-spacing:0.06em; text-transform:uppercase; padding:12px 26px; border-radius:50px; background:#ffffff; color:#1A1F3C; text-decoration:none; border:2px solid #D1D9F0; transition:0.3s; width:auto !important; display:inline-block !important;">
        Get Free Consultation
      </a>
    </div>

    <!-- TRUST LINE -->
    <div class="trust-line">
      <span class="trust-rule"></span>
      <p class="trust-text">Trusted by fast-growing D2C &amp; FMCG brands across India</p>
      <span class="trust-rule trust-rule-r"></span>
    </div>

  </div>

  <!-- LOGOS CONTAINER -->
  <!-- LOGOS CONTAINER — UNCHANGED -->
  <div class="logos-container">
    <div class="logo-item logo-1"><img src="https://iardo.pages.dev/blinkit_logo.webp" alt="Blinkit"></div>
    <div class="logo-item logo-2"><img src="https://iardo.pages.dev/swiggy_instamart_logo.webp" alt="Swiggy Instamart"></div>
    <div class="logo-item logo-3"><img src="https://iardo.pages.dev/bigbasket_logo.webp" alt="BigBasket"></div>
    <div class="logo-item logo-4"><img src="https://iardo.pages.dev/shopify_logo.webp" alt="Shopify"></div>
    <div class="logo-item logo-5"><img src="https://iardo.pages.dev/flipkart_logo.webp" alt="Flipkart"></div>
    <div class="logo-item logo-6"><img src="https://iardo.pages.dev/meesho_logo.webp" alt="Meesho"></div>
  </div>

</section>

<jsp:include page="./includes/services/services.jsp" /> 

<section class="why-choose">
    <div class="container">
        <div class="section-header">
            <h2 class="section-title">Why Choose IARDO</h2>
            <p class="subtitle">Experience the difference with our comprehensive marketing solutions</p>
        </div>
        <div class="features-grid">

            <div class="feature-card">
                <div class="feature-card-inner">
                    <div class="feature-icon">🎯</div>
                    <h3>Data-Driven Strategy</h3>
                    <p>We leverage analytics and insights to create campaigns that deliver measurable results and maximize your ROI.</p>
                    <div class="card-shine"></div>
                </div>
            </div>

            <div class="feature-card">
                <div class="feature-card-inner">
                    <div class="feature-icon">⚡</div>
                    <h3>Rapid Execution</h3>
                    <p>From concept to launch in record time. Our agile approach ensures your campaigns go live faster than ever.</p>
                    <div class="card-shine"></div>
                </div>
            </div>

            <div class="feature-card">
                <div class="feature-card-inner">
                    <div class="feature-icon">💡</div>
                    <h3>Creative Excellence</h3>
                    <p>Award-winning creative team that crafts compelling narratives to capture attention and drive action.</p>
                    <div class="card-shine"></div>
                </div>
            </div>

            <div class="feature-card">
                <div class="feature-card-inner">
                    <div class="feature-icon">📊</div>
                    <h3>Transparent Reporting</h3>
                    <p>Real-time dashboards and detailed analytics so you always know how your campaigns are performing.</p>
                    <div class="card-shine"></div>
                </div>
            </div>

        </div>
    </div>
</section>


<div id="google_translate_element" style="position:absolute; left:-9999px;"></div>




<jsp:include page="./includes/footer/footer.jsp" />

<script>
    window.onload = function() {
        const badCanvas = document.getElementById('particleCanvas');
        if(badCanvas) badCanvas.remove();
    }

   /*  window.addEventListener('DOMContentLoaded', (event) => {
        const forceWhiteLines = () => {
            document.querySelectorAll('#mainHamburger span').forEach(span => {
                span.style.setProperty('background-color', '#ffffff', 'important');
            });
        };
        forceWhiteLines();
        const btn = document.getElementById('mainHamburger');
        if(btn) btn.addEventListener('click', forceWhiteLines);
        window.addEventListener('scroll', forceWhiteLines);
    });
 */
    const reveals = document.querySelectorAll('.feature-card, .service-card');

    function revealOnScroll() {
        const triggerBottom = window.innerHeight * 0.85;
        reveals.forEach(el => {
            const boxTop = el.getBoundingClientRect().top;
            if (boxTop < triggerBottom) {
                el.classList.add('active');
                el.classList.add('reveal');
            }
        });
    }

    window.addEventListener('scroll', revealOnScroll);
    window.addEventListener('load', revealOnScroll);
</script>

</body>
</html>
