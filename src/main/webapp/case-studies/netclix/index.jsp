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
    <title>Netclix Case Study | Email Marketing Platform — Emails That Convert. At Any Scale.</title>
    <meta name="description" content="How we built Netclix — a high-performance email marketing platform enabling businesses to personalize, automate and grow revenue across 38 countries with industry-leading inbox deliverability.">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400&family=Source+Serif+4:ital,opsz,wght@0,8..60,300;0,8..60,400;0,8..60,500;0,8..60,600;1,8..60,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* =====================================================
           COLOR PALETTE
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
            --success:     #6C63FF;
        }

        /* =====================================================
           GLOBAL RESET & BASE
        ===================================================== */
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        html { scroll-behavior: smooth; }

        body {
            background-color: var(--bg);
            font-family: 'Source Serif 4', serif;
            color: var(--text-body);
            line-height: 1.7;
            overflow-x: hidden;
        }
        
        .nav-glass{
        	background: #ffffff
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Montserrat', sans-serif;
            color: var(--dark);
            letter-spacing: -0.02em;
        }

        p, li, span, td, th, label {
            font-family: 'Source Serif 4', serif;
        }

        a, button, .btn, nav {
            font-family: 'Montserrat', sans-serif;
        }

        a { text-decoration: none; color: inherit; }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        /* =====================================================
           ANIMATION KEYFRAMES
        ===================================================== */
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(32px); }
            to   { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to   { opacity: 1; }
        }
        @keyframes slideRight {
            from { opacity: 0; transform: translateX(-40px); }
            to   { opacity: 1; transform: translateX(0); }
        }
        @keyframes orbFloat {
            0%, 100% { transform: translateY(0) scale(1); }
            50%       { transform: translateY(-24px) scale(1.06); }
        }
        @keyframes scaleIn {
            from { opacity: 0; transform: scale(0.88); }
            to   { opacity: 1; transform: scale(1); }
        }
        @keyframes shimmer {
            0%   { background-position: -400px 0; }
            100% { background-position: 400px 0; }
        }
        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50%       { opacity: 0.5; }
        }
        @keyframes borderSpin {
            from { transform: rotate(0deg); }
            to   { transform: rotate(360deg); }
        }

        /* Scroll-reveal utility */
        .reveal {
            opacity: 0;
            transform: translateY(28px);
            transition: opacity 0.65s cubic-bezier(.22,.61,.36,1),
                        transform 0.65s cubic-bezier(.22,.61,.36,1);
        }
        .reveal.visible {
            opacity: 1;
            transform: translateY(0);
        }
        .reveal-left {
            opacity: 0;
            transform: translateX(-32px);
            transition: opacity 0.65s cubic-bezier(.22,.61,.36,1),
                        transform 0.65s cubic-bezier(.22,.61,.36,1);
        }
        .reveal-left.visible {
            opacity: 1;
            transform: translateX(0);
        }

        /* =====================================================
           HERO SECTION
        ===================================================== */
        .case-hero {
            position: relative;
            background: linear-gradient(135deg, var(--dark) 0%, var(--emerald-md) 60%, #3a3180 100%);
            overflow: hidden;
            padding: 120px 0 100px;
            min-height: 100vh;
            display: flex;
            align-items: center;
        }

        /* Animated orbs */
        .hero-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            pointer-events: none;
        }
        .hero-orb-1 {
            width: 520px; height: 520px;
            background: rgba(108, 99, 255, 0.28);
            top: -120px; left: -140px;
            animation: orbFloat 8s ease-in-out infinite;
        }
        .hero-orb-2 {
            width: 380px; height: 380px;
            background: rgba(255, 107, 107, 0.2);
            bottom: -80px; right: -60px;
            animation: orbFloat 10s ease-in-out infinite reverse;
        }
        .hero-orb-3 {
            width: 200px; height: 200px;
            background: rgba(168, 159, 255, 0.25);
            top: 50%; left: 60%;
            animation: orbFloat 12s ease-in-out infinite;
        }

        /* Grid overlay */
        .hero-grid {
            position: absolute;
            inset: 0;
            background-image:
                linear-gradient(rgba(255,255,255,0.04) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.04) 1px, transparent 1px);
            background-size: 60px 60px;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 760px;
            animation: fadeUp 0.9s cubic-bezier(.22,.61,.36,1) both;
        }

        .hero-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
            margin-bottom: 2rem;
            animation: fadeUp 0.8s 0.15s both;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(108, 99, 255, 0.22);
            color: #c4c0ff;
            border: 1px solid rgba(108, 99, 255, 0.4);
            padding: 6px 16px;
            border-radius: 100px;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.78rem;
            font-weight: 600;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            backdrop-filter: blur(4px);
            transition: background 0.2s, border-color 0.2s;
        }
        .hero-tag:hover {
            background: rgba(108, 99, 255, 0.38);
            border-color: rgba(108, 99, 255, 0.7);
        }

        .hero-title {
            font-family: 'Montserrat', sans-serif;
            font-size: clamp(2.8rem, 7vw, 5.5rem);
            font-weight: 800;
            line-height: 1.05;
            color: #ffffff;
            letter-spacing: -0.04em;
            margin-bottom: 1.5rem;
            animation: fadeUp 0.8s 0.25s both;
        }

        .hero-title .accent-word {
            position: relative;
            display: inline-block;
            color: var(--accent);
        }
        .hero-title .coral-word {
            color: var(--coral);
        }

        .hero-description {
            font-family: 'Source Serif 4', serif;
            font-size: 1.15rem;
            color: rgba(255,255,255,0.72);
            line-height: 1.75;
            max-width: 600px;
            margin-bottom: 3rem;
            animation: fadeUp 0.8s 0.35s both;
        }

        .hero-meta {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            animation: fadeUp 0.8s 0.45s both;
        }

        .meta-item {
            display: flex;
            align-items: center;
            gap: 12px;
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.12);
            border-radius: 14px;
            padding: 14px 20px;
            backdrop-filter: blur(6px);
            transition: background 0.2s, transform 0.2s;
            min-width: 140px;
        }
        .meta-item:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-2px);
        }
        .meta-item i {
            color: var(--accent);
            font-size: 1.2rem;
            width: 20px;
            text-align: center;
        }
        .meta-label {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.7rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            color: rgba(255,255,255,0.45);
            display: block;
        }
        .meta-value {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.95rem;
            font-weight: 700;
            color: #ffffff;
            display: block;
        }

        /* Scroll indicator */
        .scroll-hint {
            position: absolute;
            bottom: 2.5rem;
            left: 50%;
            transform: translateX(-50%);
            z-index: 2;
            animation: fadeIn 1s 1s both;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 6px;
        }
        .scroll-hint span {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.7rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: rgba(255,255,255,0.4);
        }
        .scroll-line {
            width: 1px;
            height: 44px;
            background: linear-gradient(to bottom, rgba(255,255,255,0.4), transparent);
            animation: pulse 2s ease-in-out infinite;
        }

        /* =====================================================
           MAIN CONTENT SECTION (2-col)
        ===================================================== */
        .main-content-section {
            padding: 100px 0;
        }

        .content-wrapper {
            display: grid;
            grid-template-columns: 1fr 340px;
            gap: 3rem;
            align-items: start;
        }

        /* Content blocks */
        .content-block {
            margin-bottom: 3rem;
        }

        .block-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 1.75rem;
            font-weight: 800;
            color: var(--dark);
            letter-spacing: -0.03em;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 1rem;
        }
        .block-title::after {
            content: '';
            position: absolute;
            bottom: 0; left: 0;
            width: 48px; height: 3px;
            background: var(--accent);
            border-radius: 100px;
            transition: width 0.4s;
        }
        .content-block:hover .block-title::after {
            width: 80px;
        }

        .lead-paragraph {
            font-family: 'Source Serif 4', serif;
            font-size: 1.15rem;
            color: var(--dark);
            font-weight: 500;
            line-height: 1.75;
            margin-bottom: 1.5rem;
        }

        .overview-box {
            background: var(--surface);
            border: 1px solid var(--border);
            border-left: 4px solid var(--accent);
            border-radius: 0 16px 16px 0;
            padding: 2rem 2rem 2rem 1.75rem;
        }
        .overview-box p {
            font-size: 1rem;
            line-height: 1.8;
            color: var(--text-body);
            margin-bottom: 1rem;
        }
        .overview-box p:last-child { margin-bottom: 0; }
        .overview-box strong {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            color: var(--accent);
        }

        /* Tech Stack Grid */
        .tech-stack-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.25rem;
        }

        .tech-category {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 1.5rem;
            transition: transform 0.25s, box-shadow 0.25s, border-color 0.25s;
        }
        .tech-category:hover {
            transform: translateY(-4px);
            box-shadow: 0 16px 40px rgba(108, 99, 255, 0.1);
            border-color: var(--accent);
        }

        .tech-category-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 1rem;
        }
        .tech-category-header i {
            color: var(--accent);
            font-size: 1.1rem;
            background: var(--accent-lt);
            width: 34px; height: 34px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .tech-category-header h4 {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.9rem;
            font-weight: 700;
            color: var(--dark);
            letter-spacing: -0.01em;
        }

        .tech-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .tech-list li {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.82rem;
            font-weight: 500;
            color: var(--text-body);
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .tech-list li::before {
            content: '';
            width: 6px; height: 6px;
            border-radius: 50%;
            background: var(--accent);
            flex-shrink: 0;
        }

        /* =====================================================
           SIDEBAR
        ===================================================== */
        .sidebar-sticky {
            position: sticky;
            top: 2rem;
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .sidebar-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 1.75rem;
            transition: box-shadow 0.25s;
        }
        .sidebar-card:hover {
            box-shadow: 0 12px 40px rgba(108, 99, 255, 0.08);
        }

        .sidebar-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 1rem;
            font-weight: 800;
            color: var(--dark);
            margin-bottom: 1.25rem;
            letter-spacing: -0.01em;
        }

        .project-info-list {
            display: flex;
            flex-direction: column;
            gap: 0;
        }
        .info-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid var(--border);
        }
        .info-item:last-child { border-bottom: none; }
        .info-label {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.78rem;
            font-weight: 600;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        .info-value {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.85rem;
            font-weight: 700;
            color: var(--dark);
            text-align: right;
        }
        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(108, 99, 255, 0.1);
            color: var(--accent-dk);
            border-radius: 100px;
            padding: 4px 10px;
            font-size: 0.75rem;
            font-weight: 700;
        }
        .status-dot {
            width: 7px; height: 7px;
            background: var(--accent);
            border-radius: 50%;
            animation: pulse 2s ease-in-out infinite;
        }

        /* Live card */
        .sidebar-live-card {
            background: linear-gradient(135deg, var(--dark) 0%, var(--emerald-md) 100%);
            border: none;
            position: relative;
            overflow: hidden;
        }
        .sidebar-live-card::before {
            content: '';
            position: absolute;
            top: -40px; right: -40px;
            width: 160px; height: 160px;
            border-radius: 50%;
            background: rgba(108, 99, 255, 0.25);
            filter: blur(40px);
        }
        .sidebar-live-card .sidebar-title {
            color: #ffffff;
            position: relative;
            z-index: 1;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .sidebar-live-card p {
            position: relative;
            z-index: 1;
            font-size: 0.88rem;
            color: rgba(255,255,255,0.65);
            line-height: 1.6;
            margin-bottom: 1.25rem;
        }

        .sidebar-live-btn {
            position: relative;
            z-index: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            background: var(--accent);
            color: #ffffff;
            border-radius: 12px;
            padding: 12px 20px;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.88rem;
            font-weight: 700;
            transition: background 0.2s, transform 0.2s;
        }
        .sidebar-live-btn:hover {
            background: var(--accent-dk);
            transform: translateY(-2px);
        }

        .services-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .services-list li {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.82rem;
            font-weight: 600;
            color: var(--text-body);
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .services-list li i {
            color: var(--accent);
            font-size: 0.9rem;
        }

        /* =====================================================
           PLATFORM FEATURES SECTION
        ===================================================== */
        .platform-features-section {
            padding: 100px 0;
            background: var(--surface);
            position: relative;
            overflow: hidden;
        }
        .platform-features-section::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--border), transparent);
        }

        .platform-section-top {
            text-align: center;
            margin-bottom: 4rem;
        }
        .platform-section-top h2 {
            font-size: clamp(1.75rem, 4vw, 2.5rem);
            font-weight: 800;
            margin-bottom: 0.75rem;
        }
        .platform-section-top p {
            font-size: 1.05rem;
            color: var(--text-muted);
            max-width: 560px;
            margin: 0 auto;
        }

        .platform-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1.25rem;
        }

        .platform-card {
            background: var(--surface-2);
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 1.75rem 1.5rem;
            position: relative;
            overflow: hidden;
            transition: transform 0.28s, box-shadow 0.28s, background 0.28s, border-color 0.28s;
            cursor: default;
        }
        .platform-card::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, var(--accent-lt), transparent);
            opacity: 0;
            transition: opacity 0.28s;
            border-radius: inherit;
        }
        .platform-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 60px rgba(108, 99, 255, 0.13);
            border-color: var(--accent);
            background: var(--surface);
        }
        .platform-card:hover::after {
            opacity: 1;
        }

        .pc-icon {
            width: 46px; height: 46px;
            background: var(--accent-lt);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
            position: relative;
            z-index: 1;
            transition: background 0.28s;
        }
        .platform-card:hover .pc-icon {
            background: var(--accent);
        }
        .pc-icon i {
            color: var(--accent);
            font-size: 1.2rem;
            transition: color 0.28s;
        }
        .platform-card:hover .pc-icon i {
            color: #ffffff;
        }

        .pc-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.9rem;
            font-weight: 800;
            color: var(--dark);
            margin-bottom: 0.6rem;
            line-height: 1.3;
            position: relative;
            z-index: 1;
        }
        .pc-desc {
            font-family: 'Source Serif 4', serif;
            font-size: 0.82rem;
            color: var(--text-muted);
            line-height: 1.6;
            position: relative;
            z-index: 1;
        }
        .pc-num {
            position: absolute;
            bottom: 1rem;
            right: 1.25rem;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.7rem;
            font-weight: 800;
            color: var(--border);
            letter-spacing: 0.05em;
            transition: color 0.28s;
        }
        .platform-card:hover .pc-num {
            color: var(--accent);
        }

        /* =====================================================
           SOLUTIONS SECTION
        ===================================================== */
        .ai-solution-section {
            padding: 100px 0;
            background: var(--bg);
        }

        .ai-section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 2rem;
            margin-bottom: 4rem;
        }

        .ai-section-eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--accent-lt);
            color: var(--teal-text);
            border-radius: 100px;
            padding: 6px 16px;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            margin-bottom: 1rem;
        }

        .ai-section-title {
            font-size: clamp(1.75rem, 4vw, 2.6rem);
            font-weight: 800;
            line-height: 1.1;
            letter-spacing: -0.03em;
            margin-bottom: 1rem;
        }
        .ai-section-title span {
            color: var(--accent);
        }

        .ai-section-desc {
            font-size: 1rem;
            color: var(--text-muted);
            max-width: 500px;
            line-height: 1.7;
        }

        .visit-site-btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: var(--dark);
            color: #ffffff;
            border-radius: 14px;
            padding: 14px 24px;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.88rem;
            font-weight: 700;
            white-space: nowrap;
            transition: background 0.2s, transform 0.2s;
            flex-shrink: 0;
        }
        .visit-site-btn:hover {
            background: var(--accent);
            transform: translateY(-2px);
        }
        .btn-live-dot {
            width: 8px; height: 8px;
            background: #4dff91;
            border-radius: 50%;
            animation: pulse 2s ease-in-out infinite;
        }

        .ai-features-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1.5rem;
        }

        .ai-feature-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 24px;
            padding: 2.25rem;
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;
        }
        .ai-feature-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 24px 64px rgba(108, 99, 255, 0.12);
            border-color: var(--accent);
        }

        .ai-feature-number {
            position: absolute;
            top: 1.5rem;
            right: 1.75rem;
            font-family: 'Montserrat', sans-serif;
            font-size: 3rem;
            font-weight: 900;
            color: var(--accent-lt);
            line-height: 1;
            letter-spacing: -0.04em;
            transition: color 0.3s;
        }
        .ai-feature-card:hover .ai-feature-number {
            color: var(--accent);
            opacity: 0.25;
        }

        .ai-feature-head {
            display: flex;
            align-items: flex-start;
            gap: 14px;
            margin-bottom: 1.25rem;
        }
        .ai-feature-icon {
            width: 46px; height: 46px;
            background: var(--accent-lt);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            transition: background 0.3s;
        }
        .ai-feature-card:hover .ai-feature-icon {
            background: var(--accent);
        }
        .ai-feature-icon i {
            color: var(--accent);
            font-size: 1.2rem;
            transition: color 0.3s;
        }
        .ai-feature-card:hover .ai-feature-icon i {
            color: #ffffff;
        }
        .ai-feature-head h3 {
            font-family: 'Montserrat', sans-serif;
            font-size: 1.1rem;
            font-weight: 800;
            color: var(--dark);
            line-height: 1.3;
            letter-spacing: -0.02em;
            margin-top: 6px;
        }

        .ai-feature-desc {
            font-size: 0.92rem;
            color: var(--text-muted);
            line-height: 1.75;
            margin-bottom: 1.25rem;
        }

        .ai-feature-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 6px;
            margin-bottom: 1.25rem;
        }
        .ai-tag {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.72rem;
            font-weight: 700;
            background: var(--accent-lt);
            color: var(--teal-text);
            border-radius: 100px;
            padding: 4px 12px;
            transition: background 0.2s, color 0.2s;
        }
        .ai-feature-card:hover .ai-tag {
            background: var(--accent);
            color: #ffffff;
        }

        .ai-highlights {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .ai-highlights li {
            font-size: 0.85rem;
            color: var(--text-body);
            display: flex;
            align-items: flex-start;
            gap: 10px;
            line-height: 1.5;
        }
        .ai-highlights li i {
            color: var(--accent);
            font-size: 0.75rem;
            margin-top: 3px;
            flex-shrink: 0;
        }

        /* =====================================================
           STATS BANNER
        ===================================================== */
        .stats-banner {
            background: linear-gradient(135deg, var(--dark) 0%, var(--emerald-md) 100%);
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }
        .stats-banner::before {
            content: '';
            position: absolute;
            inset: 0;
            background-image:
                linear-gradient(rgba(255,255,255,0.03) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.03) 1px, transparent 1px);
            background-size: 50px 50px;
        }
        .stats-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(60px);
        }
        .stats-orb-1 {
            width: 300px; height: 300px;
            background: rgba(108, 99, 255, 0.3);
            top: -80px; left: -80px;
        }
        .stats-orb-2 {
            width: 250px; height: 250px;
            background: rgba(255, 107, 107, 0.2);
            bottom: -60px; right: -60px;
        }

        .stats-grid {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 2rem;
            text-align: center;
        }
        .stat-item {
            padding: 1.5rem 1rem;
            border-right: 1px solid rgba(255,255,255,0.1);
        }
        .stat-item:last-child { border-right: none; }
        .stat-number {
            font-family: 'Montserrat', sans-serif;
            font-size: clamp(2rem, 4vw, 3rem);
            font-weight: 900;
            color: #ffffff;
            letter-spacing: -0.04em;
            line-height: 1;
            display: block;
            margin-bottom: 0.5rem;
        }
        .stat-number .accent { color: var(--coral); }
        .stat-label {
            font-family: 'Source Serif 4', serif;
            font-size: 0.88rem;
            color: rgba(255,255,255,0.55);
            line-height: 1.5;
        }

        /* =====================================================
           RELATED PROJECTS
        ===================================================== */



        /* =====================================================
           RESPONSIVE
        ===================================================== */
        @media (max-width: 1024px) {
            .content-wrapper {
                grid-template-columns: 1fr;
            }
            .sidebar-sticky {
                position: static;
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            }
            .platform-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .stats-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .stat-item {
                border-right: none;
                border-bottom: 1px solid rgba(255,255,255,0.1);
            }
            .stat-item:nth-child(2n) { border-right: none; }
        }

        @media (max-width: 768px) {
            .case-hero {
                padding: 100px 0 80px;
                min-height: auto;
            }
            .hero-title {
                font-size: clamp(2.2rem, 10vw, 3.5rem);
            }
            .hero-meta {
                flex-direction: column;
            }
            .meta-item {
                min-width: auto;
                width: 100%;
            }
            .platform-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .tech-stack-grid {
                grid-template-columns: 1fr;
            }
            .ai-section-header {
                flex-direction: column;
                align-items: flex-start;
            }
            .ai-features-grid {
                grid-template-columns: 1fr;
            }
            .related-grid {
                grid-template-columns: 1fr;
            }
            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }
            .main-content-section, .platform-features-section,
            .ai-solution-section, .related-projects, .stats-banner {
                padding: 60px 0;
            }
        }

        @media (max-width: 480px) {
            .platform-grid {
                grid-template-columns: 1fr;
            }
            .stats-grid {
                grid-template-columns: 1fr;
            }
            .stat-item {
                border-bottom: 1px solid rgba(255,255,255,0.1);
            }
            .hero-tags {
                gap: 0.4rem;
            }
            .hero-tag {
                font-size: 0.7rem;
                padding: 5px 12px;
            }
            .sidebar-sticky {
                grid-template-columns: 1fr;
            }
        }

        /* =====================================================
           REDUCED MOTION
        ===================================================== */
        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after {
                animation-duration: 0.01ms !important;
                transition-duration: 0.01ms !important;
            }
            .reveal, .reveal-left {
                opacity: 1;
                transform: none;
            }
        }
    </style>
