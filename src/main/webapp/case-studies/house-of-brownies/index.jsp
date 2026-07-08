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
    <title>House of Brownies Case Study | B2B Bakery Supply Platform</title>
    <meta name="description" content="How we built House of Brownies — a pan-India B2B bakery supply platform connecting premium brownie & blondie production with restaurants, cafés, IT parks, and bulk catering partners.">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;0,900;1,400;1,700&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/case-study.css?v=1.5">
    <style>
        /* ── HOUSE OF BROWNIES – CUSTOM THEME ── */
        :root {
            --hob-espresso:   #1a0f08;
            --hob-dark:       #2c1a0e;
            --hob-brown:      #5c3317;
            --hob-caramel:    #c8793a;
            --hob-gold:       #e9a84c;
            --hob-cream:      #fdf6ed;
            --hob-warm-white: #fff9f2;
            --hob-text:       #3b200f;
            --hob-muted:      #7a5842;
            --hob-card-bg:    #ffffff;
            --hob-border:     rgba(92,51,23,0.12);
        }

        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'DM Sans', sans-serif;
            background: var(--hob-cream);
            color: var(--hob-text);
            overflow-x: hidden;
        }
		.nav-glass{
			background: #ffffff;
		}
        /* ── HERO ── */
        .hob-hero {
            position: relative;
            background: var(--hob-espresso);
            min-height: 92vh;
            display: flex;
            align-items: center;
            overflow: hidden;
            padding: 7rem 0 5rem;
        }

        .hob-hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background:
                radial-gradient(ellipse 70% 60% at 80% 40%, rgba(200,121,58,0.18) 0%, transparent 65%),
                radial-gradient(ellipse 50% 80% at -10% 60%, rgba(92,51,23,0.6) 0%, transparent 60%);
        }

        /* decorative crumble dots */
        .hob-hero::after {
            content: '✦ ✦ ✦';
            position: absolute;
            top: 2.5rem;
            left: 50%;
            transform: translateX(-50%);
            color: rgba(233,168,76,0.25);
            font-size: 1.4rem;
            letter-spacing: 2rem;
        }

        .hob-container {
            width: 100%;
            max-width: 1260px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .hob-hero-inner {
            position: relative;
            z-index: 2;
            display: grid;
            grid-template-columns: 1fr 420px;
            gap: 4rem;
            align-items: center;
        }

        .hob-hero-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
            margin-bottom: 1.8rem;
        }

        .hob-hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            padding: 0.35rem 0.9rem;
            border: 1px solid rgba(233,168,76,0.4);
            border-radius: 2rem;
            font-size: 0.78rem;
            font-weight: 500;
            color: var(--hob-gold);
            letter-spacing: 0.04em;
            text-transform: uppercase;
        }

        .hob-hero-title {
            font-family: 'Playfair Display', serif;
            font-size: clamp(3rem, 6vw, 5.5rem);
            font-weight: 700;
            line-height: 1.05;
            color: var(--hob-cream);
            margin-bottom: 1.6rem;
        }

        .hob-hero-title span {
            color: var(--hob-gold);
            font-style: italic;
        }

        .hob-hero-tagline {
            font-size: 1.05rem;
            color: rgba(253,246,237,0.7);
            line-height: 1.75;
            margin-bottom: 2.4rem;
            max-width: 520px;
        }

        .hob-hero-meta {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
        }

        .hob-meta-item {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(233,168,76,0.15);
            border-radius: 0.75rem;
            padding: 0.85rem 1rem;
        }

        .hob-meta-item i {
            color: var(--hob-gold);
            font-size: 1rem;
            width: 20px;
            flex-shrink: 0;
        }

        .hob-meta-label {
            display: block;
            font-size: 0.68rem;
            color: rgba(253,246,237,0.45);
            text-transform: uppercase;
            letter-spacing: 0.06em;
        }

        .hob-meta-value {
            display: block;
            font-size: 0.9rem;
            font-weight: 600;
            color: var(--hob-cream);
        }

        /* hero right – decorative brownie card */
        .hob-hero-visual {
            position: relative;
        }

        .hob-visual-card {
            background: linear-gradient(145deg, #3b1f0b, #2c1a0e);
            border: 1px solid rgba(233,168,76,0.2);
            border-radius: 1.5rem;
            padding: 2.2rem;
            position: relative;
            overflow: hidden;
        }

        .hob-visual-card::before {
            content: '';
            position: absolute;
            top: -40px; right: -40px;
            width: 180px; height: 180px;
            background: radial-gradient(circle, rgba(200,121,58,0.3), transparent 70%);
            border-radius: 50%;
        }

        .hob-visual-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.1rem;
            color: var(--hob-gold);
            margin-bottom: 1.4rem;
            font-style: italic;
        }

        .hob-stat-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
            margin-bottom: 1rem;
        }

        .hob-stat {
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(233,168,76,0.12);
            border-radius: 1rem;
            padding: 1.2rem;
            text-align: center;
        }

        .hob-stat-num {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            font-weight: 700;
            color: var(--hob-gold);
            line-height: 1;
        }

        .hob-stat-lbl {
            font-size: 0.75rem;
            color: rgba(253,246,237,0.5);
            margin-top: 0.3rem;
        }

        .hob-supply-chain {
            margin-top: 1.2rem;
        }

        .hob-supply-step {
            display: flex;
            align-items: center;
            gap: 0.7rem;
            padding: 0.6rem 0;
            border-bottom: 1px solid rgba(233,168,76,0.08);
            font-size: 0.83rem;
            color: rgba(253,246,237,0.65);
        }

        .hob-supply-step:last-child { border-bottom: none; }

        .hob-supply-step i {
            color: var(--hob-caramel);
            width: 16px;
        }

        /* ── MAIN TWO-COL ── */
        .hob-main-section {
            padding: 6rem 0;
            background: var(--hob-warm-white);
        }

        .hob-layout {
            display: grid;
            grid-template-columns: 1fr 360px;
            gap: 3.5rem;
            align-items: start;
        }

        /* content blocks */
        .hob-block {
            margin-bottom: 3.5rem;
        }

        .hob-block:last-child { margin-bottom: 0; }

        .hob-block-label {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.72rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: var(--hob-caramel);
            margin-bottom: 0.6rem;
        }

        .hob-block-title {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            font-weight: 700;
            color: var(--hob-espresso);
            margin-bottom: 1.4rem;
            line-height: 1.2;
        }

        .hob-lead {
            font-size: 1.05rem;
            line-height: 1.8;
            color: var(--hob-muted);
            margin-bottom: 1.2rem;
        }

        .hob-overview-box {
            background: var(--hob-cream);
            border-left: 3px solid var(--hob-caramel);
            border-radius: 0 0.75rem 0.75rem 0;
            padding: 1.4rem 1.6rem;
            margin-top: 1rem;
        }

        .hob-overview-box p {
            font-size: 0.95rem;
            line-height: 1.8;
            color: var(--hob-muted);
            margin-bottom: 0.8rem;
        }

        .hob-overview-box p:last-child { margin-bottom: 0; }

        /* tech stack */
        .hob-tech-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.2rem;
            margin-top: 1.4rem;
        }

        .hob-tech-cat {
            background: var(--hob-cream);
            border: 1px solid var(--hob-border);
            border-radius: 1rem;
            padding: 1.4rem;
        }

        .hob-tech-cat-head {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            margin-bottom: 1rem;
        }

        .hob-tech-cat-head i {
            color: var(--hob-caramel);
            font-size: 1rem;
        }

        .hob-tech-cat-head h4 {
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--hob-espresso);
            text-transform: uppercase;
            letter-spacing: 0.06em;
        }

        .hob-tech-list {
            list-style: none;
        }

        .hob-tech-list li {
            font-size: 0.88rem;
            color: var(--hob-muted);
            padding: 0.3rem 0;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .hob-tech-list li::before {
            content: '';
            width: 5px; height: 5px;
            border-radius: 50%;
            background: var(--hob-caramel);
            flex-shrink: 0;
        }

        /* ── SIDEBAR ── */
        .hob-sidebar-sticky {
            position: sticky;
            top: 5rem;
            display: flex;
            flex-direction: column;
            gap: 1.4rem;
        }

        .hob-sidebar-card {
            background: var(--hob-card-bg);
            border: 1px solid var(--hob-border);
            border-radius: 1.25rem;
            padding: 1.6rem;
        }

        .hob-sidebar-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.05rem;
            color: var(--hob-espresso);
            margin-bottom: 1.2rem;
            padding-bottom: 0.7rem;
            border-bottom: 1px solid var(--hob-border);
        }

        .hob-info-list { display: flex; flex-direction: column; gap: 0.7rem; }

        .hob-info-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 0.85rem;
        }

        .hob-info-label { color: var(--hob-muted); }

        .hob-info-value { font-weight: 600; color: var(--hob-espresso); }

        .hob-status-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            background: #edfaf3;
            color: #1a7a4a;
            padding: 0.25rem 0.7rem;
            border-radius: 2rem;
            font-size: 0.78rem;
            font-weight: 600;
        }

        .hob-status-dot {
            width: 7px; height: 7px;
            border-radius: 50%;
            background: #22c55e;
            animation: hob-pulse 1.6s ease-in-out infinite;
        }

        @keyframes hob-pulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.5; transform: scale(0.85); }
        }

        .hob-live-card {
            background: linear-gradient(135deg, #2c1a0e, #3b1f0b);
            border-color: rgba(233,168,76,0.2);
        }

        .hob-live-card .hob-sidebar-title {
            color: var(--hob-gold);
            border-bottom-color: rgba(233,168,76,0.15);
        }

        .hob-live-desc {
            font-size: 0.87rem;
            color: rgba(253,246,237,0.6);
            line-height: 1.6;
            margin-bottom: 1.1rem;
        }

        .hob-live-btn {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            background: var(--hob-caramel);
            color: #fff;
            text-decoration: none;
            padding: 0.75rem 1.2rem;
            border-radius: 0.75rem;
            font-size: 0.88rem;
            font-weight: 600;
            transition: background 0.2s, transform 0.15s;
        }

        .hob-live-btn:hover {
            background: var(--hob-gold);
            transform: translateY(-1px);
        }

        .hob-services-list { list-style: none; display: flex; flex-direction: column; gap: 0.6rem; }

        .hob-services-list li {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            font-size: 0.87rem;
            color: var(--hob-muted);
        }

        .hob-services-list li i {
            color: var(--hob-caramel);
            font-size: 0.85rem;
        }

        /* ── PLATFORM FEATURES ── */
        .hob-features-section {
            padding: 6rem 0;
            background: var(--hob-espresso);
            position: relative;
            overflow: hidden;
        }

        .hob-features-section::before {
            content: '';
            position: absolute;
            inset: 0;
            background: repeating-linear-gradient(
                45deg,
                rgba(255,255,255,0.012) 0px,
                rgba(255,255,255,0.012) 1px,
                transparent 1px,
                transparent 40px
            );
        }

        .hob-section-head {
            text-align: center;
            margin-bottom: 3.5rem;
            position: relative;
            z-index: 1;
        }

        .hob-section-eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.12em;
            color: var(--hob-gold);
            margin-bottom: 0.8rem;
        }

        .hob-section-title {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2rem, 4vw, 3rem);
            font-weight: 700;
            color: var(--hob-cream);
            line-height: 1.15;
        }

        .hob-section-title em {
            color: var(--hob-gold);
            font-style: italic;
        }

        .hob-section-sub {
            font-size: 1rem;
            color: rgba(253,246,237,0.55);
            margin-top: 0.7rem;
        }

        .hob-features-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1.2rem;
            position: relative;
            z-index: 1;
        }

        .hob-feat-card {
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(233,168,76,0.12);
            border-radius: 1.2rem;
            padding: 1.6rem 1.4rem;
            position: relative;
            overflow: hidden;
            transition: border-color 0.25s, background 0.25s, transform 0.2s;
        }

        .hob-feat-card:hover {
            border-color: rgba(233,168,76,0.35);
            background: rgba(255,255,255,0.07);
            transform: translateY(-3px);
        }

        .hob-feat-num {
            position: absolute;
            top: 1.2rem; right: 1.2rem;
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            font-weight: 700;
            color: rgba(233,168,76,0.08);
            line-height: 1;
        }

        .hob-feat-icon {
            width: 44px; height: 44px;
            border-radius: 0.75rem;
            background: rgba(200,121,58,0.15);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
            font-size: 1rem;
            color: var(--hob-gold);
        }

        .hob-feat-title {
            font-size: 0.92rem;
            font-weight: 600;
            color: var(--hob-cream);
            margin-bottom: 0.5rem;
        }

        .hob-feat-desc {
            font-size: 0.8rem;
            color: rgba(253,246,237,0.5);
            line-height: 1.65;
        }

        /* ── KEY SOLUTIONS ── */
        .hob-solutions-section {
            padding: 6rem 0;
            background: var(--hob-cream);
        }

        .hob-solutions-header {
            display: grid;
            grid-template-columns: 1fr auto;
            align-items: end;
            gap: 2rem;
            margin-bottom: 3.5rem;
        }

        .hob-solutions-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.8rem;
        }

        .hob-sol-card {
            background: var(--hob-card-bg);
            border: 1px solid var(--hob-border);
            border-radius: 1.5rem;
            padding: 2rem;
            position: relative;
            overflow: hidden;
            transition: box-shadow 0.25s, transform 0.2s;
        }

        .hob-sol-card:hover {
            box-shadow: 0 12px 40px rgba(92,51,23,0.1);
            transform: translateY(-3px);
        }

        .hob-sol-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--hob-caramel), var(--hob-gold));
        }

        .hob-sol-num {
            font-family: 'Playfair Display', serif;
            font-size: 2.8rem;
            font-weight: 700;
            color: rgba(200,121,58,0.12);
            line-height: 1;
            margin-bottom: 1rem;
        }

        .hob-sol-head {
            display: flex;
            align-items: center;
            gap: 0.85rem;
            margin-bottom: 1rem;
        }

        .hob-sol-icon {
            width: 46px; height: 46px;
            background: linear-gradient(135deg, var(--hob-brown), var(--hob-caramel));
            border-radius: 0.85rem;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.1rem;
            color: #fff;
            flex-shrink: 0;
        }

        .hob-sol-head h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.1rem;
            font-weight: 700;
            color: var(--hob-espresso);
            line-height: 1.3;
        }

        .hob-sol-desc {
            font-size: 0.88rem;
            color: var(--hob-muted);
            line-height: 1.75;
            margin-bottom: 1.2rem;
        }

        .hob-sol-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.45rem;
            margin-bottom: 1.2rem;
        }

        .hob-tag {
            padding: 0.25rem 0.7rem;
            background: rgba(200,121,58,0.1);
            border: 1px solid rgba(200,121,58,0.2);
            border-radius: 2rem;
            font-size: 0.72rem;
            font-weight: 500;
            color: var(--hob-brown);
        }

        .hob-highlights {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 0.45rem;
        }

        .hob-highlights li {
            display: flex;
            align-items: flex-start;
            gap: 0.6rem;
            font-size: 0.84rem;
            color: var(--hob-muted);
            line-height: 1.55;
        }

        .hob-highlights li i {
            color: var(--hob-caramel);
            font-size: 0.75rem;
            margin-top: 0.25rem;
            flex-shrink: 0;
        }

        /* ── VISIT BTN ── */
        .hob-visit-btn {
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            background: var(--hob-espresso);
            color: var(--hob-gold);
            text-decoration: none;
            padding: 0.85rem 1.6rem;
            border-radius: 0.85rem;
            font-size: 0.88rem;
            font-weight: 600;
            border: 1px solid rgba(233,168,76,0.3);
            transition: background 0.2s, transform 0.15s;
            white-space: nowrap;
        }

        .hob-visit-btn:hover {
            background: var(--hob-brown);
            transform: translateY(-1px);
        }

        .hob-btn-dot {
            width: 8px; height: 8px;
            border-radius: 50%;
            background: #22c55e;
            animation: hob-pulse 1.6s ease-in-out infinite;
        }

        /* ── RELATED ── */
        .hob-related-section {
            padding: 5rem 0;
            background: var(--hob-warm-white);
        }

        .hob-related-head {
            text-align: center;
            margin-bottom: 2.8rem;
        }

        .hob-related-head h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            color: var(--hob-espresso);
        }

        .hob-related-head p {
            color: var(--hob-muted);
            margin-top: 0.5rem;
        }

        .hob-related-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.8rem;
            max-width: 860px;
            margin: 0 auto;
        }

        .hob-related-card {
            text-decoration: none;
            border-radius: 1.25rem;
            overflow: hidden;
            border: 1px solid var(--hob-border);
            background: var(--hob-card-bg);
            transition: box-shadow 0.25s, transform 0.2s;
            display: block;
        }

        .hob-related-card:hover {
            box-shadow: 0 10px 35px rgba(92,51,23,0.12);
            transform: translateY(-3px);
        }

        .hob-related-img {
            position: relative;
            height: 190px;
            overflow: hidden;
        }

        .hob-related-img img {
            width: 100%; height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .hob-related-card:hover .hob-related-img img { transform: scale(1.04); }

        .hob-related-overlay {
            position: absolute;
            inset: 0;
            background: rgba(26,15,8,0.55);
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity 0.25s;
        }

        .hob-related-card:hover .hob-related-overlay { opacity: 1; }

        .hob-view-btn {
            background: var(--hob-gold);
            color: var(--hob-espresso);
            padding: 0.55rem 1.2rem;
            border-radius: 2rem;
            font-size: 0.82rem;
            font-weight: 700;
        }

        .hob-related-body {
            padding: 1.3rem 1.4rem;
        }

        .hob-related-tags {
            display: flex;
            gap: 0.4rem;
            margin-bottom: 0.6rem;
        }

        .hob-related-tags span {
            font-size: 0.7rem;
            font-weight: 600;
            color: var(--hob-caramel);
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .hob-related-body h3 {
            font-family: 'Playfair Display', serif;
            font-size: 1.1rem;
            color: var(--hob-espresso);
            margin-bottom: 0.35rem;
        }

        .hob-related-body p {
            font-size: 0.82rem;
            color: var(--hob-muted);
            line-height: 1.6;
        }

        /* ── RESPONSIVE ── */
        @media (max-width: 1024px) {
            .hob-features-grid { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width: 860px) {
            .hob-hero-inner { grid-template-columns: 1fr; }
            .hob-hero-visual { display: none; }
            .hob-layout { grid-template-columns: 1fr; }
            .hob-sidebar-sticky { position: static; }
            .hob-features-grid { grid-template-columns: repeat(2, 1fr); }
            .hob-solutions-grid { grid-template-columns: 1fr; }
            .hob-solutions-header { grid-template-columns: 1fr; }
            .hob-related-grid { grid-template-columns: 1fr; max-width: 480px; }
        }

        @media (max-width: 520px) {
            .hob-features-grid { grid-template-columns: 1fr 1fr; }
            .hob-tech-grid { grid-template-columns: 1fr; }
            .hob-hero-meta { grid-template-columns: 1fr 1fr; }
        }
    </style>
</head>
<body>

<jsp:include page="../../includes/navbar/navbar.jsp" />

    <!-- ══ HERO ══ -->
    <section class="hob-hero">
        <div class="hob-container">
            <div class="hob-hero-inner">

                <!-- LEFT -->
                <div class="hob-hero-left">
                    <div class="hob-hero-tags">
                        <span class="hob-hero-tag"><i class="fas fa-cookie-bite"></i> Brownies &amp; Blondies</span>
                        <span class="hob-hero-tag"><i class="fas fa-truck"></i> Pan-India Supply</span>
                        <span class="hob-hero-tag"><i class="fas fa-boxes"></i> Custom Pack Sizes</span>
                    </div>
                    <h1 class="hob-hero-title">
                        House of<br>
                        <span>Brownies</span>
                    </h1>
                    <p class="hob-hero-tagline">
                        Baked from Passion. Built with Love. — Supplying restaurants, cafés, IT parks,
                        corporate vendors, retail shops, and bulk catering partners across India with
                        premium brownies and blondies in custom pack sizes.
                    </p>
                    <div class="hob-hero-meta">
                        <div class="hob-meta-item">
                            <i class="fas fa-building"></i>
                            <div>
                                <span class="hob-meta-label">Company</span>
                                <span class="hob-meta-value">House of Brownies</span>
                            </div>
                        </div>
                        <div class="hob-meta-item">
                            <i class="fas fa-calendar"></i>
                            <div>
                                <span class="hob-meta-label">Completed</span>
                                <span class="hob-meta-value">2026</span>
                            </div>
                        </div>
                        <div class="hob-meta-item">
                            <i class="fas fa-clock"></i>
                            <div>
                                <span class="hob-meta-label">Duration</span>
                                <span class="hob-meta-value">4 Weeks</span>
                            </div>
                        </div>
                        <div class="hob-meta-item">
                            <i class="fas fa-users"></i>
                            <div>
                                <span class="hob-meta-label">Team</span>
                                <span class="hob-meta-value">1 Developers</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- RIGHT – Decorative visual card -->
                <div class="hob-hero-visual">
                    <div class="hob-visual-card">
                        <div class="hob-visual-title">Platform at a Glance</div>
                        <div class="hob-stat-row">
                            <div class="hob-stat">
                                <div class="hob-stat-num">B2B</div>
                                <div class="hob-stat-lbl">Supply Model</div>
                            </div>
                            <div class="hob-stat">
                                <div class="hob-stat-num">PAN</div>
                                <div class="hob-stat-lbl">India Delivery</div>
                            </div>
                            <div class="hob-stat">
                                <div class="hob-stat-num">20+</div>
                                <div class="hob-stat-lbl">SKU Variants</div>
                            </div>
                            <div class="hob-stat">
                                <div class="hob-stat-num">∞</div>
                                <div class="hob-stat-lbl">Custom Pack Sizes</div>
                            </div>
                        </div>
                        <div class="hob-supply-chain">
                            <div class="hob-supply-step"><i class="fas fa-cookie-bite"></i> Restaurants &amp; Cafés</div>
                            <div class="hob-supply-step"><i class="fas fa-building"></i> IT Parks &amp; Corporate Vendors</div>
                            <div class="hob-supply-step"><i class="fas fa-store"></i> Retail Shops &amp; Kiosks</div>
                            <div class="hob-supply-step"><i class="fas fa-utensils"></i> Bulk Catering Partners</div>
                            <div class="hob-supply-step"><i class="fas fa-gift"></i> Gift &amp; Gifting Agencies</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- ══ MAIN 2-COL ══ -->
    <section class="hob-main-section">
        <div class="hob-container">
            <div class="hob-layout">

                <!-- LEFT CONTENT -->
                <div class="hob-main-content">

                    <div class="hob-block">
                        <div class="hob-block-label"><i class="fas fa-book-open"></i> Project Overview</div>
                        <h2 class="hob-block-title">A Dedicated B2B Platform for India's Premium Bakery Segment</h2>
                        <p class="hob-lead">
                            House of Brownies is a passion-led artisan bakery that needed a professional digital
                            presence to match its growing B2B supply ambitions — reaching restaurants, cafés,
                            corporate offices, and bulk caterers across India.
                        </p>
                        <div class="hob-overview-box">
                            <p>
                                The platform was built to handle everything from product catalogue browsing and
                                custom pack-size enquiries to bulk order placement and delivery coordination.
                                B2B buyers — whether a café chain or an IT park canteen — can explore the full
                                range of brownies and blondies, request samples, and place repeat orders seamlessly.
                            </p>
                            <p>
                                Built on a robust Java backend with a warm, brand-consistent frontend, the site
                                communicates the artisan quality of every batch while offering the efficiency
                                that modern B2B buyers expect. The platform supports lead capture, WhatsApp
                                enquiry flows, and a custom order management panel for the House of Brownies team.
                            </p>
                        </div>
                    </div>

                    <div class="hob-block">
                        <div class="hob-block-label"><i class="fas fa-layer-group"></i> Technology Stack</div>
                        <h2 class="hob-block-title">Built to Scale with Every Batch</h2>
                        <p class="hob-lead">
                            A reliable, maintainable stack that keeps the platform fast, secure, and easy
                            to operate — even as order volumes and product variants grow.
                        </p>
                        <div class="hob-tech-grid">
                            <div class="hob-tech-cat">
                                <div class="hob-tech-cat-head">
                                    <i class="fas fa-server"></i>
                                    <h4>Backend</h4>
                                </div>
                                <ul class="hob-tech-list">
                                    <li>Java 17</li>
                                    <li>Apache Tomcat</li>
                                    <li>Servlets &amp; JSP</li>
                                    <li>RESTful APIs</li>
                                </ul>
                            </div>
                            <div class="hob-tech-cat">
                                <div class="hob-tech-cat-head">
                                    <i class="fas fa-laptop-code"></i>
                                    <h4>Frontend</h4>
                                </div>
                                <ul class="hob-tech-list">
                                    <li>HTML5 &amp; CSS3</li>
                                    <li>JavaScript ES6+</li>
                                    <li>Bootstrap 5</li>
                                    <li>Responsive Design</li>
                                </ul>
                            </div>
                            <div class="hob-tech-cat">
                                <div class="hob-tech-cat-head">
                                    <i class="fas fa-comments"></i>
                                    <h4>Integrations</h4>
                                </div>
                                <ul class="hob-tech-list">
                                    <li>WhatsApp Business API</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- END LEFT -->

                <!-- SIDEBAR -->
                <aside>
                    <div class="hob-sidebar-sticky">

                        <div class="hob-sidebar-card">
                            <h3 class="hob-sidebar-title">Project Information</h3>
                            <div class="hob-info-list">
                                <div class="hob-info-item"><span class="hob-info-label">Company</span><span class="hob-info-value">House of Brownies</span></div>
                                <div class="hob-info-item"><span class="hob-info-label">Industry</span><span class="hob-info-value">Artisan Bakery / B2B</span></div>
                                <div class="hob-info-item"><span class="hob-info-label">Duration</span><span class="hob-info-value">4 Weeks</span></div>
                                <div class="hob-info-item"><span class="hob-info-label">Team Size</span><span class="hob-info-value">1 Developers</span></div>
                                <div class="hob-info-item"><span class="hob-info-label">Platform</span><span class="hob-info-value">Web Application</span></div>
                                <div class="hob-info-item">
                                    <span class="hob-info-label">Status</span>
                                    <span class="hob-status-badge">
                                        <span class="hob-status-dot"></span> Live &amp; Active
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="hob-sidebar-card hob-live-card">
                            <h3 class="hob-sidebar-title">
                                <i class="fas fa-globe" style="margin-right:0.4rem;font-size:1rem;"></i>
                                View Live Project
                            </h3>
                            <p class="hob-live-desc">
                                Explore the live platform — browse the brownie catalogue, custom pack options,
                                and B2B enquiry flow.
                            </p>
                            <a href="#" target="_blank" rel="noopener noreferrer" class="hob-live-btn">
                                <i class="fas fa-arrow-up-right-from-square"></i>
                                Open House of Brownies
                            </a>
                        </div>

                        <div class="hob-sidebar-card">
                            <h3 class="hob-sidebar-title">Services Delivered</h3>
                            <ul class="hob-services-list">
                                <li><i class="fas fa-check-circle"></i> Product Catalogue System</li>
                                <li><i class="fas fa-check-circle"></i> Custom Order &amp; Enquiry Flow</li>
                                <li><i class="fas fa-check-circle"></i> UI/UX Design</li>
                                <li><i class="fas fa-check-circle"></i> WhatsApp Integration</li>
                                <li><i class="fas fa-check-circle"></i> Admin Order Dashboard</li>
                                <li><i class="fas fa-check-circle"></i> SEO Optimisation</li>
                                <li><i class="fas fa-check-circle"></i> Ongoing Maintenance</li>
                            </ul>
                        </div>

                    </div>
                </aside>

            </div>
        </div>
    </section>

    <!-- ══ PLATFORM FEATURES ══ -->
    <section class="hob-features-section">
        <div class="hob-container">
            <div class="hob-section-head">
                <div class="hob-section-eyebrow"><i class="fas fa-star"></i> Platform Features</div>
                <h2 class="hob-section-title">Everything a B2B Bakery<br><em>Supply Platform Needs</em></h2>
                <p class="hob-section-sub">From catalogue discovery to bulk dispatch — built for every buyer touchpoint.</p>
            </div>

            <div class="hob-features-grid">
                <div class="hob-feat-card">
                    <span class="hob-feat-num">01</span>
                    <div class="hob-feat-icon"><i class="fas fa-cookie-bite"></i></div>
                    <div class="hob-feat-title">Brownie &amp; Blondie Catalogue</div>
                    <p class="hob-feat-desc">Rich product pages for every flavour and variant with high-quality imagery</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">02</span>
                    <div class="hob-feat-icon"><i class="fas fa-boxes"></i></div>
                    <div class="hob-feat-title">Custom Pack Sizes</div>
                    <p class="hob-feat-desc">Buyers can select or request packs of any quantity — from 6 to 500+ units</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">03</span>
                    <div class="hob-feat-icon"><i class="fas fa-building"></i></div>
                    <div class="hob-feat-title">B2B Buyer Portal</div>
                    <p class="hob-feat-desc">Dedicated portal for restaurants, cafés, and corporates to manage orders</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">04</span>
                    <div class="hob-feat-icon"><i class="fas fa-whatsapp fab"></i></div>
                    <div class="hob-feat-title">WhatsApp Enquiry Flow</div>
                    <p class="hob-feat-desc">One-tap WhatsApp enquiry for bulk and custom orders — fast and familiar</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">05</span>
                    <div class="hob-feat-icon"><i class="fas fa-truck"></i></div>
                    <div class="hob-feat-title">Pan-India Delivery</div>
                    <p class="hob-feat-desc">Nationwide logistics support with order tracking and dispatch notifications</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">07</span>
                    <div class="hob-feat-icon"><i class="fas fa-chart-line"></i></div>
                    <div class="hob-feat-title">Admin Order Dashboard</div>
                    <p class="hob-feat-desc">Track every order, manage dispatch, and update statuses from one panel</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">08</span>
                    <div class="hob-feat-icon"><i class="fas fa-flask"></i></div>
                    <div class="hob-feat-title">Sample Request System</div>
                    <p class="hob-feat-desc">New buyers can request tasting samples before committing to bulk orders</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">09</span>
                    <div class="hob-feat-icon"><i class="fas fa-gift"></i></div>
                    <div class="hob-feat-title">Corporate Gift Packs</div>
                    <p class="hob-feat-desc">Branded gifting solutions for IT parks, events, and festive bulk orders</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">10</span>
                    <div class="hob-feat-icon"><i class="fas fa-redo"></i></div>
                    <div class="hob-feat-title">Repeat Order Shortcuts</div>
                    <p class="hob-feat-desc">Buyer accounts with order history for fast, one-click re-ordering</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">11</span>
                    <div class="hob-feat-icon"><i class="fas fa-search"></i></div>
                    <div class="hob-feat-title">SEO-Optimised Pages</div>
                    <p class="hob-feat-desc">Product and category pages optimised for local and national search visibility</p>
                </div>
                <div class="hob-feat-card">
                    <span class="hob-feat-num">12</span>
                    <div class="hob-feat-icon"><i class="fas fa-mobile-alt"></i></div>
                    <div class="hob-feat-title">Mobile Responsive</div>
                    <p class="hob-feat-desc">Fully responsive experience for buyers ordering from phones on the go</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ══ KEY SOLUTIONS ══ -->
    <section class="hob-solutions-section">
        <div class="hob-container">
            <div class="hob-solutions-header">
                <div>
                    <div class="hob-block-label"><i class="fas fa-lightbulb"></i> Our Solution</div>
                    <h2 class="hob-block-title" style="margin-bottom:0.6rem;">
                        Smart Systems,<br>Built for Bulk Buyers
                    </h2>
                    <p style="color:var(--hob-muted);font-size:0.95rem;line-height:1.7;max-width:520px;">
                        A complete B2B digital ecosystem purpose-built for artisan bakery supply —
                        empowering House of Brownies to scale its reach while maintaining the
                        personal, quality-first experience every buyer expects.
                    </p>
                </div>
                <a href="#" target="_blank" rel="noopener noreferrer" class="hob-visit-btn">
                    <span class="hob-btn-dot"></span>
                    Explore Live Platform
                    <i class="fas fa-arrow-up-right-from-square"></i>
                </a>
            </div>

            <div class="hob-solutions-grid">

                <div class="hob-sol-card">
                    <div class="hob-sol-num">01</div>
                    <div class="hob-sol-head">
                        <div class="hob-sol-icon"><i class="fas fa-store"></i></div>
                        <h3>B2B Buyer Onboarding &amp; Portal</h3>
                    </div>
                    <p class="hob-sol-desc">
                        A streamlined registration and onboarding system for bulk buyers — restaurants, cafés,
                        IT parks, and catering companies. Buyers get a dedicated account to manage orders,
                        track deliveries, and reorder with a single click.
                    </p>
                    <div class="hob-sol-tags">
                        <span class="hob-tag">Buyer Dashboard</span>
                        <span class="hob-tag">Account Management</span>
                        <span class="hob-tag">Java Backend</span>
                        <span class="hob-tag">REST APIs</span>
                    </div>
                    <ul class="hob-highlights">
                        <li><i class="fas fa-check"></i> Fast buyer registration and verification</li>
                        <li><i class="fas fa-check"></i> Saved addresses and billing profiles</li>
                        <li><i class="fas fa-check"></i> Full order history and invoice downloads</li>
                        <li><i class="fas fa-check"></i> One-click repeat ordering</li>
                        <li><i class="fas fa-check"></i> Dedicated account manager contact</li>
                    </ul>
                </div>

                <div class="hob-sol-card">
                    <div class="hob-sol-num">02</div>
                    <div class="hob-sol-head">
                        <div class="hob-sol-icon"><i class="fas fa-cookie-bite"></i></div>
                        <h3>Smart Product Catalogue &amp; Custom Packs</h3>
                    </div>
                    <p class="hob-sol-desc">
                        A structured catalogue covering every brownie and blondie variant with flavour
                        notes, allergen information, and shelf-life details. Buyers can specify
                        exact pack sizes and quantities — making procurement flexible for any format.
                    </p>
                    <div class="hob-sol-tags">
                        <span class="hob-tag">Catalogue System</span>
                        <span class="hob-tag">Custom Pack Builder</span>
                        <span class="hob-tag">MySQL</span>
                        <span class="hob-tag">Indexing</span>
                    </div>
                    <ul class="hob-highlights">
                        <li><i class="fas fa-check"></i> Flavour, allergen, and shelf-life data per SKU</li>
                        <li><i class="fas fa-check"></i> Custom quantity and pack-size selection</li>
                        <li><i class="fas fa-check"></i> Seasonal and limited-batch product listings</li>
                        <li><i class="fas fa-check"></i> Corporate branding options for gift packs</li>
                        <li><i class="fas fa-check"></i> Rich imagery and product storytelling</li>
                    </ul>
                </div>

                <div class="hob-sol-card">
                    <div class="hob-sol-num">03</div>
                    <div class="hob-sol-head">
                        <div class="hob-sol-icon"><i class="fas fa-comments"></i></div>
                        <h3>WhatsApp &amp; Multi-Channel Enquiry System</h3>
                    </div>
                    <p class="hob-sol-desc">
                        A seamless enquiry pipeline connecting potential bulk buyers directly to the
                        House of Brownies team via WhatsApp, email, and a structured inquiry form —
                        ensuring no lead is missed and response times stay fast.
                    </p>
                    <div class="hob-sol-tags">
                        <span class="hob-tag">WhatsApp API</span>
                        <span class="hob-tag">Lead Capture</span>
                        <span class="hob-tag">SMTP Email</span>
                        <span class="hob-tag">CRM-Ready</span>
                    </div>
                    <ul class="hob-highlights">
                        <li><i class="fas fa-check"></i> One-tap WhatsApp enquiry from product pages</li>
                        <li><i class="fas fa-check"></i> Structured bulk order enquiry form</li>
                        <li><i class="fas fa-check"></i> Auto-email acknowledgement to buyers</li>
                        <li><i class="fas fa-check"></i> Admin notification for every new enquiry</li>
                        <li><i class="fas fa-check"></i> Sample request workflow for new buyers</li>
                    </ul>
                </div>

                <div class="hob-sol-card">
                    <div class="hob-sol-num">04</div>
                    <div class="hob-sol-head">
                        <div class="hob-sol-icon"><i class="fas fa-truck"></i></div>
                        <h3>Order Management &amp; Pan-India Dispatch</h3>
                    </div>
                    <p class="hob-sol-desc">
                        End-to-end order management from placement to pan-India delivery, with real-time
                        status updates for buyers and a full admin dispatch panel giving the House of
                        Brownies team total visibility over every shipment.
                    </p>
                    <div class="hob-sol-tags">
                        <span class="hob-tag">Order Management</span>
                        <span class="hob-tag">Dispatch Tracking</span>
                        <span class="hob-tag">Notifications</span>
                        <span class="hob-tag">Logistics API</span>
                    </div>
                    <ul class="hob-highlights">
                        <li><i class="fas fa-check"></i> Real-time order status for every buyer</li>
                        <li><i class="fas fa-check"></i> SMS and email notifications at each stage</li>
                        <li><i class="fas fa-check"></i> Admin packing and dispatch workflow</li>
                        <li><i class="fas fa-check"></i> Pan-India logistics partner integration</li>
                        <li><i class="fas fa-check"></i> Automated invoice and delivery note generation</li>
                    </ul>
                </div>

            </div>
        </div>
    </section>

    <jsp:include page="../../includes/footer/footer.jsp" />

</body>
</html>
