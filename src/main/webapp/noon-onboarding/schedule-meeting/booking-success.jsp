<%@ page language="java" contentType="text/html; charsetUTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <title>Booking Confirmed | IARDO</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="/assets/css/booking1.css?v=1.6"> -->
    <style>
    	/* ==================== GLOBAL RESET ==================== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

/* ==================== BODY - LIGHT THEME ==================== */
body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;
    background: #f8fafc; /* Light Theme Background */
    color: #0f172a; /* Dark Text */
    overflow-x: hidden;
    position: relative;
}

/* ==================== BACKGROUND EFFECTS ==================== */
.bg-effects {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
    pointer-events: none;
    overflow: hidden;
    background: radial-gradient(circle at 20% 50%, rgba(20, 184, 166, 0.05) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, rgba(16, 185, 129, 0.05) 0%, transparent 50%),
                radial-gradient(circle at 50% 80%, rgba(20, 184, 166, 0.03) 0%, transparent 50%);
}

.gradient-orb {
    position: absolute;
    border-radius: 50%;
    filter: blur(150px);
    opacity: 0.4; /* Slightly higher opacity for light theme to be visible */
    animation: float 30s infinite ease-in-out;
}

.orb-1 {
    width: 700px;
    height: 700px;
    background: radial-gradient(circle, rgba(20, 184, 166, 0.15) 0%, transparent 70%);
    top: -350px;
    left: -350px;
}

.orb-2 {
    width: 600px;
    height: 600px;
    background: radial-gradient(circle, rgba(16, 185, 129, 0.12) 0%, transparent 70%);
    bottom: -300px;
    right: -300px;
    animation-delay: 10s;
}

.orb-3 {
    width: 550px;
    height: 550px;
    background: radial-gradient(circle, rgba(5, 150, 105, 0.1) 0%, transparent 70%);
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation-delay: 20s;
}

@keyframes float {
    0%, 100% { transform: translate(0, 0) scale(1); }
    33% { transform: translate(60px, -40px) scale(1.05); }
    66% { transform: translate(-40px, 60px) scale(0.95); }
}

/* ==================== MAIN CONTENT - FULL PAGE ==================== */
.page-content {
    position: relative;
    z-index: 1;
    min-height: 100vh;
    padding: 0;
    display: block;
}

/* ==================== FULL PAGE CONTAINER ==================== */
.confirmation-container {
    width: 100%;
    min-height: 100vh;
    background: linear-gradient(180deg, 
        rgba(255, 255, 255, 0.95) 0%, 
        rgba(248, 250, 252, 0.98) 50%, 
        rgba(255, 255, 255, 0.95) 100%);
    backdrop-filter: blur(10px);
    border: none;
    border-radius: 0;
    padding: 120px 20px 60px;
    box-shadow: none;
    animation: fadeIn 0.8s ease-out;
    position: relative;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Content Wrapper */
.confirmation-container > * {
    width: 100%;
    max-width: 800px;
}

.confirmation-container::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 3px;
    background: linear-gradient(90deg, transparent, rgba(20, 184, 166, 0.5), transparent);
}

.confirmation-container::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    height: 3px;
    background: linear-gradient(90deg, transparent, rgba(16, 185, 129, 0.4), transparent);
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* ==================== SUCCESS CIRCLE ==================== */
.success-circle {
    position: relative;
    width: 140px;
    height: 140px;
    margin: 0 auto 30px;
}

.pulse-ring,
.pulse-ring-2 {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 140px;
    height: 140px;
    border: 3px solid rgba(20, 184, 166, 0.35);
    border-radius: 50%;
    animation: pulse 2.5s ease-out infinite;
}

.pulse-ring-2 {
    animation-delay: 1.25s;
}

@keyframes pulse {
    0% {
        width: 140px;
        height: 140px;
        opacity: 1;
    }
    100% {
        width: 200px;
        height: 200px;
        opacity: 0;
    }
}

