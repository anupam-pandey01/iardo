<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bull Clothings Case Study | AI-Powered Fashion E-Commerce Platform</title>
<meta name="description" content="How we built Bull Clothings - an intelligent AI-driven fashion e-commerce platform with virtual try-on, smart recommendations, and personalized shopping experience for 800K+ users.">
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800;900&family=DM+Sans:ital,wght@0,300;0,400;0,500;0,600;1,400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Source+Serif+4:ital,wght@0,300;0,400;0,600;1,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
    --gold:        #6C63FF;
    --gold-lt:     #a89fff;
    --teal-bg:     #E8ECFF;
    --teal-text:   #3d3aa8;
    --success:     #10b981;
}

/* =====================================================
   GLOBAL FONTS & BASE
===================================================== */
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

html { scroll-behavior: smooth; }

body {
    background-color: var(--bg);
    font-family: 'Source Serif 4', serif;
    color: var(--text-body);
    overflow-x: hidden;
    line-height: 1.7;
}
.nav-glass{
	background: #ffffff;
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
    padding: 0 2rem;
}

/* =====================================================
   SCROLL ANIMATIONS
===================================================== */
.reveal {
    opacity: 0;
    transform: translateY(40px);
    transition: opacity 0.7s ease, transform 0.7s ease;
}
.reveal.visible {
    opacity: 1;
    transform: translateY(0);
}
.reveal-left {
    opacity: 0;
    transform: translateX(-40px);
    transition: opacity 0.7s ease, transform 0.7s ease;
}
.reveal-left.visible {
    opacity: 1;
    transform: translateX(0);
}
.reveal-right {
    opacity: 0;
    transform: translateX(40px);
    transition: opacity 0.7s ease, transform 0.7s ease;
}
.reveal-right.visible {
    opacity: 1;
    transform: translateX(0);
}

/* =====================================================
   HERO SECTION
===================================================== */
.case-hero {
    position: relative;
    background: linear-gradient(135deg, #1A1F3C 0%, #2d3460 50%, #1a1f3c 100%);
    min-height: 100vh;
    display: flex;
    align-items: center;
    padding: 6rem 0 4rem;
    overflow: hidden;
}

.hero-grid-bg {
    position: absolute;
    inset: 0;
    background-image:
        linear-gradient(rgba(108,99,255,0.07) 1px, transparent 1px),
        linear-gradient(90deg, rgba(108,99,255,0.07) 1px, transparent 1px);
    background-size: 60px 60px;
    animation: gridMove 20s linear infinite;
}
@keyframes gridMove {
    0% { transform: translate(0,0); }
    100% { transform: translate(60px, 60px); }
}

.hero-orb {
    position: absolute;
    border-radius: 50%;
    filter: blur(80px);
    animation: orbPulse 6s ease-in-out infinite alternate;
}
.hero-orb-1 {
    width: 500px; height: 500px;
    background: radial-gradient(circle, rgba(108,99,255,0.35) 0%, transparent 70%);
    top: -150px; left: -100px;
}
.hero-orb-2 {
    width: 400px; height: 400px;
    background: radial-gradient(circle, rgba(255,107,107,0.25) 0%, transparent 70%);
    bottom: -100px; right: 10%;
    animation-delay: -3s;
}
.hero-orb-3 {
    width: 300px; height: 300px;
    background: radial-gradient(circle, rgba(168,159,255,0.2) 0%, transparent 70%);
    top: 40%; right: 5%;
    animation-delay: -1.5s;
}
@keyframes orbPulse {
    0% { transform: scale(1) translate(0,0); opacity: 0.7; }
    100% { transform: scale(1.15) translate(20px, -20px); opacity: 1; }
}

.hero-content {
    position: relative;
    z-index: 2;
    max-width: 780px;
}

.hero-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.6rem;
    margin-bottom: 2rem;
    animation: fadeInDown 0.8s ease both;
}
.hero-tag {
    display: inline-flex;
    align-items: center;
    gap: 0.4rem;
    background: rgba(108,99,255,0.18);
    border: 1px solid rgba(108,99,255,0.35);
    color: #c4bfff;
    font-family: 'Montserrat', sans-serif;
    font-size: 0.78rem;
    font-weight: 600;
    letter-spacing: 0.08em;
    text-transform: uppercase;
    padding: 0.4rem 1rem;
    border-radius: 100px;
    backdrop-filter: blur(10px);
}

.hero-title {
    font-family: 'Montserrat', sans-serif;
    font-size: clamp(2.8rem, 6vw, 5rem);
    font-weight: 900;
    line-height: 1.05;
    letter-spacing: -0.03em;
    color: #fff;
    margin-bottom: 1.5rem;
    animation: fadeInUp 0.9s ease 0.2s both;
}
.hero-title .accent-word {
    background: linear-gradient(135deg, #a89fff 0%, #6C63FF 50%, #FF6B6B 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero-description {
    font-family: 'Source Serif 4', serif;
    font-size: 1.15rem;
    color: rgba(255,255,255,0.72);
    line-height: 1.75;
    margin-bottom: 2.5rem;
    max-width: 600px;
    animation: fadeInUp 0.9s ease 0.35s both;
}

.hero-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 1.2rem;
    animation: fadeInUp 0.9s ease 0.5s both;
}
.meta-item {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    background: rgba(255,255,255,0.06);
    border: 1px solid rgba(255,255,255,0.12);
    border-radius: 14px;
    padding: 0.85rem 1.2rem;
    backdrop-filter: blur(16px);
    transition: background 0.3s, border-color 0.3s, transform 0.3s;
}
.meta-item:hover {
    background: rgba(108,99,255,0.15);
    border-color: rgba(108,99,255,0.4);
    transform: translateY(-3px);
}
.meta-item > i {
    font-size: 1.1rem;
    color: var(--accent);
}
.meta-item > div {
    display: flex;
    flex-direction: column;
}
.meta-label {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.7rem;
    font-weight: 600;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    color: rgba(255,255,255,0.45);
}
.meta-value {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.92rem;
    font-weight: 700;
    color: #fff;
}

