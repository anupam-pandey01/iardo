<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IARDO</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,600;0,700;0,800;0,900;1,400&family=Source+Serif+4:ital,wght@0,400;0,600;1,400;1,600&display=swap" rel="stylesheet">
   	<style>
   		:root {
            --color-bg: #eaf4fb; /* soft sky blue page wash */
            --color-surface: #bdd9ef; /* muted blue-grey surface */
            --color-dark: #0d2d4a; /* deep blue-black */
            --color-accent: #ff9b51; /* orange CTA — unchanged */
            --color-navy: #0a5c8f; /* primary blue */
            --color-navy-mid: #1a7bb8; /* mid blue */
            --color-navy-bg: #d4ebf8; /* pale blue tint for tags */
            --color-gold-start: #cca72f;
            --color-gold-end: #e9c349;
            --color-muted: #4a84a8; /* blue-toned muted text */
            --color-body: #1a4d6e; /* blue body text */

            --font-display: "Montserrat", sans-serif;
            --font-body: "Source Serif 4", Georgia, serif;
        }

        /* ── Page background ── */
        body {
            background-color: var(--color-bg) !important;
            color: var(--color-dark) !important;
        }

        .services-section {
            background-color: var(--color-bg) !important;
        }

        .bg-gradient {
            background: radial-gradient(
            ellipse 80% 60% at 50% -10%,
            rgba(10, 92, 143, 0.12) 0%,
            transparent 70%
            ) !important;
        }

        /* ── Section Header ── */
        .section-header {
            text-align: center;
            margin-bottom: 3.5rem;
            margin-top: 3.5rem;
        }

        .eyebrow-badge,
        .section-eyebrow {
            font-family: var(--font-display);
            font-weight: 700;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            color: var(--color-body);
        }

        .section-title,
        h1.section-title {
            font-family: var(--font-display) !important;
            font-weight: 900 !important;
            letter-spacing: -0.03em !important;
            color: var(--color-navy) !important;
            line-height: 1.1 !important;
        }

        .section-title .accent,
        h1 .accent {
            background: linear-gradient(
            90deg,
            var(--color-gold-start),
            var(--color-gold-end)
            );
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .section-description {
            font-family: var(--font-body) !important;
            font-weight: 400 !important;
            font-size: 1.15rem !important;
            color: var(--color-body) !important;
            line-height: 1.65 !important;
        }

        .section-description em,
        .section-description .key-phrase {
            font-style: italic;
        }

        .section-description strong,
        .section-description .platform-name {
            font-weight: 600;
            color: var(--color-navy);
        }

        /* ── Platform / category tags ── */
        .platform-tag,
        .category-tag {
            font-family: var(--font-display);
            font-weight: 700;
            font-size: 12px;
            letter-spacing: 0.03em;
            color: var(--color-navy-mid);
            background-color: var(--color-navy-bg);
            border-radius: 4px;
            padding: 3px 8px;
            display: inline-block;
        }

        /* ── CTA Buttons ── */
        .btn-primary,
        .cta-primary {
            font-family: var(--font-display) !important;
            font-weight: 800 !important;
            font-size: 13px !important;
            text-transform: uppercase !important;
            letter-spacing: 0.05em !important;
            background-color: var(--color-accent) !important;
            color: #fff !important;
            border: none;
            border-radius: 6px;
            padding: 12px 24px;
            cursor: pointer;
            transition:
            opacity 0.2s,
            transform 0.15s;
        }

        .btn-primary:hover,
        .cta-primary:hover {
            opacity: 0.88;
            transform: translateY(-1px);
        }

        .btn-secondary,
        .cta-secondary {
            font-family: var(--font-display) !important;
            font-weight: 700 !important;
            font-size: 13px !important;
            text-transform: uppercase !important;
            letter-spacing: 0.05em !important;
            background-color: transparent !important;
            color: var(--color-navy) !important;
            border: 2px solid var(--color-navy) !important;
            border-radius: 6px;
            padding: 10px 22px;
            cursor: pointer;
            transition:
            background 0.2s,
            color 0.2s;
        }

        .btn-secondary:hover,
        .cta-secondary:hover {
            background-color: var(--color-navy) !important;
            color: #fff !important;
        }

        /* ── Trust line ── */
        .trust-line,
        .trust-text {
            font-family: var(--font-display);
            font-weight: 600;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.07em;
            color: var(--color-muted);
        }

        /* ── Card overrides ── */
        .service-card {
            min-height: 420px !important;
            background-color: #f0f8ff !important; /* alice blue card */
            border: 1px solid var(--color-surface) !important;
            border-radius: 14px !important;
            box-shadow: 0 2px 12px rgba(10, 92, 143, 0.08) !important;
            transition:
            box-shadow 0.25s,
            transform 0.2s !important;
        }

        .service-card:hover {
            box-shadow: 0 8px 32px rgba(10, 92, 143, 0.18) !important;
            transform: translateY(-3px) !important;
        }

        .card-inner {
            min-height: 420px !important;
            display: flex !important;
            flex-direction: column !important;
        }

        .card-inner h3,
        .card-name {
            font-family: var(--font-display) !important;
            font-weight: 800 !important;
            letter-spacing: -0.02em !important;
            color: var(--color-dark) !important;
        }

        .card-description {
            font-family: var(--font-body) !important;
            font-weight: 400 !important;
            font-size: 0.97rem !important;
            color: var(--color-body) !important;
            flex-shrink: 0 !important;
            line-height: 1.6 !important;
        }

        .services-list h4,
        .tools-list h4 {
            font-family: var(--font-display) !important;
            font-weight: 700 !important;
            font-size: 11px !important;
            text-transform: uppercase !important;
            letter-spacing: 0.07em !important;
            color: var(--color-muted) !important;
            margin-bottom: 6px !important;
        }

        .services-list ul li {
            font-family: var(--font-display) !important;
            font-weight: 600 !important;
            font-size: 12px !important;
            letter-spacing: 0.02em !important;
            color: var(--color-navy-mid) !important;
        }

        .card-arrow {
            color: var(--color-accent) !important;
            transition: transform 0.2s !important;
        }

        .card-arrow:hover {
            transform: translate(3px, -3px) !important;
        }

        /* ── Logo image fix ── */
        .card-header {
            display: flex !important;
            align-items: center !important;
            justify-content: space-between !important;
            min-height: 110px !important;
            padding-bottom: 12px !important;
        }

        .card-title {
            display: flex !important;
            align-items: center !important;
            justify-content: flex-start !important;
            flex: 1 !important;
            overflow: visible !important;
        }

        .service-logo,
        .card-title img,
        .card-title img.service-logo {
            display: block !important;
            width: auto !important;
            max-width: 160px !important;
            height: auto !important;
            max-height: 80px !important;
            object-fit: contain !important;
            object-position: left center !important;
            overflow: visible !important;
            clip: auto !important;
        }

        .card-content {
            flex: 1 !important;
            display: flex !important;
            flex-direction: column !important;
            justify-content: flex-end !important;
        }

        /* ── Floating decorative circles ── */
        .floating-circle {
            opacity: 0.15 !important;
        }

        .circle-1 {
            background: var(--color-accent) !important;
        }
        .circle-2 {
            background: var(--color-navy) !important;
        }
        .circle-3 {
            background: #7ec8e3 !important;
        }

        /* ============================================
    COMPLETE REDESIGN - PREMIUM CARD ANIMATIONS
    ============================================ */

        /* Grid Layout - Better spacing */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 1rem;
            margin-bottom: 1rem;
        }

        /* ========== SERVICE CARD - MODERN DESIGN ========== */
        .service-card {
            background: #ffffff !important;
            border-radius: 20px !important;
            border: none !important;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05) !important;
            transition: all 0.4s cubic-bezier(0.2, 0.9, 0.4, 1.1) !important;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        /* Gradient border effect on hover */
        .service-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 20px;
            padding: 2px;
            background: linear-gradient(135deg, #00bcd4, #ff9b51, #00bcd4);
            -webkit-mask:
            linear-gradient(#fff 0 0) content-box,
            linear-gradient(#fff 0 0);
            -webkit-mask-composite: xor;
            mask-composite: exclude;
            opacity: 0;
            transition: opacity 0.4s ease;
            pointer-events: none;
        }

        .service-card:hover::before {
            opacity: 1;
        }

        /* Hover effect - lift with glow */
        .service-card:hover {
            transform: translateY(-12px) scale(1.02) !important;
            box-shadow:
            0 25px 45px -12px rgba(0, 188, 212, 0.4),
            0 8px 18px rgba(0, 0, 0, 0.1) !important;
            background: linear-gradient(
            135deg,
            #ffffff 0%,
            #f0fdff 100%
            ) !important;
        }

        /* Card Inner */
        .card-inner {
            padding: 1.8rem !important;
            min-height: 450px !important;
            display: flex !important;
            flex-direction: column !important;
            position: relative;
            z-index: 1;
        }

        /* ========== HEADER SECTION ========== */
        .card-header {
            display: flex !important;
            align-items: center !important;
            justify-content: space-between !important;
            margin-bottom: 1.5rem !important;
            min-height: 100px !important;
        }

        /* Logo Styling */
        .service-logo {
            max-width: 170px !important;
            max-height: 85px !important;
            filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.05));
            transition: all 0.3s ease;
        }

        .service-card:hover .service-logo {
            transform: scale(1.05);
            filter: drop-shadow(0 4px 12px rgba(0, 188, 212, 0.3));
        }

        /* Arrow Button */
        .card-arrow {
            background: rgba(255, 155, 81, 0.1);
            border-radius: 50%;
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
        }

        .card-arrow svg {
            width: 22px;
            height: 22px;
            stroke: #ff9b51;
            stroke-width: 2;
            transition: all 0.3s ease;
        }

        .service-card:hover .card-arrow {
            background: linear-gradient(135deg, #00bcd4, #26c6da);
            transform: translateX(5px) rotate(5deg);
        }

        .service-card:hover .card-arrow svg {
            stroke: white;
            transform: translate(3px, -2px);
        }

        /* ========== DESCRIPTION - BIGGER TEXT ========== */
        .card-description {
            font-family: var(--font-body) !important;
            font-weight: 500 !important;
            font-size: 1.05rem !important;
            line-height: 1.6 !important;
            color: var(--color-body) !important;
            margin-bottom: 1.5rem !important;
            padding-right: 0.5rem;
            transition: all 0.3s ease;
        }

        .service-card:hover .card-description {
            color: #0d2d4a;
            transform: translateX(3px);
        }

        /* ========== SERVICES & TOOLS SECTION ========== */
        .card-content {
            margin-top: auto;
            display: flex;
            flex-direction: column;
            gap: 1.2rem;
        }

        /* Section Headers */
        .services-list h4,
        .tools-list h4 {
            font-family: var(--font-display);
            font-weight: 800 !important;
            font-size: 12px !important;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: #78909c;
            margin-bottom: 10px !important;
            transition: all 0.3s ease;
        }

        .service-card:hover .services-list h4,
        .service-card:hover .tools-list h4 {
            color: #00bcd4;
            letter-spacing: 0.12em;
        }

        /* Service Tags */
        .services-list ul {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            list-style: none;
        }

        .services-list ul li {
            font-family: var(--font-display);
            font-weight: 700 !important;
            font-size: 12px !important;
            padding: 6px 14px !important;
            background: #e8f4fd !important;
            color: #0a5c8f !important;
            border-radius: 30px !important;
            transition: all 0.3s ease;
        }

        .service-card:hover .services-list ul li {
            background: linear-gradient(135deg, #00bcd4, #26c6da) !important;
            color: white !important;
            transform: translateY(-2px) translateX(2px);
            box-shadow: 0 4px 10px rgba(0, 188, 212, 0.3);
        }

        /* Tool Icons */
        .tool-icons {
            display: flex;
            flex-wrap: wrap;
            gap: 14px;
            align-items: center;
        }

        .tool-icon {
            font-size: 1.5rem !important;
            transition: all 0.3s cubic-bezier(0.34, 1.2, 0.64, 1);
            filter: drop-shadow(0 1px 2px rgba(0, 0, 0, 0.1));
        }

        /* Staggered icon animation on hover */
        .service-card:hover .tool-icon:nth-child(1) {
            transform: translateY(-5px) scale(1.2) rotate(5deg);
            transition-delay: 0s;
        }
        .service-card:hover .tool-icon:nth-child(2) {
            transform: translateY(-5px) scale(1.2) rotate(-5deg);
            transition-delay: 0.03s;
        }
        .service-card:hover .tool-icon:nth-child(3) {
            transform: translateY(-5px) scale(1.2) rotate(8deg);
            transition-delay: 0.06s;
        }
        .service-card:hover .tool-icon:nth-child(4) {
            transform: translateY(-5px) scale(1.2) rotate(-3deg);
            transition-delay: 0.09s;
        }
        .service-card:hover .tool-icon:nth-child(5) {
            transform: translateY(-5px) scale(1.2) rotate(6deg);
            transition-delay: 0.12s;
        }
        .service-card:hover .tool-icon:nth-child(6) {
            transform: translateY(-5px) scale(1.2) rotate(-7deg);
            transition-delay: 0.15s;
        }

        /* ========== PAGE LOAD ANIMATION - SMOOTH ENTRY ========== */
        @keyframes cardReveal {
            0% {
            opacity: 0;
            transform: translateY(40px) scale(0.95);
            }
            100% {
            opacity: 1;
            transform: translateY(0) scale(1);
            }
        }

        .service-card {
            animation: cardReveal 0.6s cubic-bezier(0.2, 0.9, 0.4, 1.1) forwards;
            opacity: 0;
        }

        /* Stagger delays */
        .service-card:nth-child(1) {
            animation-delay: 0.02s;
        }
        .service-card:nth-child(2) {
            animation-delay: 0.06s;
        }
        .service-card:nth-child(3) {
            animation-delay: 0.1s;
        }
        .service-card:nth-child(4) {
            animation-delay: 0.14s;
        }
        .service-card:nth-child(5) {
            animation-delay: 0.18s;
        }
        .service-card:nth-child(6) {
            animation-delay: 0.22s;
        }
        .service-card:nth-child(7) {
            animation-delay: 0.26s;
        }
        .service-card:nth-child(8) {
            animation-delay: 0.3s;
        }
        .service-card:nth-child(9) {
            animation-delay: 0.34s;
        }
        .service-card:nth-child(10) {
            animation-delay: 0.38s;
        }
        .service-card:nth-child(11) {
            animation-delay: 0.42s;
        }
        .service-card:nth-child(12) {
            animation-delay: 0.46s;
        }
        .service-card:nth-child(13) {
            animation-delay: 0.5s;
        }
        .service-card:nth-child(14) {
            animation-delay: 0.54s;
        }
        .service-card:nth-child(15) {
            animation-delay: 0.58s;
        }
        .service-card:nth-child(16) {
            animation-delay: 0.62s;
        }
        .service-card:nth-child(17) {
            animation-delay: 0.66s;
        }
        .service-card:nth-child(18) {
            animation-delay: 0.7s;
        }
        .service-card:nth-child(19) {
            animation-delay: 0.74s;
        }
        .service-card:nth-child(20) {
            animation-delay: 0.78s;
        }

        /* ========== SECTION HEADER STYLING ========== */
        .section-title {
            font-size: 3.5rem !important;
            margin-bottom: 1rem;
        }

        .section-description {
            font-size: 1.3rem !important;
            max-width: 750px;
            margin: 0 auto;
        }

        /* ========== FLOATING DECORATIONS ========== */
        .floating-circle {
            opacity: 0.1 !important;
            transition: all 0.5s ease;
        }

        .floating-circle.circle-1 {
            animation: float1 12s ease-in-out infinite;
        }

        .floating-circle.circle-2 {
            animation: float2 15s ease-in-out infinite;
        }

        .floating-circle.circle-3 {
            animation: float3 10s ease-in-out infinite;
        }

        @keyframes float1 {
            0%,
            100% {
            transform: translate(0, 0) rotate(0deg);
            }
            50% {
            transform: translate(30px, -30px) rotate(180deg);
            }
        }

        @keyframes float2 {
            0%,
            100% {
            transform: translate(0, 0) rotate(0deg);
            }
            50% {
            transform: translate(-25px, 20px) rotate(-180deg);
            }
        }

        @keyframes float3 {
            0%,
            100% {
            transform: translate(0, 0) scale(1);
            }
            50% {
            transform: translate(20px, 25px) scale(1.1);
            }
        }

        /* ========== CLICK FEEDBACK ========== */
        .service-card:active {
            transform: scale(0.97) !important;
            transition: transform 0.05s ease !important;
        }
   	</style>
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/blinkit/">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/blinkit_logo.webp" alt="Blinkit" class="service-logo"> </div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/blinkit" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Streamlined Blinkit onboarding with real-time inventory sync and 10-min delivery optimization.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Quick Commerce Setup</li><li>Hyperlocal Delivery Integration</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">⚡</div><div class="tool-icon">🕐</div><div class="tool-icon">🛵</div><div class="tool-icon">📍</div><div class="tool-icon">🔄</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/swiggy_instamart_logo.webp" alt="Swiggy Instamart" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Rapid Swiggy Instamart onboarding delivering shopping necessities right to your home.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Store Setup &amp; Registration</li><li>Inventory Optimization</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🛒</div><div class="tool-icon">⚡</div><div class="tool-icon">📦</div><div class="tool-icon">🚚</div><div class="tool-icon">📱</div><div class="tool-icon">💰</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/big-basket/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/bigbasket_logo.webp" alt="BigBasket" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/quick-commerce/big-basket/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Grow into thousands of cities with BigBasket store setup and listing optimization.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Store Setup &amp; Configuration</li><li>Multi-City Expansion</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">🏪</div><div class="tool-icon">📊</div><div class="tool-icon">🎯</div><div class="tool-icon">🌍</div><div class="tool-icon">📈</div><div class="tool-icon">✨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/zepto/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/myntra/'"/>
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/myntra_logo.webp" alt="Myntra" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/myntra/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Reach India's fashion-conscious shoppers with brand setup and trend-focused strategies.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Fashion Brand Setup</li><li>Style Catalog Creation</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">👗</div><div class="tool-icon">👟</div><div class="tool-icon">💄</div><div class="tool-icon">📸</div><div class="tool-icon">✨</div><div class="tool-icon">🎨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/nykaa/'"/>
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/amazon-now/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/flipkart/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/meesho/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/meesho_logo.webp" alt="Meesho" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}/services/e-commerce/meesho/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Reach millions of resellers across India with Meesho catalog optimization and strategic pricing.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>Seller Account Setup</li><li>Competitive Pricing Strategy</li></ul></div>
                        <div class="tools-list"><h4>Benefits</h4><div class="tool-icons"><div class="tool-icon">👥</div><div class="tool-icon">💰</div><div class="tool-icon">📦</div><div class="tool-icon">📱</div><div class="tool-icon">🎯</div><div class="tool-icon">🚀</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/jio-mart/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/shopify/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/marketplace/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/quick/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/instashop/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/e-commerce/ajio/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/development/web-development/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/big-basket/'">
                <div class="card-inner">
                    <div class="card-header">
                        <div class="card-title"><img src="https://iardo.pages.dev/app_dev_logo.webp" alt="Mobile App Development" class="service-logo"></div>
                        <a href="${pageContext.request.contextPath}services/quick-commerce/big-basket/" class="card-arrow" onclick="event.stopPropagation()"><svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor"><path d="M7 17L17 7M17 7H7M17 7V17" stroke-width="2" stroke-linecap="round"/></svg></a>
                    </div>
                    <p class="card-description">Intuitive iOS and Android apps with seamless UX, robust performance and enterprise-grade security.</p>
                    <div class="card-content">
                        <div class="services-list"><h4>Services</h4><ul><li>iOS &amp; Android Development</li><li>App Store Optimization</li></ul></div>
                        <div class="tools-list"><h4>Tools</h4><div class="tool-icons"><div class="tool-icon">📱</div><div class="tool-icon">🍎</div><div class="tool-icon">🤖</div><div class="tool-icon">⚡</div><div class="tool-icon">🔐</div><div class="tool-icon">🎨</div></div></div>
                    </div>
                </div>
            </div>

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/quick-commerce/digital-marketing/'">
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

            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/email-marketing/'">
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
            
            <div class="service-card" onclick="window.location.href='${pageContext.request.contextPath}/services/dmart-seller-onboarding/'">
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
