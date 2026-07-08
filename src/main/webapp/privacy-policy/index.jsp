<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Privacy Policy - IARDO E-commerce Enabler">
    <title>Privacy Policy | IARDO Marketing</title>
    <!-- <link rel="stylesheet" href="/assets/css/privacy1.css?v=1.0.0"> -->
    <style>
    	/* =====================================================
   Privacy Policy - Enhanced Professional UI
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
.privacy-page {
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

.privacy-page * {
    box-sizing: border-box;
}

/* Animated Particle Background - Softer for Light Mode */
.privacy-page::before {
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
.privacy-page::after {
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
.privacy-page .container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 140px 60px 80px;
    position: relative;
    z-index: 1;
}

/* Main Heading */
.privacy-page h1 {
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
.privacy-page h2 {
    font-size: 32px;
    font-weight: 800;
    color: var(--text-main);
    margin: 60px 0 30px;
    position: relative;
    padding-left: 40px;
    animation: slideInLeft 0.6s ease-out;
    letter-spacing: -0.5px;
}

.privacy-page h2::before {
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

.privacy-page h2::after {
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
.privacy-page h3 {
    font-size: 24px;
    font-weight: 700;
    color: var(--primary); /* Deep blue for visibility */
    margin: 40px 0 20px;
    display: flex;
    align-items: center;
    gap: 12px;
    letter-spacing: -0.3px;
}

.privacy-page h3::before {
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
.privacy-page p {
    margin-bottom: 24px;
    color: var(--text-muted);
    text-align: justify;
    line-height: 1.9;
    font-size: 16.5px;
    font-weight: 400;
}

/* Enhanced Links */
.privacy-page a {
    color: var(--primary);
    font-weight: 600;
    text-decoration: none;
    position: relative;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    display: inline-block;
}

.privacy-page a::after {
    content: '';
    position: absolute;
    bottom: -2px;
    left: 0;
    width: 0;
    height: 2px;
    background: linear-gradient(90deg, var(--primary), var(--accent));
    transition: width 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.privacy-page a:hover {
    color: var(--primary-light);
    transform: translateY(-1px);
}

.privacy-page a:hover::after {
    width: 100%;
}

/* Premium Highlight Box */
.privacy-page .highlight-box {
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

.privacy-page .highlight-box::before {
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

.privacy-page .highlight-box::after {
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

.privacy-page .highlight-box p {
    margin: 0;
    font-weight: 500;
    color: var(--text-main);
    position: relative;
    z-index: 1;
}

/* Contact Info Box */
.privacy-page .contact-info {
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

.privacy-page .contact-info::before {
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

.privacy-page .contact-info h3 {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    color: var(--primary);
    margin-top: 0;
    margin-bottom: 25px;
    font-size: 26px;
}

.privacy-page .contact-info h3::before {
    content: '📧';
    font-size: 26px;
    animation: emailBounce 2s ease-in-out infinite;
}

@keyframes emailBounce {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-5px); }
}

.privacy-page .contact-info p {
    margin-bottom: 12px;
    position: relative;
    z-index: 1;
}

/* Sections with Glassmorphism */
.privacy-page .section {
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

.privacy-page .section:hover {
    transform: translateY(-2px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.06);
    background: var(--bg-card-hover);
}

/* Enhanced Lists */
.privacy-page ul {
    margin-left: 30px;
    margin-bottom: 30px;
    list-style: none;
    padding-left: 0;
}

.privacy-page ul li {
    margin-bottom: 18px;
    color: var(--text-muted);
    position: relative;
    padding-left: 30px;
    line-height: 1.8;
}

.privacy-page ul li::before {
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
.privacy-page .reveal {
    opacity: 0;
    transform: translateY(40px);
    transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.privacy-page .reveal.active {
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
.privacy-page strong {
    color: var(--text-main);
    font-weight: 700;
}

/* Strong text with links should not have gradient */
.privacy-page strong a {
    background: none;
    -webkit-background-clip: unset;
    -webkit-text-fill-color: unset;
    background-clip: unset;
    color: var(--primary);
}

/* Selection Styling */
.privacy-page ::selection {
    background: var(--primary);
    color: white;
}

.privacy-page ::-moz-selection {
    background: var(--primary);
    color: white;
}

/* Custom Scrollbar - Light Theme Adapted */
.privacy-page::-webkit-scrollbar {
    width: 12px;
}

.privacy-page::-webkit-scrollbar-track {
    background: #e2e8f0;
    border-left: 1px solid var(--border-color);
}

.privacy-page::-webkit-scrollbar-thumb {
    background: linear-gradient(180deg, var(--primary), var(--accent));
    border-radius: 10px;
    border: 2px solid #e2e8f0;
}

.privacy-page::-webkit-scrollbar-thumb:hover {
    background: linear-gradient(180deg, var(--primary-light), var(--accent));
}

/* Responsive Design */
@media (max-width: 1024px) {
    .privacy-page .container { 
        padding: 130px 40px 60px; 
    }
    .privacy-page h1 { 
        font-size: 56px; 
    }
    .privacy-page .section {
        padding: 35px 30px;
    }
}

@media (max-width: 768px) {
    .privacy-page .container { 
        padding: 120px 30px 50px; 
    }
    .privacy-page h1 { 
        font-size: 42px; 
        letter-spacing: -1px;
        padding: 30px;
    }
    .privacy-page h2 { 
        font-size: 26px; 
        padding-left: 35px; 
    }
    .privacy-page h2::before { 
        width: 5px; 
        height: 32px; 
    }
    .privacy-page h3 { 
        font-size: 20px; 
    }
    .privacy-page .section {
        padding: 30px 25px;
        margin-bottom: 40px;
    }
    .privacy-page .highlight-box,
    .privacy-page .contact-info { 
        padding: 25px; 
    }
    .privacy-page ul { 
        margin-left: 20px; 
    }
}

@media (max-width: 480px) {
    .privacy-page .container { 
        padding: 110px 20px 40px; 
    }
    .privacy-page h1 { 
        font-size: 36px;
        padding: 25px 20px;
    }
    .privacy-page h2 { 
        font-size: 24px; 
        padding-left: 30px;
    }
    .privacy-page h3 { 
        font-size: 18px; 
    }
    .privacy-page p {
        font-size: 15px;
    }
    .privacy-page .section {
        padding: 25px 20px;
        margin-bottom: 35px;
    }
    .privacy-page .highlight-box::before {
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
<div class="privacy-page">
<div class="container">
    <h1 class="reveal">Privacy Policy</h1>
        <div class="section reveal">
            <h2>Introduction</h2>
            <p>This Privacy Policy describes how and its affiliates collectively <strong>"International Association of Research and Developed Organization (IARDO), we, our, us"</strong> collect, use, share, protect or otherwise process your information/personal data through our website <strong>"<a href="https://www.iardo.in">https://www.iardo.in</a>"</strong> (hereinafter referred to as Platform).</p>
            
            <p>Please note that you may be able to browse certain sections of the Platform without registering with us. We do not offer any product/service under this Platform outside India and your personal data will primarily be stored and processed in India.</p>
            
            <p>By visiting this Platform, providing your information or availing any product/service offered on the Platform, you expressly agree to be bound by the terms and conditions of this Privacy Policy, the Terms of Use and the applicable service/product terms and conditions, and agree to be governed by the laws of India including but not limited to the laws applicable to data protection and privacy.</p>
            
            <p>If you do not agree please do not use or access our Platform. Collection collects your personal data when you use our Platform, services or otherwise interact with us during the course of our relationship, and related information is provided from time to time.</p>
        </div>

        <div class="section reveal">
            <h2>Information We Collect</h2>
            <p>Some of the information that we may collect includes but is not limited to personal data/information provided to us during sign-up/registering or using our Platform such as name, date of birth, address, telephone/mobile number, email ID and/or any such information shared as proof of identity or address.</p>
            
            <p>Some of the sensitive personal data may be collected with your consent, such as your bank account or credit or debit card or other payment instrument information or biometric information such as your facial features or physiological information (in order to enable the use of certain features when opted for, available on the Platform) etc all of the above beings in accordance with applicable law(s).</p>
            
            <p>You always have the option to not provide information, by choosing not to use a particular service or feature on the Platform. We may track your behaviour, preferences, and other information that you choose to provide on our Platform. This information is compiled and analysed on an aggregated basis.</p>
            
            <p>We will also collect your information related to your transactions on Platform and such third-party business partner platforms. When such a third-party business partner collects your personal data directly from you, you will be governed by their privacy policies.</p>
            
            <p>We shall not be responsible for the third-party business partner's privacy practices or the content of their privacy policies, and we request you read their privacy policies prior to disclosing any information.</p>
            
            <div class="highlight-box">
                <p><strong>Important:</strong> If you receive an email, or a call from a person/association claiming to be seeking any personal data like debit/credit card PIN, net banking or mobile banking password, we request you never provide such information.</p>
            </div>
        </div>

        <div class="section reveal">
            <h2>Usage</h2>
            <p>We use personal data to provide the services you request. To the extent we use your personal data to market to you, we will provide you the ability to opt out of such uses.</p>
            
            <p>We use your personal data to assist sellers and business partners in handling and fulfilling orders; enhancing customer experience; resolving disputes; troubleshooting problems; informing you about online and offline offers, products, services, and updates; customise your experience; detecting and protecting us against errors, fraud and other criminal activity; enforce our terms and conditions; conduct marketing research, analysis and surveys; and as otherwise described to you at the time of collection of information.</p>
            
            <p>You understand that your access to these products/services may be affected in the event permission is not provided to us.</p>
        </div>

        <div class="section reveal">
            <h2>Sharing</h2>
            <p>We may share your personal data internally within our group entities, our other corporate entities, and affiliates to provide you access to the services and products offered by them. These entities and affiliates may market to you as a result of such sharing unless you explicitly opt out.</p>
            
            <p>We may disclose personal data to third parties such as sellers, business partners, third-party service providers including logistics partners, prepaid payment instrument issuers, third-party reward programs and other payments opted by you.</p>
            
            <p>This disclosure may be required for us to provide you access to our services and products offered to you, to comply with our legal obligations, to enforce our user agreement, to facilitate our marketing and advertising activities, to prevent, detect, mitigate, and investigate fraudulent or illegal activities related to our services.</p>
            
            <p>We may disclose personal and sensitive personal data to the government agencies or other authorised law enforcement agencies if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to respond to subpoenas, court orders, or another legal process.</p>
            
            <p>We may disclose personal data to law enforcement offices, third-party rights owners, or others in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms of Use or Privacy Policy; respond to claims that an advertisement, posting or other content violates the rights of a third party; or protect the rights, property or personal safety of our users or the general public.</p>
        </div>

        <div class="section reveal">
            <h2>Security Precautions</h2>
            <p>To protect your personal data from unauthorised access or disclosure, loss or misuse we adopt reasonable security practices and procedures. Once your information is in our possession or whenever you access your account information, we adhere to our security guidelines to protect it against unauthorised access and offer the use of a secure server.</p>
            
            <p>However, the transmission of information is not completely secure for reasons beyond our control. By using the Platform, the users accept the security implications of data transmission over the internet and the World Wide Web cannot always be guaranteed as completely secure, therefore, there would always remain certain inherent risks regarding the use of the Platform.</p>
            
            <p>Users are responsible for ensuring the protection of login and password records for their accounts.</p>
        </div>

        <div class="section reveal">
            <h2>Data Deletion and Retention</h2>
            <p>You have the option to delete your account by visiting your profile and settings on our Platform, this action would result in you losing all information related to your account.</p>
            
            <p>You may also write to us at the contact information provided below to assist you with these requests. In the event of any pending grievance, claims, pending shipments or any other services we may refuse or delay deletion of the account.</p>
            
            <p>Once the account is deleted, you will lose access to the account. We retain your personal data information for a period no longer than is required for the purpose for which it was collected or as required under any applicable law.</p>
            
            <p>However, we may retain data related to you if we believe it may be necessary to prevent fraud or future abuse or for other legitimate purposes. We may continue to retain your data in anonymised form for analytical and research purposes.</p>
        </div>

        <div class="section reveal">
            <h2>Your Rights</h2>
            <p>You may access, rectify, and update your personal data directly through the functionalities provided on the Platform.</p>
        </div>

        <div class="section reveal">
            <h2>Consent</h2>
            <p>By visiting our Platform or by providing your information, you consent to the collection, use, storage, disclosure and otherwise processing of your information on the Platform in accordance with this Privacy Policy.</p>
            
            <p>If you disclose to us any personal data relating to other people, you represent that you have the authority to do so and permit us to use the information in accordance with this Privacy Policy.</p>
            
            <p>You, while providing your personal data over the Platform or any partner platforms or establishments, consent to us (including our other corporate entities, affiliates, lending partners, technology partners, marketing channels, business partners and other third parties) to contact you through SMS, instant messaging apps, call and/or e-mail for the purposes specified in this Privacy Policy.</p>
            
            <p>You have an option to withdraw your consent that you have already provided by writing to the Grievance Officer at the contact information provided below. Please mention <strong>"Withdrawal of consent for processing personal data"</strong> in the subject line of your communication.</p>
            
            <p>We may verify such requests before acting on our request. However, please note that your withdrawal of consent will not be retrospective and will be under the Terms of Use, this Privacy Policy, and applicable laws.</p>
            
            <p>In the event you withdraw the consent given to us under this Privacy Policy, we reserve the right to restrict or deny the provision of our services for which we consider such information to be necessary.</p>
        </div>

        <div class="section reveal">
            <h2>Changes to this Privacy Policy</h2>
            <p>Please check our Privacy Policy periodically for changes. We may update this Privacy Policy to reflect changes to our information practices. We may alert/notify you about the significant changes to the Privacy Policy, in the manner as may be required under applicable laws.</p>
        </div>

        <div class="section reveal">
            <h2>What We Do With This Information</h2>
            <p>We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>
            
            <ul>
                <li>Internal record keeping.</li>
                <li>We may use the information to improve our products and services.</li>
                <li>We may periodically send you emails about new products, special offers or other information that we think you may find interesting using the email address that you have provided.</li>
                <li>From time to time, we may also use your information to contact you for market research purposes.</li>
                <li>We may contact you by email, phone, fax or mail.</li>
                <li>We may use the information to customize the website according to your interests.</li>
            </ul>
        </div>

        <div class="section reveal">
            <h2>Cookies</h2>
            <p>We use cookies on this website. A cookie is a small file that is placed on your computer's hard drive with your implied consent. Cookies allow web applications to remember you and personalise your experience. The website can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p>
            
            <h3>Google Analytics & Conversion Tracking</h3>
            <p>We use traffic log cookies from Google Analytics to identify which pages are being used. These cookies are an essential part of monitoring and improving our electronic communications. This helps us analyse data about web page traffic and improve our website to tailor it to customer needs. We use this non-identifiable aggregated traffic information for statistical analysis purposes. We also use conversion tracking to understand customer behaviour.</p>
            
            <h3>Session Cookies</h3>
            <p>This site uses essential session cookies to operate the website.</p>
            
            <h3>Google Adwords Cookies</h3>
            <p>We may use cookies in Google Adwords for remarketing purposes. This means we remember your visit to our website to provide you with advertising elsewhere on the Google Display Network.</p>
            
            <h3>Other Applications</h3>
            <p>If we embed YouTube videos in the site, watching the video will set a cookie on your computer. We may also use embedded applications such as Twitter, and Facebook. These third parties may set cookies to remember your preferences.</p>
        </div>

        <div class="section reveal">
            <h2>How to Disable Cookies</h2>
            <p>You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser settings to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p>
            
            <p>If you disable cookies in Google Chrome, Safari, or Firefox, your experience of some parts of the website may be affected.</p>
        </div>

        <div class="section reveal">
            <h2>Links to Other Websites</h2>
            <p>Our website contains links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website.</p>
            
            <p>Therefore, we cannot be responsible for the protection and privacy of any information that you provide whilst visiting such sites and such sites are not governed by this privacy policy. You should exercise caution and look at the privacy policy applicable to the website in question.</p>
        </div>

        <div class="section reveal">
            <h2>Controlling Your Personal Information</h2>
            <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>
            
            <ul>
                <li>Whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes.</li>
                <li>If you have previously agreed to use your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us.</li>
                <li>We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so.</li>
                <li>We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</li>
            </ul>
        </div>

        <div class="contact-info reveal">
            <h3>Contact Information</h3>
            <p><strong>International Association of Research and Developed Organization (IARDO)</strong></p>
            <p>Seventh floor, 714, Amba Tower, DC Chowk, Sector 9<br>
            New Delhi, North West Delhi, Delhi, 110085</p>
            <p><strong>Email:</strong> <a href="mailto:info@iardo.in">info@iardo.in</a></p>
            <p><strong>Website:</strong> <a href="https://iardo.in" target="_blank">www.iardo.in</a></p>
<p><strong>GST NUMBER:</strong> 07AAFFI9154E1ZC</p>       

 </div>

        <div class="section reveal">
            <p><strong>Note:</strong> If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</p>
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