.hero-scroll-indicator {
    position: absolute;
    bottom: 2.5rem;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.5rem;
    color: rgba(255,255,255,0.35);
    font-family: 'Montserrat', sans-serif;
    font-size: 0.7rem;
    letter-spacing: 0.15em;
    text-transform: uppercase;
    animation: bounce 2s ease infinite;
}
.hero-scroll-indicator i { font-size: 1.2rem; }
@keyframes bounce {
    0%, 100% { transform: translateX(-50%) translateY(0); }
    50% { transform: translateX(-50%) translateY(8px); }
}

@keyframes fadeInDown {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}
@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* =====================================================
   STATS RIBBON
===================================================== */
.stats-ribbon {
    background: var(--surface);
    border-bottom: 1px solid var(--border);
    padding: 2.5rem 0;
    position: relative;
    z-index: 10;
    box-shadow: 0 4px 32px rgba(26,31,60,0.06);
}
.stats-ribbon-inner {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
    gap: 2rem;
    text-align: center;
}
.stat-item {
    padding: 0.5rem;
    transition: transform 0.3s;
}
.stat-item:hover { transform: translateY(-4px); }
.stat-number {
    font-family: 'Montserrat', sans-serif;
    font-size: 2.2rem;
    font-weight: 900;
    color: var(--dark);
    letter-spacing: -0.03em;
    display: block;
    line-height: 1;
    margin-bottom: 0.3rem;
}
.stat-number .accent { color: var(--accent); }
.stat-label {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.72rem;
    font-weight: 600;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    color: var(--text-muted);
}

/* =====================================================
   MAIN CONTENT 2-COL
===================================================== */
.main-content-section {
    padding: 5rem 0;
}
.content-wrapper {
    display: grid;
    grid-template-columns: 1fr 340px;
    gap: 3rem;
    align-items: start;
}

/* CONTENT BLOCKS */
.content-block {
    background: var(--surface);
    border-radius: 20px;
    padding: 2.5rem;
    margin-bottom: 2rem;
    border: 1px solid var(--border);
    position: relative;
    overflow: hidden;
    transition: transform 0.3s, box-shadow 0.3s;
}
.content-block::before {
    content: '';
    position: absolute;
    top: 0; left: 0;
    width: 4px;
    height: 100%;
    background: linear-gradient(180deg, var(--accent) 0%, var(--coral) 100%);
    border-radius: 4px 0 0 4px;
}
.content-block:hover {
    transform: translateY(-3px);
    box-shadow: 0 16px 48px rgba(108,99,255,0.1);
}

.block-title {
    font-family: 'Montserrat', sans-serif;
    font-size: 1.4rem;
    font-weight: 800;
    color: var(--dark);
    margin-bottom: 1.25rem;
    display: flex;
    align-items: center;
    gap: 0.6rem;
}
.block-title::after {
    content: '';
    flex: 1;
    height: 2px;
    background: linear-gradient(90deg, var(--accent-lt) 0%, transparent 100%);
    border-radius: 2px;
}

.lead-paragraph {
    font-size: 1.08rem;
    font-weight: 600;
    color: var(--dark);
    line-height: 1.7;
    margin-bottom: 1.2rem;
}

.overview-box {
    background: var(--surface-2);
    border-radius: 14px;
    padding: 1.5rem;
    border-left: 3px solid var(--accent);
}
.overview-box p {
    color: var(--text-body);
    margin-bottom: 0.8rem;
    line-height: 1.75;
    font-size: 0.97rem;
}
.overview-box p:last-child { margin-bottom: 0; }

/* TECH STACK */
.tech-stack-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 1.2rem;
    margin-top: 1.5rem;
}
.tech-category {
    background: var(--surface-2);
    border-radius: 14px;
    padding: 1.25rem;
    border: 1px solid var(--border);
    transition: border-color 0.3s, box-shadow 0.3s;
}
.tech-category:hover {
    border-color: var(--accent);
    box-shadow: 0 4px 20px rgba(108,99,255,0.1);
}
.tech-category-header {
    display: flex;
    align-items: center;
    gap: 0.6rem;
    margin-bottom: 0.9rem;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid var(--border);
}
.tech-category-header i {
    color: var(--accent);
    font-size: 1rem;
}
.tech-category-header h4 {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.85rem;
    font-weight: 700;
    color: var(--dark);
    text-transform: uppercase;
    letter-spacing: 0.08em;
}
.tech-list {
    list-style: none;
}
.tech-list li {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.82rem;
    font-weight: 500;
    color: var(--text-body);
    padding: 0.3rem 0;
    display: flex;
    align-items: center;
    gap: 0.5rem;
}
.tech-list li::before {
    content: '';
    width: 5px;
    height: 5px;
    border-radius: 50%;
    background: var(--accent);
    flex-shrink: 0;
}

/* SIDEBAR */
.sidebar-sticky { position: sticky; top: 2rem; }
.sidebar-card {
    background: var(--surface);
    border-radius: 20px;
    padding: 1.75rem;
    margin-bottom: 1.25rem;
    border: 1px solid var(--border);
    transition: transform 0.3s, box-shadow 0.3s;
}
.sidebar-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 40px rgba(108,99,255,0.08);
}
.sidebar-title {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.88rem;
    font-weight: 800;
    color: var(--dark);
    text-transform: uppercase;
    letter-spacing: 0.1em;
    margin-bottom: 1.2rem;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid var(--border);
}

.project-info-list { display: flex; flex-direction: column; gap: 0.6rem; }
.info-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0.5rem 0;
    border-bottom: 1px solid rgba(209,217,240,0.5);
}
.info-item:last-child { border-bottom: none; }
.info-label {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.78rem;
    font-weight: 600;
    color: var(--text-muted);
    text-transform: uppercase;
    letter-spacing: 0.07em;
}
.info-value {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.82rem;
    font-weight: 700;
    color: var(--dark);
}
.status-badge {
    display: flex;
    align-items: center;
    gap: 0.4rem;
}
.status-dot {
    width: 7px;
    height: 7px;
    border-radius: 50%;
    background: var(--success);
    animation: statusPulse 2s ease infinite;
}
@keyframes statusPulse {
    0%, 100% { box-shadow: 0 0 0 0 rgba(16,185,129,0.5); }
    50% { box-shadow: 0 0 0 5px rgba(16,185,129,0); }
}

