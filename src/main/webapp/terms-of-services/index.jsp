<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Terms & Conditions - IARDO E-commerce Enabler">
    <title>Terms & Conditions | IARDO Marketing</title>
    <!-- <link rel="stylesheet" href="/assets/css/terms1.css?v=1.2"> -->
    <style>
    	/* =====================================================
   Terms & Conditions - Enhanced Professional UI
   Modern Glassmorphism Light Theme
===================================================== */

@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=JetBrains+Mono:wght@400;500;600&display=swap');

:root {
    /* Light Theme Backgrounds */
    --bg-main: #f4f6f9;
    --bg-gradient-1: #e2e8f0;
    --bg-gradient-2: #ffffff;
    
    /* Glassmorphism Cards */
    --bg-card: rgba(255, 255, 255, 0.7);
    --bg-card-hover: rgba(255, 255, 255, 0.9);
    
    /* Text Colors for High Contrast */
    --text-main: #1e293b;
    --text-muted: #475569;
    --text-dim: #64748b;
    
    /* Vibrant Primary & Accents */
    --primary: #0284c7;        /* Deeper blue for readability */
    --primary-light: #0ea5e9;  /* Brighter blue for accents */
    --primary-glow: rgba(2, 132, 199, 0.2);
    
    --accent: #e11d48;         /* Rose/Pink accent */
    --accent-glow: rgba(225, 29, 72, 0.15);
    
    /* Borders & Highlights */
    --highlight-bg: rgba(2, 132, 199, 0.05);
    --border-color: rgba(0, 0, 0, 0.06);
    --border-glow: rgba(2, 132, 199, 0.15);
    
    /* Softer Shadows for Light Theme */
    --shadow-lg: 0 20px 40px -10px rgba(0, 0, 0, 0.08);
}

/* Base Styles */
.terms-page {
    font-family: 'Outfit', system-ui, -apple-system, sans-serif;
    background: linear-gradient(135deg, var(--bg-main) 0%, var(--bg-gradient-1) 50%, var(--bg-gradient-2) 100%);
    color: var(--text-main);
    line-height: 1.8;
    min-height: 100vh;
    padding: 0;
    margin: 0;
    overflow-x: hidden;
    position: relative;
}

.terms-page * {
    box-sizing: border-box;
}

/* Animated Particle Background - Softer for Light Mode */
.terms-page::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: 
        radial-gradient(circle at 20% 30%, var(--primary-glow) 0%, transparent 50%),
        radial-gradient(circle at 80% 20%, var(--accent-glow) 0%, transparent 50%),
        radial-gradient(circle at 40% 70%, rgba(147, 51, 234, 0.1) 0%, transparent 50%),
        radial-gradient(circle at 90% 80%, rgba(16, 185, 129, 0.08) 0%, transparent 50%);
    background-size: 200% 200%;
    animation: particleFloat 30s ease-in-out infinite;
    pointer-events: none;
    z-index: 0;
    opacity: 0.8;
}

@keyframes particleFloat {
    0%, 100% { 
        background-position: 0% 0%, 100% 0%, 50% 100%, 100% 100%; 
        opacity: 0.6;
    }
    25% { 
        background-position: 100% 50%, 0% 100%, 0% 0%, 50% 50%; 
        opacity: 0.8;
    }
    50% { 
        background-position: 50% 100%, 50% 0%, 100% 50%, 0% 0%; 
        opacity: 0.7;
    }
    75% { 
        background-position: 0% 50%, 100% 100%, 50% 0%, 50% 100%; 
        opacity: 0.9;
    }
}

/* Grid Pattern Overlay - Darker for Light Bg */
.terms-page::after {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: 
        linear-gradient(rgba(0, 0, 0, 0.04) 1px, transparent 1px),
        linear-gradient(90deg, rgba(0, 0, 0, 0.04) 1px, transparent 1px);
    background-size: 50px 50px;
    pointer-events: none;
    z-index: 0;
    opacity: 0.6;
}

/* Container */
.terms-page .container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 140px 60px 80px;
    position: relative;
    z-index: 1;
}

