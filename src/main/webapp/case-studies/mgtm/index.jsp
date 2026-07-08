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
    <title>MGTM Consultancy Case Study | Career Coaching & Study Abroad Platform</title>
    <meta name="description" content="How we built MGTM Consultancy's digital platform — empowering students, parents, schools, and corporates with research-driven career and education guidance.">

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
            --accent:    #2563EB;
            --accent-dk: #1d4ed8;
            --accent-lt: #EFF6FF;
            --teal:      #0D9488;
            --teal-dk:   #0f766e;
            --surface:   #ffffff;
            --surface-2: #F5F8FF;
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

        h1,h2,h3,h4,h5,h6 {
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

        .case-hero::before {
            content:'';
            position:absolute;
            top:-200px; right:-150px;
            width:600px; height:600px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(37,99,235,.18),transparent 70%);
            filter:blur(60px);
            animation:floatOrb 9s ease-in-out infinite;
        }

        .case-hero::after {
            content:'';
            position:absolute;
            bottom:-150px; left:-100px;
            width:450px; height:450px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(13,148,136,.15),transparent 70%);
            filter:blur(60px);
            animation:floatOrb 12s ease-in-out infinite reverse;
        }

        .hero-grid {
            position:absolute;
            inset:0;
            background-image:
                linear-gradient(rgba(37,99,235,.04) 1px,transparent 1px),
                linear-gradient(90deg,rgba(37,99,235,.04) 1px,transparent 1px);
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
            border:1.5px solid rgba(37,99,235,.2);
            border-radius:100px;
            font-family:'Montserrat',sans-serif !important;
            font-size:0.72rem;
            font-weight:700;
            letter-spacing:.5px;
            color:var(--accent);
        }

        .hero-tag.tag-teal {
            background:#f0fdfa;
            border-color:rgba(13,148,136,.25);
            color:var(--teal-dk);
        }

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
            background:linear-gradient(135deg,var(--accent),#60a5fa,var(--teal));
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
        .meta-item > i { font-size:1.1rem; color:var(--accent); flex-shrink:0; }
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
            background:linear-gradient(135deg,#0f172a,#1e3a5f);
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
            box-shadow:0 8px 24px rgba(37,99,235,.35);
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

        .section-eyebrow.teal {
            background:#f0fdfa;
            color:var(--teal-dk);
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
            background:linear-gradient(135deg,var(--accent),var(--teal));
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
            box-shadow:0 6px 24px rgba(37,99,235,.1);
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
            max-width:640px;
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
            box-shadow:0 12px 36px rgba(37,99,235,.1);
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
           SERVICES / SOLUTION
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
            background:linear-gradient(to bottom,var(--accent),var(--teal));
            transform:scaleY(0);
            transform-origin:top;
            transition:transform .4s ease;
        }
        .ai-card:hover {
            box-shadow:0 16px 48px rgba(26,31,60,.1);
            transform:translateY(-5px);
        }
        .ai-card:hover::after { transform:scaleY(1); }

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
           METRICS STRIP
        ══════════════════════════════ */
        .metrics-section {
            padding:4rem 5%;
            background:linear-gradient(135deg,#0f172a,#1e3a5f);
            position:relative;
            overflow:hidden;
        }

        .metrics-section::before {
            content:'';
            position:absolute;
            top:-200px; right:-150px;
            width:500px; height:500px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(37,99,235,.3),transparent 65%);
            filter:blur(60px);
        }

        .metrics-section::after {
            content:'';
            position:absolute;
            bottom:-150px; left:-100px;
            width:400px; height:400px;
            border-radius:50%;
            background:radial-gradient(circle,rgba(13,148,136,.25),transparent 65%);
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
            border-color:rgba(37,99,235,.5);
            transform:translateY(-4px);
        }

        .metric-num {
            font-family:'Montserrat',sans-serif !important;
            font-size:2.4rem;
            font-weight:900;
            color:#60a5fa !important;
            line-height:1;
            margin-bottom:.4rem;
        }

        .metric-num.teal  { color:#2dd4bf !important; }
        .metric-num.green { color:#4ade80 !important; }
        .metric-num.gold  { color:#fbbf24 !important; }

        .metric-label {
            font-family:'Source Serif 4',serif !important;
            font-size:0.82rem;
            color:rgba(255,255,255,.6) !important;
            line-height:1.4;
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
        }
        .related-card:hover {
            border-color:var(--accent);
            box-shadow:0 16px 48px rgba(37,99,235,.12);
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

        .related-body { padding:1.6rem 1.8rem; }

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
                    <span class="hero-tag"><i class="fas fa-graduation-cap"></i> Career Coaching</span>
                    <span class="hero-tag"><i class="fas fa-globe"></i> Study Abroad</span>
                    <span class="hero-tag tag-teal"><i class="fas fa-code"></i> MERN Stack</span>
                </div>

                <h1 class="hero-title reveal reveal-delay-2">
                    MGTM Consultancy:<br>
                    <span class="accent-line">Clarity Over Sales,</span><br>
                    Purpose Over Pressure
                </h1>

                <p class="hero-desc reveal reveal-delay-3">
                    A purpose-driven digital platform connecting students, parents, schools, and corporates
                    with expert career and education guidance — replacing guesswork with research-backed,
                    holistic counselling that puts people first.
                </p>

                <div class="hero-meta reveal reveal-delay-4">
                    <div class="meta-item">
                        <i class="fas fa-building"></i>
                        <div><span class="meta-label">Company</span><span class="meta-value">MGTM Consultancy LLP</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-calendar"></i>
                        <div><span class="meta-label">Completed</span><span class="meta-value">2026</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-clock"></i>
                        <div><span class="meta-label">Duration</span><span class="meta-value">1 Month</span></div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-users"></i>
                        <div><span class="meta-label">Team</span><span class="meta-value">2 Developers</span></div>
                    </div>
                </div>
            </div>

            <div class="hero-sidebar-card reveal reveal-delay-2">
                <div class="hsc-header">
                    <div class="hsc-logo"><i class="fas fa-compass"></i></div>
                    <div>
                        <div class="hsc-name">MGTM Consultancy</div>
                        <div class="hsc-sub">Career &amp; Education Advisory</div>
                    </div>
                </div>
                <div class="hsc-stats">
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">B2C</div>
                        <div class="hsc-stat-label">Student &amp; Parent Reach</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">B2B</div>
                        <div class="hsc-stat-label">Schools &amp; Corporates</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">100%</div>
                        <div class="hsc-stat-label">Holistic Approach</div>
                    </div>
                    <div class="hsc-stat">
                        <div class="hsc-stat-num">1 Mo</div>
                        <div class="hsc-stat-label">Delivery Timeline</div>
                    </div>
                </div>
                <a href="https://www.mgtmconsultancy.com/" target="_blank" rel="noopener noreferrer" class="hsc-live-btn">
                    <i class="fas fa-arrow-up-right-from-square"></i> Open MGTM Consultancy
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
                <h2>Impact at a Glance</h2>
                <p>Delivered in just 1 month by a focused 2-developer team</p>
            </div>
            <div class="metrics-grid">
                <div class="metric-card reveal reveal-delay-1">
                    <div class="metric-num">B2C</div>
                    <div class="metric-label">Direct Student &amp; Parent Engagement</div>
                </div>
                <div class="metric-card reveal reveal-delay-2">
                    <div class="metric-num teal">B2B</div>
                    <div class="metric-label">School &amp; Corporate Partnerships</div>
                </div>
                <div class="metric-card reveal reveal-delay-3">
                    <div class="metric-num green">Secure</div>
                    <div class="metric-label">Razorpay Payment Integration</div>
                </div>
                <div class="metric-card reveal reveal-delay-4">
                    <div class="metric-num gold">1 Mo</div>
                    <div class="metric-label">Full Platform Delivery</div>
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
                    Guidance Rooted in<br><span>Research &amp; Purpose</span>
                </h2>
                <p class="lead-p reveal reveal-delay-2">
                    MGTM Consultancy is a career and education advisory firm that takes a multidimensional
                    approach to guidance — helping students discover the right paths, parents make informed
                    decisions, schools build stronger counselling programmes, and corporates develop their people.
                </p>
                <div class="overview-highlight reveal reveal-delay-3">
                    <p>
                        We built MGTM's full digital presence on the MERN stack, delivering a fast, scalable
                        platform with seamless consultation booking, secure online payments via Razorpay,
                        and a robust content system for study-abroad resources and career guidance articles.
                    </p>
                </div>
                <div class="overview-highlight reveal reveal-delay-4" style="border-left-color:var(--teal); margin-top:1rem;">
                    <p>
                        The site serves both B2C audiences (students and parents) and B2B clients
                        (schools and corporates), communicating MGTM's ethos of clarity over sales and
                        purpose over pressure — all shipped within a single month.
                    </p>
                </div>
            </div>

            <!-- Tech Stack -->
            <div>
                <div class="section-eyebrow teal reveal"><i class="fas fa-microchip"></i> Technology Stack</div>
                <h2 class="section-title-lg reveal reveal-delay-1">Built with<br><span>Modern Web Tech</span></h2>
                <div class="tech-grid" style="margin-top:1.6rem;">
                    <div class="tech-cat reveal reveal-delay-1">
                        <div class="tech-cat-header">
                            <i class="fas fa-server"></i>
                            <h4>Backend</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">Node.js</span>
                            <span class="tech-pill">Express.js</span>
                            <span class="tech-pill">REST API</span>
                        </div>
                    </div>
                    <div class="tech-cat reveal reveal-delay-2">
                        <div class="tech-cat-header">
                            <i class="fas fa-laptop-code"></i>
                            <h4>Frontend</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">React.js</span>
                            <span class="tech-pill">JavaScript ES6+</span>
                            <span class="tech-pill">Responsive CSS</span>
                        </div>
                    </div>
                    <div class="tech-cat reveal reveal-delay-3">
                        <div class="tech-cat-header">
                            <i class="fas fa-database"></i>
                            <h4>Database &amp; Infra</h4>
                        </div>
                        <div class="tech-pills">
                            <span class="tech-pill">MongoDB</span>
                            <span class="tech-pill">Nginx</span>
                            <span class="tech-pill">PM2</span>
                            <span class="tech-pill">Razorpay</span>
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
            <div class="section-eyebrow" style="display:inline-flex; margin-bottom:1rem;"><i class="fas fa-th-large"></i> Platform Features</div>
            <h2 class="section-title-lg">Everything in One Place</h2>
            <p>A complete digital hub for career and education guidance — from discovery to booking to payment.</p>
        </div>

        <div class="features-grid">
            <div class="feat-card reveal reveal-delay-1">
                <div class="feat-icon"><i class="fas fa-compass"></i></div>
                <div class="feat-title">Career Counselling Portal</div>
                <p class="feat-desc">One-on-one career guidance sessions bookable online for students at any stage</p>
            </div>
            <div class="feat-card reveal reveal-delay-2">
                <div class="feat-icon"><i class="fas fa-plane-departure"></i></div>
                <div class="feat-title">Study Abroad Guidance</div>
                <p class="feat-desc">Country-wise, course-wise, and budget-wise guidance for international education</p>
            </div>
            <div class="feat-card reveal reveal-delay-3">
                <div class="feat-icon"><i class="fas fa-calendar-check"></i></div>
                <div class="feat-title">Appointment Booking</div>
                <p class="feat-desc">Slot-based booking system with confirmation emails and session reminders</p>
            </div>
            <div class="feat-card reveal reveal-delay-4">
                <div class="feat-icon"><i class="fas fa-credit-card"></i></div>
                <div class="feat-title">Razorpay Payments</div>
                <p class="feat-desc">Secure, seamless online fee collection with instant payment confirmation</p>
            </div>
            <div class="feat-card reveal reveal-delay-1">
                <div class="feat-icon"><i class="fas fa-school"></i></div>
                <div class="feat-title">School Partnerships</div>
                <p class="feat-desc">B2B solutions helping schools set up structured, research-backed counselling programmes</p>
            </div>
            <div class="feat-card reveal reveal-delay-2">
                <div class="feat-icon"><i class="fas fa-briefcase"></i></div>
                <div class="feat-title">Corporate Advisory</div>
                <p class="feat-desc">People-development and career-transition guidance for organisations and their teams</p>
            </div>
            <div class="feat-card reveal reveal-delay-3">
                <div class="feat-icon"><i class="fas fa-book-open"></i></div>
                <div class="feat-title">Resource Library</div>
                <p class="feat-desc">Curated articles, guides, and checklists on careers, colleges, and study abroad</p>
            </div>
            <div class="feat-card reveal reveal-delay-4">
                <div class="feat-icon"><i class="fas fa-mobile-alt"></i></div>
                <div class="feat-title">Fully Responsive</div>
                <p class="feat-desc">Pixel-perfect experience across desktop, tablet, and mobile devices</p>
            </div>
        </div>
    </section>

    <!-- ══════════════════════════════
         SERVICES / SOLUTION
    ══════════════════════════════ -->
    <section class="ai-section">
        <div style="max-width:1240px; margin:0 auto;">
            <div class="section-header-center reveal">
                <div class="section-eyebrow" style="display:inline-flex; margin-bottom:1rem;"><i class="fas fa-lightbulb"></i> What We Built</div>
                <h2 class="section-title-lg">Four Pillars of the<br><span>MGTM Platform</span></h2>
                <p style="font-family:'Source Serif 4',serif; font-size:1rem; color:var(--text-muted); margin-top:.8rem; line-height:1.7;">
                    Each module was designed to serve a distinct audience while reinforcing MGTM's core promise — honest, research-driven guidance.
                </p>
            </div>

            <div class="ai-grid">
                <!-- Card 1 -->
                <!-- Card 2 -->
                <div class="ai-card reveal reveal-delay-2">
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-chalkboard-teacher"></i></div>
                        <h3>School Programme Module</h3>
                    </div>
                    <p class="ai-card-desc">
                        A dedicated B2B section for educational institutions seeking to establish or upgrade their
                        in-house counselling infrastructure — with programme details, inquiry forms, and case examples
                        tailored for school decision-makers.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">B2B Flows</span>
                        <span class="ai-tag">Lead Capture</span>
                        <span class="ai-tag">MongoDB</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Programme overview for school administrators</li>
                        <li><i class="fas fa-check"></i> Custom inquiry and proposal request forms</li>
                        <li><i class="fas fa-check"></i> Lead data stored securely in MongoDB</li>
                        <li><i class="fas fa-check"></i> School-facing testimonials and outcomes</li>
                    </ul>
                </div>

                <!-- Card 3 -->

                <!-- Card 4 -->
                <div class="ai-card reveal reveal-delay-4">
                    <div class="ai-card-head">
                        <div class="ai-icon"><i class="fas fa-server"></i></div>
                        <h3>Production Infrastructure</h3>
                    </div>
                    <p class="ai-card-desc">
                        A robust, always-on deployment setup using Nginx as a reverse proxy and PM2 as a
                        process manager — ensuring zero-downtime restarts, SSL termination, and a stable
                        experience for all users on both web and mobile.
                    </p>
                    <div class="ai-tags">
                        <span class="ai-tag">Nginx</span>
                        <span class="ai-tag">PM2</span>
                        <span class="ai-tag">Node.js</span>
                        <span class="ai-tag">SSL / HTTPS</span>
                    </div>
                    <ul class="ai-highlights">
                        <li><i class="fas fa-check"></i> Nginx reverse proxy for fast static &amp; API serving</li>
                        <li><i class="fas fa-check"></i> PM2 cluster mode for high availability</li>
                        <li><i class="fas fa-check"></i> Automated process restart on failure</li>
                        <li><i class="fas fa-check"></i> HTTPS enforced with SSL certificate management</li>
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

        // Metric entrance animation
        const counterObs = new IntersectionObserver(entries => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    e.target.querySelectorAll('.metric-num').forEach(el => {
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