.sidebar-live-card {
    background: linear-gradient(135deg, #1A1F3C 0%, #2d3460 100%);
    border-color: transparent;
    position: relative;
    overflow: hidden;
}
.sidebar-live-card::before {
    content: '';
    position: absolute;
    inset: 0;
    background: linear-gradient(135deg, rgba(108,99,255,0.2) 0%, transparent 60%);
}
.sidebar-live-card .sidebar-title {
    color: var(--success) !important;
    border-bottom-color: rgba(255,255,255,0.12);
    position: relative;
    z-index: 1;
}
.sidebar-live-card p {
    color: rgba(255,255,255,0.65);
    font-size: 0.85rem;
    line-height: 1.65;
    margin-bottom: 1.2rem;
    position: relative;
    z-index: 1;
}
.sidebar-live-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
    color: #fff;
    font-family: 'Montserrat', sans-serif;
    font-size: 0.82rem;
    font-weight: 700;
    padding: 0.85rem 1.5rem;
    border-radius: 12px;
    transition: transform 0.3s, box-shadow 0.3s;
    position: relative;
    z-index: 1;
}
.sidebar-live-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 24px rgba(108,99,255,0.45);
}

.services-list { list-style: none; display: flex; flex-direction: column; gap: 0.5rem; }
.services-list li {
    display: flex;
    align-items: center;
    gap: 0.6rem;
    font-family: 'Montserrat', sans-serif;
    font-size: 0.82rem;
    font-weight: 500;
    color: var(--text-body);
    padding: 0.35rem 0;
    border-bottom: 1px solid rgba(209,217,240,0.4);
    transition: color 0.2s, padding-left 0.2s;
}
.services-list li:last-child { border-bottom: none; }
.services-list li:hover { color: var(--accent); padding-left: 4px; }
.services-list li i { color: var(--success); font-size: 0.85rem; }

/* =====================================================
   PLATFORM FEATURES
===================================================== */
.platform-features-section {
    padding: 5rem 0;
    background: linear-gradient(180deg, var(--bg) 0%, var(--accent-lt) 50%, var(--bg) 100%);
}
.platform-section-top {
    text-align: center;
    margin-bottom: 3.5rem;
}
.platform-section-top h2 {
    font-size: 2.2rem;
    font-weight: 900;
    margin-bottom: 0.75rem;
}
.platform-section-top p {
    font-family: 'Source Serif 4', serif;
    font-size: 1.05rem;
    color: var(--text-muted);
}
.section-eyebrow {
    display: inline-block;
    background: var(--accent-lt);
    color: var(--accent-dk);
    font-family: 'Montserrat', sans-serif;
    font-size: 0.72rem;
    font-weight: 700;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    padding: 0.35rem 1rem;
    border-radius: 100px;
    margin-bottom: 1rem;
    border: 1px solid rgba(108,99,255,0.2);
}

.platform-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
    gap: 1.2rem;
}
.platform-card {
    background: var(--surface);
    border-radius: 18px;
    padding: 1.75rem 1.5rem;
    border: 1px solid var(--border);
    position: relative;
    overflow: hidden;
    transition: transform 0.35s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.35s;
    cursor: default;
}
.platform-card::after {
    content: '';
    position: absolute;
    inset: 0;
    background: linear-gradient(135deg, rgba(108,99,255,0.05) 0%, transparent 60%);
    opacity: 0;
    transition: opacity 0.3s;
}
.platform-card:hover {
    transform: translateY(-6px) scale(1.01);
    box-shadow: 0 20px 50px rgba(108,99,255,0.14);
    border-color: var(--accent);
}
.platform-card:hover::after { opacity: 1; }
.pc-icon {
    width: 46px; height: 46px;
    background: var(--accent-lt);
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 1rem;
    transition: background 0.3s, transform 0.3s;
}
.pc-icon i { color: var(--accent); font-size: 1.1rem; }
.platform-card:hover .pc-icon {
    background: var(--accent);
    transform: rotate(-5deg) scale(1.1);
}
.platform-card:hover .pc-icon i { color: #fff; }
.pc-title {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.92rem;
    font-weight: 800;
    color: var(--dark);
    margin-bottom: 0.5rem;
    line-height: 1.3;
}
.pc-desc {
    font-family: 'Source Serif 4', serif;
    font-size: 0.85rem;
    color: var(--text-muted);
    line-height: 1.6;
}
.pc-num {
    position: absolute;
    top: 1.25rem; right: 1.25rem;
    font-family: 'Montserrat', sans-serif;
    font-size: 1.6rem;
    font-weight: 900;
    color: var(--border);
    line-height: 1;
    transition: color 0.3s;
}
.platform-card:hover .pc-num { color: var(--accent-lt); }

/* =====================================================
   AI SOLUTION SECTION
===================================================== */
.ai-solution-section {
    padding: 6rem 0;
    background: var(--dark);
    position: relative;
    overflow: hidden;
}
.ai-solution-section::before {
    content: '';
    position: absolute;
    inset: 0;
    background-image:
        linear-gradient(rgba(108,99,255,0.08) 1px, transparent 1px),
        linear-gradient(90deg, rgba(108,99,255,0.08) 1px, transparent 1px);
    background-size: 50px 50px;
}
.ai-glow-1 {
    position: absolute;
    width: 600px; height: 600px;
    background: radial-gradient(circle, rgba(108,99,255,0.2) 0%, transparent 65%);
    top: -200px; left: -200px;
    border-radius: 50%;
}
.ai-glow-2 {
    position: absolute;
    width: 500px; height: 500px;
    background: radial-gradient(circle, rgba(255,107,107,0.15) 0%, transparent 65%);
    bottom: -150px; right: -100px;
    border-radius: 50%;
}

.ai-section-header {
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    gap: 2rem;
    margin-bottom: 3.5rem;
    position: relative;
    z-index: 2;
}
.ai-section-eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    background: rgba(108,99,255,0.2);
    border: 1px solid rgba(108,99,255,0.4);
    color: #a89fff;
    font-family: 'Montserrat', sans-serif;
    font-size: 0.75rem;
    font-weight: 700;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    padding: 0.4rem 1rem;
    border-radius: 100px;
    margin-bottom: 1rem;
}
.ai-section-title {
    font-family: 'Montserrat', sans-serif;
    font-size: clamp(2rem, 4vw, 3rem);
    font-weight: 900;
    color: #fff;
    line-height: 1.1;
    letter-spacing: -0.03em;
    margin-bottom: 1rem;
}
.ai-section-title span {
    background: linear-gradient(135deg, #a89fff 0%, var(--coral) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
.ai-section-desc {
    font-family: 'Source Serif 4', serif;
    color: rgba(255,255,255,0.6);
    font-size: 1rem;
    line-height: 1.75;
    max-width: 480px;
}

.visit-site-btn {
    display: inline-flex;
    align-items: center;
    gap: 0.6rem;
    background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
    color: #fff;
    font-family: 'Montserrat', sans-serif;
    font-size: 0.85rem;
    font-weight: 700;
    padding: 0.9rem 1.75rem;
    border-radius: 14px;
    white-space: nowrap;
    transition: transform 0.3s, box-shadow 0.3s;
    position: relative;
    overflow: hidden;
}
.visit-site-btn::before {
    content: '';
    position: absolute;
    top: -50%; left: -50%;
    width: 200%; height: 200%;
    background: linear-gradient(45deg, transparent 30%, rgba(255,255,255,0.15) 50%, transparent 70%);
    transform: translateX(-100%);
    transition: transform 0.5s;
}
.visit-site-btn:hover::before { transform: translateX(100%); }
.visit-site-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 30px rgba(108,99,255,0.5);
}
.btn-live-dot {
    width: 8px; height: 8px;
    border-radius: 50%;
    background: #fff;
    animation: statusPulse 2s ease infinite;
}

.ai-features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(480px, 1fr));
    gap: 1.5rem;
    position: relative;
    z-index: 2;
}