</head>
<body>

    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <!-- ======================== HERO ======================== -->
    <section class="case-hero">
        <div class="hero-orb hero-orb-1"></div>
        <div class="hero-orb hero-orb-2"></div>
        <div class="hero-orb hero-orb-3"></div>
        <div class="hero-grid"></div>

        <div class="container">
            <div class="hero-content">
                <div class="hero-tags">
                    <span class="hero-tag"><i class="fas fa-envelope"></i> Email Marketing</span>
                    <span class="hero-tag"><i class="fas fa-paper-plane"></i> Marketing Automation</span>
                    <span class="hero-tag"><i class="fas fa-globe"></i> 38 Countries</span>
                </div>
                <h1 class="hero-title">
                    Netclix:<br>
                    Emails That<br>
                    <span class="accent-word">Convert.</span>
                </h1>
                <p class="hero-description">
                    A high-performance email marketing platform empowering businesses to personalize campaigns,
                    automate workflows, and grow revenue — across 38 countries with industry-leading
                    inbox deliverability and enterprise-grade reliability.
                </p>
                <div class="hero-meta">
                    <div class="meta-item">
                        <i class="fas fa-building"></i>
                        <div>
                            <span class="meta-label">Company</span>
                            <span class="meta-value">Netclix</span>
                        </div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-calendar"></i>
                        <div>
                            <span class="meta-label">Completed</span>
                            <span class="meta-value">2026</span>
                        </div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-clock"></i>
                        <div>
                            <span class="meta-label">Duration</span>
                            <span class="meta-value">22 Days</span>
                        </div>
                    </div>
                    <div class="meta-item">
                        <i class="fas fa-users"></i>
                        <div>
                            <span class="meta-label">Team</span>
                            <span class="meta-value">1 Developers</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="scroll-hint">
            <div class="scroll-line"></div>
            <span>Scroll</span>
        </div>
    </section>

    <!-- ======================== 2-COL OVERVIEW ======================== -->
    <section class="main-content-section">
        <div class="container">
            <div class="content-wrapper">

                <!-- LEFT CONTENT -->
                <div class="main-content">

                    <div class="content-block reveal">
                        <h2 class="block-title">Project Overview</h2>
                        <div class="block-content">
                            <p class="lead-paragraph">
                                Netclix is a purpose-built email marketing platform designed to help businesses
                                of all sizes send smarter, convert better, and scale effortlessly — with deep
                                personalization, intelligent automation, and bulletproof deliverability.
                            </p>
                            <div class="overview-box">
                                <p>
                                    The platform provides a complete email marketing ecosystem — from drag-and-drop
                                    campaign builders and audience segmentation to automated drip sequences, A/B testing,
                                    and real-time analytics. Businesses can manage subscriber lists, design beautiful
                                    responsive emails, and track every open, click, and conversion from one unified dashboard.
                                </p>
                                <p>
                                    Built on a resilient Java microservices backend, Netclix is engineered to handle
                                    millions of emails per day with industry-leading inbox placement rates. The platform
                                    serves businesses across <strong>38 countries</strong> and continues to expand its
                                    automation capabilities with AI-powered send-time optimization and dynamic content personalisation.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="content-block tech-stack-block reveal" style="transition-delay: 0.1s;">
                        <h2 class="block-title">Technology Stack</h2>
                        <div class="block-content">
                            <p class="lead-paragraph">
                                Built on enterprise-grade Java microservices architecture to ensure high throughput,
                                fault tolerance, and sub-second delivery across global infrastructure.
                            </p>
                            <div class="tech-stack-grid">
                                <div class="tech-category">
                                    <div class="tech-category-header">
                                        <i class="fas fa-server"></i>
                                        <h4>Backend</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>Java 17</li>
                                        <li>JSP Servlet</li>
                                    </ul>
                                </div>
                                <div class="tech-category">
                                    <div class="tech-category-header">
                                        <i class="fas fa-laptop-code"></i>
                                        <h4>Frontend</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>HTML5 &amp; CSS3</li>
                                        <li>JavaScript ES6+</li>
                                        <li>Bootstrap</li>
                                        <li>Drag &amp; Drop Builder</li>
                                    </ul>
                                </div>
                                <div class="tech-category">
                                    <div class="tech-category-header">
                                        <i class="fas fa-database"></i>
                                        <h4>Database &amp; Queue</h4>
                                    </div>
                                    <ul class="tech-list">
                                        <li>MySQL</li>
                                    </ul>
                                </div>
                                <div class="tech-category">
                                    <div class="tech-category-header">
                                        <i class="fas fa-envelope-open-text"></i>
                                        <h4>Email Infrastructure</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- END LEFT -->

                <!-- SIDEBAR -->
                <aside class="sidebar">
                    <div class="sidebar-sticky">

                        <div class="sidebar-card reveal" style="transition-delay: 0.15s;">
                            <h3 class="sidebar-title">Project Information</h3>
                            <div class="project-info-list">
                                <div class="info-item">
                                    <span class="info-label">Company</span>
                                    <span class="info-value">Netclix</span>
                                </div>
                                <div class="info-item">
                                    <span class="info-label">Industry</span>
                                    <span class="info-value">Email Marketing SaaS</span>
                                </div>
                                <div class="info-item">
                                    <span class="info-label">Duration</span>
                                    <span class="info-value">22 Days</span>
                                </div>
                                <div class="info-item">
                                    <span class="info-label">Team Size</span>
                                    <span class="info-value">1 Developers</span>
                                </div>
                                <div class="info-item">
                                    <span class="info-label">Platform</span>
                                    <span class="info-value">Web Application</span>
                                </div>
                                <div class="info-item">
                                    <span class="info-label">Status</span>
                                    <span class="info-value">
                                        <span class="status-badge">
                                            <span class="status-dot"></span>Live &amp; Active
                                        </span>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-card sidebar-live-card reveal" style="transition-delay: 0.22s;">
                            <h3 class="sidebar-title">
                                <i class="fas fa-globe"></i>
                                View Live Project
                            </h3>
                            <p>
                                Experience Netclix live — explore campaigns, automation flows, and the full email marketing platform.
                            </p>
                            <a href="https://www.netclixcloud.com" target="_blank" rel="noopener noreferrer" class="sidebar-live-btn">
                                <i class="fas fa-arrow-up-right-from-square"></i>
                                Open Netclix
                            </a>
                        </div>

                        <div class="sidebar-card reveal" style="transition-delay: 0.3s;">
                            <h3 class="sidebar-title">Services Delivered</h3>
                            <ul class="services-list">
                                <li><i class="fas fa-check-circle"></i> SaaS Platform Development</li>
                                <li><i class="fas fa-check-circle"></i> Email Automation Engine</li>
                                <li><i class="fas fa-check-circle"></i> Campaign Builder</li>
                                <li><i class="fas fa-check-circle"></i> UI/UX Design</li>
                                <li><i class="fas fa-check-circle"></i> Deliverability Infrastructure</li>
                                <li><i class="fas fa-check-circle"></i> Audience Segmentation</li>
                                <li><i class="fas fa-check-circle"></i> Analytics Dashboard</li>
                                <li><i class="fas fa-check-circle"></i> API &amp; Webhook Integration</li>
                                <li><i class="fas fa-check-circle"></i> Ongoing Maintenance</li>
                            </ul>
                        </div>

                    </div>
                </aside>

            </div>
        </div>
    </section>

    <!-- ======================== STATS BANNER ======================== -->
    <section class="stats-banner">
        <div class="stats-orb stats-orb-1"></div>
        <div class="stats-orb stats-orb-2"></div>
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item reveal">
                    <span class="stat-number"><span class="accent">38</span>+</span>
                    <span class="stat-label">Countries Served Globally</span>
                </div>
                <div class="stat-item reveal" style="transition-delay: 0.1s;">
                    <span class="stat-number"><span class="accent">10M</span>+</span>
                    <span class="stat-label">Emails Delivered Daily</span>
                </div>
                <div class="stat-item reveal" style="transition-delay: 0.2s;">
                    <span class="stat-number"><span class="accent">99</span>%</span>
                    <span class="stat-label">Inbox Deliverability Rate</span>
                </div>
                <div class="stat-item reveal" style="transition-delay: 0.3s;">
                    <span class="stat-number"><span class="accent">3</span>mo</span>
                    <span class="stat-label">From Concept to Launch</span>
                </div>
            </div>
        </div>
    </section>

    <!-- ======================== PLATFORM FEATURES ======================== -->
    <section class="platform-features-section">
        <div class="container">
            <div class="platform-section-top reveal">
                <h2 class="block-title" style="text-align:center; padding-bottom:1rem;">
                    Complete Platform Features
                </h2>
                <p>Everything needed to send smarter emails, convert more customers, and scale globally.</p>
            </div>

            <div class="platform-grid">
                <div class="platform-card reveal" style="transition-delay: 0.05s;">
                    <div class="pc-icon"><i class="fas fa-paint-brush"></i></div>
                    <div class="pc-title">Drag &amp; Drop Email Builder</div>
                    <p class="pc-desc">Design beautiful, responsive email campaigns with a no-code visual editor</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.1s;">
                    <div class="pc-icon"><i class="fas fa-robot"></i></div>
                    <div class="pc-title">Marketing Automation</div>
                    <p class="pc-desc">Build automated drip sequences, welcome flows, and behaviour-triggered campaigns</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.15s;">
                    <div class="pc-icon"><i class="fas fa-users-cog"></i></div>
                    <div class="pc-title">Audience Segmentation</div>
                    <p class="pc-desc">Segment subscribers by behaviour, location, purchase history, and custom attributes</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.2s;">
                    <div class="pc-icon"><i class="fas fa-user-tag"></i></div>
                    <div class="pc-title">Dynamic Personalisation</div>
                    <p class="pc-desc">Insert subscriber-specific content, names, offers, and product recommendations dynamically</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.05s;">
                    <div class="pc-icon"><i class="fas fa-flask"></i></div>
                    <div class="pc-title">A/B Testing</div>
                    <p class="pc-desc">Test subject lines, content, and send times to continuously improve conversion rates</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.1s;">
                    <div class="pc-icon"><i class="fas fa-shield-alt"></i></div>
                    <div class="pc-title">Inbox Deliverability Engine</div>
                    <p class="pc-desc">SPF, DKIM, DMARC, IP warm-up and bounce management for industry-leading inbox rates</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.15s;">
                    <div class="pc-icon"><i class="fas fa-chart-line"></i></div>
                    <div class="pc-title">Real-Time Analytics</div>
                    <p class="pc-desc">Track opens, clicks, conversions, unsubscribes, and revenue per campaign instantly</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.2s;">
                    <div class="pc-icon"><i class="fas fa-globe"></i></div>
                    <div class="pc-title">38-Country Global Reach</div>
                    <p class="pc-desc">Multi-region infrastructure with timezone-aware sending and localised compliance</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.05s;">
                    <div class="pc-icon"><i class="fas fa-plug"></i></div>
                    <div class="pc-title">API &amp; Webhook Integration</div>
                    <p class="pc-desc">Connect Netclix with CRMs, e-commerce stores, and any third-party platform via REST API</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.1s;">
                    <div class="pc-icon"><i class="fas fa-list-check"></i></div>
                    <div class="pc-title">List Health Management</div>
                    <p class="pc-desc">Automatic bounce removal, unsubscribe handling, and list hygiene to protect sender reputation</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.15s;">
                    <div class="pc-icon"><i class="fas fa-clock"></i></div>
                    <div class="pc-title">Send-Time Optimisation</div>
                    <p class="pc-desc">AI-powered delivery timing that maximises open rates per individual subscriber</p>
                </div>
                <div class="platform-card reveal" style="transition-delay: 0.2s;">
                    <div class="pc-icon"><i class="fas fa-mobile-alt"></i></div>
                    <div class="pc-title">Mobile Responsive</div>
                    <p class="pc-desc">Fully responsive dashboard and email previews across all devices and email clients</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ======================== KEY SOLUTIONS ======================== -->
    <section class="ai-solution-section">
        <div class="container">
            <div class="ai-section-header">
                <div class="ai-section-header-left reveal-left">
                    <div class="ai-section-eyebrow">
                        <i class="fas fa-lightbulb"></i>
                        Our Solution
                    </div>
                    <h2 class="ai-section-title">
                        Infrastructure Built<br>
                        <span>to Convert at Scale</span>
                    </h2>
                    <p class="ai-section-desc">
                        A complete email marketing platform engineered for performance — from intelligent
                        automation and deep personalisation to bulletproof deliverability and global reach
                        across 38 countries.
                    </p>
                </div>
                <div class="ai-section-header-right reveal" style="transition-delay: 0.2s;">
                    <a href="https://netclix.com/" target="_blank" rel="noopener noreferrer" class="visit-site-btn">
                        <span class="btn-live-dot"></span>
                        Explore Live Platform
                        <i class="fas fa-arrow-up-right-from-square"></i>
                    </a>
                </div>
            </div>

        </div>
    </section>

    <!-- ======================== RELATED PROJECTS ======================== -->

    <jsp:include page="../../includes/footer/footer.jsp" />

    <!-- ======================== SCROLL REVEAL SCRIPT ======================== -->
    <script>
        (function () {
            var els = document.querySelectorAll('.reveal, .reveal-left');
            if (!els.length) return;

            var observer = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('visible');
                        observer.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

            els.forEach(function (el) { observer.observe(el); });
        })();
    </script>

</body>
</html>
