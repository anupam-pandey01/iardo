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
    <title>Dream Naukri Case Study | AI-Powered Job Portal Platform</title>
    <meta name="description" content="How we built Dream Naukri — an intelligent AI-powered job portal connecting 1.2M+ users with smart matching, automated screening, and personalized recommendations.">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Source+Serif+4:ital,wght@0,300;0,400;0,500;1,300;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }

        :root {
            --bg:        #F0F4FF;
            --border:    #D1D9F0;
            --dark:      #1A1F3C;
            --accent:    #6C63FF;
            --accent-dk: #5248d4;
            --accent-lt: #E8ECFF;
            --coral:     #FF6B6B;
            --coral-dk:  #e04f4f;
            --surface:   #ffffff;
            --surface-2: #F5F7FF;
            --text-body: #3D4466;
            --text-muted:#8B91B3;
            --success:   #0da678;
            --radius-sm: 10px;
            --radius-md: 16px;
            --radius-lg: 24px;
        }

        html { scroll-behavior:smooth; }

        body {
            background-color:var(--bg) !important;
            font-family:'Source Serif 4',serif !important;
            color:var(--text-body) !important;
            overflow-x:hidden;
            -webkit-font-smoothing:antialiased;
        }

        h1,h2,h3,h5,h6 {
            font-family:'Montserrat',sans-serif !important;
            color:var(--dark) !important;
            letter-spacing:-0.02em;
        }

        p,li { font-family:'Source Serif 4',serif !important; }
        a,button { font-family:'Montserrat',sans-serif !important; }

        .container { max-width:1240px; margin:0 auto; padding:0 5%; }

        /* ── REVEAL ANIMATION ── */
        .reveal {
            opacity:0;
            transform:translateY(32px);
            transition:opacity .65s ease, transform .65s ease;
        }
        .reveal.in { opacity:1; transform:translateY(0); }
        .reveal-delay-1 { transition-delay:.1s; }
        .reveal-delay-2 { transition-delay:.2s; }
        .reveal-delay-3 { transition-delay:.3s; }
        .reveal-delay-4 { transition-delay:.4s; }

        /* ══════════════════════════════
           HERO
        ══════════════════════════════ */
        .case-hero {
            position:relative;
            padding:9rem 5% 6rem;
            background:var(--surface);
            overflow:hidden;
        }

        /* background orbs */
        .case-hero::before {
            content:'';
            position:absolute;
            top:-200px; right:-150px;
            width:600px; height:600px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(108,99,255,.22),transparent 70%);
            filter:blur(60px);
            animation:floatOrb 9s ease-in-out infinite;
        }

        .case-hero::after {
            content:'';
            position:absolute;
            bottom:-150px; left:-100px;
            width:450px; height:450px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(255,107,107,.18),transparent 70%);
            filter:blur(60px);
            animation:floatOrb 12s ease-in-out infinite reverse;
        }

        /* grid texture */
        .hero-grid {
            position:absolute;
            inset:0;
            background-image:
                linear-gradient(rgba(108,99,255,.05) 1px,transparent 1px),
                linear-gradient(90deg,rgba(108,99,255,.05) 1px,transparent 1px);
            background-size:55px 55px;
            pointer-events:none;
        }

        @keyframes floatOrb {
            0%,100% { transform:translate(0,0) scale(1); }
            40%      { transform:translate(24px,-18px) scale(1.06); }
            70%      { transform:translate(-16px,14px) scale(.96); }
        }

        .hero-inner {
            position:relative;
            z-index:2;
            display:grid;
            grid-template-columns:1fr 380px;
            gap:4rem;
            align-items:center;
            max-width:1240px;
            margin:0 auto;
        }

        /* breadcrumb */
        .hero-breadcrumb {
            display:inline-flex;
            align-items:center;
            gap:8px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.78rem;
            font-weight:600;
            letter-spacing:1.5px;
            text-transform:uppercase;
            color:var(--text-muted);
            margin-bottom:1.4rem;
            text-decoration:none;
            transition:color .25s;
        }
        .hero-breadcrumb:hover { color:var(--accent); }
        .hero-breadcrumb i { font-size:.85em; }

        /* tags */
        .hero-tags {
            display:flex;
            flex-wrap:wrap;
            gap:8px;
            margin-bottom:1.6rem;
        }

        .hero-tag {
            display:inline-flex;
            align-items:center;
            gap:7px;
            padding:6px 16px;
            background:var(--accent-lt);
            border:1.5px solid rgba(108,99,255,.2);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:.5px;
            color:var(--accent);
        }

        .hero-tag.tag-coral {
            background:#fff0f0;
            border-color:rgba(255,107,107,.25);
            color:var(--coral-dk);
        }

        /* title */
        .hero-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(2.8rem,5.5vw,4.8rem);
            font-weight:900 !important;
            line-height:1.05;
            letter-spacing:-0.04em;
            color:var(--dark) !important;
            margin-bottom:1.6rem;
        }

        .hero-title .accent-line {
            background:linear-gradient(135deg,var(--accent),#a89fff,var(--coral));
            -webkit-background-clip:text;
            -webkit-text-fill-color:transparent;
            background-clip:text;
        }

        .hero-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:1.05rem;
            font-weight:300;
            line-height:1.85;
            color:var(--text-body) !important;
            max-width:580px;
            margin-bottom:2.4rem;
        }

        /* meta strip */
        .hero-meta {
            display:flex;
            flex-wrap:wrap;
            gap:0;
            background:var(--surface-2);
            border:1.5px solid var(--border);
            border-radius:var(--radius-md);
            overflow:hidden;
        }

        .meta-item {
            display:flex;
            align-items:center;
            gap:12px;
            padding:1rem 1.4rem;
            border-right:1.5px solid var(--border);
            flex:1;
            min-width:120px;
        }

        .meta-item:last-child { border-right:none; }

        .meta-item > i {
            font-size:1.1rem;
            color:var(--accent);
            flex-shrink:0;
        }

        .meta-item div { display:flex; flex-direction:column; gap:2px; }

        .meta-label {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.65rem;
            font-weight:700;
            letter-spacing:1.5px;
            text-transform:uppercase;
            color:var(--text-muted) !important;
        }

        .meta-value {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.88rem;
            font-weight:700;
            color:var(--dark) !important;
        }

        /* hero sidebar card */
        .hero-sidebar-card {
            background:var(--surface);
            border:1.5px solid var(--border);
            border-radius:var(--radius-lg);
            overflow:hidden;
            box-shadow:0 12px 40px rgba(26,31,60,.07);
        }

        .hsc-header {
            padding:1.6rem 1.8rem;
            background:linear-gradient(135deg,var(--dark),#2d3460);
            display:flex;
            align-items:center;
            gap:12px;
        }

        .hsc-logo {
            width:48px; height:48px;
            border-radius:12px;
            background:var(--accent-lt);
            display:flex;
            align-items:center;
            justify-content:center;
            font-size:1.3rem;
            color:var(--accent);
        }

        .hsc-name {
            font-family:'Montserrat',sans-serif !important;
            font-size:1.1rem;
            font-weight:800;
            color:#fff !important;
        }

        .hsc-sub {
            font-family:'Source Serif 4',serif !important;
            font-size:0.8rem;
            color:rgba(255,255,255,.55) !important;
        }

        .hsc-stats {
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:0;
        }

        .hsc-stat {
            padding:1.2rem 1.4rem;
            border-right:1px solid var(--border);
            border-bottom:1px solid var(--border);
            text-align:center;
        }

        .hsc-stat:nth-child(2n) { border-right:none; }
        .hsc-stat:nth-child(3), .hsc-stat:nth-child(4) { border-bottom:none; }

        .hsc-stat-num {
            font-family:'Montserrat',sans-serif !important;
            font-size:1.5rem;
            font-weight:900;
            color:var(--accent) !important;
            line-height:1;
            margin-bottom:4px;
        }

        .hsc-stat-label {
            font-family:'Source Serif 4',serif !important;
            font-size:0.72rem;
            color:var(--text-muted) !important;
            line-height:1.3;
        }

        .hsc-live-btn {
            display:flex;
            align-items:center;
            justify-content:center;
            gap:10px;
            margin:1.4rem 1.6rem;
            padding:1rem;
            background:var(--accent);
            color:#fff !important;
            border-radius:var(--radius-sm);
            font-family:'Montserrat',sans-serif !important;
            font-weight:700;
            font-size:0.9rem;
            text-decoration:none;
            transition:all .3s ease;
        }

        .hsc-live-btn:hover {
            background:var(--accent-dk);
            transform:translateY(-2px);
            box-shadow:0 8px 24px rgba(108,99,255,.35);
        }

        .hsc-status {
            display:flex;
            align-items:center;
            justify-content:center;
            gap:8px;
            padding-bottom:1.4rem;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.75rem;
            font-weight:600;
            color:var(--success) !important;
        }

        .status-dot {
            width:8px; height:8px;
            border-radius:50%;
            background:var(--success);
            animation:pulseDot 2s ease-in-out infinite;
        }

        @keyframes pulseDot {
            0%,100% { box-shadow:0 0 0 0 rgba(13,166,120,.4); }
            50%      { box-shadow:0 0 0 6px rgba(13,166,120,0); }
        }

        /* ══════════════════════════════
           OVERVIEW SECTION
        ══════════════════════════════ */
        .overview-section {
            padding:5rem 5%;
            background:var(--bg);
        }

        .two-col {
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:3rem;
            align-items:start;
            max-width:1240px;
            margin:0 auto;
        }

        .section-eyebrow {
            display:inline-flex;
            align-items:center;
            gap:8px;
            padding:5px 16px;
            background:var(--accent-lt);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.7rem;
            font-weight:700;
            letter-spacing:2px;
            text-transform:uppercase;
            color:var(--accent);
            margin-bottom:1rem;
        }

        .section-eyebrow.coral {
            background:#fff0f0;
            color:var(--coral-dk);
        }

        .section-title-lg {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(1.8rem,3.5vw,2.8rem);
            font-weight:800 !important;
            line-height:1.15;
            letter-spacing:-0.03em;
            color:var(--dark) !important;
            margin-bottom:1.2rem;
        }

        .section-title-lg span {
            background:linear-gradient(135deg,var(--accent),var(--coral));
            -webkit-background-clip:text;
            -webkit-text-fill-color:transparent;
            background-clip:text;
        }

        .lead-p {
            font-family:'Source Serif 4',serif !important;
            font-size:1.05rem;
            font-weight:400;
            line-height:1.85;
            color:var(--text-body) !important;
            margin-bottom:1.2rem;
        }

        .overview-highlight {
            background:var(--surface);
            border-left:4px solid var(--accent);
            border-radius:0 var(--radius-sm) var(--radius-sm) 0;
            padding:1.4rem 1.6rem;
            margin-top:1.4rem;
        }

        .overview-highlight p {
            font-family:'Source Serif 4',serif !important;
            font-size:0.95rem;
            line-height:1.8;
            color:var(--text-body) !important;
        }

        /* ── TECH STACK ── */
        .tech-grid {
            display:grid;
            grid-template-columns:1fr;
            gap:1rem;
        }

        .tech-cat {
            background:var(--surface);
            border:1.5px solid var(--border);
            border-radius:var(--radius-md);
            padding:1.4rem 1.6rem;
            transition:border-color .3s ease, box-shadow .3s ease;
        }

        .tech-cat:hover {
            border-color:var(--accent);
            box-shadow:0 6px 24px rgba(108,99,255,.1);
        }

        .tech-cat-header {
            display:flex;
            align-items:center;
            gap:10px;
            margin-bottom:1rem;
        }

        .tech-cat-header i {
            width:34px; height:34px;
            border-radius:8px;
            background:var(--accent-lt);
            display:flex;
            align-items:center;
            justify-content:center;
            font-size:.9rem;
            color:var(--accent);
        }

        .tech-cat-header h4 {
            font-family:'Montserrat',sans-serif !important;
            font-size:.9rem;
            font-weight:700;
            color:var(--dark) !important;
        }

        .tech-pills {
            display:flex;
            flex-wrap:wrap;
            gap:7px;
        }

        .tech-pill {
            padding:4px 13px;
            background:var(--surface-2);
            border:1px solid var(--border);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:600;
            color:var(--text-body);
        }

        /* ══════════════════════════════
           PLATFORM FEATURES
        ══════════════════════════════ */
        .features-section {
            padding:5rem 5%;
            background:var(--surface);
        }

        .section-header-center {
            text-align:center;
            max-width:600px;
            margin:0 auto 3.5rem;
        }

        .section-header-center p {
            font-family:'Source Serif 4',serif !important;
            font-size:1rem;
            font-weight:300;
            color:var(--text-muted) !important;
            line-height:1.7;
            margin-top:.8rem;
        }

        .features-grid {
            display:grid;
            grid-template-columns:repeat(4,1fr);
            gap:1.2rem;
            max-width:1240px;
            margin:0 auto;
        }

        .feat-card {
            background:var(--surface-2);
            border:1.5px solid var(--border);
            border-radius:var(--radius-md);
            padding:1.6rem 1.4rem;
            position:relative;
            overflow:hidden;
            transition:all .3s ease;
            cursor:default;
        }

        .feat-card::before {
            content:'';
            position:absolute;
            top:0; left:0; right:0;
            height:3px;
            background:var(--accent);
            transform:scaleX(0);
            transform-origin:left;
            transition:transform .35s ease;
        }

        .feat-card:hover {
            border-color:var(--accent);
            box-shadow:0 12px 36px rgba(108,99,255,.1);
            transform:translateY(-4px);
            background:var(--surface);
        }

        .feat-card:hover::before { transform:scaleX(1); }

        .feat-icon {
            width:42px; height:42px;
            border-radius:10px;
            background:var(--accent-lt);
            display:flex;
            align-items:center;
            justify-content:center;
            font-size:1rem;
            color:var(--accent);
            margin-bottom:1rem;
            transition:all .3s ease;
        }

        .feat-card:hover .feat-icon {
            background:var(--accent);
            color:#fff;
        }

        .feat-num {
            position:absolute;
            top:1rem; right:1.2rem;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.68rem;
            font-weight:800;
            letter-spacing:1px;
            color:var(--border);
        }

        .feat-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.9rem;
            font-weight:700;
            color:var(--dark) !important;
            margin-bottom:.5rem;
        }

        .feat-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:0.82rem;
            font-weight:300;
            line-height:1.65;
            color:var(--text-muted) !important;
        }

        /* ══════════════════════════════
           AI SOLUTIONS
        ══════════════════════════════ */
        .ai-section {
            padding:5rem 5%;
            background:var(--bg);
        }

        .ai-grid {
            display:grid;
            grid-template-columns:repeat(2,1fr);
            gap:1.6rem;
            max-width:1240px;
            margin:3rem auto 0;
        }

        .ai-card {
            background:var(--surface);
            border:1.5px solid var(--border);
            border-radius:var(--radius-lg);
            padding:2rem 2.2rem;
            position:relative;
            overflow:hidden;
            transition:all .35s ease;
        }

        .ai-card::after {
            content:'';
            position:absolute;
            top:0; left:0;
            width:4px; height:100%;
            background:linear-gradient(to bottom,var(--accent),var(--coral));
            transform:scaleY(0);
            transform-origin:top;
            transition:transform .4s ease;
        }

        .ai-card:hover {
            box-shadow:0 16px 48px rgba(26,31,60,.1);
            transform:translateY(-5px);
        }

        .ai-card:hover::after { transform:scaleY(1); }

        .ai-card-num {
            position:absolute;
            top:1.6rem; right:1.8rem;
            font-family:'Montserrat',sans-serif !important;
            font-size:3rem;
            font-weight:900;
            color:var(--border);
            line-height:1;
        }

        .ai-card-head {
            display:flex;
            align-items:center;
            gap:14px;
            margin-bottom:1rem;
        }

        .ai-icon {
            width:48px; height:48px;
            border-radius:12px;
            background:var(--accent-lt);
            display:flex;
            align-items:center;
            justify-content:center;
            font-size:1.2rem;
            color:var(--accent);
            flex-shrink:0;
            transition:all .3s ease;
        }

        .ai-card:hover .ai-icon {
            background:var(--accent);
            color:#fff;
        }

        .ai-card-head h3 {
            font-family:'Montserrat',sans-serif !important;
            font-size:1.05rem;
            font-weight:800;
            color:var(--dark) !important;
            line-height:1.3;
        }

        .ai-card-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:0.9rem;
            font-weight:300;
            line-height:1.8;
            color:var(--text-body) !important;
            margin-bottom:1.2rem;
        }

        .ai-tags {
            display:flex;
            flex-wrap:wrap;
            gap:6px;
            margin-bottom:1.2rem;
        }

        .ai-tag {
            padding:4px 12px;
            background:var(--accent-lt);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.68rem;
            font-weight:700;
            letter-spacing:.4px;
            color:var(--accent-dk);
        }

        .ai-highlights {
            list-style:none;
            display:flex;
            flex-direction:column;
            gap:7px;
        }

        .ai-highlights li {
            display:flex;
            align-items:flex-start;
            gap:9px;
            font-family:'Source Serif 4',serif !important;
            font-size:0.85rem;
            font-weight:400;
            color:var(--text-body) !important;
            line-height:1.5;
        }

        .ai-highlights li i {
            color:var(--success);
            font-size:0.8rem;
            margin-top:3px;
            flex-shrink:0;
        }

        /* ══════════════════════════════
           RESULTS / METRICS STRIP
        ══════════════════════════════ */
        .metrics-section {
            padding:4rem 5%;
            background:linear-gradient(135deg,var(--dark),#2d3460);
            position:relative;
            overflow:hidden;
        }

        .metrics-section::before {
            content:'';
            position:absolute;
            top:-200px; right:-150px;
            width:500px; height:500px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(108,99,255,.3),transparent 65%);
            filter:blur(60px);
        }

        .metrics-section::after {
            content:'';
            position:absolute;
            bottom:-150px; left:-100px;
            width:400px; height:400px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(255,107,107,.2),transparent 65%);
            filter:blur(60px);
        }

        .metrics-inner {
            max-width:1240px;
            margin:0 auto;
            position:relative;
            z-index:2;
        }

        .metrics-top {
            text-align:center;
            margin-bottom:2.5rem;
        }

        .metrics-top h2 {
            font-family:'Montserrat',sans-serif !important;
            font-size:clamp(1.8rem,3vw,2.6rem);
            font-weight:900 !important;
            color:#fff !important;
            letter-spacing:-0.03em;
            margin-bottom:.5rem;
        }

        .metrics-top p {
            font-family:'Source Serif 4',serif !important;
            font-size:1rem;
            color:rgba(255,255,255,.55) !important;
        }

        .metrics-grid {
            display:grid;
            grid-template-columns:repeat(4,1fr);
            gap:1.2rem;
        }

        .metric-card {
            background:rgba(255,255,255,.06);
            border:1px solid rgba(255,255,255,.12);
            border-radius:var(--radius-md);
            padding:1.8rem 1.4rem;
            text-align:center;
            transition:all .3s ease;
            backdrop-filter:blur(10px);
        }

        .metric-card:hover {
            background:rgba(255,255,255,.1);
            border-color:rgba(108,99,255,.5);
            transform:translateY(-4px);
        }

        .metric-num {
            font-family:'Montserrat',sans-serif !important;
            font-size:2.4rem;
            font-weight:900;
            color:var(--accent) !important;
            line-height:1;
            margin-bottom:.4rem;
        }

        .metric-num.coral { color:var(--coral) !important; }
        .metric-num.green { color:#4ade80 !important; }
        .metric-num.gold  { color:#fbbf24 !important; }

        .metric-label {
            font-family:'Source Serif 4',serif !important;
            font-size:0.82rem;
            color:rgba(255,255,255,.6) !important;
            line-height:1.4;
        }

        /* ══════════════════════════════
           SIDEBAR (inline right col)
        ══════════════════════════════ */
        .content-layout {
            display:grid;
            grid-template-columns:1fr 320px;
            gap:3rem;
            max-width:1240px;
            margin:0 auto;
        }

        .sidebar-card {
            background:var(--surface);
            border:1.5px solid var(--border);
            border-radius:var(--radius-lg);
            overflow:hidden;
            margin-bottom:1.4rem;
        }

        .sidebar-card-header {
            padding:1.2rem 1.6rem;
            background:var(--surface-2);
            border-bottom:1.5px solid var(--border);
            font-family:'Montserrat',sans-serif !important;
            font-size:0.8rem;
            font-weight:800;
            letter-spacing:1.5px;
            text-transform:uppercase;
            color:var(--dark) !important;
        }

        .sidebar-info-list {
            padding:.8rem 1.4rem;
        }

        .sidebar-info-item {
            display:flex;
            justify-content:space-between;
            align-items:center;
            padding:.75rem 0;
            border-bottom:1px solid var(--border);
        }

        .sidebar-info-item:last-child { border-bottom:none; }

        .sii-label {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:.5px;
            text-transform:uppercase;
            color:var(--text-muted) !important;
        }

        .sii-value {
            font-family:'Montserrat',sans-serif !important;
            font-size:0.82rem;
            font-weight:700;
            color:var(--dark) !important;
        }

        .badge-live {
            display:inline-flex;
            align-items:center;
            gap:6px;
            padding:4px 12px;
            background:#e8faf5;
            border:1px solid rgba(13,166,120,.25);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.7rem;
            font-weight:700;
            color:var(--success) !important;
        }

        .services-list {
            list-style:none;
            padding:1rem 1.4rem;
            display:flex;
            flex-direction:column;
            gap:8px;
        }

        .services-list li {
            display:flex;
            align-items:center;
            gap:10px;
            font-family:'Source Serif 4',serif !important;
            font-size:0.88rem;
            color:var(--text-body) !important;
        }

        .services-list li i {
            color:var(--success);
            font-size:0.8rem;
            flex-shrink:0;
        }

        .sidebar-live-btn {
            display:flex;
            align-items:center;
            justify-content:center;
            gap:10px;
            margin:1.2rem 1.4rem 1.4rem;
            padding:1rem;
            background:var(--accent);
            color:#fff !important;
            border-radius:var(--radius-sm);
            font-family:'Montserrat',sans-serif !important;
            font-weight:700;
            font-size:0.88rem;
            text-decoration:none;
            transition:all .3s ease;
        }

        .sidebar-live-btn:hover {
            background:var(--accent-dk);
            transform:translateY(-2px);
            box-shadow:0 8px 24px rgba(108,99,255,.3);
        }

        /* ══════════════════════════════
           RELATED PROJECTS
        ══════════════════════════════ */
        .related-section {
            padding:5rem 5%;
            background:var(--surface);
        }

        .related-grid {
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
            gap:1.6rem;
            max-width:1240px;
            margin:2.5rem auto 0;
        }

        .related-card {
            display:block;
            text-decoration:none;
            background:var(--surface-2);
            border:1.5px solid var(--border);
            border-radius:var(--radius-lg);
            overflow:hidden;
            transition:all .35s ease;
            position:relative;
        }

        .related-card:hover {
            border-color:var(--accent);
            box-shadow:0 16px 48px rgba(108,99,255,.12);
            transform:translateY(-5px);
        }

        .related-img {
            position:relative;
            overflow:hidden;
        }

        .related-img img {
            width:100%; height:auto;
            display:block;
            transition:transform .6s ease;
        }

        .related-card:hover .related-img img { transform:scale(1.05); }

        .related-img::after {
            content:'';
            position:absolute;
            inset:0;
            background:linear-gradient(to top,rgba(26,31,60,.5),transparent 50%);
        }

        .related-body {
            padding:1.6rem 1.8rem;
        }

        .related-tags {
            display:flex;
            gap:7px;
            margin-bottom:.8rem;
        }

        .related-tags span {
            padding:3px 11px;
            background:var(--accent-lt);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.68rem;
            font-weight:700;
            color:var(--accent-dk);
        }

        .related-title {
            font-family:'Montserrat',sans-serif !important;
            font-size:1.1rem;
            font-weight:800;
            color:var(--dark) !important;
            margin-bottom:.5rem;
            transition:color .25s;
        }

        .related-card:hover .related-title { color:var(--accent) !important; }

        .related-desc {
            font-family:'Source Serif 4',serif !important;
            font-size:0.85rem;
            font-weight:300;
            line-height:1.7;
            color:var(--text-muted) !important;
        }

        .related-arrow {
            display:inline-flex;
            align-items:center;
            gap:8px;
            margin-top:1rem;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.78rem;
            font-weight:700;
            color:var(--accent);
            transition:gap .25s ease;
        }

        .related-card:hover .related-arrow { gap:12px; }

        /* ══════════════════════════════
           RESPONSIVE
        ══════════════════════════════ */
        @media (max-width:1024px) {
            .hero-inner { grid-template-columns:1fr; }
            .hero-sidebar-card { max-width:500px; }
            .content-layout { grid-template-columns:1fr; }
            .features-grid { grid-template-columns:repeat(3,1fr); }
            .ai-grid { grid-template-columns:1fr; }
            .metrics-grid { grid-template-columns:repeat(2,1fr); }
            .two-col { grid-template-columns:1fr; }
        }

        @media (max-width:768px) {
            .case-hero { padding:7rem 5% 4rem; }
            .hero-title { font-size:2.6rem; }
            .hero-meta { flex-direction:column; }
            .meta-item { border-right:none; border-bottom:1.5px solid var(--border); }
            .meta-item:last-child { border-bottom:none; }
            .features-grid { grid-template-columns:repeat(2,1fr); }
            .metrics-grid { grid-template-columns:1fr 1fr; }
            .hsc-stats { grid-template-columns:1fr 1fr; }
        }

        @media (max-width:480px) {
            .hero-title { font-size:2.1rem; }
            .features-grid { grid-template-columns:1fr; }
            .metrics-grid { grid-template-columns:1fr; }
        }
    </style>
</head>
<body>

    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <!-- ══════════════════════════════
         HERO
    ══════════════════════════════ -->
    <section class="case-hero">
        <div class="hero-grid"></div>
        <div class="hero-inner">

            <div class="hero-left">
                <a href="case-studies.jsp" class="hero-breadcrumb reveal">
                    <i class="fas fa-arrow-left"></i> Back to Case Studies
                </a>

                <div class="hero-tags reveal reveal-delay-1">
                    <span class="hero-tag"><i class="fas fa-briefcase"></i> Job Portal</span>
                    <span class="hero-tag"><i class="fas fa-robot"></i> AI &amp; ML</span>
                    <span class="hero-tag tag-coral"><i class="fas fa-code"></i> Full Stack Java</span>
                </div>

                <h1 class="hero-title reveal reveal-delay-2">
                    Dream Naukri:<br>
                    <span class="accent-line">AI-Powered Job</span><br>
                    Matching Platform
                </h1>

                <p class="hero-desc reveal reveal-delay-3">
                    Transforming recruitment with intelligent AI algorithms that connect 1.2M+ job seekers
                    with their perfect opportunities through automated screening, smart matching, and
                    personalized recommendations.
                </p>

                <div class="hero-meta reveal reveal-delay-4">
                    <div class="meta-item">
                        <i class="fas fa-building"></i>
                        <div><span class="meta-label">Company</span><span class="meta-value">IARDO</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-calendar"></i>
                        <div><span class="meta-label">Completed</span><span class="meta-value">Feb 2026</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-clock"></i>
                        <div><span class="meta-label">Duration</span><span class="meta-value">2 Months</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-users"></i>
                        <div><span class="meta-label">Team</span><span class="meta-value">3 Developers</span></div>
                    </div>
                </div>
            </div>

            <div class="hero-sidebar-card reveal reveal-delay-2">
                <div class="hsc-header">
                    <div class="hsc-logo"><i class="fas fa-briefcase"></i></div>
                    <div>
                        <div class="hsc-name">Dream Naukri</div>
                        <div class="hsc-sub">AI Job Portal Platform</div>
                    </div>
                </div>
                <div class="hsc-stats">
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">1.2M+</div>
                        <div class="hsc-stat-label">Active Users</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">92%</div>
                        <div class="hsc-stat-label">Match Accuracy</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">500K+</div>
                        <div class="hsc-stat-label">Placements</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">60%</div>
                        <div class="hsc-stat-label">Faster Hiring</div>
                    </div>
                </div>
                <a href="https://www.dreamnaukricareer.com/" target="_blank" rel="noopener noreferrer" class="hsc-live-btn">
                    <i class="fas fa-arrow-up-right-from-square"></i> Open Dream Naukri
                </a>
                <div class="hsc-status">
                    <span class="status-dot"></span> Live &amp; Active
                </div>
            </div>

        </div>
    </section>

    <!-- ══════════════════════════════
         METRICS STRIP
    ══════════════════════════════ -->
    <section class="metrics-section">
        <div class="metrics-inner">
            <div class="metrics-top reveal">
                <h2>Results That Speak</h2>
                <p>Real impact delivered in just 2 months of development</p>
            </div>
            <div class="metrics-grid">
                <div class="metric-card reveal reveal-delay-1">
                    <div class="metric-num">1.2M+</div>
                    <div class="metric-label">Active Users on Platform</div>
                </div>
                <div class="metric-card reveal reveal-delay-2">
                    <div class="metric-num coral">92%</div>
                    <div class="metric-label">AI Matching Accuracy Rate</div>
                </div>
                <div class="metric-card reveal reveal-delay-3">
                    <div class="metric-num green">500K+</div>
                    <div class="metric-label">Successful Job Placements</div>
                </div>
                <div class="metric-card reveal reveal-delay-4">
                    <div class="metric-num gold">60%</div>
                    <div class="metric-label">Reduction in Time-to-Hire</div>
                </div>
            </div>
        </div>
    </section>

    <!-- ══════════════════════════════
         OVERVIEW + TECH STACK
    ══════════════════════════════ -->
    <section class="overview-section">
        <div class="two-col">
            <!-- Overview -->
            <div>
                <div class="section-eyebrow reveal"><i class="fas fa-layer-group"></i> Project Overview</div>
                <h2 class="section-title-lg reveal reveal-delay-1">
                    Recruitment<br><span>Reimagined with AI</span>
                </h2>
                <p class="lead-p reveal reveal-delay-2">
                    Dream Naukri is an intelligent AI-powered job portal that revolutionizes the recruitment
                    landscape by connecting talented professionals with their ideal career opportunities
                    through advanced machine learning algorithms and automated workflows.
                </p>
                <div class="overview-highlight reveal reveal-delay-3">
                    <p>
                        Built on robust Full Stack Java architecture with cutting-edge AI/ML capabilities,
                        the platform serves over 1.2 million active users across various industries. The system
                        leverages NLP for resume parsing, deep learning for intelligent matching, and
                        predictive analytics for personalized job recommendations.
                    </p>
                </div>
                <div class="overview-highlight reveal reveal-delay-4" style="border-left-color:var(--coral); margin-top:1rem;">
                    <p>
                        With 500,000+ successful placements and 92% matching accuracy, Dream Naukri
                        significantly reduces time-to-hire while improving candidate-job match quality.
                        Completed in just 2 months by a dedicated 3-developer team at IARDO.
                    </p>
                </div>
            </div>

            <!-- Tech Stack -->
            <div>
                <div class="section-eyebrow coral reveal"><i class="fas fa-microchip"></i> Technology Stack</div>
                <h2 class="section-title-lg reveal reveal-delay-1">Built with<br><span>Enterprise-Grade Tech</span></h2>
                <div class="tech-grid" style="margin-top:1.6rem;">
                    <div class="tech-cat reveal reveal-delay-1">
                        <div class="tech-cat-header">
                            <i class="fas fa-server"></i>
                            <h4>Backend</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">Java 17</span>
                            <span class="tech-pill">Apache Tomcat</span>
                            <span class="tech-pill">Servlets &amp; JSP</span>
                        </div>
                    </div>
                    <div class="tech-cat reveal reveal-delay-2">
                        <div class="tech-cat-header">
                            <i class="fas fa-laptop-code"></i>
                            <h4>Frontend</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">JSP &amp; Servlets</span>
                            <span class="tech-pill">JavaScript ES6+</span>
                            <span class="tech-pill">HTML5 &amp; CSS3</span>
                            <span class="tech-pill">Bootstrap</span>
                        </div>
                    </div>
                    <div class="tech-cat reveal reveal-delay-3">
                        <div class="tech-cat-header">
                            <i class="fas fa-database"></i>
                            <h4>Database</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">MySQL</span>
                            <span class="tech-pill">Query Optimization</span>
                            <span class="tech-pill">Caching</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ══════════════════════════════
         PLATFORM FEATURES
    ══════════════════════════════ -->
    <section class="features-section">
        <div class="section-header-center reveal">
            <div class="section-eyebrow" style="display:inline-flex; margin-bottom:1rem;"><i class="fas fa-th-large"></i> Complete Platform</div>
            <h2 class="section-title-lg">Complete Platform Features</h2>
            <p>Everything you need to streamline hiring — from smart search to digital offer management.</p>
        </div>

        <div class="features-grid">
            <div class="feat-card reveal reveal-delay-1">
                <div class="feat-icon"><i class="fas fa-search"></i></div>
                <span class="feat-num">01</span>
                <div class="feat-title">Advanced Job Search</div>
                <p class="feat-desc">Powerful search with 25+ filters including skills, location, salary, and experience</p>
            </div>
            <div class="feat-card reveal reveal-delay-2">
                <div class="feat-icon"><i class="fas fa-file-upload"></i></div>
                <span class="feat-num">02</span>
                <div class="feat-title">Smart Resume Builder</div>
                <p class="feat-desc">Professional templates with AI-powered content suggestions and formatting</p>
            </div>
            <div class="feat-card reveal reveal-delay-3">
                <div class="feat-icon"><i class="fas fa-bell"></i></div>
                <span class="feat-num">03</span>
                <div class="feat-title">Real-time Notifications</div>
                <p class="feat-desc">Instant alerts for matching jobs, status updates, and interview schedules</p>
            </div>
            <div class="feat-card reveal reveal-delay-4">
                <div class="feat-icon"><i class="fas fa-tasks"></i></div>
                <span class="feat-num">04</span>
                <div class="feat-title">Applicant Tracking System</div>
                <p class="feat-desc">Complete ATS for managing the full candidate pipeline from application to hire</p>
            </div>
            <div class="feat-card reveal reveal-delay-1">
                <div class="feat-icon"><i class="fas fa-chart-bar"></i></div>
                <span class="feat-num">05</span>
                <div class="feat-title">Analytics Dashboard</div>
                <p class="feat-desc">Comprehensive hiring metrics, funnel analysis, and predictive recruiter insights</p>
            </div>
            <div class="feat-card reveal reveal-delay-2">
                <div class="feat-icon"><i class="fas fa-video"></i></div>
                <span class="feat-num">06</span>
                <div class="feat-title">Video Interviews</div>
                <p class="feat-desc">Integrated video interview scheduling, recording, and playback capabilities</p>
            </div>
            <div class="feat-card reveal reveal-delay-3">
                <div class="feat-icon"><i class="fas fa-comments"></i></div>
                <span class="feat-num">07</span>
                <div class="feat-title">In-app Messaging</div>
                <p class="feat-desc">Direct communication channel between candidates and recruiters in one place</p>
            </div>
            <div class="feat-card reveal reveal-delay-4">
                <div class="feat-icon"><i class="fas fa-shield-alt"></i></div>
                <span class="feat-num">08</span>
                <div class="feat-title">Data Security</div>
                <p class="feat-desc">Bank-grade encryption, GDPR compliance, and enterprise-level data handling</p>
            </div>
            <div class="feat-card reveal reveal-delay-1">
                <div class="feat-icon"><i class="fas fa-graduation-cap"></i></div>
                <span class="feat-num">09</span>
                <div class="feat-title">Skill Assessments</div>
                <p class="feat-desc">Built-in technical tests with automated scoring and candidate ranking</p>
            </div>
            <div class="feat-card reveal reveal-delay-2">
                <div class="feat-icon"><i class="fas fa-calendar-check"></i></div>
                <span class="feat-num">10</span>
                <div class="feat-title">Interview Scheduling</div>
                <p class="feat-desc">Automated calendar integration and intelligent interview slot management</p>
            </div>
            <div class="feat-card reveal reveal-delay-3">
                <div class="feat-icon"><i class="fas fa-file-contract"></i></div>
                <span class="feat-num">11</span>
                <div class="feat-title">Offer Management</div>
                <p class="feat-desc">Digital offer letters, e-signatures, and complete onboarding workflows</p>
            </div>
            <div class="feat-card reveal reveal-delay-4">
                <div class="feat-icon"><i class="fas fa-mobile-alt"></i></div>
                <span class="feat-num">12</span>
                <div class="feat-title">Mobile Responsive</div>
                <p class="feat-desc">Seamless experience across all devices and screen sizes</p>
            </div>
        </div>
    </section>

    <!-- ══════════════════════════════
         AI SOLUTIONS
    ══════════════════════════════ -->
    <section class="ai-section">
        <div style="max-width:1240px; margin:0 auto;">
            <div class="section-header-center reveal">
                <div class="section-eyebrow" style="display:inline-flex; margin-bottom:1rem;"><i class="fas fa-robot"></i> AI-Powered Solution</div>
                <h2 class="section-title-lg">Intelligent Systems<br><span>Built for Scale</span></h2>
                <p style="font-family:'Source Serif 4',serif; font-size:1rem; color:var(--text-muted); margin-top:.8rem; line-height:1.7;">
                    A comprehensive AI-first platform automating every stage of recruitment through intelligent algorithms.
                </p>
            </div>

            <div class="ai-grid">
                <div class="ai-card reveal reveal-delay-1">
                    <div class="ai-card-num">01</div>
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-file-alt"></i></div>
                        <h3>AI-Powered Resume Parser</h3>
                    </div>
                    <p class="ai-card-desc">
                        Advanced NLP algorithms automatically extract and structure information from resumes in any format.
                        Uses Named Entity Recognition (NER) to identify skills, experience, education, and certifications with 95% accuracy.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">spaCy NLP</span>
                        <span class="ai-tag">TensorFlow</span>
                        <span class="ai-tag">BERT Models</span>
                        <span class="ai-tag">Python</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Supports 15+ file formats (PDF, DOC, DOCX, TXT)</li>
                        <li><i class="fas fa-check"></i> Extracts 50+ data points per resume</li>
                        <li><i class="fas fa-check"></i> Multi-language support — English &amp; Hindi</li>
                        <li><i class="fas fa-check"></i> 95% parsing accuracy across all formats</li>
                        <li><i class="fas fa-check"></i> Processes 1000+ resumes per minute</li>
                    </ul>
                </div>

                <div class="ai-card reveal reveal-delay-2">
                    <div class="ai-card-num">02</div>
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-brain"></i></div>
                        <h3>Intelligent Matching Algorithm</h3>
                    </div>
                    <p class="ai-card-desc">
                        Sophisticated deep learning model using semantic understanding beyond keyword matching.
                        Considers 30+ factors including skill compatibility, experience, cultural fit, and career growth potential.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">Deep Learning</span>
                        <span class="ai-tag">Neural Networks</span>
                        <span class="ai-tag">scikit-learn</span>
                        <span class="ai-tag">Word2Vec</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Multi-factor matching with 30+ parameters</li>
                        <li><i class="fas fa-check"></i> Semantic understanding of job descriptions</li>
                        <li><i class="fas fa-check"></i> Continuous learning from hiring outcomes</li>
                        <li><i class="fas fa-check"></i> 92% match accuracy rate achieved</li>
                        <li><i class="fas fa-check"></i> Real-time scoring and ranking</li>
                    </ul>
                </div>

                <div class="ai-card reveal reveal-delay-3">
                    <div class="ai-card-num">03</div>
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-user-clock"></i></div>
                        <h3>Personalized Recommendation Engine</h3>
                    </div>
                    <p class="ai-card-desc">
                        ML recommendation system that learns from user behavior and preferences. Analyzes application
                        patterns, job views, and career progression to suggest increasingly relevant opportunities.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">Collaborative Filtering</span>
                        <span class="ai-tag">Content-Based</span>
                        <span class="ai-tag">Hybrid Models</span>
                        <span class="ai-tag">Redis Cache</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Real-time personalized job feeds</li>
                        <li><i class="fas fa-check"></i> Career path prediction and suggestions</li>
                        <li><i class="fas fa-check"></i> Salary range recommendations based on market data</li>
                        <li><i class="fas fa-check"></i> Smart daily job alerts via email/SMS</li>
                        <li><i class="fas fa-check"></i> Similar jobs and career alternatives</li>
                    </ul>
                </div>

                <div class="ai-card reveal reveal-delay-4">
                    <div class="ai-card-num">04</div>
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-chart-line"></i></div>
                        <h3>Advanced Analytics Dashboard</h3>
                    </div>
                    <p class="ai-card-desc">
                        Comprehensive analytics and BI platform for recruiters featuring real-time metrics,
                        pipeline visualization, funnel analysis, and predictive insights to optimize recruitment ROI.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">Chart.js</span>
                        <span class="ai-tag">D3.js</span>
                        <span class="ai-tag">Elasticsearch</span>
                        <span class="ai-tag">Real-time Data</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Real-time hiring metrics and KPIs</li>
                        <li><i class="fas fa-check"></i> Candidate pipeline and funnel tracking</li>
                        <li><i class="fas fa-check"></i> Performance analytics by department</li>
                        <li><i class="fas fa-check"></i> Predictive time-to-hire estimates</li>
                        <li><i class="fas fa-check"></i> Custom report generation and exports</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

   

    <jsp:include page="../../includes/footer/footer.jsp" />

    <script>
        // Scroll reveal
        const revealObs = new IntersectionObserver(entries => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    e.target.classList.add('in');
                    revealObs.unobserve(e.target);
                }
            });
        }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });

        document.querySelectorAll('.reveal').forEach(el => revealObs.observe(el));

        // Smooth scroll
        document.querySelectorAll('a[href^="#"]').forEach(a => {
            a.addEventListener('click', e => {
                e.preventDefault();
                const t = document.querySelector(a.getAttribute('href'));
                if (t) t.scrollIntoView({ behavior:'smooth', block:'start' });
            });
        });

        // Counter animation for metrics
        const counterObs = new IntersectionObserver(entries => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    e.target.querySelectorAll('.metric-num').forEach(el => {
                        el.style.animation = 'none';
                        el.style.opacity = '0';
                        el.style.transform = 'translateY(16px)';
                        setTimeout(() => {
                            el.style.transition = 'opacity .5s ease, transform .5s ease';
                            el.style.opacity = '1';
                            el.style.transform = 'translateY(0)';
                        }, 100);
                    });
                    counterObs.unobserve(e.target);
                }
            });
        }, { threshold: 0.4 });

        const ms = document.querySelector('.metrics-section');
        if (ms) counterObs.observe(ms);
    </script>
</body>
</html>