.ai-feature-card {
    background: rgba(255,255,255,0.05);
    border: 1px solid rgba(255,255,255,0.1);
    border-radius: 22px;
    padding: 2.25rem;
    position: relative;
    overflow: hidden;
    transition: background 0.35s, border-color 0.35s, transform 0.35s;
    backdrop-filter: blur(10px);
}
.ai-feature-card::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 2px;
    background: linear-gradient(90deg, var(--accent) 0%, var(--coral) 100%);
    transform: scaleX(0);
    transform-origin: left;
    transition: transform 0.4s ease;
}
.ai-feature-card:hover {
    background: rgba(108,99,255,0.1);
    border-color: rgba(108,99,255,0.35);
    transform: translateY(-5px);
}
.ai-feature-card:hover::before { transform: scaleX(1); }

.ai-feature-number {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.7rem;
    font-weight: 700;
    letter-spacing: 0.15em;
    color: rgba(108,99,255,0.6);
    margin-bottom: 1.25rem;
    background: rgba(108,99,255,0.15);
    border: 1px solid rgba(108,99,255,0.25);
    display: inline-block;
    padding: 0.25rem 0.7rem;
    border-radius: 100px;
}

.ai-feature-head {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 1.1rem;
}
.ai-feature-icon {
    width: 48px; height: 48px;
    background: linear-gradient(135deg, rgba(108,99,255,0.3) 0%, rgba(108,99,255,0.1) 100%);
    border: 1px solid rgba(108,99,255,0.3);
    border-radius: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    transition: background 0.3s, transform 0.3s;
}
.ai-feature-icon i { color: #a89fff; font-size: 1.1rem; }
.ai-feature-card:hover .ai-feature-icon {
    background: linear-gradient(135deg, var(--accent) 0%, var(--accent-dk) 100%);
    transform: rotate(-8deg);
}
.ai-feature-card:hover .ai-feature-icon i { color: #fff; }
.ai-feature-head h3 {
    font-family: 'Montserrat', sans-serif;
    font-size: 1.05rem;
    font-weight: 800;
    color: #fff;
    line-height: 1.3;
}

.ai-feature-desc {
    font-family: 'Source Serif 4', serif;
    font-size: 0.9rem;
    color: rgba(255,255,255,0.6);
    line-height: 1.75;
    margin-bottom: 1.2rem;
}

.ai-feature-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.45rem;
    margin-bottom: 1.25rem;
}
.ai-tag {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.72rem;
    font-weight: 600;
    color: #a89fff;
    background: rgba(108,99,255,0.15);
    border: 1px solid rgba(108,99,255,0.25);
    padding: 0.25rem 0.7rem;
    border-radius: 100px;
}

.ai-highlights {
    list-style: none;
    display: flex;
    flex-direction: column;
    gap: 0.55rem;
    border-top: 1px solid rgba(255,255,255,0.08);
    padding-top: 1.1rem;
}
.ai-highlights li {
    display: flex;
    align-items: flex-start;
    gap: 0.6rem;
    font-family: 'Source Serif 4', serif;
    font-size: 0.87rem;
    color: rgba(255,255,255,0.7);
    line-height: 1.55;
}
.ai-highlights li i {
    color: var(--success);
    font-size: 0.8rem;
    margin-top: 0.25rem;
    flex-shrink: 0;
}

/* =====================================================
   RESULTS / IMPACT SECTION
===================================================== */
.impact-section {
    padding: 5rem 0;
    background: var(--surface);
}
.impact-header {
    text-align: center;
    margin-bottom: 3.5rem;
}
.impact-header h2 {
    font-size: 2.2rem;
    font-weight: 900;
    margin-bottom: 0.75rem;
}
.impact-header p {
    font-size: 1.05rem;
    color: var(--text-muted);
}

.impact-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1.5rem;
}
.impact-card {
    background: var(--surface-2);
    border-radius: 20px;
    padding: 2rem 1.5rem;
    text-align: center;
    border: 1px solid var(--border);
    position: relative;
    overflow: hidden;
    transition: transform 0.35s cubic-bezier(0.34,1.56,0.64,1), box-shadow 0.35s;
}
.impact-card::before {
    content: '';
    position: absolute;
    bottom: 0; left: 0; right: 0;
    height: 3px;
    background: linear-gradient(90deg, var(--accent) 0%, var(--coral) 100%);
    transform: scaleX(0);
    transform-origin: center;
    transition: transform 0.4s ease;
}
.impact-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 24px 56px rgba(108,99,255,0.12);
}
.impact-card:hover::before { transform: scaleX(1); }
.impact-num {
    font-family: 'Montserrat', sans-serif;
    font-size: 2.8rem;
    font-weight: 900;
    color: var(--accent);
    line-height: 1;
    margin-bottom: 0.5rem;
    letter-spacing: -0.04em;
}
.impact-desc {
    font-family: 'Montserrat', sans-serif;
    font-size: 0.78rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    color: var(--text-muted);
    line-height: 1.4;
}
.impact-icon {
    width: 50px; height: 50px;
    margin: 0 auto 1rem;
    background: var(--accent-lt);
    border-radius: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: background 0.3s, transform 0.3s;
}
.impact-icon i { color: var(--accent); font-size: 1.2rem; }
.impact-card:hover .impact-icon {
    background: var(--accent);
    transform: scale(1.1) rotate(-5deg);
}
.impact-card:hover .impact-icon i { color: #fff; }





        /* ââââââââââââââââââââââââââââââ
           RELATED PROJECTS
        ââââââââââââââââââââââââââââââ */
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




/* =====================================================
   FLOATING BACK TO TOP
===================================================== */
.back-to-top {
    position: fixed;
    bottom: 2rem;
    right: 2rem;
    width: 46px; height: 46px;
    background: var(--accent);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    font-size: 1rem;
    cursor: pointer;
    border: none;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s, transform 0.3s, box-shadow 0.3s;
    box-shadow: 0 4px 20px rgba(108,99,255,0.35);
    z-index: 999;
}
.back-to-top.show {
    opacity: 1;
    pointer-events: auto;
}
.back-to-top:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 28px rgba(108,99,255,0.5);
}

