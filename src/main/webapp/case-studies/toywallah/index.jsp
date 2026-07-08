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
    <title>Toywallah Case Study | Baby &amp; Kids E-Marketplace</title>
    <meta name="description" content="How we built Toywallah — a dedicated e-marketplace connecting sellers and buyers of baby &amp; kids products with smart cataloguing, multi-seller onboarding, and seamless checkout.">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Source+Serif+4:ital,wght@0,300;0,400;0,600;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* =====================================================
           COLOR PALETTE
           #F0F4FF  — page background (cool lavender-white)
           #1A1F3C  — deep navy (headings, dark sections)
           #6C63FF  — electric violet (primary accent)
           #FF6B6B  — coral-red (secondary accent / highlight)
           #E8ECFF  — soft violet tint (card surfaces)
           #FFFFFF  — white (card bg)
        ===================================================== */
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
            --success:     #22c55e;
            --radius-sm:   8px;
            --radius-md:   14px;
            --radius-lg:   22px;
            --radius-xl:   32px;
            --shadow-sm:   0 2px 12px rgba(108,99,255,0.08);
            --shadow-md:   0 8px 32px rgba(108,99,255,0.13);
            --shadow-lg:   0 20px 60px rgba(108,99,255,0.16);
        }

        /* =====================================================
           GLOBAL FONTS & BASE
        ===================================================== */
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        html, body {
            background-color: var(--bg) !important;
            font-family: 'Source Serif 4', serif !important;
            color: var(--text-body) !important;
            line-height: 1.7;
            overflow-x: hidden;
        }
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Montserrat', sans-serif !important;
            color: var(--dark) !important;
            letter-spacing: -0.02em;
            line-height: 1.2;
        }
        .nav-glass{
        	background: #ffffff;
        }
        p, li, span, td, th, label {
            font-family: 'Source Serif 4', serif !important;
        }
        a, button, .btn, .navbar, nav {
            font-family: 'Montserrat', sans-serif !important;
        }
        a { text-decoration: none; }
        .container { max-width: 1200px; margin: 0 auto; padding: 0 24px; }

        /* =====================================================
           SCROLL ANIMATIONS
        ===================================================== */
        .reveal {
            opacity: 0;
            transform: translateY(36px);
            transition: opacity 0.7s cubic-bezier(.4,0,.2,1), transform 0.7s cubic-bezier(.4,0,.2,1);
        }
        .reveal.visible { opacity: 1; transform: translateY(0); }
        .reveal-left {
            opacity: 0;
            transform: translateX(-40px);
            transition: opacity 0.7s ease, transform 0.7s ease;
        }
        .reveal-left.visible { opacity: 1; transform: translateX(0); }
        .reveal-right {
            opacity: 0;
            transform: translateX(40px);
            transition: opacity 0.7s ease, transform 0.7s ease;
        }
        .reveal-right.visible { opacity: 1; transform: translateX(0); }
        .reveal-scale {
            opacity: 0;
            transform: scale(0.92);
            transition: opacity 0.6s ease, transform 0.6s cubic-bezier(.34,1.56,.64,1);
        }
        .reveal-scale.visible { opacity: 1; transform: scale(1); }

        /* =====================================================
           HERO
        ===================================================== */
        .case-hero {
            background: linear-gradient(135deg, var(--dark) 0%, var(--emerald-md) 50%, #3d2e8c 100%);
            padding: 100px 0 80px;
            position: relative;
            overflow: hidden;
        }
        .case-hero::before {
            content: '';
            position: absolute;
            top: -100px; right: -150px;
            width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(108,99,255,0.25) 0%, transparent 70%);
            border-radius: 50%;
            animation: pulse-orb 6s ease-in-out infinite;
        }
        .case-hero::after {
            content: '';
            position: absolute;
            bottom: -80px; left: -100px;
            width: 400px; height: 400px;
            background: radial-gradient(circle, rgba(255,107,107,0.18) 0%, transparent 70%);
            border-radius: 50%;
            animation: pulse-orb 8s ease-in-out infinite reverse;
        }
        @keyframes pulse-orb {
            0%,100% { transform: scale(1) translate(0,0); }
            50% { transform: scale(1.1) translate(20px, -20px); }
        }
        .hero-particles {
            position: absolute; inset: 0; pointer-events: none; overflow: hidden;
        }
        .particle {
            position: absolute;
            border-radius: 50%;
            opacity: 0.15;
            animation: float-particle linear infinite;
        }
        @keyframes float-particle {
            0% { transform: translateY(0) rotate(0deg); opacity: 0; }
            10% { opacity: 0.15; }
            90% { opacity: 0.15; }
            100% { transform: translateY(-100vh) rotate(720deg); opacity: 0; }
        }
        .hero-content { position: relative; z-index: 2; max-width: 780px; }
        .hero-tags {
            display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 28px;
            animation: fadeInDown 0.8s ease both;
        }
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .hero-tag {
            background: rgba(108,99,255,0.2);
            border: 1px solid rgba(108,99,255,0.4);
            color: var(--gold-lt);
            padding: 6px 16px;
            border-radius: 50px;
            font-size: 0.78rem;
            font-family: 'Montserrat', sans-serif !important;
            font-weight: 600;
            letter-spacing: 0.04em;
            backdrop-filter: blur(8px);
            display: flex; align-items: center; gap: 6px;
        }
        .hero-title {
            font-size: clamp(2.8rem, 6vw, 5rem);
            font-weight: 900;
            color: #fff !important;
            line-height: 1.05;
            margin-bottom: 24px;
            animation: fadeInUp 0.9s ease 0.1s both;
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .hero-title-accent { color: var(--coral) !important; }
        .hero-description {
            font-family: 'Source Serif 4', serif !important;
            font-size: 1.1rem;
            color: rgba(255,255,255,0.78);
            max-width: 560px;
            margin-bottom: 48px;
            line-height: 1.8;
            animation: fadeInUp 0.9s ease 0.2s both;
        }
        .hero-meta {
            display: flex; flex-wrap: wrap; gap: 24px;
            animation: fadeInUp 0.9s ease 0.3s both;
        }
        .meta-item {
            display: flex; align-items: center; gap: 12px;
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.12);
            border-radius: var(--radius-md);
            padding: 14px 20px;
            backdrop-filter: blur(10px);
            transition: background 0.3s, transform 0.3s;
        }
        .meta-item:hover { background: rgba(255,255,255,0.14); transform: translateY(-3px); }
        .meta-item i { color: var(--coral); font-size: 1.1rem; }
        .meta-label {
            display: block;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.68rem; font-weight: 600;
            color: rgba(255,255,255,0.45);
            letter-spacing: 0.1em; text-transform: uppercase;
        }
        .meta-value {
            display: block;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.9rem; font-weight: 700; color: #fff;
        }

        /* =====================================================
           STATS STRIP
        ===================================================== */
        .stats-strip {
            background: var(--surface);
            border-top: 1px solid var(--border);
            border-bottom: 1px solid var(--border);
            padding: 44px 0;
        }
        .stats-grid {
            display: flex; justify-content: center; flex-wrap: wrap; gap: 0;
        }
        .stat-item {
            flex: 1; min-width: 160px; max-width: 220px;
            text-align: center;
            padding: 20px 24px;
            border-right: 1px solid var(--border);
        }
        .stat-item:last-child { border-right: none; }
        .stat-num {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 2.4rem; font-weight: 900;
            color: var(--accent);
            display: block; line-height: 1;
            margin-bottom: 6px;
        }
        .stat-label {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.75rem; font-weight: 600;
            color: var(--text-muted);
            text-transform: uppercase; letter-spacing: 0.08em;
        }
        @media(max-width:480px){ .stat-item { border-right: none; border-bottom: 1px solid var(--border); } }

        /* =====================================================
           MAIN CONTENT SECTION (2-col)
        ===================================================== */
        .main-content-section { padding: 80px 0; }
        .content-wrapper {
            display: grid;
            grid-template-columns: 1fr 360px;
            gap: 40px;
            align-items: start;
        }
        @media(max-width:960px){ .content-wrapper { grid-template-columns: 1fr; } }

        .content-block { margin-bottom: 48px; }
        .block-title {
            font-size: 1.7rem;
            font-weight: 800;
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 14px;
        }
        .block-title::after {
            content: '';
            position: absolute; bottom: 0; left: 0;
            width: 48px; height: 3px;
            background: linear-gradient(90deg, var(--accent), var(--coral));
            border-radius: 2px;
        }
        .lead-paragraph {
            font-size: 1.08rem;
            color: var(--text-body);
            margin-bottom: 20px;
        }
        .overview-box {
            background: var(--surface);
            border: 1px solid var(--border);
            border-left: 4px solid var(--accent);
            border-radius: var(--radius-md);
            padding: 28px 32px;
            box-shadow: var(--shadow-sm);
        }
        .overview-box p { margin-bottom: 14px; font-size: 0.97rem; color: var(--text-body); }
        .overview-box p:last-child { margin-bottom: 0; }

        /* Tech Stack */
        .tech-stack-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-top: 24px;
        }
        .tech-category {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 24px;
            box-shadow: var(--shadow-sm);
            transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;
            position: relative;
            overflow: hidden;
        }
        .tech-category::before {
            content: '';
            position: absolute; top: 0; left: 0; right: 0; height: 3px;
            background: linear-gradient(90deg, var(--accent), var(--coral));
            opacity: 0;
            transition: opacity 0.3s;
        }
        .tech-category:hover { transform: translateY(-5px); box-shadow: var(--shadow-md); border-color: var(--accent); }
        .tech-category:hover::before { opacity: 1; }
        .tech-category-header {
            display: flex; align-items: center; gap: 10px; margin-bottom: 16px;
        }
        .tech-category-header i {
            width: 36px; height: 36px;
            background: var(--accent-lt);
            color: var(--accent);
            border-radius: var(--radius-sm);
            display: flex; align-items: center; justify-content: center;
            font-size: 0.9rem;
        }
        .tech-category-header h4 { font-size: 0.9rem; font-weight: 700; color: var(--dark); }
        .tech-list { list-style: none; }
        .tech-list li {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.82rem; font-weight: 500;
            color: var(--text-body);
            padding: 6px 0;
            border-bottom: 1px solid var(--border);
            display: flex; align-items: center; gap: 8px;
        }
        .tech-list li:last-child { border-bottom: none; }
        .tech-list li::before {
            content: '';
            width: 6px; height: 6px;
            background: var(--accent);
            border-radius: 50%;
            flex-shrink: 0;
        }

        /* =====================================================
           SIDEBAR
        ===================================================== */
        .sidebar-sticky { position: sticky; top: 100px; display: flex; flex-direction: column; gap: 24px; }
        .sidebar-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 28px;
            box-shadow: var(--shadow-sm);
            transition: box-shadow 0.3s;
        }
        .sidebar-card:hover { box-shadow: var(--shadow-md); }
        .sidebar-title {
            font-size: 1rem; font-weight: 800;
            color: var(--dark);
            margin-bottom: 18px; padding-bottom: 12px;
            border-bottom: 1px solid var(--border);
        }
        .project-info-list { display: flex; flex-direction: column; }
        .info-item {
            display: flex; justify-content: space-between; align-items: center;
            padding: 11px 0;
            border-bottom: 1px solid var(--border);
        }
        .info-item:last-child { border-bottom: none; }
        .info-label {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.75rem; font-weight: 600; color: var(--text-muted);
        }
        .info-value {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.82rem; font-weight: 700; color: var(--dark); text-align: right;
        }
        .status-badge {
            display: inline-flex; align-items: center; gap: 6px;
            background: rgba(34,197,94,0.1);
            color: var(--success);
            padding: 3px 10px; border-radius: 50px;
            font-size: 0.75rem; font-weight: 700;
        }
        .status-dot {
            width: 6px; height: 6px; background: var(--success); border-radius: 50%;
            animation: blink 1.5s ease infinite;
        }
        @keyframes blink { 0%,100%{opacity:1} 50%{opacity:0.3} }

        .sidebar-live-card {
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
            border-color: var(--accent);
        }
        .sidebar-live-card .sidebar-title { color: #fff !important; border-color: rgba(255,255,255,0.2); }
        .sidebar-live-card p {
            font-size: 0.87rem; color: rgba(255,255,255,0.78);
            line-height: 1.6; margin-bottom: 18px;
        }
        .sidebar-live-btn {
            display: flex; align-items: center; justify-content: center; gap: 8px;
            background: rgba(255,255,255,0.15);
            border: 2px solid rgba(255,255,255,0.4);
            color: #fff;
            padding: 12px 20px;
            border-radius: var(--radius-md);
            font-size: 0.85rem; font-weight: 700;
            transition: background 0.3s, transform 0.2s;
        }
        .sidebar-live-btn:hover { background: rgba(255,255,255,0.25); transform: translateY(-2px); color: #fff; }

        .services-list { list-style: none; display: flex; flex-direction: column; }
        .services-list li {
            display: flex; align-items: center; gap: 10px;
            padding: 9px 0;
            border-bottom: 1px solid var(--border);
            font-size: 0.9rem; color: var(--text-body);
            transition: color 0.2s;
        }
        .services-list li:last-child { border-bottom: none; }
        .services-list li:hover { color: var(--accent); }
        .services-list li i { color: var(--accent); font-size: 0.75rem; flex-shrink: 0; }

        /* =====================================================
           PLATFORM FEATURES
        ===================================================== */
        .platform-features-section {
            background: var(--dark);
            padding: 90px 0;
            position: relative;
            overflow: hidden;
        }
        .platform-features-section::before {
            content: '';
            position: absolute; inset: 0;
            background:
                radial-gradient(ellipse at 10% 50%, rgba(108,99,255,0.12) 0%, transparent 60%),
                radial-gradient(ellipse at 90% 20%, rgba(255,107,107,0.08) 0%, transparent 60%);
        }
        .platform-section-top {
            text-align: center; margin-bottom: 56px; position: relative; z-index: 1;
        }
        .platform-section-top .block-title { color: #fff !important; font-size: 2rem; }
        .platform-section-top .block-title::after { left: 50%; transform: translateX(-50%); width: 64px; }
        .platform-section-top p { color: rgba(255,255,255,0.6); font-size: 1.05rem; margin-top: 12px; }

        .platform-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 20px;
            position: relative; z-index: 1;
        }
        .platform-card {
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(255,255,255,0.08);
            border-radius: var(--radius-lg);
            padding: 28px;
            position: relative; overflow: hidden;
            transition: background 0.3s, border-color 0.3s, transform 0.3s;
            cursor: default;
        }
        .platform-card::before {
            content: '';
            position: absolute; inset: 0;
            background: linear-gradient(135deg, rgba(108,99,255,0.08) 0%, transparent 100%);
            opacity: 0; transition: opacity 0.3s;
        }
        .platform-card:hover { background: rgba(255,255,255,0.08); border-color: rgba(108,99,255,0.4); transform: translateY(-5px); }
        .platform-card:hover::before { opacity: 1; }
        .pc-num {
            position: absolute; top: 16px; right: 20px;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 1.8rem; font-weight: 900;
            color: rgba(255,255,255,0.04); line-height: 1;
        }
        .pc-icon {
            width: 48px; height: 48px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
            border-radius: var(--radius-md);
            display: flex; align-items: center; justify-content: center;
            font-size: 1.1rem; color: #fff;
            margin-bottom: 16px;
            box-shadow: 0 6px 20px rgba(108,99,255,0.35);
            transition: transform 0.3s;
        }
        .platform-card:hover .pc-icon { transform: scale(1.1) rotate(-5deg); }
        .pc-title {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.95rem; font-weight: 700; color: #fff; margin-bottom: 8px;
        }
        .pc-desc { font-size: 0.85rem; color: rgba(255,255,255,0.55); line-height: 1.6; }

        /* =====================================================
           PROGRESS / PERFORMANCE
        ===================================================== */
        .progress-section { padding: 80px 0; background: var(--surface-2); }
        .progress-inner {
            display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center;
        }
        @media(max-width:768px){ .progress-inner { grid-template-columns: 1fr; } }
        .progress-copy h2 { font-size: 2rem; font-weight: 900; margin-bottom: 16px; }
        .progress-copy p { font-size: 0.97rem; color: var(--text-muted); line-height: 1.7; }
        .progress-list { display: flex; flex-direction: column; gap: 22px; }
        .pb-head { display: flex; justify-content: space-between; margin-bottom: 8px; }
        .pb-label {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.82rem; font-weight: 700; color: var(--dark);
        }
        .pb-val {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.82rem; font-weight: 700; color: var(--accent);
        }
        .pb-track {
            background: var(--border); border-radius: 50px; height: 8px; overflow: hidden;
        }
        .pb-fill {
            height: 100%;
            background: linear-gradient(90deg, var(--accent), var(--coral));
            border-radius: 50px; width: 0;
            transition: width 1.4s cubic-bezier(.4,0,.2,1);
        }

        /* =====================================================
           BUILD PROCESS / TIMELINE
        ===================================================== */
        .process-section { padding: 80px 0; background: var(--bg); }
        .process-section .block-title { text-align: center; }
        .process-section .block-title::after { left: 50%; transform: translateX(-50%); }
        .process-subtitle {
            text-align: center; color: var(--text-muted);
            margin-bottom: 56px; margin-top: 12px;
        }
        .process-timeline { max-width: 760px; margin: 0 auto; position: relative; }
        .process-timeline::before {
            content: '';
            position: absolute; left: 28px; top: 0; bottom: 0; width: 2px;
            background: linear-gradient(to bottom, var(--accent), var(--coral));
            border-radius: 2px;
        }
        .timeline-item { display: flex; gap: 28px; margin-bottom: 40px; }
        .tl-dot {
            width: 56px; height: 56px; flex-shrink: 0;
            background: linear-gradient(135deg, var(--accent), var(--accent-dk));
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            color: #fff; font-size: 1rem; z-index: 1;
            box-shadow: 0 0 0 6px var(--accent-lt);
            transition: transform 0.3s;
        }
        .timeline-item:hover .tl-dot { transform: scale(1.12); }
        .tl-body {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 22px 26px; flex: 1;
            box-shadow: var(--shadow-sm);
            transition: box-shadow 0.3s, border-color 0.3s;
        }
        .timeline-item:hover .tl-body { box-shadow: var(--shadow-md); border-color: var(--accent); }
        .tl-phase {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.7rem; font-weight: 700;
            color: var(--accent); text-transform: uppercase; letter-spacing: 0.1em;
            margin-bottom: 4px;
        }
        .tl-title { font-size: 1rem; font-weight: 800; color: var(--dark); margin-bottom: 8px; }
        .tl-desc { font-size: 0.88rem; color: var(--text-muted); line-height: 1.65; }

        /* =====================================================
           KEY SOLUTIONS
        ===================================================== */
        .ai-solution-section { padding: 90px 0; background: var(--bg); }
        .ai-section-header {
            display: flex; justify-content: space-between; align-items: flex-end;
            margin-bottom: 56px; gap: 32px; flex-wrap: wrap;
        }
        .ai-section-eyebrow {
            display: inline-flex; align-items: center; gap: 8px;
            background: var(--accent-lt); color: var(--accent);
            padding: 6px 16px; border-radius: 50px;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.78rem; font-weight: 700;
            letter-spacing: 0.06em; text-transform: uppercase;
            margin-bottom: 16px;
        }
        .ai-section-title {
            font-size: clamp(1.8rem, 3.5vw, 2.6rem);
            font-weight: 900; line-height: 1.1; margin-bottom: 16px;
        }
        .ai-section-title span { color: var(--accent); }
        .ai-section-desc { font-size: 1rem; color: var(--text-muted); max-width: 480px; line-height: 1.7; }

        .visit-site-btn {
            display: inline-flex; align-items: center; gap: 10px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
            color: #fff; padding: 14px 28px;
            border-radius: var(--radius-md);
            font-size: 0.88rem; font-weight: 700; white-space: nowrap;
            box-shadow: 0 8px 24px rgba(108,99,255,0.35);
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .visit-site-btn:hover { transform: translateY(-3px); box-shadow: 0 12px 32px rgba(108,99,255,0.45); color: #fff; }
        .btn-live-dot { width: 8px; height: 8px; background: #fff; border-radius: 50%; animation: blink 1.5s infinite; }

        .ai-features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
            gap: 28px;
        }
        @media(max-width:560px){ .ai-features-grid { grid-template-columns: 1fr; } }

        .ai-feature-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-xl);
            padding: 36px;
            position: relative; overflow: hidden;
            transition: transform 0.35s, box-shadow 0.35s, border-color 0.35s;
        }
        .ai-feature-card::after {
            content: '';
            position: absolute; inset: 0;
            background: linear-gradient(135deg, rgba(108,99,255,0.04) 0%, transparent 60%);
            pointer-events: none;
        }
        .ai-feature-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-lg); border-color: var(--accent); }
        .ai-feature-number {
            font-family: 'Montserrat', sans-serif !important;
            font-size: 4rem; font-weight: 900;
            color: var(--accent-lt); line-height: 1; margin-bottom: 8px;
        }
        .ai-feature-head { display: flex; align-items: flex-start; gap: 16px; margin-bottom: 16px; }
        .ai-feature-icon {
            width: 52px; height: 52px; flex-shrink: 0;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
            border-radius: var(--radius-md);
            display: flex; align-items: center; justify-content: center;
            font-size: 1.2rem; color: #fff;
            box-shadow: 0 6px 20px rgba(108,99,255,0.3);
        }
        .ai-feature-head h3 { font-size: 1.15rem; font-weight: 800; color: var(--dark); line-height: 1.3; padding-top: 4px; }
        .ai-feature-desc { font-size: 0.95rem; color: var(--text-body); line-height: 1.75; margin-bottom: 20px; }
        .ai-feature-tags { display: flex; flex-wrap: wrap; gap: 8px; margin-bottom: 20px; }
        .ai-tag {
            background: var(--accent-lt); color: var(--teal-text);
            padding: 5px 12px; border-radius: 50px;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.72rem; font-weight: 700;
        }
        .ai-highlights { list-style: none; display: flex; flex-direction: column; gap: 8px; }
        .ai-highlights li { display: flex; align-items: flex-start; gap: 10px; font-size: 0.9rem; color: var(--text-body); }
        .ai-highlights li i { color: var(--success); margin-top: 3px; font-size: 0.8rem; }

        /* =====================================================
           RELATED PROJECTS
        ===================================================== */
        .related-projects {
            background: var(--surface-2);
            padding: 80px 0;
            border-top: 1px solid var(--border);
        }
        .section-heading-center { font-size: 2rem; font-weight: 900; text-align: center; margin-bottom: 8px; }
        .section-subtitle-center { text-align: center; color: var(--text-muted); font-size: 1rem; margin-bottom: 48px; }
        .related-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(340px, 1fr)); gap: 28px;
        }
        .related-card {
            background: var(--surface); border: 1px solid var(--border);
            border-radius: var(--radius-xl); overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            display: block; color: inherit;
        }
        .related-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-lg); }
        .related-image { position: relative; aspect-ratio: 16/9; overflow: hidden; }
        .related-image img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.5s; }
        .related-card:hover .related-image img { transform: scale(1.06); }
        .related-overlay {
            position: absolute; inset: 0;
            background: rgba(26,31,60,0.5);
            display: flex; align-items: center; justify-content: center;
            opacity: 0; transition: opacity 0.3s;
        }
        .related-card:hover .related-overlay { opacity: 1; }
        .view-btn {
            background: var(--accent); color: #fff;
            padding: 10px 24px; border-radius: 50px;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.82rem; font-weight: 700;
        }
        .related-content { padding: 24px 28px; }
        .related-tags { display: flex; gap: 8px; margin-bottom: 12px; }
        .related-tags span {
            background: var(--accent-lt); color: var(--teal-text);
            padding: 4px 12px; border-radius: 50px;
            font-family: 'Montserrat', sans-serif !important;
            font-size: 0.72rem; font-weight: 700;
        }
        .related-content h3 { font-size: 1.15rem; font-weight: 800; margin-bottom: 6px; }
        .related-content p { font-size: 0.88rem; color: var(--text-muted); line-height: 1.5; }

        /* =====================================================
           RESPONSIVE
        ===================================================== */
        @media(max-width:768px) {
            .case-hero { padding: 70px 0 60px; }
            .hero-title { font-size: 2.6rem; }
            .hero-meta { gap: 12px; }
            .meta-item { padding: 10px 14px; }
            .main-content-section { padding: 56px 0; }
            .platform-features-section { padding: 60px 0; }
            .ai-solution-section { padding: 60px 0; }
            .ai-feature-card { padding: 24px; }
            .ai-section-header { flex-direction: column; align-items: flex-start; }
            .platform-grid { grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); }
            .related-grid { grid-template-columns: 1fr; }
        }
        @media(max-width:480px) {
            .hero-title { font-size: 2rem; }
            .hero-description { font-size: 0.97rem; }
            .ai-features-grid { grid-template-columns: 1fr; }
            .tech-stack-grid { grid-template-columns: 1fr 1fr; }
        }
    </style>