/* Main Heading */
.terms-page h1 {
    font-size: 72px;
    font-weight: 900;
    background: linear-gradient(135deg, 
        var(--primary) 0%, 
        #2563eb 40%,
        var(--accent) 80%,
        #9333ea 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    background-size: 200% auto;
    margin-bottom: 60px;
    letter-spacing: -2px;
    position: relative;
    animation: 
        fadeInUp 1s ease-out,
        shimmer 8s ease-in-out infinite,
        textGlow 4s ease-in-out infinite;
    line-height: 1.1;
    text-align: center;
    padding: 40px;
    background-color: rgba(255, 255, 255, 0.6);
    backdrop-filter: blur(15px);
    border-radius: 24px;
    border: 1px solid rgba(255, 255, 255, 0.5);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
}

@keyframes shimmer {
    0%, 100% { background-position: 0% center; }
    50% { background-position: 100% center; }
}

@keyframes textGlow {
    0%, 100% { filter: drop-shadow(0 0 8px rgba(2, 132, 199, 0.15)); }
    50% { filter: drop-shadow(0 0 15px rgba(2, 132, 199, 0.3)); }
}

/* Section Headings */
.terms-page h2 {
    font-size: 32px;
    font-weight: 800;
    color: var(--text-main);
    margin: 60px 0 30px;
    position: relative;
    padding-left: 40px;
    animation: slideInLeft 0.6s ease-out;
    letter-spacing: -0.5px;
}

.terms-page h2::before {
    content: '';
    position: absolute;
    left: 0;
    top: 50%;
    transform: translateY(-50%);
    width: 6px;
    height: 40px;
    background: linear-gradient(180deg, var(--primary), var(--accent));
    border-radius: 6px;
    box-shadow: 0 0 15px var(--primary-glow);
    animation: pulseLine 3s ease-in-out infinite;
}

@keyframes pulseLine {
    0%, 100% { 
        opacity: 1; 
        transform: translateY(-50%) scaleY(1);
        box-shadow: 0 0 10px var(--primary-glow);
    }
    50% { 
        opacity: 0.8; 
        transform: translateY(-50%) scaleY(1.1);
        box-shadow: 0 0 20px var(--primary-glow);
    }
}

.terms-page h2::after {
    content: '';
    position: absolute;
    left: 40px;
    bottom: -8px;
    width: 60px;
    height: 3px;
    background: linear-gradient(90deg, var(--primary), transparent);
    border-radius: 3px;
    animation: underlineGrow 0.6s ease-out 0.3s both;
}

@keyframes underlineGrow {
    from { width: 0; opacity: 0; }
    to { width: 60px; opacity: 1; }
}

/* Subheadings with Icons */
.terms-page h3 {
    font-size: 24px;
    font-weight: 700;
    color: var(--primary); /* Deep blue for visibility */
    margin: 40px 0 20px;
    display: flex;
    align-items: center;
    gap: 12px;
    letter-spacing: -0.3px;
}

.terms-page h3::before {
    content: '▸';
    color: var(--accent);
    font-size: 24px;
    animation: arrowBounce 2s ease-in-out infinite;
}

@keyframes arrowBounce {
    0%, 100% { transform: translateX(0); }
    50% { transform: translateX(5px); }
}

/* Paragraphs */
.terms-page p {
    margin-bottom: 24px;
    color: var(--text-muted);
    text-align: justify;
    line-height: 1.9;
    font-size: 16.5px;
    font-weight: 400;
}

/* Enhanced Links */
.terms-page a {
    color: var(--primary);
    font-weight: 600;
    text-decoration: none;
    position: relative;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    display: inline-block;
}

.terms-page a::after {
    content: '';
    position: absolute;
    bottom: -2px;
    left: 0;
    width: 0;
    height: 2px;
    background: linear-gradient(90deg, var(--primary), var(--accent));
    transition: width 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.terms-page a:hover {
    color: var(--primary-light);
    transform: translateY(-1px);
}

.terms-page a:hover::after {
    width: 100%;
}

/* Premium Highlight Box */
.terms-page .highlight-box {
    background: linear-gradient(135deg, 
        rgba(2, 132, 199, 0.05) 0%, 
        rgba(225, 29, 72, 0.05) 100%);
    border-left: 5px solid var(--primary);
    border-radius: 16px;
    padding: 30px 35px;
    margin: 40px 0;
    box-shadow: 
        0 10px 30px rgba(0, 0, 0, 0.04),
        0 0 0 1px rgba(255, 255, 255, 0.6) inset;
    position: relative;
    overflow: hidden;
    animation: fadeIn 0.6s ease-out;
    backdrop-filter: blur(10px);
    background-color: rgba(255, 255, 255, 0.4);
}

.terms-page .highlight-box::before {
    content: '⚠';
    position: absolute;
    top: 50%;
    right: 30px;
    transform: translateY(-50%);
    font-size: 64px;
    opacity: 0.05;
    color: var(--primary);
    animation: warningPulse 3s ease-in-out infinite;
}

@keyframes warningPulse {
    0%, 100% { 
        transform: translateY(-50%) scale(1); 
        opacity: 0.05; 
    }
    50% { 
        transform: translateY(-50%) scale(1.1); 
        opacity: 0.1; 
    }
}

.terms-page .highlight-box::after {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, 
        transparent, 
        rgba(255, 255, 255, 0.6), 
        transparent);
    animation: shimmerBox 3s ease-in-out infinite;
}

@keyframes shimmerBox {
    0% { left: -100%; }
    100% { left: 200%; }
}

.terms-page .highlight-box p {
    margin: 0;
    font-weight: 500;
    color: var(--text-main);
    position: relative;
    z-index: 1;
}

/* Contact Info Box */
.terms-page .contact-info {
    background: linear-gradient(135deg, 
        rgba(255, 255, 255, 0.8) 0%, 
        rgba(240, 244, 248, 0.8) 100%);
    border-radius: 20px;
    padding: 40px;
    margin: 50px 0;
    border: 1px solid var(--border-color);
    box-shadow: var(--shadow-lg);
    position: relative;
    overflow: hidden;
    backdrop-filter: blur(10px);
}

.terms-page .contact-info::before {
    content: '';
    position: absolute;
    top: -50%;
    right: -50%;
    width: 200%;
    height: 200%;
    background: radial-gradient(circle, 
        rgba(2, 132, 199, 0.08) 0%, 
        transparent 70%);
    animation: contactGlow 8s ease-in-out infinite;
}

@keyframes contactGlow {
    0%, 100% { transform: translate(0, 0) scale(1); }
    50% { transform: translate(-20px, -20px) scale(1.1); }
}

.terms-page .contact-info h3 {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    color: var(--primary);
    margin-top: 0;
    margin-bottom: 25px;
    font-size: 26px;
}

.terms-page .contact-info h3::before {
    content: '📧';
    font-size: 26px;
    animation: emailBounce 2s ease-in-out infinite;
}

@keyframes emailBounce {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-5px); }
}