/* =====================================================
   RESPONSIVE
===================================================== */
@media (max-width: 1024px) {
    .content-wrapper {
        grid-template-columns: 1fr;
    }
    .sidebar-sticky { position: static; }
    .ai-features-grid {
        grid-template-columns: 1fr;
    }
    .ai-section-header {
        flex-direction: column;
        align-items: flex-start;
    }
}
@media (max-width: 768px) {
    .hero-meta { gap: 0.75rem; }
    .meta-item { padding: 0.7rem 1rem; }
    .tech-stack-grid { grid-template-columns: 1fr; }
    .platform-grid { grid-template-columns: repeat(auto-fill, minmax(180px, 1fr)); }
    .impact-grid { grid-template-columns: repeat(2, 1fr); }
    .ai-features-grid { grid-template-columns: 1fr; }
}
@media (max-width: 480px) {
    .container { padding: 0 1.25rem; }
    .hero-title { font-size: 2.4rem; }
    .hero-tags { gap: 0.4rem; }
    .stats-ribbon-inner { grid-template-columns: repeat(2, 1fr); }
    .content-block { padding: 1.75rem 1.25rem; }
    .impact-grid { grid-template-columns: 1fr 1fr; }
    .platform-grid { grid-template-columns: 1fr 1fr; }
}

/* Loading animation stagger */
.stagger-1 { transition-delay: 0.1s; }
.stagger-2 { transition-delay: 0.2s; }
.stagger-3 { transition-delay: 0.3s; }
.stagger-4 { transition-delay: 0.4s; }
.stagger-5 { transition-delay: 0.5s; }
.stagger-6 { transition-delay: 0.6s; }

/* Custom scrollbar */
::-webkit-scrollbar { width: 6px; }
::-webkit-scrollbar-track { background: var(--bg); }
::-webkit-scrollbar-thumb { background: var(--accent); border-radius: 6px; }
</style>
</head>
<body>

<jsp:include page="../../includes/navbar/navbar.jsp" />

<!-- HERO -->
<section class="case-hero">
    <div class="hero-grid-bg"></div>
    <div class="hero-orb hero-orb-1"></div>
    <div class="hero-orb hero-orb-2"></div>
    <div class="hero-orb hero-orb-3"></div>

    <div class="container">
        <div class="hero-content">
            <h1 class="hero-title">
                Bull Clothings:<br>
                <span class="accent-word">AI-Driven Fashion</span><br>
                Revolution
            </h1>
            <p class="hero-description">
                Transforming online fashion retail with cutting-edge AI technology featuring virtual try-on,
                intelligent size recommendations, personalized styling, and seamless shopping experience
                serving 800K+ active users.
            </p>
            <div class="hero-meta">
                <div class="meta-item">
                    <i class="fas fa-building"></i>
                    <div><span class="meta-label">Company</span><span class="meta-value">Bull Clothings</span></div>
                </div>
                <div class="meta-item">
                    <i class="fas fa-calendar"></i>
                    <div><span class="meta-label">Completed</span><span class="meta-value">Jan 2026</span></div>
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
    </div>

    <div class="hero-scroll-indicator">
        <span>Scroll</span>
        <i class="fas fa-chevron-down"></i>
    </div>
</section>

<!-- STATS RIBBON -->
<div class="stats-ribbon reveal">
    <div class="container">
        <div class="stats-ribbon-inner">
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="800">0</span>K+</span>
                <span class="stat-label">Active Users</span>
            </div>
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="50">0</span>K+</span>
                <span class="stat-label">Products</span>
            </div>
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="58">0</span>%</span>
                <span class="stat-label">Conversion Rate</span>
            </div>
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="73">0</span>%</span>
                <span class="stat-label">Return Reduction</span>
            </div>
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="94">0</span>%</span>
                <span class="stat-label">Size Accuracy</span>
            </div>
            <div class="stat-item">
                <span class="stat-number"><span class="accent" data-target="95">0</span>%</span>
                <span class="stat-label">AR Try-On Accuracy</span>
            </div>
        </div>
    </div>
</div>

