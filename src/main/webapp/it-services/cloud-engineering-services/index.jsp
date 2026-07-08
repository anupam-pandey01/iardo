<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cloud Engineering Services - Scalable and Secure Cloud Solutions</title>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@300;400;500;600;700;800&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { margin:0; padding:0; box-sizing:border-box; }

        :root {
            --primary:        #8B1538;
            --accent:         #DC4628;
            --gradient:       linear-gradient(135deg,#8B1538 0%,#DC4628 100%);
            --gradient-soft:  linear-gradient(135deg,rgba(139,21,56,.08) 0%,rgba(220,70,40,.08) 100%);
            --bg:             #f7f5f2;
            --bg-white:       #ffffff;
            --bg-soft:        #faf9f7;
            --bg-section:     #f2eeeb;
            --text-dark:      #1a0a0f;
            --text-body:      #4a3a40;
            --text-muted:     #7a6a70;
            --border:         rgba(139,21,56,.12);
            --border-light:   rgba(139,21,56,.06);
            --shadow-sm:      0 2px 12px rgba(139,21,56,.08);
            --shadow-md:      0 8px 30px rgba(139,21,56,.12);
            --shadow-lg:      0 20px 60px rgba(139,21,56,.16);
            --r-sm: 12px; --r-md: 20px; --r-lg: 28px;
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: 'DM Sans', sans-serif;
            background: var(--bg);
            color: var(--text-body);
            overflow-x: hidden;
            line-height: 1.7;
        }

        /* ════════════════ HERO ════════════════ */
        .hero {
            min-height: 100vh;
            background: #fff;
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
        }
        .hero-bg {
            position: absolute; inset: 0;
            background: url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1920&q=80') center/cover;
            opacity: .06;
            animation: heroZoom 20s ease-in-out infinite alternate;
        }
        @keyframes heroZoom { from{transform:scale(1)} to{transform:scale(1.08)} }

        .hero-blob-1 {
            position:absolute; top:-15%; right:-10%;
            width:600px; height:600px; border-radius:50%;
            background:radial-gradient(circle,rgba(220,70,40,.10) 0%,transparent 70%);
            pointer-events:none;
        }
        .hero-blob-2 {
            position:absolute; bottom:-15%; left:-8%;
            width:500px; height:500px; border-radius:50%;
            background:radial-gradient(circle,rgba(139,21,56,.08) 0%,transparent 70%);
            pointer-events:none;
        }

        .hero-container {
            position: relative; z-index: 2;
            width: 100%; max-width: 1280px;
            margin: 0 auto;
            padding: 7rem 2rem 5rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 5rem;
            align-items: center;
        }

        /* hero left */
        .hero-tag {
            display: inline-flex; align-items: center; gap: 8px;
            background: var(--gradient-soft);
            border: 1px solid var(--border);
            padding: 7px 18px; border-radius: 50px;
            font-size: .8rem; font-weight: 700;
            letter-spacing: .07em; text-transform: uppercase;
            color: var(--primary); margin-bottom: 1.4rem;
        }
        .hero-tag svg { width:14px; height:14px; stroke:currentColor; fill:none; stroke-width:2; }

        h1.hero-h1 {
            font-family: 'Sora', sans-serif;
            font-size: clamp(2.2rem, 4vw, 3.8rem);
            font-weight: 800; line-height: 1.15;
            color: var(--text-dark); margin-bottom: 1.3rem;
        }
        h1.hero-h1 span {
            background: var(--gradient);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-p {
            font-size: 1.05rem; color: var(--text-body);
            line-height: 1.8; max-width: 520px; margin-bottom: 2.2rem;
        }

        .hero-btns { display: flex; gap: 1rem; flex-wrap: wrap; margin-bottom: 2.5rem; }

        .btn-primary {
            padding: .95rem 2.2rem;
            background: var(--gradient); color: #fff;
            border: none; border-radius: 50px;
            font-family: 'DM Sans', sans-serif;
            font-size: .97rem; font-weight: 600;
            cursor: pointer; transition: all .3s;
            box-shadow: 0 8px 24px rgba(220,70,40,.32);
            display: inline-flex; align-items: center; gap: 8px;
        }
        .btn-primary:hover { transform: translateY(-3px); box-shadow: 0 14px 36px rgba(220,70,40,.42); }
        .btn-primary svg { width:16px; height:16px; stroke:#fff; fill:none; stroke-width:2.5; }

        .btn-outline {
            padding: .95rem 2.2rem;
            background: transparent; color: var(--primary);
            border: 2px solid var(--border); border-radius: 50px;
            font-family: 'DM Sans', sans-serif;
            font-size: .97rem; font-weight: 600;
            cursor: pointer; transition: all .3s;
            display: inline-flex; align-items: center; gap: 8px;
        }
        .btn-outline:hover { border-color: var(--primary); background: var(--gradient-soft); transform: translateY(-2px); }

        .hero-stats { display: flex; gap: 2.5rem; flex-wrap: wrap; }
        .hero-stat-num {
            font-family: 'Sora', sans-serif;
            font-size: 1.9rem; font-weight: 800;
            color: var(--primary); line-height: 1;
        }
        .hero-stat-lbl { font-size: .8rem; color: var(--text-muted); margin-top: 4px; font-weight: 500; }

        /* hero right – dashboard card */
        .hero-card {
            background: var(--bg-white);
            border-radius: var(--r-lg);
            padding: 2rem;
            box-shadow: var(--shadow-lg);
            border: 1px solid var(--border-light);
        }
        .hero-card-head {
            display: flex; align-items: center; justify-content: space-between;
            margin-bottom: 1.6rem;
        }
        .hero-card-title { font-family:'Sora',sans-serif; font-weight:700; font-size:.98rem; color:var(--text-dark); }
        .hero-status {
            display: flex; align-items: center; gap: 6px;
            font-size: .78rem; color: #16a34a; font-weight: 600;
        }
        .hero-status-dot {
            width:8px; height:8px; border-radius:50%; background:#16a34a;
            animation: blink 2s infinite;
        }
        @keyframes blink { 0%,100%{opacity:1} 50%{opacity:.3} }

        .dash-list { display:flex; flex-direction:column; gap:.9rem; }
        .dash-item {
            display:flex; align-items:center; gap:1rem;
            padding:.85rem 1.1rem; background:var(--bg-soft);
            border-radius:var(--r-sm); border:1px solid var(--border-light);
            transition: all .3s;
        }
        .dash-item:hover { background:var(--gradient-soft); border-color:var(--border); transform:translateX(4px); }
        .dash-icon {
            width:38px; height:38px; background:var(--gradient);
            border-radius:10px; flex-shrink:0;
            display:flex; align-items:center; justify-content:center;
        }
        .dash-icon svg { width:18px; height:18px; stroke:#fff; fill:none; stroke-width:2; }
        .dash-name { font-weight:600; font-size:.88rem; color:var(--text-dark); }
        .dash-sub { font-size:.75rem; color:var(--text-muted); }
        .dash-badge {
            margin-left:auto; font-size:.7rem; font-weight:700;
            padding:3px 10px; border-radius:50px;
            background:rgba(22,163,74,.10); color:#16a34a;
        }

        /* ════════════════ SECTION BASE ════════════════ */
        .pg-section { padding: 6rem 2rem; }
        .pg-wrap { max-width: 1200px; margin: 0 auto; }

        .sec-label {
            display: inline-flex; align-items: center; gap: 8px;
            font-size:.76rem; font-weight:700; letter-spacing:.1em;
            text-transform:uppercase; color:var(--accent); margin-bottom:.9rem;
        }
        .sec-label::before {
            content:''; width:20px; height:2px;
            background:var(--gradient); border-radius:2px;
        }
        h2.sec-title {
            font-family:'Sora',sans-serif;
            font-size: clamp(1.8rem,3.2vw,2.8rem);
            font-weight:800; color:var(--text-dark); line-height:1.2; margin-bottom:.9rem;
        }
        h2.sec-title span {
            background:var(--gradient);
            -webkit-background-clip:text; -webkit-text-fill-color:transparent;
            background-clip:text;
        }
        .sec-sub {
            font-size:1rem; color:var(--text-muted); line-height:1.8;
            max-width:620px; margin-bottom:3rem;
        }
        .center { text-align:center; }
        .center .sec-label { justify-content:center; }
        .center .sec-sub { margin-left:auto; margin-right:auto; }

        /* ════════════════ WHAT IS CLOUD ENGINEERING ════════════════ */
        .what-section { background:var(--bg-white); }
        .what-grid {
            display:grid; grid-template-columns:1fr 1fr;
            gap:5rem; align-items:center;
        }
        .what-img-wrap { position:relative; }
        .what-img {
            width:100%; height:440px; object-fit:cover;
            border-radius:var(--r-lg); box-shadow:var(--shadow-lg);
        }
        .what-badge {
            position:absolute; bottom:1.8rem; left:-1.6rem;
            background:var(--bg-white); border-radius:var(--r-md);
            padding:1.1rem 1.4rem; box-shadow:var(--shadow-md);
            border:1px solid var(--border-light);
            display:flex; align-items:center; gap:.9rem;
        }
        .what-badge-icon {
            width:44px; height:44px; background:var(--gradient);
            border-radius:12px; display:flex; align-items:center; justify-content:center;
        }
        .what-badge-icon svg { width:22px; height:22px; stroke:#fff; fill:none; stroke-width:2; }
        .what-badge strong { display:block; font-weight:700; color:var(--text-dark); font-size:1.05rem; }
        .what-badge span { font-size:.78rem; color:var(--text-muted); }
        .what-content p { color:var(--text-body); line-height:1.85; margin-bottom:1.4rem; font-size:1.02rem; }
        .what-points { display:grid; grid-template-columns:1fr 1fr; gap:.8rem; margin-top:1.5rem; }
        .what-pt {
            display:flex; align-items:center; gap:9px;
            font-size:.9rem; font-weight:500; color:var(--text-body);
        }
        .what-dot { width:7px; height:7px; border-radius:50%; background:var(--gradient); flex-shrink:0; }

        /* ════════════════ WHY IMPORTANT ════════════════ */
        .why-section { background:var(--bg-soft); }
        .why-grid { display:grid; grid-template-columns:repeat(4,1fr); gap:1.4rem; }
        .why-card {
            background:var(--bg-white); border-radius:var(--r-md);
            padding:1.8rem; border:1px solid var(--border-light);
            transition:all .4s; position:relative; overflow:hidden;
        }
        .why-card::after {
            content:''; position:absolute; bottom:0; left:0; right:0;
            height:3px; background:var(--gradient);
            transform:scaleX(0); transform-origin:left; transition:transform .4s;
        }
        .why-card:hover::after { transform:scaleX(1); }
        .why-card:hover { transform:translateY(-5px); box-shadow:var(--shadow-md); }
        .why-emoji { font-size:1.8rem; display:block; margin-bottom:.9rem; }
        .why-card h3 { font-family:'Sora',sans-serif; font-size:.97rem; font-weight:700; color:var(--text-dark); margin-bottom:.45rem; }
        .why-card p { font-size:.84rem; color:var(--text-muted); line-height:1.6; }

        /* ════════════════ SERVICES ════════════════ */
        .svc-section { background:var(--bg-white); }
        .svc-grid { display:grid; grid-template-columns:repeat(3,1fr); gap:1.8rem; }
        .svc-card {
            background:var(--bg-soft); border-radius:var(--r-md);
            padding:2rem; border:1px solid var(--border-light);
            transition:all .4s; position:relative; overflow:hidden;
        }
        .svc-card::before {
            content:''; position:absolute; top:0; left:0; right:0;
            height:3px; background:var(--gradient);
            transform:scaleX(0); transform-origin:left; transition:transform .4s;
        }
        .svc-card:hover::before { transform:scaleX(1); }
        .svc-card:hover { transform:translateY(-6px); box-shadow:var(--shadow-md); background:var(--bg-white); }
        .svc-card.expanded { grid-column:1/-1; transform:none !important; }
        .svc-icon {
            width:56px; height:56px; background:var(--gradient-soft);
            border:1px solid var(--border); border-radius:16px;
            display:flex; align-items:center; justify-content:center;
            margin-bottom:1.3rem; transition:all .4s;
        }
        .svc-card:hover .svc-icon { background:var(--gradient); }
        .svc-icon svg { width:26px; height:26px; stroke:var(--primary); fill:none; stroke-width:1.8; transition:stroke .4s; }
        .svc-card:hover .svc-icon svg { stroke:#fff; }
        .svc-front h3 { font-family:'Sora',sans-serif; font-size:1.1rem; font-weight:700; color:var(--text-dark); margin-bottom:.6rem; }
        .svc-front p { font-size:.9rem; color:var(--text-muted); line-height:1.7; margin-bottom:1.2rem; }
        .svc-features { display:flex; flex-direction:column; gap:.45rem; margin-bottom:1.4rem; }
        .svc-feat {
            display:flex; align-items:center; gap:8px;
            font-size:.83rem; color:var(--text-body);
        }
        .svc-feat::before { content:''; width:5px; height:5px; border-radius:50%; background:var(--accent); flex-shrink:0; }
        .svc-more-btn {
            display:inline-flex; align-items:center; gap:6px;
            font-size:.84rem; font-weight:700; color:var(--primary);
            background:none; border:none; cursor:pointer; padding:0; transition:gap .3s;
        }
        .svc-more-btn:hover { gap:10px; }
        .svc-more-btn svg { width:15px; height:15px; stroke:currentColor; fill:none; stroke-width:2.5; }

        .svc-detail { display:none; }
        .svc-card.expanded .svc-detail {
            display:grid; grid-template-columns:1fr 1fr;
            gap:3rem; align-items:center;
            border-top:1px solid var(--border-light);
            padding-top:2rem; margin-top:1rem;
            animation:expand .4s ease;
        }
        @keyframes expand { from{opacity:0;transform:translateY(-12px)} to{opacity:1;transform:translateY(0)} }
        .svc-detail img { width:100%; height:360px; object-fit:cover; border-radius:var(--r-md); box-shadow:var(--shadow-md); }
        .svc-detail h4 { font-family:'Sora',sans-serif; font-size:1.5rem; font-weight:800; color:var(--text-dark); margin-bottom:.9rem; }
        .svc-detail p { font-size:.95rem; color:var(--text-body); line-height:1.8; margin-bottom:.9rem; }

        /* ════════════════ PROCESS ════════════════ */
        .proc-section { background:var(--bg-section); }
        .proc-grid {
            display:grid; grid-template-columns:repeat(3,1fr);
            gap:2.5rem 2rem;
        }
        .proc-step { text-align:center; padding:0 1rem; }
        .proc-num {
            width:54px; height:54px;
            background:var(--gradient);
            border-radius:50%;
            display:flex; align-items:center; justify-content:center;
            font-family:'Sora',sans-serif; font-weight:800; font-size:1.1rem; color:#fff;
            margin:0 auto 1.3rem;
            box-shadow:0 8px 20px rgba(220,70,40,.28);
        }
        .proc-step h3 { font-family:'Sora',sans-serif; font-size:1rem; font-weight:700; color:var(--text-dark); margin-bottom:.5rem; }
        .proc-step p { font-size:.86rem; color:var(--text-muted); line-height:1.65; }

        /* ════════════════ INDUSTRIES ════════════════ */
        .ind-section { background:var(--bg-white); }
        .ind-grid { display:grid; grid-template-columns:repeat(3,1fr); gap:1.8rem; }
        .ind-card {
            background:var(--bg-soft); border-radius:var(--r-md);
            border:1px solid var(--border-light);
            transition:all .4s; overflow:hidden;
        }
        .ind-card:not(.expanded):hover { transform:translateY(-6px); box-shadow:var(--shadow-md); }
        .ind-card.expanded { grid-column:1/-1; }
        .ind-front { padding:2rem; display:flex; flex-direction:column; gap:1rem; }
        .ind-icon {
            width:56px; height:56px; background:var(--gradient-soft);
            border:1px solid var(--border); border-radius:16px;
            display:flex; align-items:center; justify-content:center; transition:all .4s;
        }
        .ind-card:hover .ind-icon, .ind-card.expanded .ind-icon { background:var(--gradient); }
        .ind-icon svg { width:26px; height:26px; stroke:var(--primary); fill:none; stroke-width:1.8; transition:stroke .4s; }
        .ind-card:hover .ind-icon svg, .ind-card.expanded .ind-icon svg { stroke:#fff; }
        .ind-front h3 { font-family:'Sora',sans-serif; font-size:1.2rem; font-weight:700; color:var(--text-dark); }
        .ind-front p { font-size:.9rem; color:var(--text-muted); line-height:1.7; }

        .ind-detail { display:none; }
        .ind-card.expanded .ind-detail {
            display:grid; grid-template-columns:1fr 1fr;
            gap:3rem; align-items:center;
            padding:0 2rem 2rem;
            border-top:1px solid var(--border-light);
            animation:expand .4s ease;
        }
        .ind-detail img { width:100%; height:340px; object-fit:cover; border-radius:var(--r-md); box-shadow:var(--shadow-md); }
        .ind-detail h4 { font-family:'Sora',sans-serif; font-size:1.5rem; font-weight:800; color:var(--text-dark); margin-bottom:.9rem; }
        .ind-detail p { font-size:.95rem; color:var(--text-body); line-height:1.8; margin-bottom:.9rem; }

        /* ════════════════ STATS BANNER ════════════════ */
        .stats-banner { background:var(--gradient); padding:4rem 2rem; }
        .stats-inner {
            max-width:1000px; margin:0 auto;
            display:grid; grid-template-columns:repeat(4,1fr);
            gap:2rem; text-align:center;
        }
        .stat-num { font-family:'Sora',sans-serif; font-size:2.6rem; font-weight:800; color:#fff; line-height:1; }
        .stat-lbl { font-size:.85rem; color:rgba(255,255,255,.72); margin-top:6px; font-weight:500; }

        /* ════════════════ WHY CHOOSE US ════════════════ */
        .results-section { background:var(--bg-section); }
        .results-grid { display:grid; grid-template-columns:repeat(4,1fr); gap:1.4rem; }
        .res-card {
            background:var(--bg-white); border-radius:var(--r-md);
            padding:1.8rem; border:1px solid var(--border-light);
            transition:all .4s;
            display:flex; gap:1rem; align-items:flex-start;
        }
        .res-card:hover { transform:translateY(-4px); box-shadow:var(--shadow-md); }
        .res-icon {
            width:44px; height:44px; background:var(--gradient);
            border-radius:13px; flex-shrink:0;
            display:flex; align-items:center; justify-content:center;
        }
        .res-icon svg { width:20px; height:20px; stroke:#fff; fill:none; stroke-width:2; }
        .res-card h3 { font-family:'Sora',sans-serif; font-size:.95rem; font-weight:700; color:var(--text-dark); margin-bottom:.35rem; }
        .res-card p { font-size:.83rem; color:var(--text-muted); line-height:1.5; }

        /* ════════════════ FAQ ════════════════ */
        .faq-section { background:var(--bg-white); }
        .faq-wrap { max-width:800px; margin:0 auto; }
        .faq-item { border-bottom:1px solid var(--border-light); }
        .faq-item:first-child { border-top:1px solid var(--border-light); }
        .faq-btn {
            width:100%; display:flex; align-items:center; justify-content:space-between; gap:1rem;
            padding:1.5rem 0; background:none; border:none; cursor:pointer; text-align:left;
            font-family:'Sora',sans-serif; font-size:.98rem; font-weight:700;
            color:var(--text-dark); transition:color .3s;
        }
        .faq-btn:hover { color:var(--primary); }
        .faq-arr {
            width:28px; height:28px; border-radius:50%;
            background:var(--gradient-soft); border:1px solid var(--border);
            display:flex; align-items:center; justify-content:center; flex-shrink:0; transition:all .3s;
        }
        .faq-arr svg { width:13px; height:13px; stroke:var(--primary); fill:none; stroke-width:2.5; transition:transform .3s; }
        .faq-item.open .faq-arr { background:var(--gradient); border-color:transparent; }
        .faq-item.open .faq-arr svg { stroke:#fff; transform:rotate(180deg); }
        .faq-body { max-height:0; overflow:hidden; transition:max-height .4s ease; }
        .faq-item.open .faq-body { max-height:600px; }
        .faq-body-inner { padding:0 0 1.5rem; font-size:.96rem; color:var(--text-body); line-height:1.85; }

        /* ════════════════ CTA STRIP ════════════════ */
        .cta-strip { background:var(--bg-section); padding:5rem 2rem; text-align:center; }
        .cta-strip h2 {
            font-family:'Sora',sans-serif;
            font-size:clamp(1.7rem,3vw,2.5rem);
            font-weight:800; color:var(--text-dark); margin-bottom:.9rem;
        }
        .cta-strip p { color:var(--text-muted); font-size:1rem; margin-bottom:2rem; max-width:580px; margin-left:auto; margin-right:auto; line-height:1.7; }
        .cta-btns { display:flex; gap:1rem; justify-content:center; flex-wrap:wrap; }

        /* ════════════════ CLOSE BTN ════════════════ */
        .close-btn {
            display:inline-flex; align-items:center; gap:6px;
            padding:.75rem 1.9rem; background:var(--gradient); color:#fff;
            border:none; border-radius:50px; font-family:'DM Sans',sans-serif;
            font-size:.88rem; font-weight:600; cursor:pointer; transition:all .3s; margin-top:.5rem;
        }
        .close-btn:hover { transform:translateY(-2px); box-shadow:0 8px 20px rgba(220,70,40,.32); }

        /* ════════════════ RESPONSIVE ════════════════ */
        @media(max-width:1100px){
            .hero-container { grid-template-columns:1fr; gap:3rem; padding-top:5rem; }
            .hero-right { display:none; }
            .what-grid { grid-template-columns:1fr; gap:2.5rem; }
            .what-badge { left:0; }
            .svc-grid { grid-template-columns:1fr 1fr; }
            .svc-card.expanded .svc-detail { grid-template-columns:1fr; }
            .ind-grid { grid-template-columns:1fr 1fr; }
            .ind-card.expanded .ind-detail { grid-template-columns:1fr; }
            .results-grid { grid-template-columns:repeat(2,1fr); }
            .why-grid { grid-template-columns:repeat(2,1fr); }
            .stats-inner { grid-template-columns:repeat(2,1fr); }
        }
        @media(max-width:768px){
            .pg-section { padding:4rem 1.5rem; }
            .svc-grid, .ind-grid { grid-template-columns:1fr; }
            .proc-grid { grid-template-columns:1fr 1fr; }
            .why-grid { grid-template-columns:repeat(2,1fr); }
            .results-grid { grid-template-columns:1fr 1fr; }
            .what-points { grid-template-columns:1fr; }
        }
        @media(max-width:480px){
            .hero-btns { flex-direction:column; }
            .proc-grid { grid-template-columns:1fr; }
            .why-grid { grid-template-columns:1fr; }
            .results-grid { grid-template-columns:1fr; }
            .stats-inner { grid-template-columns:1fr 1fr; }
            .hero-stats { gap:1.5rem; }
            .stat-num { font-size:1.9rem; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <%-- ══════════ HERO ══════════ --%>
    <section class="hero">
        <div class="hero-bg"></div>
        <div class="hero-blob-1"></div>
        <div class="hero-blob-2"></div>
        <div class="hero-container">
            <%-- LEFT --%>
            <div class="hero-left">
                <div class="hero-tag">
                    <svg viewBox="0 0 24 24"><path d="M19 18H6c-1.7 0-3-1.3-3-3 0-1.4 1-2.7 2.4-2.9C5.1 9.6 7.3 8 10 8c2.2 0 4.1 1.2 5 3 2.2.2 4 2 4 4.2 0 2.2-1.8 4-4 4z"/></svg>
                    Cloud Engineering Services
                </div>
                <h1 class="hero-h1">
                    <span>Scalable &amp; Secure</span><br>Cloud Solutions
                </h1>
                <p class="hero-p">
                    Transform your business with expert cloud specialists who design, build, and manage secure, scalable cloud infrastructure — optimized for performance, cost, and growth.
                </p>
                <div class="hero-btns">
                    <button class="btn-primary" onclick="document.querySelector('.why-section').scrollIntoView({behavior:'smooth'})">
                        Get Started Today
                        <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </button>
                    <button class="btn-outline" onclick="document.querySelector('.faq-section').scrollIntoView({behavior:'smooth'})">
                        View FAQs
                    </button>
                </div>
                <div class="hero-stats">
                    <div>
                        <div class="hero-stat-num">500+</div>
                        <div class="hero-stat-lbl">Projects Delivered</div>
                    </div>
                    <div>
                        <div class="hero-stat-num">40%</div>
                        <div class="hero-stat-lbl">Avg. Cost Reduction</div>
                    </div>
                    <div>
                        <div class="hero-stat-num">99.9%</div>
                        <div class="hero-stat-lbl">Uptime Guarantee</div>
                    </div>
                </div>
            </div>

            <%-- RIGHT – dashboard card --%>
            <div class="hero-right">
                <div class="hero-card">
                    <div class="hero-card-head">
                        <span class="hero-card-title">Cloud Infrastructure</span>
                        <span class="hero-status"><span class="hero-status-dot"></span>All Systems Operational</span>
                    </div>
                    <div class="dash-list">
                        <div class="dash-item">
                            <div class="dash-icon">
                                <svg viewBox="0 0 24 24"><path d="M19 18H6c-1.7 0-3-1.3-3-3 0-1.4 1-2.7 2.4-2.9C5.1 9.6 7.3 8 10 8c2.2 0 4.1 1.2 5 3 2.2.2 4 2 4 4.2 0 2.2-1.8 4-4 4z"/></svg>
                            </div>
                            <div>
                                <div class="dash-name">Cloud Migration</div>
                                <div class="dash-sub">AWS &middot; Azure &middot; GCP</div>
                            </div>
                            <span class="dash-badge">Active</span>
                        </div>
                        <div class="dash-item">
                            <div class="dash-icon">
                                <svg viewBox="0 0 24 24"><rect x="2" y="3" width="20" height="14" rx="2"/><path d="M8 21h8M12 17v4"/></svg>
                            </div>
                            <div>
                                <div class="dash-name">Infrastructure Setup</div>
                                <div class="dash-sub">Scalable Architecture</div>
                            </div>
                            <span class="dash-badge">Active</span>
                        </div>
                        <div class="dash-item">
                            <div class="dash-icon">
                                <svg viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                            </div>
                            <div>
                                <div class="dash-name">Security &amp; Compliance</div>
                                <div class="dash-sub">Zero-trust framework</div>
                            </div>
                            <span class="dash-badge">Active</span>
                        </div>
                        <div class="dash-item">
                            <div class="dash-icon">
                                <svg viewBox="0 0 24 24"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>
                            </div>
                            <div>
                                <div class="dash-name">Monitoring &amp; Optimization</div>
                                <div class="dash-sub">Real-time performance</div>
                            </div>
                            <span class="dash-badge">Active</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%-- ══════════ WHAT IS CLOUD ENGINEERING ══════════ --%>
    <section class="pg-section what-section">
        <div class="pg-wrap">
            <div class="what-grid">
                <div class="what-img-wrap">
                    <img class="what-img" src="https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&q=80" alt="Cloud Engineering">
                    <div class="what-badge">
                        <div class="what-badge-icon">
                            <svg viewBox="0 0 24 24"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg>
                        </div>
                        <div>
                            <strong>60% Faster</strong>
                            <span>Deployment than on-premise</span>
                        </div>
                    </div>
                </div>
                <div class="what-content">
                    <div class="sec-label">What is Cloud Engineering?</div>
                    <h2 class="sec-title">Design, Build &amp; Manage <span>Cloud Infrastructure</span></h2>
                    <p>Cloud engineering involves designing, building, and managing cloud-based infrastructure and applications. It helps businesses transition from traditional, legacy systems to scalable, flexible, and cost-efficient cloud environments.</p>
                    <p>With professional cloud engineering services, companies can dramatically improve performance, ensure enterprise-grade security, and scale operations to match business demand — without the overhead of managing physical hardware.</p>
                    <div class="what-points">
                        <div class="what-pt"><div class="what-dot"></div>AWS, Azure &amp; GCP expertise</div>
                        <div class="what-pt"><div class="what-dot"></div>Zero-downtime migration</div>
                        <div class="what-pt"><div class="what-dot"></div>Microservices architecture</div>
                        <div class="what-pt"><div class="what-dot"></div>CI/CD pipeline setup</div>
                        <div class="what-pt"><div class="what-dot"></div>Container orchestration</div>
                        <div class="what-pt"><div class="what-dot"></div>24/7 monitoring &amp; support</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%-- ══════  <h3>Cost Optimization</h3>
                    <p>Replace capital expenditure with flexible operational costs — pay only for what you use.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#128274;</span>
                    <h3>Enhanced Security</h3>
                    <p>Enterprise-grade encryption, identity management, and compliance frameworks built-in.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#128640;</span>
                    <h3>Faster Deployment</h3>
                    <p>Deploy applications in hours, not weeks. CI/CD pipelines cut release cycles dramatically.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#128202;</span>
                    <h3>High Availability</h3>
                    <p>Multi-region redundancy and automatic failover ensure 99.9%+ uptime for your services.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#127760;</span>
                    <h3>Global Reach</h3>
                    <p>Serve customers worldwide with low latency via distributed cloud regions and edge nodes.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#129309;</span>
                    <h3>Team Collaboration</h3>
                    <p>Enable remote teams with cloud-native development environments and shared workspaces.</p>
                </div>
                <div class="why-card">
                    <span class="why-emoji">&#128200;</span>
                    <h3>Business Agility</h3>
                    <p>Rapidly experiment, iterate, and launch new products without infrastructure bottlenecks.</p>
                </div>
            </div>
        </div>
    </section>

    <%-- ══════════ SERVICES ══════════ --%>
    <section class="pg-section svc-section">
        <div class="pg-wrap">
            <div class="center">
                <div class="sec-label">Our Services</div>
                <h2 class="sec-title">End-to-End <span>Cloud Engineering Services</span></h2>
                <p class="sec-sub">Comprehensive cloud solutions — from migration and infrastructure setup to optimization and security — tailored to your business needs.</p>
            </div>
            <div class="svc-grid" id="svcGrid">

                <%-- Service 1 --%>
                <div class="svc-card" id="svc-migration">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><path d="M19 18H6c-1.7 0-3-1.3-3-3 0-1.4 1-2.7 2.4-2.9C5.1 9.6 7.3 8 10 8c2.2 0 4.1 1.2 5 3 2.2.2 4 2 4 4.2 0 2.2-1.8 4-4 4z"/></svg>
                        </div>
                        <h3>Cloud Migration</h3>
                        <p>Seamlessly move your applications, data, and workloads to the cloud with zero downtime.</p>
                        <div class="svc-features">
                            <div class="svc-feat">Move applications to cloud platforms</div>
                            <div class="svc-feat">Secure data migration</div>
                            <div class="svc-feat">Zero downtime transition</div>
                            <div class="svc-feat">Legacy system modernization</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('migration')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=800&q=80" alt="Cloud Migration">
                        <div>
                            <h4>Cloud Migration</h4>
                            <p>Our cloud migration service uses proven methodologies to assess, plan, and execute your move to AWS, Azure, or GCP. We handle everything from initial workload analysis to final cutover — ensuring data integrity, security, and continuity throughout.</p>
                            <p>Post-migration, we optimize your environment for performance and cost, implement monitoring, and provide handover training so your team is fully equipped.</p>
                            <button class="close-btn" onclick="toggleSvc('migration')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Service 2 --%>
                <div class="svc-card" id="svc-infra">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/></svg>
                        </div>
                        <h3>Cloud Infrastructure Setup</h3>
                        <p>Design and deploy robust, scalable cloud architectures on AWS, Azure, or Google Cloud.</p>
                        <div class="svc-features">
                            <div class="svc-feat">AWS, Azure, GCP configuration</div>
                            <div class="svc-feat">Auto-scaling architecture</div>
                            <div class="svc-feat">Load balancing &amp; CDN</div>
                            <div class="svc-feat">Infrastructure as Code (IaC)</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('infra')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&q=80" alt="Infrastructure">
                        <div>
                            <h4>Cloud Infrastructure Setup</h4>
                            <p>We architect cloud environments tailored to your workloads — high-availability web infrastructure, big data platforms, or containerized microservices environments. Every setup is built with security, redundancy, and cost efficiency in mind.</p>
                            <p>Our Infrastructure as Code approach using Terraform, CloudFormation, or Bicep ensures your environment is reproducible, version-controlled, and easily managed.</p>
                            <button class="close-btn" onclick="toggleSvc('infra')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Service 3 --%>
                <div class="svc-card" id="svc-appdev">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><path d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"/></svg>
                        </div>
                        <h3>Cloud Application Development</h3>
                        <p>Build modern, cloud-native applications with microservices architecture and serverless computing.</p>
                        <div class="svc-features">
                            <div class="svc-feat">Cloud-native applications</div>
                            <div class="svc-feat">Microservices &amp; Docker</div>
                            <div class="svc-feat">Serverless functions</div>
                            <div class="svc-feat">REST &amp; GraphQL APIs</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('appdev')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=800&q=80" alt="App Development">
                        <div>
                            <h4>Cloud Application Development</h4>
                            <p>We develop cloud-native applications designed from the ground up to leverage the full power of cloud platforms — elastic scaling, managed services, and event-driven architecture with CI/CD from day one.</p>
                            <p>Whether you need a SaaS platform, enterprise application, or mobile backend, our engineers deliver production-ready, well-documented code your team can maintain and evolve.</p>
                            <button class="close-btn" onclick="toggleSvc('appdev')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Service 4 --%>
                <div class="svc-card" id="svc-optim">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="3"/><path d="M12 2v4M12 18v4M4.93 4.93l2.83 2.83M16.24 16.24l2.83 2.83M2 12h4M18 12h4M4.93 19.07l2.83-2.83M16.24 7.76l2.83-2.83"/></svg>
                        </div>
                        <h3>Cloud Optimization</h3>
                        <p>Reduce cloud spend, eliminate waste, and maximize performance with intelligent resource management.</p>
                        <div class="svc-features">
                            <div class="svc-feat">Cloud cost analysis &amp; reduction</div>
                            <div class="svc-feat">Right-sizing workloads</div>
                            <div class="svc-feat">Reserved instance planning</div>
                            <div class="svc-feat">Performance tuning</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('optim')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=800&q=80" alt="Optimization">
                        <div>
                            <h4>Cloud Optimization</h4>
                            <p>Many organizations overspend on cloud by 30-40%. Our optimization service conducts a thorough analysis of your cloud usage, identifies waste and inefficiencies, and implements changes that immediately reduce your monthly bill.</p>
                            <p>We use tools like AWS Cost Explorer, Azure Advisor, and GCP Recommender alongside custom scripts to continuously monitor and optimize your environment over time.</p>
                            <button class="close-btn" onclick="toggleSvc('optim')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Service 5 --%>
                <div class="svc-card" id="svc-security">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                        </div>
                        <h3>Cloud Security &amp; Compliance</h3>
                        <p>Protect your data and meet regulatory requirements with comprehensive cloud security frameworks.</p>
                        <div class="svc-features">
                            <div class="svc-feat">Zero-trust security model</div>
                            <div class="svc-feat">IAM &amp; access controls</div>
                            <div class="svc-feat">Compliance (GDPR, SOC2, HIPAA)</div>
                            <div class="svc-feat">Security monitoring &amp; SIEM</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('security')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1563986768609-322da13575f3?w=800&q=80" alt="Security">
                        <div>
                            <h4>Cloud Security &amp; Compliance</h4>
                            <p>We implement enterprise-grade security across your cloud infrastructure — from identity and access management to network security, encryption at rest and in transit, and vulnerability management following CIS Benchmarks and NIST frameworks.</p>
                            <p>Our compliance specialists help you meet GDPR, SOC 2, HIPAA, and PCI-DSS requirements, providing the documentation and controls auditors need.</p>
                            <button class="close-btn" onclick="toggleSvc('security')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Service 6 --%>
                <div class="svc-card" id="svc-monitor">
                    <div class="svc-front">
                        <div class="svc-icon">
                            <svg viewBox="0 0 24 24"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>
                        </div>
                        <h3>Monitoring &amp; Managed Services</h3>
                        <p>24/7 infrastructure monitoring, incident response, and ongoing managed cloud operations.</p>
                        <div class="svc-features">
                            <div class="svc-feat">Real-time monitoring dashboards</div>
                            <div class="svc-feat">Automated alerting &amp; response</div>
                            <div class="svc-feat">Performance analytics</div>
                            <div class="svc-feat">Capacity planning</div>
                        </div>
                        <button class="svc-more-btn" onclick="toggleSvc('monitor')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="svc-detail">
                        <img src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=800&q=80" alt="Monitoring">
                        <div>
                            <h4>Monitoring &amp; Managed Services</h4>
                            <p>Our managed cloud services team acts as an extension of your engineering team — proactively monitoring your infrastructure, responding to incidents, and continuously improving your environment using tools like Datadog, Grafana, and CloudWatch.</p>
                            <p>Monthly reporting, capacity reviews, and quarterly roadmaps ensure your cloud environment always aligns with your growing business needs.</p>
                            <button class="close-btn" onclick="toggleSvc('monitor')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <%-- ══════════ PROCESS ══════════ --%>
    <section class="pg-section proc-section">
        <div class="pg-wrap">
            <div class="center">
                <div class="sec-label">Our Process</div>
                <h2 class="sec-title">Our Cloud Engineering <span>Process</span></h2>
                <p class="sec-sub">A structured, proven approach that delivers secure, scalable, and high-performance cloud solutions — on time and within budget.</p>
            </div>
            <div class="proc-grid">
                <div class="proc-step">
                    <div class="proc-num">1</div>
                    <h3>Requirement Analysis</h3>
                    <p>Understand your business goals, existing infrastructure, technical constraints, and compliance requirements.</p>
                </div>
                <div class="proc-step">
                    <div class="proc-num">2</div>
                    <h3>Cloud Strategy Planning</h3>
                    <p>Design a tailored cloud roadmap — selecting the right providers, services, and architecture patterns for your needs.</p>
                </div>
                <div class="proc-step">
                    <div class="proc-num">3</div>
                    <h3>Infrastructure Setup</h3>
                    <p>Build and configure your cloud environment using Infrastructure as Code for reliability and repeatability.</p>
                </div>
                <div class="proc-step">
                    <div class="proc-num">4</div>
                    <h3>Migration &amp; Deployment</h3>
                    <p>Execute zero-downtime migration and CI/CD-powered deployments with rigorous testing at each stage.</p>
                </div>
                <div class="proc-step">
                    <div class="proc-num">5</div>
                    <h3>Security Hardening</h3>
                    <p>Apply security baselines, IAM policies, encryption, and compliance controls before going live.</p>
                </div>
                <div class="proc-step">
                    <div class="proc-num">6</div>
                    <h3>Monitoring &amp; Optimization</h3>
                    <p>Set up observability, automate alerts, and continuously tune performance and costs post-launch.</p>
                </div>
            </div>
        </div>
    </section>

    <%-- ══════════ INDUSTRIES ══════════ --%>
    <section class="pg-section ind-section">
        <div class="pg-wrap">
            <div class="center">
                <div class="sec-label">Industries We Serve</div>
                <h2 class="sec-title">Cloud Solutions for <span>Every Industry</span></h2>
                <p class="sec-sub">From fintech to ecommerce — we bring deep domain expertise to every cloud engagement.</p>
            </div>
            <div class="ind-grid" id="indGrid">

                <%-- Industry 1 --%>
                <div class="ind-card" id="ind-fintech">
                    <div class="ind-front">
                        <div class="ind-icon">
                            <svg viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 14.93V18h-2v-1.07C9.29 16.52 8 15.38 8 14h2c0 .55.9 1 2 1s2-.45 2-1c0-.57-.48-1-2-1-2.21 0-4-1.12-4-2.5 0-1.21 1.29-2.28 3-2.43V7h2v1.07C14.71 8.48 16 9.62 16 11h-2c0-.55-.9-1-2-1s-2 .45-2 1c0 .57.48 1 2 1 2.21 0 4 1.12 4 2.5 0 1.21-1.29 2.28-3 2.43z"/></svg>
                        </div>
                        <div>
                            <h3>Financial Services &amp; Fintech</h3>
                            <p>Engineer secure, high-performance fintech platforms with real-time data processing, fraud detection, and regulatory compliance.</p>
                        </div>
                        <button class="svc-more-btn" onclick="toggleInd('fintech')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="ind-detail">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=800&q=80" alt="Financial Services">
                        <div>
                            <h4>Financial Services &amp; Fintech</h4>
                            <p>We help financial institutions modernize legacy systems, implement PCI-DSS compliant cloud infrastructure, and build real-time payment systems that process millions of transactions. Our fintech expertise spans digital banking, lending platforms, and investment tools.</p>
                            <p>Our cloud architectures include advanced fraud detection using ML, real-time analytics, blockchain integration, and automated regulatory reporting — all built on secure, audit-ready foundations.</p>
                            <button class="close-btn" onclick="toggleInd('fintech')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Industry 2 --%>
                <div class="ind-card" id="ind-ecom">
                    <div class="ind-front">
                        <div class="ind-icon">
                            <svg viewBox="0 0 24 24"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4zM3 6h18M16 10a4 4 0 0 1-8 0"/></svg>
                        </div>
                        <div>
                            <h3>Ecommerce &amp; Retail</h3>
                            <p>Build elastic ecommerce platforms that handle Black Friday traffic spikes with zero downtime and blazing-fast performance.</p>
                        </div>
                        <button class="svc-more-btn" onclick="toggleInd('ecom')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="ind-detail">
                        <img src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=800&q=80" alt="Ecommerce">
                        <div>
                            <h4>Ecommerce &amp; Retail</h4>
                            <p>Our ecommerce cloud solutions are built to scale instantly during peak demand. We architect platforms using auto-scaling, CDN optimization, and database sharding to ensure consistent performance at any volume — from routine days to Black Friday surges.</p>
                            <p>We integrate with leading ecommerce platforms and build custom storefronts, recommendation engines, inventory systems, and analytics dashboards that give retailers a competitive edge.</p>
                            <button class="close-btn" onclick="toggleInd('ecom')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

                <%-- Industry 3 --%>
                <div class="ind-card" id="ind-saas">
                    <div class="ind-front">
                        <div class="ind-icon">
                            <svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/></svg>
                        </div>
                        <div>
                            <h3>SaaS &amp; Technology</h3>
                            <p>Launch and scale SaaS products with multi-tenant architecture, usage-based billing, and global deployment.</p>
                        </div>
                        <button class="svc-more-btn" onclick="toggleInd('saas')">
                            Learn More
                            <svg viewBox="0 0 24 24"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                        </button>
                    </div>
                    <div class="ind-detail">
                        <img src="https://images.unsplash.com/photo-1504868584819-f8e8b4b6d7e3?w=800&q=80" alt="SaaS">
                        <div>
                            <h4>SaaS &amp; Technology</h4>
                            <p>We help SaaS companies build the cloud backbone they need to grow — from architecting multi-tenant platforms that support thousands of customers to implementing feature flagging, A/B testing infrastructure, and usage-based billing systems.</p>
                            <p>Our DevOps practices help SaaS teams ship faster with automated testing, deployment pipelines, and self-healing infrastructure that lets engineers focus on product, not operations.</p>
                            <button class="close-btn" onclick="toggleInd('saas')">Close &#10005;</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <%-- ══════════ STATS BANNER ══════════ --%>
    <div class="stats-banner">
        <div class="stats-inner">
            <div><div class="stat-num">500+</div><div class="stat-lbl">Projects Delivered</div></div>
            <div><div class="stat-num">40%</div><div class="stat-lbl">Avg. Cost Reduction</div></div>
            <div><div class="stat-num">99.9%</div><div class="stat-lbl">Uptime Guaranteed</div></div>
            <div><div class="stat-num">6mo</div><div class="stat-lbl">Starting Contract</div></div>
        </div>
    </div>

    <%-- ══════════ WHY CHOOSE US ══════════ --%>
    <section class="pg-section results-section">
        <div class="pg-wrap">
            <div class="center">
                <div class="sec-label">Why Choose Us</div>
                <h2 class="sec-title">Why Businesses <span>Choose Our Services</span></h2>
                <p class="sec-sub">Our cloud engineering services provide the talent, tools, and domain expertise organizations need — delivering measurable results from day one.</p>
            </div>
            <div class="results-grid">
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/></svg></div>
                    <div><h3>Cloud Experts</h3><p>Certified specialists across AWS, Azure, and GCP with deep domain expertise.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg></div>
                    <div><h3>Fast Deployment</h3><p>From planning to production in weeks using proven agile frameworks.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg></div>
                    <div><h3>Security First</h3><p>Enterprise security and compliance built into every solution from the ground up.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/></svg></div>
                    <div><h3>Scalable Architecture</h3><p>Architectures that grow with your business — no costly re-platforming later.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg></div>
                    <div><h3>Flexible Engagements</h3><p>Time &amp; Materials model with short contracts from 6 months — maximum flexibility.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg></div>
                    <div><h3>24/7 Monitoring</h3><p>Round-the-clock observability, automated alerts, and proactive incident resolution.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg></div>
                    <div><h3>Knowledge Transfer</h3><p>Comprehensive training and documentation so your team owns the solution.</p></div>
                </div>
                <div class="res-card">
                    <div class="res-icon"><svg viewBox="0 0 24 24"><polyline points="9 11 12 14 22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/></svg></div>
                    <div><h3>Proven Track Record</h3><p>500+ successful cloud projects delivered across 20+ industries worldwide.</p></div>
                </div>
            </div>
        </div>
    </section>

    <%-- ══════════ FAQ ══════════ --%>
    <section class="pg-section faq-section">
        <div class="pg-wrap">
            <div class="center">
                <div class="sec-label">FAQs</div>
                <h2 class="sec-title">Cloud Engineering Services <span>FAQ</span></h2>
                <p class="sec-sub">Common questions about our cloud engineering services, delivery model, and process.</p>
            </div>
            <div class="faq-wrap">

                <div class="faq-item">
                    <button class="faq-btn" onclick="toggleFaq(this)">
                        What is a cloud engineering service?
                        <span class="faq-arr"><svg viewBox="0 0 24 24"><path d="M6 9l6 6 6-6"/></svg></span>
                    </button>
                    <div class="faq-body">
                        <div class="faq-body-inner">Cloud engineering is a specialized service that gives organizations access to expert cloud architects, engineers, and consultants on a flexible basis. We design, build, migrate, and optimize cloud infrastructure on AWS, Azure, and GCP — enabling businesses to leverage modern cloud technology without building a full in-house team. Our services include knowledge transfers to ensure your internal team grows alongside the engagement.</div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-btn" onclick="toggleFaq(this)">
                        What cloud platforms do you support?
                        <span class="faq-arr"><svg viewBox="0 0 24 24"><path d="M6 9l6 6 6-6"/></svg></span>
                    </button>
                    <div class="faq-body">
                        <div class="faq-body-inner">We have certified engineers and architects across all three major cloud providers: Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP). We also support multi-cloud and hybrid cloud strategies, helping you leverage the best services from each provider based on your specific workloads and requirements.</div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-btn" onclick="toggleFaq(this)">
                        Why use a Time and Materials model with short contract periods?
                        <span class="faq-arr"><svg viewBox="0 0 24 24"><path d="M6 9l6 6 6-6"/></svg></span>
                    </button>
                    <div class="faq-body">
                        <div class="faq-body-inner">The Time and Materials model provides maximum flexibility — you scale resources up or down based on project needs without long-term financial commitments. Short contract periods starting from 6 months let you adapt quickly to changing requirements, test new technologies, and minimize risk. This model is ideal for projects with evolving scope and organizations that want to stay agile.</div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-btn" onclick="toggleFaq(this)">
                        How long does a typical cloud migration take?
                        <span class="faq-arr"><svg viewBox="0 0 24 24"><path d="M6 9l6 6 6-6"/></svg></span>
                    </button>
                    <div class="faq-body">
                        <div class="faq-body-inner">Migration timelines vary based on the complexity of your existing infrastructure and the volume of data and applications involved. Simple migrations can be completed in 4 to 8 weeks. Complex enterprise migrations with many interdependencies typically take 3 to 6 months. We always start with a detailed assessment and provide a realistic timeline before any work begins.</div>
                    </div>
                </div>

              

               

            </div>
        </div>
    </section>

    <%-- ══════════ CTA STRIP ══════════ --%>
    <div class="cta-strip">
        <h2>Ready to Accelerate Your Cloud Journey?</h2>
        <p>Talk to our cloud engineers today. We will assess your current infrastructure and design a tailored cloud strategy that delivers real, measurable results.</p>
        <div class="cta-btns">
            <button class="btn-primary">
                Schedule a Free Consultation
                <svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
            </button>
            <button class="btn-outline">View Case Studies</button>
        </div>    </div>

    <jsp:include page="../../includes/footer/footer.jsp" />

    <script type="text/javascript">
        // Service card toggle
        var openSvc = null;
        function toggleSvc(id) {
            var card = document.getElementById('svc-' + id);
            if (!card) return;
            if (openSvc && openSvc !== card) {
                openSvc.classList.remove('expanded');
            }
            if (card.classList.contains('expanded')) {
                card.classList.remove('expanded');
                openSvc = null;
            } else {
                card.classList.add('expanded');
                openSvc = card;
                setTimeout(function() { card.scrollIntoView({ behavior: 'smooth', block: 'center' }); }, 100);
            }
        }

        // Industry card toggle
        var openInd = null;
        function toggleInd(id) {
            var card = document.getElementById('ind-' + id);
            if (!card) return;
            if (openInd && openInd !== card) {
                openInd.classList.remove('expanded');
            }
            if (card.classList.contains('expanded')) {
                card.classList.remove('expanded');
                openInd = null;
            } else {
                card.classList.add('expanded');
                openInd = card;
                setTimeout(function() { card.scrollIntoView({ behavior: 'smooth', block: 'center' }); }, 100);
            }
        }

        // FAQ toggle
        function toggleFaq(btn) {
            var item = btn.parentElement;
            var all = document.querySelectorAll('.faq-item');
            for (var i = 0; i < all.length; i++) {
                if (all[i] !== item) all[i].classList.remove('open');
            }
            item.classList.toggle('open');
        }

        // Close expanded cards on outside click
        document.addEventListener('click', function(e) {
            if (!e.target.closest('.svc-card') && openSvc) {
                openSvc.classList.remove('expanded');
                openSvc = null;
            }
            if (!e.target.closest('.ind-card') && openInd) {
                openInd.classList.remove('expanded');
                openInd = null;
            }
        });
    </script>
</body>
</html>