.terms-page .contact-info p {
    margin-bottom: 12px;
    position: relative;
    z-index: 1;
}

/* Sections with Glassmorphism */
.terms-page .section {
    margin-bottom: 60px;
    animation: fadeIn 0.8s ease-out;
    background: var(--bg-card);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    padding: 40px;
    border-radius: 20px;
    border: 1px solid rgba(255, 255, 255, 0.6);
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.04);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.terms-page .section:hover {
    transform: translateY(-2px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.06);
    background: var(--bg-card-hover);
}

/* Enhanced Lists */
.terms-page ul {
    margin-left: 30px;
    margin-bottom: 30px;
    list-style: none;
    padding-left: 0;
}

.terms-page ul li {
    margin-bottom: 18px;
    color: var(--text-muted);
    position: relative;
    padding-left: 30px;
    line-height: 1.8;
}

.terms-page ul li::before {
    content: '→';
    position: absolute;
    left: 0;
    color: var(--primary);
    font-weight: 700;
    font-size: 18px;
    animation: arrowSlide 2s ease-in-out infinite;
}

@keyframes arrowSlide {
    0%, 100% { transform: translateX(0); }
    50% { transform: translateX(4px); }
}

/* Scroll Reveal Animation */
.terms-page .reveal {
    opacity: 0;
    transform: translateY(40px);
    transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.terms-page .reveal.active {
    opacity: 1;
    transform: translateY(0);
}

/* Base Animations */
@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes fadeInUp {
    from { 
        opacity: 0; 
        transform: translateY(40px); 
    }
    to { 
        opacity: 1; 
        transform: translateY(0); 
    }
}

@keyframes slideInLeft {
    from { 
        opacity: 0; 
        transform: translateX(-40px); 
    }
    to { 
        opacity: 1; 
        transform: translateX(0); 
    }
}

/* Strong Text Enhancement */
.terms-page strong {
    color: var(--text-main);
    font-weight: 700;
}

/* Strong text with links should not have gradient */
.terms-page strong a {
    background: none;
    -webkit-background-clip: unset;
    -webkit-text-fill-color: unset;
    background-clip: unset;
    color: var(--primary);
}

/* Selection Styling */
.terms-page ::selection {
    background: var(--primary);
    color: white;
}

.terms-page ::-moz-selection {
    background: var(--primary);
    color: white;
}

/* Custom Scrollbar - Light Theme Adapted */
.terms-page::-webkit-scrollbar {
    width: 12px;
}

.terms-page::-webkit-scrollbar-track {
    background: #e2e8f0;
    border-left: 1px solid var(--border-color);
}

.terms-page::-webkit-scrollbar-thumb {
    background: linear-gradient(180deg, var(--primary), var(--accent));
    border-radius: 10px;
    border: 2px solid #e2e8f0;
}

.terms-page::-webkit-scrollbar-thumb:hover {
    background: linear-gradient(180deg, var(--primary-light), var(--accent));
}

/* Responsive Design */
@media (max-width: 1024px) {
    .terms-page .container { 
        padding: 130px 40px 60px; 
    }
    .terms-page h1 { 
        font-size: 56px; 
    }
    .terms-page .section {
        padding: 35px 30px;
    }
}

@media (max-width: 768px) {
    .terms-page .container { 
        padding: 120px 30px 50px; 
    }
    .terms-page h1 { 
        font-size: 42px; 
        letter-spacing: -1px;
        padding: 30px;
    }
    .terms-page h2 { 
        font-size: 26px; 
        padding-left: 35px; 
    }
    .terms-page h2::before { 
        width: 5px; 
        height: 32px; 
    }
    .terms-page h3 { 
        font-size: 20px; 
    }
    .terms-page .section {
        padding: 30px 25px;
        margin-bottom: 40px;
    }
    .terms-page .highlight-box,
    .terms-page .contact-info { 
        padding: 25px; 
    }
    .terms-page ul { 
        margin-left: 20px; 
    }
}

@media (max-width: 480px) {
    .terms-page .container { 
        padding: 110px 20px 40px; 
    }
    .terms-page h1 { 
        font-size: 36px;
        padding: 25px 20px;
    }
    .terms-page h2 { 
        font-size: 24px; 
        padding-left: 30px;
    }
    .terms-page h3 { 
        font-size: 18px; 
    }
    .terms-page p {
        font-size: 15px;
    }
    .terms-page .section {
        padding: 25px 20px;
        margin-bottom: 35px;
    }
    .terms-page .highlight-box::before {
        font-size: 48px;
        right: 15px;
    }
}

/* Loading Animation */
@keyframes contentLoad {
    0% {
        opacity: 0;
        transform: scale(0.95);
    }
    100% {
        opacity: 1;
        transform: scale(1);
    }
}
    	
    </style>
</head>
<body>

    <jsp:include page="../includes/navbar/navbar.jsp" />

<div class="terms-page">
<div class="container">
    <h1 class="reveal">Terms & Conditions</h1>

    <div class="section reveal">
        <p>This document is an electronic record in terms of the Information Technology Act, 2000 and rules there under as applicable and the amended provisions pertaining to electronic records in various statutes as amended by the Information Technology Act, 2000. This electronic record is generated by a computer system and does not require any physical or digital signatures.</p>
        
        <p>This document is published in accordance with the provisions of Rule 3 (1) of the Information Technology (Intermediaries guidelines) Rules, 2011 that require publishing the rules and regulations, privacy policy and Terms of Use for access or usage of <strong>www.iardo.in</strong>, including the related mobile site and mobile application (hereinafter referred to as <strong>"Platform"</strong>).</p>
        
        <p>The Platform is owned by the <strong>International Association of Research and Developed Organization (IARDO)</strong>, a company incorporated under the Companies Act, 1956 with its registered office on the Seventh floor, 714, Amba Tower, DC Chowk, Sector 9, New Delhi, North West Delhi, Delhi, 110085 (hereinafter referred to as "Platform Owner", "we", "us", "our").</p>
    </div>

    <div class="highlight-box reveal">
        <p><strong>ACCESSING, BROWSING OR OTHERWISE USING THE PLATFORM INDICATES YOUR AGREEMENT TO ALL THE TERMS AND CONDITIONS UNDER THESE TERMS OF USE, SO PLEASE READ THE TERMS OF USE CAREFULLY BEFORE PROCEEDING.</strong></p>
    </div>

    <div class="section reveal">
        <h2>Agreement to Terms</h2>
        <p>Your use of the Platform and services and tools are governed by the following terms and conditions ("Terms of Use") as applicable to the Platform including the applicable policies which are incorporated herein by way of reference. If You transact on the Platform, You shall be subject to the policies that are applicable to the Platform for such transaction.</p>
        
        <p>By mere use of the Platform, You shall be contracting with the Platform Owner and these terms and conditions including the policies constitute Your binding obligations, with the Platform Owner.</p>
        
        <p>These Terms of Use relate to your use of our website, goods (as applicable) or services (as applicable) (collectively, <strong>"Services"</strong>). Any terms and conditions proposed by You which are in addition to or which conflict with these Terms of Use are expressly rejected by the Platform Owner and shall be of no force or effect.</p>
        
        <p>These Terms of Use can be modified at any time without assigning any reason. It is your responsibility to periodically review these Terms of Use to stay informed of updates. For the purpose of these Terms of Use, wherever the context so requires "you", "your" or "user" shall mean any natural or legal person who has agreed to become a user/buyer on the Platform.</p>
    </div>

    <div class="section reveal">
        <h2>Use of Platform and Services</h2>
        <p>The use of the Platform and/or availing of our Services is subject to the following Terms of Use:</p>
        
        <p>To access and use the Services, you agree to provide true, accurate and complete information to us during and after registration, and you shall be responsible for all acts done through the use of your registered account on the Platform.</p>
        
        <p>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials offered on this website or through the Services, for any specific purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</p>
        
        <p>Your use of our Services and the Platform is solely and entirely at your own risk and discretion for which we shall not be liable to you in any manner.</p>
        
        <p>You are required to independently assess and ensure that the Services meet your requirements. The contents of the Platform and the Services are proprietary to us and are licensed to us. You will not have any authority to claim any intellectual property rights, title, or interest in its contents.</p>
        
        <p>You acknowledge that unauthorized use of the Platform and/or the Services may lead to action against you as per these Terms of Use and/or applicable laws.</p>
    </div>

    <div class="section reveal">
        <h2>Applied Terms & Conditions</h2>
        <p><strong>We are an E-commerce Enabler, Services Provider and digital marketing service provider company and we do not offer Long-Term services. We only offer our services on a monthly payment basis.</strong></p>
    </div>

    <div class="section reveal">
        <h2>Notice</h2>
        <p>By accessing and using the IARDO E-commerce Enabler website (<strong><a href="${pageContext.request.contextPath}/">${pageContext.request.contextPath}/</a></strong>), downloading materials from the IARDO E-commerce Enabler website or using any of the services we offer, you agree to abide by the terms and conditions of use detailed below. If you do not agree to be bound by these terms and conditions of use, please refrain from using the IARDO E-commerce Enabler website or our services.</p>
    </div>

    <div class="section reveal">
        <h2>Intellectual Property Rights</h2>
        <p>All content included on the Platform, such as text, graphics, logos, images, audio clips, video, data, music, software and other material (collectively "Content") is an intellectual property of the Platform Owner, its affiliates or third parties. The Platform Owner authorizes you to view and access a single copy of the Content available on or from the Platform solely for your personal, non-commercial use. The contents of the Platform cannot be copied, reproduced, recompiled, decompiled, disassembled, reverse engineered, distributed, published, displayed, modified, uploaded to create derivative works from, transmitted or used to create any derivative work or in any way exploited.</p>
    </div>

    <div class="section reveal">
        <h2>Third-Party Business</h2>
        <p>The Platform may include services, content and products from third parties ("Third-Party Services"). We are not liable or responsible for any Third-Party Services. We provide links to Third-Party Services as a convenience. We cannot and do not guarantee the accuracy, completeness, timeliness, or correct sequencing of information on Third-Party Services.</p>
        
        <p>The Platform Owner is not responsible or liable for any content, advertising, products, services or information on or available from third party websites. Links on the Platform do not constitute or imply an endorsement, sponsorship, or recommendation by the Platform Owner of the third party, the Third-Party Services, or the information therein.</p>
    </div>

    <div class="section reveal">
        <h2>Termination</h2>
        <p>These Terms of Use are effective unless and until terminated by either you or us. You may terminate these Terms of Use at any time, provided that you discontinue any further use of the Platform. We may terminate these Terms of Use at any time and may do so immediately without notice.</p>
        
        <p>In the event of termination, you will still be bound by your obligations under these Terms of Use, including the warranties made by you, and by the disclaimers and limitations of liability. The Platform Owner shall not be liable to you or any third party for the termination.</p>
    </div>

    <div class="section reveal">
        <h2>Governing Law and Jurisdiction</h2>
        <p>These terms shall be governed by and constructed in accordance with the laws of India without reference to conflict of laws principles and disputes arising in relation hereto shall be subject to the exclusive jurisdiction of the courts at New Delhi.</p>
    </div>

    <div class="section reveal">
        <h2>Limitation of Liability</h2>
        <p>In no event shall the Platform Owner, nor its directors, employees, partners, agents, suppliers, or affiliates, be accountable for any indirect, incidental, special, eventful or exemplary costs, including without limitation, loss of proceeds, figures, usage, goodwill, or other intangible losses, consequential from:</p>
        
        <ul>
            <li>Your use or access or inability to use or access the Service;</li>
            <li>Any conduct or content of any third party on the Service;</li>
            <li>Any content attained from the Service; and</li>
            <li>Unauthorized access, use or alteration of your transmissions or content, whether or not based on guarantee, agreement, domestic wrong (including carelessness) or any other lawful concept, whether or not we've been informed of the possibility of such damage, and even if a cure set forth herein is originated to have futile of its important purpose.</li>
        </ul>
    </div>

    <div class="section reveal">
        <h2>Refund Policy</h2>
        <p>We do not offer refunds for services once they have been rendered. All sales are final. If you have any questions or concerns about our services, please contact us before making a purchase.</p>
    </div>

    <div class="section reveal">
        <h2>Privacy Policy</h2>
        <p>Your privacy is important to us. Our Privacy Policy explains how we collect, use, and protect your personal information. By using our Platform, you consent to the collection and use of your information as described in our Privacy Policy.</p>
    </div>

    <div class="section reveal">
        <h2>Changes to Terms</h2>
        <p>We reserve the right to modify these Terms & Conditions at any time. We will notify you of any changes by posting the new Terms & Conditions on this page. You are advised to review these Terms & Conditions periodically for any changes. Changes to these Terms & Conditions are effective when they are posted on this page.</p>
    </div>

    <div class="contact-info reveal">
        <h3>Contact Information</h3>
        <p><strong>International Association of Research and Developed Organization (IARDO)</strong></p>
        <p>Seventh floor, 714, Amba Tower, DC Chowk, Sector 9<br>
        New Delhi, North West Delhi, Delhi, 110085</p>
        <p><strong>Email:</strong> <a href="mailto:info@iardo.in">info@iardo.in</a></p>
        <p><strong>Website:</strong> <a href="https://iardo.in" target="_blank">www.iardo.in</a></p>
    </div>

    <div class="section reveal">
        <h2>Disclaimer</h2>
        <p>All logos belong to their respective brands and are used here only for illustration. IARDO does not use any logo for commercial purposes. All the logos given here are only for clarification of the people.</p>
        
        <p>If you have any kind of concern or problem, for that, we apologize to you and please contact us immediately by the given email at <a href="mailto:info@iardo.in">info@iardo.in</a>.</p>
    </div>
</div>
</div>

<jsp:include page="../includes/footer/footer.jsp" />

<script>
    // Reveal animation on scroll
    const reveals = document.querySelectorAll('.reveal');
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
            }
        });
    }, { threshold: 0.1 });

    reveals.forEach(reveal => observer.observe(reveal));
</script>

</body>
</html>