<!-- MAIN CONTENT 2-COL -->
<section class="main-content-section">
    <div class="container">
        <div class="content-wrapper">
            <div class="main-content">
                <div class="content-block reveal stagger-1">
                    <h2 class="block-title">Project Overview</h2>
                    <p class="lead-paragraph">
                        Bull Clothings is a next-generation AI-powered fashion e-commerce platform that revolutionizes
                        online shopping through advanced computer vision, machine learning, and personalization technologies.
                    </p>
                    <div class="overview-box">
                        <p>
                            Built on a robust Full Stack Java architecture integrated with cutting-edge AI/ML capabilities,
                            the platform serves 800,000+ active fashion enthusiasts across India. The system features virtual
                            try-on using AR technology, AI-powered size recommendations, intelligent product search with
                            visual recognition, and a hyper-personalized shopping experience driven by deep learning algorithms.
                        </p>
                        <p>
                            With a catalog of 50,000+ premium fashion products, 58% conversion rate, and 73% reduction in
                            product returns, Bull Clothings has established itself as a leader in fashion-tech innovation.
                            Completed in just 1 month by a dedicated 2-developer team at IARDO.
                        </p>
                    </div>
                </div>

                <div class="content-block reveal stagger-2">
                    <h2 class="block-title">Technology Stack</h2>
                    <p class="lead-paragraph">
                        Built with cutting-edge, scalable technologies ensuring exceptional performance, security,
                        and seamless shopping experience.
                    </p>
                    <div class="tech-stack-grid">
                        <div class="tech-category">
                            <div class="tech-category-header">
                                <i class="fas fa-server"></i>
                                <h4>Backend</h4>
                            </div>
                            <ul class="tech-list">
                                <li>Java 17</li>
                                <li>RESTful APIs</li>
                                <li>Apache Tomcat</li>
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
                                <li>Responsive Design</li>
                                <li>Bootstrap</li>
                            </ul>
                        </div>
                        <div class="tech-category">
                            <div class="tech-category-header">
                                <i class="fas fa-database"></i>
                                <h4>Database &amp; Storage</h4>
                            </div>
                            <ul class="tech-list">
                                <li>SQL / MySQL</li>
                                <li>AWS S3</li>
                                <li>CDN (CloudFront)</li>
                            </ul>
                        </div>
                        <div class="tech-category">
                            <div class="tech-category-header">
                                <i class="fas fa-credit-card"></i>
                                <h4>Payments</h4>
                            </div>
                            <ul class="tech-list">
                                <li>Razorpay</li>
                                <li>UPI Integration</li>
                                <li>Paytm / PhonePe</li>
                                <li>Card Processing</li>
                                <li>EMI Options</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- SIDEBAR -->
            <aside class="sidebar">
                <div class="sidebar-sticky">
                    <div class="sidebar-card reveal stagger-1">
                        <h3 class="sidebar-title">Project Information</h3>
                        <div class="project-info-list">
                            <div class="info-item"><span class="info-label">Company</span><span class="info-value">Bull Clothings</span></div>
                            <div class="info-item"><span class="info-label">Industry</span><span class="info-value">Fashion E-Commerce</span></div>
                            <div class="info-item"><span class="info-label">Duration</span><span class="info-value">1 Month</span></div>
                            <div class="info-item"><span class="info-label">Team Size</span><span class="info-value">2 Developers</span></div>
                            <div class="info-item"><span class="info-label">Platform</span><span class="info-value">Web + Mobile PWA</span></div>
                            <div class="info-item">
                                <span class="info-label">Status</span>
                                <span class="info-value status-badge"><span class="status-dot"></span>Live &amp; Scaling</span>
                            </div>
                        </div>
                    </div>

                    <div class="sidebar-card sidebar-live-card reveal stagger-2">
                        <h3 class="sidebar-title">
                            <i class="fas fa-globe" style="font-size:0.9rem;margin-right:0.4rem;"></i>
                            View Live Project
                        </h3>
                        <p>See Bull Clothings in action â real products, AR try-on, and full platform.</p>
                        <a href="http://72.61.254.212:8080/" target="_blank" rel="noopener noreferrer" class="sidebar-live-btn">
                            <i class="fas fa-arrow-up-right-from-square"></i>
                            Open Bull Clothings
                        </a>
                    </div>

                    <div class="sidebar-card reveal stagger-3">
                        <h3 class="sidebar-title">Services Delivered</h3>
                        <ul class="services-list">
                            <li><i class="fas fa-check-circle"></i> E-Commerce Development</li>
                            <li><i class="fas fa-check-circle"></i> AI/ML Integration</li>
                            <li><i class="fas fa-check-circle"></i> AR Virtual Try-On</li>
                            <li><i class="fas fa-check-circle"></i> UI/UX Design</li>
                            <li><i class="fas fa-check-circle"></i> Payment Gateway Integration</li>
                            <li><i class="fas fa-check-circle"></i> Cloud Infrastructure</li>
                            <li><i class="fas fa-check-circle"></i> Mobile App Development</li>
                            <li><i class="fas fa-check-circle"></i> SEO Optimization</li>
                            <li><i class="fas fa-check-circle"></i> Analytics &amp; Tracking</li>
                            <li><i class="fas fa-check-circle"></i> Ongoing Maintenance</li>
                        </ul>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</section>