.checkmark-wrapper {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 120px;
    height: 120px;
    background: linear-gradient(135deg, #14b8a6, #0d9488);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 
        0 10px 40px rgba(20, 184, 166, 0.3),
        0 0 0 8px rgba(20, 184, 166, 0.1);
    animation: bounceIn 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

@keyframes bounceIn {
    0% { transform: translate(-50%, -50%) scale(0); }
    50% { transform: translate(-50%, -50%) scale(1.1); }
    100% { transform: translate(-50%, -50%) scale(1); }
}

.checkmark {
    width: 60px;
    height: 60px;
}

.checkmark-circle {
    stroke-dasharray: 166;
    stroke-dashoffset: 166;
    stroke-width: 2;
    stroke: #fff;
    animation: strokeCircle 0.6s cubic-bezier(0.65, 0, 0.45, 1) 0.3s forwards;
}

.checkmark-check {
    stroke-dasharray: 48;
    stroke-dashoffset: 48;
    stroke: #fff;
    stroke-width: 3;
    stroke-linecap: round;
    animation: strokeCheck 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
}

@keyframes strokeCircle {
    100% { stroke-dashoffset: 0; }
}

@keyframes strokeCheck {
    100% { stroke-dashoffset: 0; }
}

/* ==================== BRAND LOGO ==================== */
.brand-logo {
    text-align: center;
    font-size: 52px;
    font-weight: 700;
    margin: 0 0 25px;
    letter-spacing: 14px;
}

.brand-logo .letter {
    display: inline-block;
    background: linear-gradient(135deg, #0d9488, #10b981, #059669);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: letterPop 0.5s ease-out backwards;
    filter: drop-shadow(0 2px 10px rgba(20, 184, 166, 0.2));
}

.brand-logo .letter:nth-child(1) { animation-delay: 0.1s; }
.brand-logo .letter:nth-child(2) { animation-delay: 0.2s; }
.brand-logo .letter:nth-child(3) { animation-delay: 0.3s; }
.brand-logo .letter:nth-child(4) { animation-delay: 0.4s; }
.brand-logo .letter:nth-child(5) { animation-delay: 0.5s; }

@keyframes letterPop {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* ==================== TITLE ==================== */
.page-title {
    text-align: center;
    font-size: 42px;
    font-weight: 800;
    margin: 0 0 12px;
    color: #0f172a; /* Dark Text */
    animation: slideUp 0.8s ease-out 0.6s backwards;
}

.page-subtitle {
    text-align: center;
    font-size: 18px;
    font-weight: 500;
    color: #475569; /* Slate Gray */
    margin: 0 0 40px;
    animation: slideUp 0.8s ease-out 0.7s backwards;
}

@keyframes slideUp {
    from {
        opacity: 0;
        transform: translateY(15px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* ==================== DIVIDER ==================== */
.divider {
    width: 100px;
    height: 4px;
    background: linear-gradient(90deg, #14b8a6, #10b981, #14b8a6);
    margin: 0 auto 45px;
    border-radius: 2px;
    animation: slideUp 0.8s ease-out 0.8s backwards;
    box-shadow: 0 2px 10px rgba(20, 184, 166, 0.2);
}

/* ==================== DETAILS CARD ==================== */
.details-card {
    background: #ffffff; /* White Card */
    border: 1px solid #e2e8f0; /* Light Border */
    border-radius: 20px;
    padding: 15px;
    margin-bottom: 35px;
    animation: slideUp 0.8s ease-out 0.9s backwards;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.05); /* Light Shadow */
}

.detail-item {
    display: flex;
    align-items: center;
    gap: 18px;
    padding: 22px;
    border-bottom: 1px solid #f1f5f9;
    transition: all 0.3s ease;
    border-radius: 12px;
}

.detail-item:last-child {
    border-bottom: none;
}

.detail-item:hover {
    background: #f8fafc;
    border-color: transparent;
    transform: translateX(8px);
}

.detail-icon {
    width: 48px;
    height: 48px;
    background: linear-gradient(135deg, #14b8a6, #0d9488);
    border-radius: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    box-shadow: 0 4px 15px rgba(20, 184, 166, 0.25);
}

.detail-icon svg {
    width: 24px;
    height: 24px;
    color: #fff;
}

.detail-content {
    flex: 1;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
}

.detail-label {
    font-size: 15px;
    font-weight: 600;
    color: #64748b; /* Gray */
}

.detail-value {
    font-size: 16px;
    font-weight: 700;
    color: #0f172a; /* Dark Text */
    text-align: right;
}

/* ==================== ALERT BOX ==================== */
.alert-box {
    background: #f0fdfa; /* Very light teal */
    border: 1px solid #ccfbf1;
    border-left: 5px solid #14b8a6;
    border-radius: 16px;
    padding: 24px;
    margin-bottom: 40px;
    display: flex;
    gap: 18px;
    align-items: flex-start;
    animation: slideUp 0.8s ease-out 1s backwards;
    box-shadow: 0 4px 15px rgba(20, 184, 166, 0.05);
}

.alert-icon {
    width: 44px;
    height: 44px;
    background: linear-gradient(135deg, #14b8a6, #0d9488);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    box-shadow: 0 4px 15px rgba(20, 184, 166, 0.2);
}

.alert-icon svg {
    width: 24px;
    height: 24px;
    color: #fff;
}

.alert-content h3 {
    font-size: 17px;
    font-weight: 700;
    margin: 0 0 8px;
    color: #0f172a; /* Dark Text */
}

.alert-content p {
    font-size: 15px;
    line-height: 1.7;
    color: #334155; /* Slate Gray */
    margin: 0;
}

/* ==================== ACTION BUTTONS ==================== */
.action-buttons {
    display: flex;
    gap: 18px;
    justify-content: center;
    flex-wrap: wrap;
    margin-bottom: 35px;
    animation: slideUp 0.8s ease-out 1.1s backwards;
}

.btn {
    padding: 16px 40px;
    border-radius: 50px;
    font-size: 16px;
    font-weight: 700;
    text-decoration: none;
    display: inline-block;
    transition: all 0.3s ease;
    cursor: pointer;
    border: 2px solid transparent;
}

.btn-primary {
    background: linear-gradient(135deg, #14b8a6, #0d9488);
    color: #fff;
    box-shadow: 0 6px 20px rgba(20, 184, 166, 0.3);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(20, 184, 166, 0.4);
}

.btn-outline {
    background: #ffffff;
    border: 2px solid #14b8a6;
    color: #0f172a; /* Dark Text */
}

.btn-outline:hover {
    background: #f0fdfa;
    border-color: #0d9488;
    color: #0f172a;
    transform: translateY(-3px);
}

/* ==================== CONTACT INFO ==================== */
.contact-info {
    text-align: center;
    font-size: 15px;
    color: #64748b;
    font-weight: 500;
    animation: slideUp 0.8s ease-out 1.2s backwards;
}

.contact-info a {
    color: #0d9488;
    text-decoration: none;
    font-weight: 700;
    transition: color 0.3s ease;
}

.contact-info a:hover {
    color: #14b8a6;
    text-decoration: underline;
}

/* ==================== RESPONSIVE ==================== */
@media (max-width: 768px) {
    .page-content {
        padding: 60px 0 0;
    }

    .confirmation-container {
        min-height: calc(100vh - 60px);
        padding: 40px 20px 30px;
    }

    .brand-logo {
        font-size: 38px;
        letter-spacing: 10px;
    }

    .page-title {
        font-size: 32px;
    }

    .page-subtitle {
        font-size: 16px;
    }

    .detail-content {
        flex-direction: column;
        align-items: flex-start;
        gap: 5px;
    }

    .detail-value {
        text-align: left;
    }

    .action-buttons {
        flex-direction: column;
        width: 100%;
    }

    .btn {
        width: 100%;
        text-align: center;
    }

    .alert-box {
        flex-direction: column;
    }
}

@media (max-width: 480px) {
    .success-circle {
        width: 110px;
        height: 110px;
    }

    .checkmark-wrapper {
        width: 95px;
        height: 95px;
    }

    .pulse-ring,
    .pulse-ring-2 {
        width: 110px;
        height: 110px;
    }

    .brand-logo {
        font-size: 30px;
        letter-spacing: 8px;
    }

    .page-title {
        font-size: 26px;
    }

    .detail-item {
        padding: 15px;
    }
}
    </style>
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <!-- Animated Background -->
    <div class="bg-effects">
        <div class="gradient-orb orb-1"></div>
        <div class="gradient-orb orb-2"></div>
        <div class="gradient-orb orb-3"></div>
    </div>

    <!-- Main Content Area -->
    <main class="page-content">
        <div class="confirmation-container">
            
            <!-- Success Circle with Checkmark -->
            <div class="success-circle">
                <div class="pulse-ring"></div>
                <div class="pulse-ring-2"></div>
                <div class="checkmark-wrapper">
                    <svg class="checkmark" viewBox="0 0 52 52">
                        <circle class="checkmark-circle" cx="26" cy="26" r="25" fill="none"/>
                        <path class="checkmark-check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
                    </svg>
                </div>
            </div>

            <!-- IARDO Logo -->
            <h1 class="brand-logo">
                <span class="letter">I</span>
                <span class="letter">A</span>
                <span class="letter">R</span>
                <span class="letter">D</span>
                <span class="letter">O</span>
            </h1>

            <!-- Main Title -->
            <h2 class="page-title">You're All Set!</h2>
            <p class="page-subtitle">Your meeting has been successfully scheduled</p>

            <!-- Decorative Line -->
            <div class="divider"></div>

            <!-- Booking Details Card -->
            <div class="details-card">
                <div class="detail-item">
                    <div class="detail-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/>
                        </svg>
                    </div>
                    <div class="detail-content">
                        <span class="detail-label">Name</span>
                        <span class="detail-value">${name}</span>
                    </div>
                </div>

                <div class="detail-item">
                    <div class="detail-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
                        </svg>
                    </div>
                    <div class="detail-content">
                        <span class="detail-label">Email</span>
                        <span class="detail-value">${email}</span>
                    </div>
                </div>

                <div class="detail-item">
                    <div class="detail-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
                        </svg>
                    </div>
                    <div class="detail-content">
                        <span class="detail-label">Date & Time</span>
                        <span class="detail-value">${time}, ${date}</span>
                    </div>
                </div>

                <div class="detail-item">
                    <div class="detail-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"/>
                        </svg>
                    </div>
                    <div class="detail-content">
                        <span class="detail-label">Meeting Type</span>
                        <span class="detail-value">45 Minute Meeting</span>
                    </div>
                </div>
            </div>

            <!-- Confirmation Alert -->
            <div class="alert-box">
                <div class="alert-icon">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                </div>
                <div class="alert-content">
                    <h3>Confirmation Email Sent!</h3>
                    <p>A calendar invitation and meeting link have been sent to your email address. Please check your inbox or spam folder.</p>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="action-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-outline">
                    Schedule Another Meeting
                </a>
                <a href="${pageContext.request.contextPath}/" class="btn btn-primary">
                    Back to Home
                </a>
            </div>

            <!-- Contact Info -->
            <div class="contact-info">
                Need help? Contact us at 
                <a href="mailto:info@iardo.in">info@iardo.in</a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>