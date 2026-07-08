<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Client Success Stories | AI-Driven Software Development Case Studies</title>
    <meta name="description" content="Explore our portfolio of AI-powered software solutions. Real-world case studies showcasing innovative development projects from job portals to e-commerce platforms.">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Source+Serif+4:ital,wght@0,300;0,400;0,500;1,300;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }

        /* ── BRAND TOKENS ── */
        :root {
            --bg:         #F0F4FF;
            --border:     #D1D9F0;
            --dark:       #1A1F3C;
            --accent:     #6C63FF;
            --accent-dk:  #5248d4;
            --accent-lt:  #E8ECFF;
            --coral:      #FF6B6B;
            --coral-dk:   #e04f4f;
            --surface:    #ffffff;
            --surface-2:  #F5F7FF;
            --text-body:  #3D4466;
            --text-muted: #8B91B3;
            --teal-bg:    #E8ECFF;
            --teal-text:  #3d3aa8;

            /* card accent vars (overridden per card) */
            --ca:      var(--accent);
            --ca-lt:   var(--accent-lt);
            --ca-text: var(--accent-dk);
        }

        html { scroll-behavior: smooth; }

        body {
            background-color: var(--bg) !important;
            font-family: 'Source Serif 4', serif !important;
            color: var(--text-body) !important;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }

        h1, h2, h3,h4, h5, h6 {
            font-family: 'Montserrat', sans-serif !important;
            color: var(--color-gold-end) !important;
            letter-spacing: -0.02em;
        }

        p, li, span, td, th, label {
            font-family: 'Source Serif 4', serif !important;
        }

        a, button, .btn {
            font-family: 'Montserrat', sans-serif !important;
text-decoration: none;
        }

        /* ── HERO ── */
        .hero {
            position: relative;
            min-height: 88vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 9rem 6% 5rem;
            background: var(--surface);
            overflow: hidden;
            text-align: center;
        }

        .hero-bg {
            position: absolute;
            inset: 0;
            pointer-events: none;
            overflow: hidden;
        }

        /* Soft orbs */
        .hero-bg .orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(90px);
            opacity: 0.22;
        }
        .orb-1 { width:580px; height:580px; background:radial-gradient(circle,#6C63FF,#a89fff); top:-220px; right:-120px; animation:floatOrb 9s ease-in-out infinite; }
        .orb-2 { width:380px; height:380px; background:radial-gradient(circle,#FF6B6B,#ffb3b3); bottom:-80px; left:-80px; animation:floatOrb 11s ease-in-out infinite reverse; }
        .orb-3 { width:260px; height:260px; background:radial-gradient(circle,#6C63FF,#E8ECFF); top:38%; left:18%; animation:floatOrb 13s ease-in-out infinite; }

        @keyframes floatOrb {
            0%,100% { transform:translate(0,0) scale(1); }
            33%      { transform:translate(28px,-18px) scale(1.06); }
            66%      { transform:translate(-18px,14px) scale(0.96); }
        }

        /* grid lines */
        .hero-bg::after {
            content:'';
            position:absolute; inset:0;
            background-image:linear-gradient(rgba(108,99,255,.05) 1px, transparent 1px),
                             linear-gradient(90deg, rgba(108,99,255,.05) 1px, transparent 1px);
            background-size:60px 60px;
        }

        .hero-content { position:relative; z-index:2; max-width:820px; margin:0 auto; }

        .hero-eyebrow {
            display:inline-flex;
            align-items:center;
            gap:10px;
            padding:8px 22px;
            background:var(--accent-lt);
            border:1.5px solid rgba(108,99,255,.25);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.75rem;
            font-weight:700;
            letter-spacing:2.5px;
            text-transform:uppercase;
            color:var(--accent);
            margin-bottom:2rem;
            animation:fadeDown .7s ease-out both;
        }

        .hero-eyebrow .live-dot {
            width:8px; height:8px;
            border-radius:50%;
            background:var(--accent);
            animation:pulseDot 2s ease-in-out infinite;
        }

        @keyframes pulseDot {
            0%,100% { opacity:1; transform:scale(1); }
            50%      { opacity:.4; transform:scale(1.5); }
        }

        .hero-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(3.2rem,7vw,6.5rem);
            font-weight:900 !important;
            line-height:1.0;
            letter-spacing:-0.04em;
            color:var(--dark) !important;
            margin-bottom:1.5rem;
            animation:fadeUp .7s ease-out .15s both;
        }

        .hero-title .gradient-word {
            display:block;
            background:linear-gradient(135deg, var(--accent), #a89fff, var(--coral));
            -webkit-background-clip:text;
            -webkit-text-fill-color:transparent;
            background-clip:text;
        }

        .hero-sub {
            font-family:'Source Serif 4',serif !important;
            font-size:1.15rem;
            font-weight:300;
            color:var(--text-body) !important;
            line-height:1.9;
            max-width:580px;
            margin:0 auto 2.8rem;
            animation:fadeUp .7s ease-out .3s both;
        }

        .hero-cta {
            display:inline-flex;
            align-items:center;
            gap:10px;
            padding:1rem 2.6rem;
            background:var(--dark);
            color:#fff !important;
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-weight:700;
            font-size:0.95rem;
            letter-spacing:.5px;
            text-decoration:none;
            transition:all .3s ease;
            animation:fadeUp .7s ease-out .45s both;
        }

        .hero-cta:hover {
            background:var(--accent);
            transform:translateY(-3px);
            box-shadow:0 16px 40px rgba(108,99,255,.35);
        }

        .hero-cta i { transition:transform .3s ease; }
        .hero-cta:hover i { transform:translateY(4px); }

        /* Stats bar */
        .stats-bar {
            position:relative;
            z-index:2;
            display:flex;
            gap:0;
            margin-top:4rem;
            background:var(--surface);
            border:1.5px solid var(--border);
            border-radius:20px;
            overflow:hidden;
            animation:fadeUp .7s ease-out .6s both;
            box-shadow:0 8px 32px rgba(26,31,60,.06);
        }

        .stat-item {
            flex:1;
            padding:1.6rem 1.5rem;
            text-align:center;
            border-right:1.5px solid var(--border);
            transition:background .3s ease;
        }

        .stat-item:last-child { border-right:none; }
        .stat-item:hover { background:var(--accent-lt); }

        .stat-number {
            font-family:'Montserrat',sans-serif !important;
            font-size:2rem;
            font-weight:800;
            color:var(--accent) !important;
            line-height:1;
            margin-bottom:.35rem;
        }

        .stat-label {
            font-family:'Source Serif 4',serif !important;
            font-size:0.78rem;
            font-weight:400;
            color:var(--text-muted) !important;
            text-transform:uppercase;
            letter-spacing:1.2px;
        }

        /* ── WORK SECTION ── */
        .work-section {
            padding:6rem 6%;
            background:var(--bg);
        }

        .work-inner { max-width:1320px; margin:0 auto; }

        .section-header {
            display:flex;
            align-items:flex-end;
            justify-content:space-between;
            margin-bottom:3.5rem;
            gap:2rem;
        }

        .section-label {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:3px;
            text-transform:uppercase;
            color:var(--accent) !important;
            margin-bottom:.6rem;
        }

        .section-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(2rem,4vw,3rem);
            font-weight:800 !important;
            letter-spacing:-0.03em;
            color:var(--dark) !important;
            line-height:1.1;
        }

        .section-count {
            font-family:'Montserrat',sans-serif !important;
            font-size:5rem;
            font-weight:900;
            color:var(--border) !important;
            line-height:1;
            white-space:nowrap;
            user-select:none;
        }

        /* ── CARDS GRID — equal 3-col ── */
        .cards-grid {
            display:grid;
            grid-template-columns:repeat(3, 1fr);
            gap:1.6rem;
            /* equal row heights via auto rows */
            grid-auto-rows:1fr;
        }

        /* ── CASE CARD ── */
        .case-card {
            background:var(--surface);
            border-radius:20px;
            border:1.5px solid var(--border);
            overflow:hidden;
            display:flex;
            flex-direction:column;
            opacity:0;
            transform:translateY(36px);
            transition:
                opacity .55s ease,
                transform .55s ease,
                box-shadow .3s ease,
                border-color .3s ease;
            position:relative;
        }


.card-full-link {
    position: absolute;
    inset: 0;
    z-index: 10;
    border-radius: 20px;
}

        .case-card.visible { opacity:1; transform:translateY(0); }

        .case-card:hover {
            box-shadow:0 20px 56px rgba(26,31,60,.12);
            border-color:var(--ca);
            transform:translateY(-7px);
        }

        /* top color bar slide */
        .case-card::before {
            content:'';
            position:absolute;
            top:0; left:0; right:0;
            height:4px;
            background:var(--ca);
            transform:scaleX(0);
            transform-origin:left;
            transition:transform .4s cubic-bezier(.4,0,.2,1);
            z-index:4;
        }

        .case-card:hover::before { transform:scaleX(1); }

        /* ── IMAGE ── */
        .card-image {
            position:relative;
            overflow:hidden;
            flex-shrink:0;
            background:var(--surface-2);
            /* height driven by image itself — no fixed crop */
        }

        .card-image img {
            width:100%;
            height:auto;
            display:block;
            transition:transform .65s ease;
        }

        .case-card:hover .card-image img { transform:scale(1.04); }

        /* gradient scrim */
        .card-image::after {
            content:'';
            position:absolute;
            inset:0;
            background:linear-gradient(to top, rgba(26,31,60,.55) 0%, transparent 50%);
        }

        /* chip */
        .card-chip {
            position:absolute;
            bottom:14px; left:14px;
            z-index:3;
            display:inline-flex;
            align-items:center;
            gap:8px;
            padding:5px 14px;
            background:rgba(255,255,255,.96);
            backdrop-filter:blur(8px);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:.3px;
            color:var(--dark);
        }

        .chip-dot {
            width:7px; height:7px;
            border-radius:50%;
            background:var(--ca);
            flex-shrink:0;
        }

        /* ── CARD BODY ── */
        .card-body {
            padding:1.6rem 1.8rem 1.8rem;
            display:flex;
            flex-direction:column;
            gap:.9rem;
            flex:1;          /* stretch to fill equal-height cell */
        }

        /* Tags */
        .card-tags {
            display:flex;
            flex-wrap:wrap;
            gap:6px;
        }

        .tag {
            padding:4px 12px;
            background:var(--surface-2);
            border:1px solid var(--border);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.7rem;
            font-weight:600;
            letter-spacing:.3px;
            color:var(--text-body);
            transition:all .25s ease;
        }

        .case-card:hover .tag {
            background:var(--ca-lt);
            color:var(--ca-text);
            border-color:transparent;
        }

        /* Title */
        .card-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:1.15rem;
            font-weight:800;
            line-height:1.3;
            color:var(--dark) !important;
            letter-spacing:-0.02em;
            transition:color .3s ease;
        }

        .case-card:hover .card-title { color:var(--ca) !important; }

        /* Desc */
        .card-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:0.9rem;
            font-weight:300;
            line-height:1.75;
            color:var(--text-body) !important;
            flex:1;          /* push footer to bottom */
        }

        /* Footer */



        /* ── CTA SECTION ── */
        .cta-section {
            padding:8rem 6%;
            background:var(--dark);
            position:relative;
            overflow:hidden;
            text-align:center;
        }

        .cta-section::before {
            content:'';
            position:absolute;
            top:-240px; left:50%;
            transform:translateX(-50%);
            width:700px; height:700px;
            background:radial-gradient(circle, rgba(108,99,255,.45), transparent 65%);
            pointer-events:none;
        }

        .cta-section::after {
            content:'';
            position:absolute;
            bottom:-180px; right:-100px;
            width:500px; height:500px;
            background:radial-gradient(circle, rgba(255,107,107,.3), transparent 65%);
            pointer-events:none;
        }

        .cta-dots {
            position:absolute;
            inset:0;
            background-image:radial-gradient(rgba(255,255,255,.07) 1px, transparent 1px);
            background-size:28px 28px;
        }

        .cta-inner {
            position:relative;
            z-index:2;
            max-width:740px;
            margin:0 auto;
        }

        .cta-eyebrow {
            display:inline-flex;
            align-items:center;
            gap:8px;
            padding:7px 20px;
            border:1px solid rgba(255,255,255,.18);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:2px;
            text-transform:uppercase;
            color:rgba(255,255,255,.55);
            margin-bottom:2rem;
        }

        .cta-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(2.4rem,5vw,4.2rem);
            font-weight:900 !important;
            letter-spacing:-0.04em;
            line-height:1.05;
            color:#fff !important;
            margin-bottom:1.5rem;
        }

        .cta-title .grad {
            background:linear-gradient(135deg,#a89fff,#c084fc,var(--coral));
            -webkit-background-clip:text;
            -webkit-text-fill-color:transparent;
            background-clip:text;
        }

        .cta-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:1.05rem;
            font-weight:300;
            color:rgba(255,255,255,.6) !important;
            line-height:1.9;
            margin-bottom:3rem;
        }

        .cta-buttons {
            display:flex;
            justify-content:center;
            gap:1rem;
            flex-wrap:wrap;
        }

        .btn-white {
            display:inline-flex;
            align-items:center;
            gap:10px;
            padding:1rem 2.5rem;
            background:#fff;
            color:var(--dark) !important;
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-weight:800;
            font-size:0.95rem;
            text-decoration:none;
            transition:all .3s ease;
        }

        .btn-white:hover {
            transform:translateY(-3px);
            box-shadow:0 16px 40px rgba(255,255,255,.18);
            background:var(--accent-lt);
            color:var(--accent) !important;
        }

        .btn-ghost {
            display:inline-flex;
            align-items:center;
            gap:10px;
            padding:1rem 2.5rem;
            background:transparent;
            color:#fff !important;
            border:1.5px solid rgba(255,255,255,.28);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-weight:700;
            font-size:0.95rem;
            text-decoration:none;
            transition:all .3s ease;
        }

        .btn-ghost:hover {
            background:rgba(255,255,255,.09);
            border-color:rgba(255,255,255,.6);
            transform:translateY(-3px);
        }

        /* ── ANIMATIONS ── */
        @keyframes fadeDown {
            from { opacity:0; transform:translateY(-22px); }
            to   { opacity:1; transform:translateY(0); }
        }

        @keyframes fadeUp {
            from { opacity:0; transform:translateY(26px); }
            to   { opacity:1; transform:translateY(0); }
        }

        /* ── RESPONSIVE ── */
        @media (max-width:1100px) {
            .cards-grid { grid-template-columns:repeat(2,1fr); grid-auto-rows:auto; }
        }

        @media (max-width:768px) {
            .hero { padding:7rem 5% 4rem; min-height:70vh; }
            .hero-title { font-size:2.8rem; }
            .stats-bar { flex-direction:column; }
            .stat-item { border-right:none; border-bottom:1.5px solid var(--border); }
            .stat-item:last-child { border-bottom:none; }
            .section-header { flex-direction:column; align-items:flex-start; }
            .section-count { display:none; }
            .cards-grid { grid-template-columns:1fr; gap:1.2rem; }
            .work-section { padding:4rem 5%; }
            .cta-section { padding:5rem 5%; }
            .cta-buttons { flex-direction:column; align-items:center; }
            .btn-white, .btn-ghost { width:100%; justify-content:center; }
        }

        @media (max-width:480px) {
            .hero-title { font-size:2.2rem; }
        }
    </style>
</head>
<body>
    <jsp:include page="../includes/navbar/navbar.jsp" />

    <!-- ── HERO ── -->
    <section class="hero">
        <div class="hero-bg">
            <div class="orb orb-1"></div>
            <div class="orb orb-2"></div>
            <div class="orb orb-3"></div>
        </div>

        <div class="hero-content">
            <div class="hero-eyebrow">
                <span class="live-dot"></span>
                AI-Powered Success Stories
            </div>
            <h1 class="hero-title">
                Our Work<br>
                <span class="gradient-word">In Action</span>
            </h1>
            <p class="hero-sub">
                Intelligent platforms built for real businesses — from hiring engines
                to e-commerce — crafted with precision, scale, and purpose.
            </p>
            <a href="#projects" class="hero-cta">
                Explore Projects <i class="fas fa-arrow-down"></i>
            </a>
        </div>

        <div class="stats-bar">
            <div class="stat-item">
                <div class="stat-number">12+</div>
                <div class="stat-label">Products Shipped</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">38</div>
                <div class="stat-label">Countries Reached</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">5M+</div>
                <div class="stat-label">Users Served</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">100%</div>
                <div class="stat-label">Java Architecture</div>
            </div>
        </div>
    </section>

    <!-- ── CASE STUDIES ── -->
    <section class="work-section" id="projects">
        <div class="work-inner">
            <div class="section-header">
                <div>
                    <div class="section-label">Portfolio</div>
                    <h2 class="section-title">Case Studies</h2>
                </div>
            </div>

            <div class="cards-grid">


                <!-- 01 Toywallah -->
                <article class="case-card theme-teal">
<a href="${pageContext.request.contextPath}/case-studies/toywallah" class="card-full-link" aria-label="View Toywallah Case Study"></a>
                    <div class="card-image">
                        <img src="${pageContext.request.contextPath}/assets/images/toywallahss.png" alt="Toywallah - Baby & Kids E-Marketplace" loading="lazy">
                        <div class="card-chip">
                            <span class="chip-dot"></span>
                            E-Marketplace · Baby Products
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-tags">
                            <span class="tag">Multi-Seller</span>
                            <span class="tag">E-Commerce</span>
                            <span class="tag">Catalogue</span>
                        </div>
                        <h2 class="card-title">Toywallah: Baby & Kids E-Marketplace</h2>
                        <p class="card-desc">
                            A trusted marketplace connecting sellers and parents — seamless onboarding, curated catalogues, and a delightful buying experience for baby and kids essentials.
                        </p>
                        <div class="card-footer">
                            <a href="case-study-toywallah.jsp" class="card-link">
                                View Case Study
                                <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                </article>


                <!-- 01 Dream Naukri -->
                <article class="case-card theme-violet">
    <a href="${pageContext.request.contextPath}/case-studies/dream-naukri" class="card-full-link" aria-label="View Dream Naukri Case Study"></a>

                    <div class="card-image">
                        <img src="${pageContext.request.contextPath}/assets/images/dreamnaukriss.png" alt="Dream Naukri - AI Job Matching Platform" loading="lazy">
                        <div class="card-chip">
                            <span class="chip-dot"></span>
                            Job Portal · AI/ML
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-tags">
                            <span class="tag">AI Matching</span>
                            <span class="tag">Machine Learning</span>
                            <span class="tag">Java Architecture</span>
                        </div>
                        <h2 class="card-title">Dream Naukri: AI-Powered Job Matching Revolution</h2>
                        <p class="card-desc">
                            Transforming recruitment with intelligent algorithms — automated resume screening, smart talent matching, and personalized career recommendations built on robust Java microservices.
                        </p>
                        <div class="card-footer">
                            <a href="case-study-dream-naukri" class="card-link">
                                View Case Study
                                <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                </article>

                <!-- 02 Bull Clothings -->

                <article class="case-card theme-coral">
<a href="${pageContext.request.contextPath}/case-studies/bull-clothings" class="card-full-link" aria-label="View Bull Clothings Case Study"></a>
                    <div class="card-image">
                        <img src="${pageContext.request.contextPath}/assets/images/bullclothingsss.png" alt="Bull Clothings - AI Fashion E-Commerce" loading="lazy">
                        <div class="card-chip">
                            <span class="chip-dot"></span>
                            E-Commerce · Fashion Tech
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-tags">
                            <span class="tag">Computer Vision</span>
                            <span class="tag">AI Personalization</span>
                            <span class="tag">Java EE</span>
                        </div>
                        <h2 class="card-title">Bull Clothings: AI-Driven Fashion E-Commerce</h2>
                        <p class="card-desc">
                            Virtual try-on, intelligent size prediction, and personalized styling — delivering exceptional shopping experiences with enterprise-grade Java architecture.
                        </p>
                        <div class="card-footer">
                            <a href="case-study-bull-clothings" class="card-link">
                                View Case Study
                                <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                </article>


                <!-- 04 Netclix -->
                <article class="case-card theme-navy">
<a href="${pageContext.request.contextPath}/case-studies/netclix" class="card-full-link" aria-label="View Netclix Case Study"></a>
                    <div class="card-image">
                        <img src="${pageContext.request.contextPath}/assets/images/netclixss.png" alt="Netclix - Email Marketing Platform" loading="lazy">
                        <div class="card-chip">
                            <span class="chip-dot"></span>
                            Email Marketing · SaaS
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-tags">
                            <span class="tag">Email Automation</span>
                            <span class="tag">AI Personalization</span>
                            <span class="tag">Spring Boot</span>
                        </div>
                        <h2 class="card-title">Netclix: Emails That Convert at Scale</h2>
                        <p class="card-desc">
                            High-throughput email platform across 38 countries — resilient Java microservices engineered for inbox deliverability and revenue-driving conversion at scale.
                        </p>
                        <div class="card-footer">
                            <a href="case-study-netclix.jsp" class="card-link">
                                View Case Study
                                <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                </article>

                <!-- 05 House of Brownies -->
                <article class="case-card theme-gold">
<a href="${pageContext.request.contextPath}/case-studies/house-of-brownies" class="card-full-link" aria-label="View House of Brownies Case Study"></a>
                    <div class="card-image">
                        <img src="${pageContext.request.contextPath}/assets/images/HOB.png" alt="House of Brownies - Food Manufacturing" loading="lazy">
                        <div class="card-chip">
                            <span class="chip-dot"></span>
                            Food Manufacturing · B2B
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-tags">
                            <span class="tag">Brownies & Blondies</span>
                            <span class="tag">Pan-India Supply</span>
                            <span class="tag">B2B Catering</span>
                        </div>
                        <h2 class="card-title">House of Brownies: Baked from Passion, Built with Love</h2>
                        <p class="card-desc">
                            Supplying restaurants, IT parks, corporate vendors, and retail shops across India — custom pack sizes, reliable logistics, baked from passion every single day.
                        </p>
                        <div class="card-footer">
                            <a href="case-study-brownies.jsp" class="card-link">
                                View Case Study
                                <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                </article>




<!-- MGTM Consultancy LLP -->
<article class="case-card theme-blue">
  <a href="${pageContext.request.contextPath}/case-studies/mgtm" class="card-full-link" aria-label="View MGTM Consultancy Case Study"></a>
  <div class="card-image">
    <img src="${pageContext.request.contextPath}/assets/images/mgtm.png" alt="MGTM Consultancy LLP - Career Coaching" loading="lazy">
    <div class="card-chip">
      <span class="chip-dot"></span>
      Career Coaching · B2C & B2B
    </div>
  </div>
  <div class="card-body">
    <div class="card-tags">
      <span class="tag">Study Abroad Guidance</span>
      <span class="tag">Career Mentorship</span>
      <span class="tag">Holistic Counselling</span>
    </div>
    <h2 class="card-title">MGTM Consultancy: Clarity Over Sales, Purpose Over Pressure</h2>
    <p class="card-desc">
      Helping students, parents, schools, and corporates navigate education and career decisions — with a multidimensional, research-driven approach that replaces guesswork with guided strategy.
    </p>
    <div class="card-footer">
      <a href="case-study-mgtm.jsp" class="card-link">
        View Case Study
        <span class="arrow-circle"><i class="fas fa-arrow-right"></i></span>
      </a>
    </div>
  </div>
</article>


            </div>
        </div>
    </section>




    <!-- ── CTA ── -->
    <section class="cta-section">
        <div class="cta-dots"></div>
        <div class="cta-inner">
            <div class="cta-eyebrow">
                <i class="fas fa-rocket"></i>&nbsp; Start Your Project
            </div>
            <h2 class="cta-title">
                Ready to Build<br><span class="grad">Something Great?</span>
            </h2>
            <p class="cta-desc">
                Partner with us to create intelligent, scalable software solutions that drive growth,
                enhance efficiency, and deliver exceptional user experiences.
            </p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting" class="btn-white">
                    <i class="fas fa-calendar-check"></i> Schedule Free Consultation
                </a>
            </div>
        </div>
    </section>

    <jsp:include page="../includes/footer/footer.jsp" />

    <script>
        /* smooth scroll */
        document.querySelectorAll('a[href^="#"]').forEach(a => {
            a.addEventListener('click', e => {
                e.preventDefault();
                const t = document.querySelector(a.getAttribute('href'));
                if (t) t.scrollIntoView({ behavior:'smooth', block:'start' });
            });
        });

        /* scroll-reveal cards with stagger */
        const io = new IntersectionObserver(entries => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                    io.unobserve(entry.target);
                }
            });
        }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });

        document.querySelectorAll('.case-card').forEach(c => io.observe(c));
    </script>
</body>
</html>