<!-- PLATFORM FEATURES -->
<section class="platform-features-section">
    <div class="container">
        <div class="platform-section-top reveal">
            <div class="section-eyebrow"><i class="fas fa-layer-group"></i>&nbsp; Full Platform</div>
            <h2 class="block-title" style="justify-content:center;font-size:2.2rem;">Complete E-Commerce Features</h2>
            <p>Everything you need for a world-class fashion shopping experience.</p>
        </div>

        <div class="platform-grid">
            <div class="platform-card reveal stagger-1">
                <div class="pc-icon"><i class="fas fa-tshirt"></i></div>
                <div class="pc-title">50,000+ Premium Products</div>
                <p class="pc-desc">Curated collection of latest fashion trends across all categories and styles</p>
                <span class="pc-num">01</span>
            </div>
            <div class="platform-card reveal stagger-2">
                <div class="pc-icon"><i class="fas fa-filter"></i></div>
                <div class="pc-title">Advanced Product Filters</div>
                <p class="pc-desc">Smart filters by size, color, brand, price, occasion, fabric, and style</p>
                <span class="pc-num">02</span>
            </div>
            <div class="platform-card reveal stagger-3">
                <div class="pc-icon"><i class="fas fa-heart"></i></div>
                <div class="pc-title">Wishlist &amp; Collections</div>
                <p class="pc-desc">Save favorite items, create collections, and get price drop notifications</p>
                <span class="pc-num">03</span>
            </div>
            <div class="platform-card reveal stagger-4">
                <div class="pc-icon"><i class="fas fa-truck"></i></div>
                <div class="pc-title">Fast Delivery Network</div>
                <p class="pc-desc">2â3 day delivery across India with real-time order tracking</p>
                <span class="pc-num">04</span>
            </div>
            <div class="platform-card reveal stagger-5">
                <div class="pc-icon"><i class="fas fa-comments"></i></div>
                <div class="pc-title">Live Chat Support</div>
                <p class="pc-desc">24/7 customer support with AI chatbot and human assistance</p>
                <span class="pc-num">05</span>
            </div>
            <div class="platform-card reveal stagger-6">
                <div class="pc-icon"><i class="fas fa-star-half-alt"></i></div>
                <div class="pc-title">Reviews &amp; Ratings</div>
                <p class="pc-desc">Verified customer reviews with photos and detailed feedback</p>
                <span class="pc-num">06</span>
            </div>
            <div class="platform-card reveal stagger-1">
                <div class="pc-icon"><i class="fas fa-tags"></i></div>
                <div class="pc-title">Smart Offers &amp; Discounts</div>
                <p class="pc-desc">Personalized deals, seasonal sales, and loyalty rewards program</p>
                <span class="pc-num">07</span>
            </div>
            <div class="platform-card reveal stagger-2">
                <div class="pc-icon"><i class="fas fa-exchange-alt"></i></div>
                <div class="pc-title">Easy Returns &amp; Exchange</div>
                <p class="pc-desc">Hassle-free 15-day return policy with doorstep pickup</p>
                <span class="pc-num">08</span>
            </div>
            <div class="platform-card reveal stagger-3">
                <div class="pc-icon"><i class="fas fa-bell"></i></div>
                <div class="pc-title">Smart Notifications</div>
                <p class="pc-desc">Price drops, restocks, sales alerts, and order updates</p>
                <span class="pc-num">09</span>
            </div>
            <div class="platform-card reveal stagger-4">
                <div class="pc-icon"><i class="fas fa-user-circle"></i></div>
                <div class="pc-title">Style Quiz &amp; Profiles</div>
                <p class="pc-desc">Personalized profiles with style preferences and purchase history</p>
                <span class="pc-num">10</span>
            </div>
            <div class="platform-card reveal stagger-5">
                <div class="pc-icon"><i class="fas fa-shield-alt"></i></div>
                <div class="pc-title">Secure Transactions</div>
                <p class="pc-desc">PCI DSS compliant with SSL encryption and fraud protection</p>
                <span class="pc-num">11</span>
            </div>
            <div class="platform-card reveal stagger-6">
                <div class="pc-icon"><i class="fas fa-share-alt"></i></div>
                <div class="pc-title">Social Shopping</div>
                <p class="pc-desc">Share products, create looks, and shop with friends</p>
                <span class="pc-num">12</span>
            </div>
        </div>
    </div>
</section>

<!-- AI SOLUTION -->
<section class="ai-solution-section">
    <div class="ai-glow-1"></div>
    <div class="ai-glow-2"></div>
    <div class="container">
        <div class="ai-section-header reveal">
            <div class="ai-section-header-left">
                <div class="ai-section-eyebrow"><i class="fas fa-robot"></i>&nbsp; AI-Powered Solution</div>
                <h2 class="ai-section-title">Intelligent Systems<br><span>Built for Fashion</span></h2>
                <p class="ai-section-desc">
                    A comprehensive AI-first fashion e-commerce platform that eliminates traditional online
                    shopping pain points through intelligent algorithms, AR technology, and deep personalization.
                </p>
            </div>
            <div class="ai-section-header-right">
                <a href="http://72.61.254.212:8080/" target="_blank" rel="noopener noreferrer" class="visit-site-btn">
                    <span class="btn-live-dot"></span>
                    Explore Live Platform
                    <i class="fas fa-arrow-up-right-from-square"></i>
                </a>
            </div>
        </div>

        <div class="ai-features-grid">
            <div class="ai-feature-card reveal stagger-1">
                <div class="ai-feature-number">01</div>
                <div class="ai-feature-head">
                    <div class="ai-feature-icon"><i class="fas fa-camera"></i></div>
                    <h3>Virtual Try-On with AR Technology</h3>
                </div>
                <p class="ai-feature-desc">
                    Revolutionary augmented reality feature allowing customers to virtually try on clothes
                    using their smartphone camera or uploaded photos. Advanced computer vision accurately
                    maps garments to body dimensions with 95% accuracy, reducing purchase uncertainty.
                </p>
                <div class="ai-feature-tags">
                    <span class="ai-tag">AR Core/ARKit</span>
                    <span class="ai-tag">TensorFlow</span>
                    <span class="ai-tag">OpenCV</span>
                    <span class="ai-tag">WebGL</span>
                </div>
                <ul class="ai-highlights">
                    <li><i class="fas fa-check"></i> Real-time AR try-on using smartphone camera</li>
                    <li><i class="fas fa-check"></i> Photo upload for virtual fitting room</li>
                    <li><i class="fas fa-check"></i> Multiple angle views and 360Â° rotation</li>
                    <li><i class="fas fa-check"></i> Accurate body measurement mapping</li>
                    <li><i class="fas fa-check"></i> 73% reduction in product returns</li>
                </ul>
            </div>

            <div class="ai-feature-card reveal stagger-2">
                <div class="ai-feature-number">02</div>
                <div class="ai-feature-head">
                    <div class="ai-feature-icon"><i class="fas fa-ruler-combined"></i></div>
                    <h3>AI-Powered Size Recommendation Engine</h3>
                </div>
                <p class="ai-feature-desc">
                    Intelligent ML system analyzing customer measurements, purchase history, return patterns,
                    and product specifications to provide highly accurate size recommendations. Accounts for
                    brand-specific variations and fabric stretch across 50,000+ products.
                </p>
                <div class="ai-feature-tags">
                    <span class="ai-tag">Machine Learning</span>
                    <span class="ai-tag">Neural Networks</span>
                    <span class="ai-tag">scikit-learn</span>
                    <span class="ai-tag">Collaborative Filtering</span>
                </div>
                <ul class="ai-highlights">
                    <li><i class="fas fa-check"></i> Personalized size recommendations per product</li>
                    <li><i class="fas fa-check"></i> Body measurement analysis and fit prediction</li>
                    <li><i class="fas fa-check"></i> Brand-specific sizing adjustments</li>
                    <li><i class="fas fa-check"></i> Learning from return patterns and feedback</li>
                    <li><i class="fas fa-check"></i> 94% size recommendation accuracy</li>
                </ul>
            </div>

            <div class="ai-feature-card reveal stagger-3">
                <div class="ai-feature-number">03</div>
                <div class="ai-feature-head">
                    <div class="ai-feature-icon"><i class="fas fa-search"></i></div>
                    <h3>Visual Search &amp; Smart Product Discovery</h3>
                </div>
                <p class="ai-feature-desc">
                    Advanced computer vision enabling customers to search using images. Upload a photo of
                    any outfit or screenshot from social media, and AI instantly identifies similar products
                    from the catalog. Smart filters and semantic search make discovery 85% faster.
                </p>
                <div class="ai-feature-tags">
                    <span class="ai-tag">Computer Vision</span>
                    <span class="ai-tag">Deep Learning</span>
                    <span class="ai-tag">CNN Models</span>
                    <span class="ai-tag">Elasticsearch</span>
                </div>
                <ul class="ai-highlights">
                    <li><i class="fas fa-check"></i> Image-based product search functionality</li>
                    <li><i class="fas fa-check"></i> Visual similarity matching algorithms</li>
                    <li><i class="fas fa-check"></i> Smart filters: color, pattern, style, price</li>
                    <li><i class="fas fa-check"></i> Social media screenshot search</li>
                    <li><i class="fas fa-check"></i> 85% faster product discovery</li>
                </ul>
            </div>

            <div class="ai-feature-card reveal stagger-4">
                <div class="ai-feature-number">04</div>
                <div class="ai-feature-head">
                    <div class="ai-feature-icon"><i class="fas fa-magic"></i></div>
                    <h3>Personalized Style Recommendations</h3>
                </div>
                <p class="ai-feature-desc">
                    Hyper-personalized recommendation engine analyzing browsing behavior, purchase history,
                    and trending fashion to suggest tailored products. Dynamic homepage that evolves with
                    each user's preferences, increasing average order value by 45%.
                </p>
                <div class="ai-feature-tags">
                    <span class="ai-tag">Collaborative Filtering</span>
                    <span class="ai-tag">Content-Based</span>
                    <span class="ai-tag">Hybrid Models</span>
                    <span class="ai-tag">Real-time Analytics</span>
                </div>
                <ul class="ai-highlights">
                    <li><i class="fas fa-check"></i> Personalized homepage for each user</li>
                    <li><i class="fas fa-check"></i> Style preference learning algorithm</li>
                    <li><i class="fas fa-check"></i> Complete outfit suggestions and styling tips</li>
                    <li><i class="fas fa-check"></i> Smart cross-sell and upsell recommendations</li>
                    <li><i class="fas fa-check"></i> 45% increase in average order value</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- IMPACT SECTION -->