</head>
<body>

    <%-- ===== NAVBAR ===== --%>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <%-- ===== HERO ===== --%>
    <section class="case-hero">
        <div class="hero-particles" id="heroParticles"></div>
        <div class="container">
            <div class="hero-content">
                <h1 class="hero-title">
                    <span class="hero-title-accent">Toywallah:</span><br>
                    Baby &amp; Kids<br>E-Marketplace
                </h1>
                <p class="hero-description">
                    A dedicated multi-seller e-marketplace connecting parents and caregivers with trusted sellers
                    of baby essentials, toys, and kids products — delivering a safe, curated, and seamless
                    shopping experience for every family.
                </p>
                <div class="hero-meta">
                    <div class="meta-item">
                        <i class="fas fa-building"></i>
                        <div><span class="meta-label">Company</span><span class="meta-value">Toywallah</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-calendar"></i>
                        <div><span class="meta-label">Completed</span><span class="meta-value">2026</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-clock"></i>
                        <div><span class="meta-label">Duration</span><span class="meta-value">2 Months</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-users"></i>
                        <div><span class="meta-label">Team</span><span class="meta-value">2 Developers</span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%-- ===== STATS STRIP ===== --%>
    <div class="stats-strip">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item reveal">
                    <span class="stat-num counter" data-target="500">0</span><span class="stat-num">+</span>
                    <span class="stat-label">Products Listed</span>
                </div>
                <div class="stat-item reveal" style="transition-delay:0.1s">
                    <span class="stat-num counter" data-target="40">0</span><span class="stat-num">+</span>
                    <span class="stat-label">Verified Sellers</span>
                </div>
                <div class="stat-item reveal" style="transition-delay:0.2s">
                    <span class="stat-num counter" data-target="12">0</span><span class="stat-num">+</span>
                    <span class="stat-label">Categories</span>
                </div>
                <div class="stat-item reveal" style="transition-delay:0.3s">
                    <span class="stat-num counter" data-target="2">0</span><span class="stat-num"> mo</span>
                    <span class="stat-label">Build Time</span>
                </div>
            </div>
        </div>
    </div>

    <%-- ===== 2-COL: Overview + Tech Stack | Sidebar ===== --%>
    <section class="main-content-section">
        <div class="container">
            <div class="content-wrapper">

                <%-- LEFT COLUMN --%>
                <div class="main-content">

                    <div class="content-block reveal">
                        <h2 class="block-title">Project Overview</h2>
                        <div class="block-content">
                            <p class="lead-paragraph">
                                Toywallah is a purpose-built e-marketplace designed exclusively for baby and kids products,
                                bridging the gap between verified sellers and parents seeking quality, safe, and affordable
                                products for their children.
                            </p>
                            <div class="overview-box">
                                <p>
                                    The platform supports a complete multi-seller ecosystem — from easy seller onboarding
                                    and product catalogue management to secure buyer checkout and delivery tracking.
                                    Parents can browse thousands of trusted products across categories like toys, clothing,
                                    feeding, safety gear, and nursery essentials, all in one place.
                                </p>
                                <p>
                                    Built with a robust Java backend and a responsive, mobile-first frontend, Toywallah
                                    delivers a smooth experience on every device. The platform went live at
                                    <strong>toywallah.com</strong> and continues to grow its seller and buyer community
                                    with regular feature additions and performance improvements.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="content-block tech-stack-block reveal">
                        <h2 class="block-title">Technology Stack</h2>
                        <div class="block-content">
                            <p class="lead-paragraph">
                                Built with scalable, reliable technologies to handle multi-seller operations,
                                product cataloguing, and high-traffic buyer sessions seamlessly.
                            </p>
                            <div class="tech-stack-grid">
                                <div class="tech-category reveal-scale" style="transition-delay:0s">
                                    <div class="tech-category-header">
                                        <i class="fas fa-server"></i>
                                        <h4>Backend</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>Java 17</li>
                                        <li>Apache Tomcat</li>
                                        <li>Servlets &amp; JSP</li>
                                        <li>RESTful APIs</li>
                                    </ul>
                                </div>
                                <div class="tech-category reveal-scale" style="transition-delay:0.1s">
                                    <div class="tech-category-header">
                                        <i class="fas fa-laptop-code"></i>
                                        <h4>Frontend</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>HTML5 &amp; CSS3</li>
                                        <li>JavaScript ES6+</li>
                                        <li>Bootstrap</li>
                                        <li>Responsive Design</li>
                                    </ul>
                                </div>
                                <div class="tech-category reveal-scale" style="transition-delay:0.2s">
                                    <div class="tech-category-header">
                                        <i class="fas fa-database"></i>
                                        <h4>Database</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>MySQL</li>
                                        <li>Query Optimization</li>
                                        <li>Indexing &amp; Caching</li>
                                    </ul>
                                </div>
                                <div class="tech-category reveal-scale" style="transition-delay:0.3s">
                                    <div class="tech-category-header">
                                        <i class="fas fa-credit-card"></i>
                                        <h4>Payments</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>Cashfree</li>
                                        <li>UPI Integration</li>
                                        <li>COD Support</li>
                                        <li>Card Processing</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <%-- END LEFT COLUMN --%>

                <%-- SIDEBAR --%>
                <aside class="sidebar reveal-right">
                    <div class="sidebar-sticky">

                        <div class="sidebar-card">
                            <h3 class="sidebar-title">Project Information</h3>
                            <div class="project-info-list">
                                <div class="info-item"><span class="info-label">Company</span><span class="info-value">Toywallah</span></div>
                                <div class="info-item"><span class="info-label">Industry</span><span class="info-value">Baby &amp; Kids E-Commerce</span></div>
                                <div class="info-item"><span class="info-label">Duration</span><span class="info-value">2 Months</span></div>
                                <div class="info-item"><span class="info-label">Team Size</span><span class="info-value">2 Developers</span></div>
                                <div class="info-item"><span class="info-label">Platform</span><span class="info-value">Web Application</span></div>
                                <div class="info-item">
                                    <span class="info-label">Status</span>
                                    <span class="info-value status-badge">
                                        <span class="status-dot"></span>Live &amp; Active
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-card sidebar-live-card">
                            <h3 class="sidebar-title">
                                <i class="fas fa-globe" style="margin-right:6px;"></i>View Live Project
                            </h3>
                            <p>See Toywallah live — browse products, seller listings, and the full marketplace experience.</p>
                            <a href="https://toywallah.com/" target="_blank" rel="noopener noreferrer" class="sidebar-live-btn">
                                <i class="fas fa-arrow-up-right-from-square"></i>
                                Open Toywallah
                            </a>
                        </div>

                        <div class="sidebar-card">
                            <h3 class="sidebar-title">Services Delivered</h3>
                            <ul class="services-list">
                                <li><i class="fas fa-check-circle"></i> E-Commerce Development</li>
                                <li><i class="fas fa-check-circle"></i> Multi-Seller Platform</li>
                                <li><i class="fas fa-check-circle"></i> Product Catalogue System</li>
                                <li><i class="fas fa-check-circle"></i> UI/UX Design</li>
                                <li><i class="fas fa-check-circle"></i> Payment Gateway Integration</li>
                                <li><i class="fas fa-check-circle"></i> Order &amp; Delivery Management</li>
                                <li><i class="fas fa-check-circle"></i> Seller Dashboard</li>
                                <li><i class="fas fa-check-circle"></i> SEO Optimization</li>
                                <li><i class="fas fa-check-circle"></i> Ongoing Maintenance</li>
                            </ul>
                        </div>

                    </div>
                </aside>
                <%-- END SIDEBAR --%>

            </div>
        </div>
    </section>

    <%-- ===== PLATFORM FEATURES ===== --%>
    <section class="platform-features-section">
        <div class="container">
            <div class="platform-section-top reveal">
                <h2 class="block-title">Complete Platform Features</h2>
                <p>Everything needed for a trusted, safe, and smooth baby products marketplace.</p>
            </div>

            <div class="platform-grid">
                <div class="platform-card reveal" style="transition-delay:0.00s">
                    <div class="pc-icon"><i class="fas fa-store"></i></div>
                    <div class="pc-title">Multi-Seller Marketplace</div>
                    <p class="pc-desc">Multiple verified sellers listing products on a single unified platform</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.05s">
                    <div class="pc-icon"><i class="fas fa-baby-carriage"></i></div>
                    <div class="pc-title">Baby Product Categories</div>
                    <p class="pc-desc">Toys, clothing, feeding, nursery, safety gear, and more — all in one place</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.10s">
                    <div class="pc-icon"><i class="fas fa-search"></i></div>
                    <div class="pc-title">Smart Search &amp; Filters</div>
                    <p class="pc-desc">Filter by age group, category, price, brand, and ratings for quick discovery</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.15s">
                    <div class="pc-icon"><i class="fas fa-user-tie"></i></div>
                    <div class="pc-title">Seller Onboarding Portal</div>
                    <p class="pc-desc">Simple seller registration, product listing, and inventory management dashboard</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.20s">
                    <div class="pc-icon"><i class="fas fa-shield-alt"></i></div>
                    <div class="pc-title">Safe &amp; Verified Products</div>
                    <p class="pc-desc">Product verification process ensuring safety standards for all baby items</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.25s">
                    <div class="pc-icon"><i class="fas fa-truck"></i></div>
                    <div class="pc-title">Order &amp; Delivery Tracking</div>
                    <p class="pc-desc">Real-time order tracking from placement to doorstep delivery</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.30s">
                    <div class="pc-icon"><i class="fas fa-credit-card"></i></div>
                    <div class="pc-title">Secure Checkout</div>
                    <p class="pc-desc">UPI, cards, net banking, and COD — multiple safe payment options</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.35s">
                    <div class="pc-icon"><i class="fas fa-star"></i></div>
                    <div class="pc-title">Ratings &amp; Reviews</div>
                    <p class="pc-desc">Verified buyer reviews helping parents make confident purchase decisions</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.40s">
                    <div class="pc-icon"><i class="fas fa-heart"></i></div>
                    <div class="pc-title">Wishlist &amp; Saved Items</div>
                    <p class="pc-desc">Save favourite products and get notified on price drops and availability</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.45s">
                    <div class="pc-icon"><i class="fas fa-exchange-alt"></i></div>
                    <div class="pc-title">Easy Returns Policy</div>
                    <p class="pc-desc">Hassle-free return and exchange process for buyer confidence</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.50s">
                    <div class="pc-icon"><i class="fas fa-chart-bar"></i></div>
                    <div class="pc-title">Seller Analytics</div>
                    <p class="pc-desc">Sales reports, revenue tracking, and inventory insights for sellers</p>
                </div>
                <div class="platform-card reveal" style="transition-delay:0.55s">
                    <div class="pc-icon"><i class="fas fa-mobile-alt"></i></div>
                    <div class="pc-title">Mobile Responsive</div>
                    <p class="pc-desc">Fully responsive design for a seamless experience on phones and tablets</p>
                </div>
            </div>
        </div>
    </section>

    <%-- ===== PLATFORM PERFORMANCE ===== --%>
    <section class="progress-section">
        <div class="container">
            <div class="progress-inner">
                <div class="progress-copy reveal-left">
                    <h2 class="block-title">Platform Performance</h2>
                    <p>
                        Key performance metrics achieved after the Toywallah launch — from page load speed
                        to checkout conversion — reflecting a well-engineered, user-first marketplace.
                    </p>
                </div>
                <div class="progress-list reveal-right">
                    <div class="progress-bar-item">
                        <div class="pb-head"><span class="pb-label">Page Load Speed</span><span class="pb-val">99%</span></div>
                        <div class="pb-track"><div class="pb-fill" data-width="99"></div></div>
                    </div>
                    <div class="progress-bar-item">
                        <div class="pb-head"><span class="pb-label">Mobile Responsiveness</span><span class="pb-val">100%</span></div>
                        <div class="pb-track"><div class="pb-fill" data-width="100"></div></div>
                    </div>
                    <div class="progress-bar-item">
                        <div class="pb-head"><span class="pb-label">Checkout Completion Rate</span><span class="pb-val">98%</span></div>
                        <div class="pb-track"><div class="pb-fill" data-width="98"></div></div>
                    </div>
                    <div class="progress-bar-item">
                        <div class="pb-head"><span class="pb-label">Seller Onboarding Ease</span><span class="pb-val">100%</span></div>
                        <div class="pb-track"><div class="pb-fill" data-width="100"></div></div>
                    </div>
                    <div class="progress-bar-item">
                        <div class="pb-head"><span class="pb-label">SEO Score</span><span class="pb-val">100%</span></div>
                        <div class="pb-track"><div class="pb-fill" data-width="100"></div></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%-- ===== BUILD PROCESS ===== --%>
    <section class="process-section">
        <div class="container">
            <h2 class="block-title reveal">How We Built It</h2>
            <p class="process-subtitle reveal">A focused 8-week sprint from discovery to live marketplace.</p>
            <div class="process-timeline">
                <div class="timeline-item reveal" style="transition-delay:0s">
                    <div class="tl-dot"><i class="fas fa-compass"></i></div>
                    <div class="tl-body">
                        <div class="tl-phase">Week 1&#8211;2</div>
                        <div class="tl-title">Discovery &amp; Architecture</div>
                        <p class="tl-desc">Requirements gathering, marketplace architecture design, database schema planning, and tech stack finalization for multi-seller support.</p>
                    </div>
                </div>
                <div class="timeline-item reveal" style="transition-delay:0.1s">
                    <div class="tl-dot"><i class="fas fa-pencil-ruler"></i></div>
                    <div class="tl-body">
                        <div class="tl-phase">Week 3</div>
                        <div class="tl-title">UI/UX Design</div>
                        <p class="tl-desc">Wireframes, design system, buyer and seller flows, mobile-first responsive layouts crafted for parents and caregivers.</p>
                    </div>
                </div>
                <div class="timeline-item reveal" style="transition-delay:0.2s">
                    <div class="tl-dot"><i class="fas fa-code"></i></div>
                    <div class="tl-body">
                        <div class="tl-phase">Week 4&#8211;6</div>
                        <div class="tl-title">Core Development</div>
                        <p class="tl-desc">Java backend with Servlets &amp; JSP, MySQL schema, seller onboarding, product catalogue, cart &amp; checkout, and Razorpay payment integration.</p>
                    </div>
                </div>
                <div class="timeline-item reveal" style="transition-delay:0.3s">
                    <div class="tl-dot"><i class="fas fa-vial"></i></div>
                    <div class="tl-body">
                        <div class="tl-phase">Week 7</div>
                        <div class="tl-title">QA &amp; Testing</div>
                        <p class="tl-desc">End-to-end testing across devices, payment flow verification, order management testing, and performance optimization.</p>
                    </div>
                </div>
                <div class="timeline-item reveal" style="transition-delay:0.4s">
                    <div class="tl-dot"><i class="fas fa-rocket"></i></div>
                    <div class="tl-body">
                        <div class="tl-phase">Week 8</div>
                        <div class="tl-title">Launch &amp; Go-Live</div>
                        <p class="tl-desc">Production deployment on Apache Tomcat, SSL configuration, SEO setup, and successful launch of toywallah.com to the public.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%-- ===== KEY SOLUTIONS ===== --%>
    <section class="ai-solution-section">
        <div class="container">
            <div class="ai-section-header">
                <div class="ai-section-header-left reveal-left">
                    <div class="ai-section-eyebrow">
                        <i class="fas fa-lightbulb"></i>
                        Our Solution
                    </div>
                    <h2 class="ai-section-title">
                        Smart Systems<br>
                        <span>Built for Families</span>
                    </h2>
                    <p class="ai-section-desc">
                        A complete marketplace ecosystem purpose-built for the baby and kids segment —
                        empowering sellers with easy tools and giving parents a trusted, convenient shopping destination.
                    </p>
                </div>
                <div class="reveal-right">
                    <a href="https://toywallah.com/" target="_blank" rel="noopener noreferrer" class="visit-site-btn">
                        <span class="btn-live-dot"></span>
                        Explore Live Platform
                        <i class="fas fa-arrow-up-right-from-square btn-arrow"></i>
                    </a>
                </div>
            </div>

            <div class="ai-features-grid">

                <div class="ai-feature-card reveal" style="transition-delay:0s">
                    <div class="ai-feature-head">
                        <div class="ai-feature-icon"><i class="fas fa-store"></i></div>
                        <h3>Multi-Seller Onboarding &amp; Management</h3>
                    </div>
                    <p class="ai-feature-desc">
                        A streamlined seller registration and onboarding system enabling toy and baby product
                        sellers to join the marketplace quickly. Sellers get a dedicated dashboard to manage
                        products, inventory, orders, and earnings — all from one panel.
                    </p>
                    <div class="ai-feature-tags">
                        <span class="ai-tag">Seller Dashboard</span>
                        <span class="ai-tag">Inventory Management</span>
                        <span class="ai-tag">Java Backend</span>
                        <span class="ai-tag">REST APIs</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Fast seller registration and verification</li>
                        <li><i class="fas fa-check"></i> Product listing with bulk upload support</li>
                        <li><i class="fas fa-check"></i> Real-time inventory tracking</li>
                        <li><i class="fas fa-check"></i> Order management and dispatch workflow</li>
                        <li><i class="fas fa-check"></i> Earnings and payout tracking dashboard</li>
                    </ul>
                </div>

                <div class="ai-feature-card reveal" style="transition-delay:0.1s">
                    <div class="ai-feature-head">
                        <div class="ai-feature-icon"><i class="fas fa-search"></i></div>
                        <h3>Smart Product Discovery &amp; Cataloguing</h3>
                    </div>
                    <p class="ai-feature-desc">
                        An intelligent product catalogue system with age-group filters, category-wise browsing,
                        and powerful search helping parents quickly find the right products. Structured
                        cataloguing ensures every product is discoverable and well-presented.
                    </p>
                    <div class="ai-feature-tags">
                        <span class="ai-tag">Search &amp; Filter</span>
                        <span class="ai-tag">Catalogue System</span>
                        <span class="ai-tag">MySQL</span>
                        <span class="ai-tag">Indexing</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Age-group based product filtering</li>
                        <li><i class="fas fa-check"></i> Category-wise structured browsing</li>
                        <li><i class="fas fa-check"></i> Brand, price, and rating filters</li>
                        <li><i class="fas fa-check"></i> Fast product search with keyword matching</li>
                        <li><i class="fas fa-check"></i> Rich product pages with images and specs</li>
                    </ul>
                </div>

                <div class="ai-feature-card reveal" style="transition-delay:0.2s">
                    <div class="ai-feature-head">
                        <div class="ai-feature-icon"><i class="fas fa-credit-card"></i></div>
                        <h3>Secure Multi-Payment Checkout</h3>
                    </div>
                    <p class="ai-feature-desc">
                        A fully secure checkout system supporting multiple payment methods including UPI,
                        credit/debit cards, net banking, and cash on delivery — ensuring every parent can
                        shop conveniently and securely with full transaction protection.
                    </p>
                    <div class="ai-feature-tags">
                        <span class="ai-tag">Cashfree</span>
                        <span class="ai-tag">UPI</span>
                        <span class="ai-tag">COD</span>
                        <span class="ai-tag">SSL Encryption</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> UPI, card, and net banking support</li>
                        <li><i class="fas fa-check"></i> Cash on delivery option</li>
                        <li><i class="fas fa-check"></i> Secure SSL-encrypted transactions</li>
                        <li><i class="fas fa-check"></i> Order confirmation and receipt emails</li>
                        <li><i class="fas fa-check"></i> Refund processing for returns</li>
                    </ul>
                </div>

                <div class="ai-feature-card reveal" style="transition-delay:0.3s">
                    <div class="ai-feature-head">
                        <div class="ai-feature-icon"><i class="fas fa-truck"></i></div>
                        <h3>Order Tracking &amp; Delivery Management</h3>
                    </div>
                    <p class="ai-feature-desc">
                        End-to-end order management from placement to delivery with real-time tracking
                        updates for buyers and dispatch management tools for sellers — providing complete
                        visibility and peace of mind for every transaction on the platform.
                    </p>
                    <div class="ai-feature-tags">
                        <span class="ai-tag">Order Management</span>
                        <span class="ai-tag">Real-time Tracking</span>
                        <span class="ai-tag">Notifications</span>
                        <span class="ai-tag">Logistics API</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Real-time order status updates</li>
                        <li><i class="fas fa-check"></i> SMS and email notifications at each stage</li>
                        <li><i class="fas fa-check"></i> Seller dispatch and packing workflow</li>
                        <li><i class="fas fa-check"></i> Delivery partner integration</li>
                        <li><i class="fas fa-check"></i> Return and refund workflow management</li>
                    </ul>
                </div>

            </div>
        </div>
    </section>

    <%-- ===== RELATED PROJECTS ===== --%>

    <%-- ===== FOOTER ===== --%>
    <jsp:include page="../../includes/footer/footer.jsp" />

    <script>
        /* ---- Scroll Reveal ---- */
        const revealEls = document.querySelectorAll('.reveal, .reveal-left, .reveal-right, .reveal-scale');
        const revealObserver = new IntersectionObserver((entries) => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    e.target.classList.add('visible');
                    revealObserver.unobserve(e.target);
                }
            });
        }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });
        revealEls.forEach(el => revealObserver.observe(el));

        /* ---- Counter Animation ---- */
        function animateCounter(el) {
            const target = parseInt(el.dataset.target, 10);
            const step = target / (1600 / 16);
            let current = 0;
            const timer = setInterval(() => {
                current += step;
                if (current >= target) { current = target; clearInterval(timer); }
                el.textContent = Math.round(current);
            }, 16);
        }
        const counterObserver = new IntersectionObserver((entries) => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    animateCounter(e.target);
                    counterObserver.unobserve(e.target);
                }
            });
        }, { threshold: 0.5 });
        document.querySelectorAll('.counter').forEach(el => counterObserver.observe(el));

        /* ---- Progress Bars ---- */
        const barObserver = new IntersectionObserver((entries) => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    e.target.querySelectorAll('.pb-fill').forEach(fill => {
                        fill.style.width = fill.dataset.width + '%';
                    });
                    barObserver.unobserve(e.target);
                }
            });
        }, { threshold: 0.3 });
        const progressList = document.querySelector('.progress-list');
        if (progressList) barObserver.observe(progressList);

        /* ---- Hero Floating Particles ---- */
        const particleContainer = document.getElementById('heroParticles');
        const colors = ['#6C63FF', '#FF6B6B', '#ffffff', '#a89fff'];
        for (let i = 0; i < 22; i++) {
            const p = document.createElement('div');
            p.className = 'particle';
            const size = Math.random() * 12 + 4;
            p.style.cssText =
                'width:' + size + 'px;' +
                'height:' + size + 'px;' +
                'left:' + (Math.random() * 100) + '%;' +
                'bottom:' + (Math.random() * -20) + '%;' +
                'background:' + colors[Math.floor(Math.random() * colors.length)] + ';' +
                'animation-duration:' + (Math.random() * 12 + 8) + 's;' +
                'animation-delay:' + (Math.random() * 10) + 's;';
            particleContainer.appendChild(p);
        }

        /* ---- Reduced Motion ---- */
        if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
            document.querySelectorAll('.reveal, .reveal-left, .reveal-right, .reveal-scale').forEach(el => {
                el.style.opacity = '1';
                el.style.transform = 'none';
                el.style.transition = 'none';
            });
        }
    </script>

</body>
</html>