<section class="impact-section">
    <div class="container">
        <div class="impact-header reveal">
            <div class="section-eyebrow"><i class="fas fa-chart-line"></i>&nbsp; Measurable Results</div>
            <h2>Platform Impact &amp; Results</h2>
            <p>Real numbers that demonstrate the power of AI-driven fashion commerce</p>
        </div>
        <div class="impact-grid">
            <div class="impact-card reveal stagger-1">
                <div class="impact-icon"><i class="fas fa-users"></i></div>
                <div class="impact-num">800K+</div>
                <div class="impact-desc">Active Users<br>Across India</div>
            </div>
            <div class="impact-card reveal stagger-2">
                <div class="impact-icon"><i class="fas fa-percentage"></i></div>
                <div class="impact-num">58%</div>
                <div class="impact-desc">Conversion<br>Rate Achieved</div>
            </div>
            <div class="impact-card reveal stagger-3">
                <div class="impact-icon"><i class="fas fa-undo"></i></div>
                <div class="impact-num">73%</div>
                <div class="impact-desc">Reduction in<br>Product Returns</div>
            </div>
            <div class="impact-card reveal stagger-4">
                <div class="impact-icon"><i class="fas fa-ruler"></i></div>
                <div class="impact-num">94%</div>
                <div class="impact-desc">Size Prediction<br>Accuracy</div>
            </div>
            <div class="impact-card reveal stagger-5">
                <div class="impact-icon"><i class="fas fa-shopping-cart"></i></div>
                <div class="impact-num">+45%</div>
                <div class="impact-desc">Average Order<br>Value Increase</div>
            </div>
            <div class="impact-card reveal stagger-6">
                <div class="impact-icon"><i class="fas fa-bolt"></i></div>
                <div class="impact-num">85%</div>
                <div class="impact-desc">Faster Product<br>Discovery</div>
            </div>
        </div>
    </div>
</section>




<!-- BACK TO TOP -->
<button class="back-to-top" id="backToTop" aria-label="Back to top">
    <i class="fas fa-arrow-up"></i>
</button>

 <jsp:include page="../../includes/footer/footer.jsp" />

<script>
// Scroll reveal
const revealEls = document.querySelectorAll('.reveal, .reveal-left, .reveal-right');
const io = new IntersectionObserver((entries) => {
    entries.forEach(e => {
        if (e.isIntersecting) {
            e.target.classList.add('visible');
        }
    });
}, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });
revealEls.forEach(el => io.observe(el));

// Counter animation
function animateCounter(el, target, suffix) {
    let start = 0;
    const duration = 1800;
    const step = target / (duration / 16);
    const timer = setInterval(() => {
        start += step;
        if (start >= target) {
            start = target;
            clearInterval(timer);
        }
        el.textContent = Math.floor(start);
    }, 16);
}

const counterObserver = new IntersectionObserver((entries) => {
    entries.forEach(e => {
        if (e.isIntersecting) {
            const el = e.target;
            const target = parseInt(el.dataset.target);
            animateCounter(el, target);
            counterObserver.unobserve(el);
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('[data-target]').forEach(el => counterObserver.observe(el));

// Back to top
const btn = document.getElementById('backToTop');
window.addEventListener('scroll', () => {
    btn.classList.toggle('show', window.scrollY > 400);
});
btn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});
</script>



</body>
</html>
