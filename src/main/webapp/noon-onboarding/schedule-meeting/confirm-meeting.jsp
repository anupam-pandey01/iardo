<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirm Meeting | IARDO</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- <link rel="stylesheet" href="/assets/css/confirm.css?v=1.6"> -->
<style>
	/* ================= IMPORTS ================= */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

/* ================= BASE & RESET ================= */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}

body {
    background: #f0f4f8; /* Light Theme Background */
    color: #0f172a; /* Dark Text */
    min-height: 100vh;
    display: flex;
    align-items: center;      /* vertical center */
    justify-content: center;  /* horizontal center */
    overflow-x: hidden;
    position: relative;
}

/* ================= CONTAINER ================= */
.wrapper {
    max-width: 1100px;
    margin: 0 auto;
    padding: 60px 20px;
    position: relative;
    z-index: 2;
    animation: fadeInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1);
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

.container {
    max-width: 1200px;
    margin: 20px auto 0 auto; 
    background: #ffffff; /* White Container */
    border-radius: 32px;
    box-shadow: 0 15px 50px rgba(0, 0, 0, 0.08); /* Soft Shadow */
    border: 1px solid #e2e8f0; /* Light Border */
    display: flex;
    overflow: visible;
    position: relative;
    z-index: 1;
    margin-bottom: 0px;
}

/* ================= LEFT PANEL ================= */
.left-panel {
    width: 40%;
    background: linear-gradient(180deg, rgba(0, 188, 212, 0.05), transparent); /* Light cyan tint */
    padding: 50px;
    border-right: 1px solid #e2e8f0;
    position: relative;
    z-index: 1;
    display: flex;
    flex-direction: column;
}

.logo {
    font-size: 48px;
    font-weight: 800;
    background: linear-gradient(135deg, #00838f, #00bcd4);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    margin-bottom: 50px;
    letter-spacing: -1px;
}

.meeting-title {
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 30px;
    color: #0f172a; /* Dark text */
}

.meeting-detail {
    display: flex;
    align-items: center;
    gap: 12px;
    font-size: 15px;
    color: #475569; /* Slate Gray */
    margin-bottom: 18px;
    padding: 12px 16px;
    background: #f8fafc;
    border-radius: 12px;
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
}

.meeting-detail:hover {
    background: #f1f5f9;
    border-color: rgba(0, 188, 212, 0.4);
    transform: translateX(5px);
}

/* ================= DECORATIVE SECTION ================= */
.decorative-section {
    margin-top: 40px;
    padding-top: 0px;
}

.deco-card {
    background: linear-gradient(135deg, rgba(0, 188, 212, 0.05), rgba(0, 151, 167, 0.02));
    border-radius: 20px;
    padding: 30px;
    border: 1px solid rgba(0, 188, 212, 0.2);
    position: relative;
    overflow: hidden;
}

.deco-icon {
    width: 60px;
    height: 60px;
    background: linear-gradient(135deg, #00e5ff, #00bcd4);
    border-radius: 16px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
    box-shadow: 0 10px 20px rgba(0, 188, 212, 0.3);
    position: relative;
    z-index: 1;
}

.deco-icon svg {
    width: 32px;
    height: 32px;
    color: #ffffff;
    stroke-width: 2.5px;
}

.deco-text {
    position: relative;
    z-index: 1;
}

.deco-text h3 {
    font-size: 20px;
    font-weight: 700;
    color: #00838f;
    margin-bottom: 8px;
}

.deco-text p {
    font-size: 14px;
    color: #64748b;
    line-height: 1.6;
}

/* ================= RIGHT PANEL ================= */
.right-panel {
    width: 60%;
    padding: 50px;
    position: relative;
    z-index: 1;
    overflow-y: visible;
    overflow-x: visible;
    max-height: none;
}

.right-panel::-webkit-scrollbar {
    width: 8px;
}

.right-panel::-webkit-scrollbar-track {
    background: #f1f5f9;
    border-radius: 10px;
}

.right-panel::-webkit-scrollbar-thumb {
    background: #cbd5e1;
    border-radius: 10px;
}

.right-panel::-webkit-scrollbar-thumb:hover {
    background: #94a3b8;
}

.panel-header {
    font-size: 26px;
    font-weight: 700;
    margin-bottom: 35px;
    color: #0f172a;
}

/* ================= FORM ELEMENTS ================= */
.form-group {
    margin-bottom: 25px;
}

.form-label {
    font-weight: 600;
    font-size: 0.85rem;
    margin-bottom: 10px;
    display: block;
    color: #00838f;
    letter-spacing: 0.5px;
}

.form-input,
.form-select {
    width: 100%;
    padding: 16px 18px;
    border-radius: 14px;
    border: 2px solid #e2e8f0;
    font-size: 15px;
    background: #f8fafc;
    color: #0f172a;
    transition: all 0.3s ease;
    font-family: 'Poppins', sans-serif;
}

.form-input::placeholder {
    color: #94a3b8;
}

.form-input:hover,
.form-select:hover {
    border-color: rgba(0, 188, 212, 0.4);
    background: #ffffff;
}

.form-input:focus,
.form-select:focus {
    outline: none;
    border-color: #00bcd4;
    background: #ffffff;
    box-shadow: 0 0 0 4px rgba(0, 188, 212, 0.1);
    transform: translateY(-2px);
}

.form-select {
    cursor: pointer;
}

.form-select option {
    background: #ffffff;
    color: #0f172a;
    padding: 10px;
}

/* ================= RADIO GROUP ================= */
.radio-group {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 12px;
}

.radio-option {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 14px 16px 14px 40px; 
    border-radius: 12px;
    cursor: pointer;
    border: 2px solid #e2e8f0;
    background: #f8fafc;
    color: #334155; /* Dark gray */
    position: relative;
    overflow: hidden;
    transition: all 0.3s ease;
    font-size: 14px;
    font-weight: 500;
}

.radio-option:hover {
    background: #ffffff;
    border-color: rgba(0, 188, 212, 0.4);
    transform: translateY(-2px);
    box-shadow: 0 4px 10px rgba(0,0,0,0.03);
}

.radio-option input[type="radio"] {
    position: absolute;
    opacity: 0;
    pointer-events: none;
}

/* Small circle dot */
.dot {
    position: absolute;
    left: 16px; 
    top: 50%;
    transform: translateY(-50%);
    width: 14px;
    height: 14px;
    background: #ffffff; 
    border-radius: 50%;
    border: 2px solid #cbd5e1;
    transition: all 0.2s ease;
    z-index: 3; 
}

/* Fill dot when selected */
.radio-option input:checked ~ .dot {
    background: #00bcd4;
    border-color: #00bcd4;
}

/* SVG logo styling */
.service-logo-svg {
    width: 28px;
    height: 28px;
    stroke: #00838f; /* Dark cyan for visibility */
    fill: none;
    flex-shrink: 0;
    z-index: 1; 
}

/* Selected state SVG */
.radio-option input:checked + .service-logo-svg {
    stroke: #00bcd4;
}

/* Selected Option styling */
.radio-option input:checked ~ span {
    color: #0f172a;
    font-weight: 600;
}

.radio-option span {
    position: relative;
    z-index: 1;
}

/* ================= DATE SECTION ================= */
.date-section {
    margin-bottom: 40px;
}

.date-section label {
    display: block;
    margin-bottom: 15px;
    font-weight: 600;
    font-size: 18px;
    color: #0f172a;
    position: relative;
    padding-left: 30px;
}

.date-section label::before {
    content: '📅';
    position: absolute;
    left: 0;
    font-size: 20px;
}

input[type="date"] {
    padding: 18px 24px;
    width: 100%;
    border-radius: 16px;
    border: 2px solid #e2e8f0;
    outline: none;
    font-size: 16px;
    background: #f8fafc;
    color: #0f172a;
    transition: all 0.3s ease;
    cursor: pointer;
    font-weight: 500;
}

input[type="date"]::-webkit-calendar-picker-indicator {
    cursor: pointer;
    opacity: 0.6;
    transition: opacity 0.3s ease;
}

input[type="date"]::-webkit-calendar-picker-indicator:hover {
    opacity: 1;
}

input[type="date"]:hover {
    border-color: rgba(0, 188, 212, 0.4);
    background: #ffffff;
    transform: translateY(-2px);
}

input[type="date"]:focus {
    border-color: #00bcd4;
    background: #ffffff;
    box-shadow: 0 0 0 4px rgba(0, 188, 212, 0.1);
}

/* ================= TIME SLOTS SECTION ================= */
.slots-section {
    margin-bottom: 40px;
}

.slots-section label {
    display: block;
    margin-bottom: 20px;
    font-weight: 600;
    font-size: 18px;
    color: #0f172a;
    position: relative;
    padding-left: 30px;
}

.slots-section label::before {
    content: '⏰';
    position: absolute;
    left: 0;
    font-size: 20px;
}

/* ================= TIME SLOTS GRID ================= */
.slots {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 16px;
    margin-top: 20px;
}

.slot {
    padding: 18px 16px;
    text-align: center;
    border-radius: 16px;
    background: #f8fafc;
    border: 2px solid #e2e8f0;
    color: #334155;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: 500;
    font-size: 15px;
    position: relative;
    overflow: hidden;
}

.slot:hover {
    transform: translateY(-4px);
    background: #ffffff;
    border-color: rgba(0, 188, 212, 0.4);
    box-shadow: 0 5px 15px rgba(0,0,0,0.05);
}

.slot.selected {
    background: linear-gradient(135deg, #00bcd4, #00838f);
    color: #ffffff;
    border-color: transparent;
    transform: scale(1.05);
    box-shadow: 0 8px 20px rgba(0, 188, 212, 0.3);
    font-weight: 600;
}

.slot.disabled {
    opacity: 0.4;
    background: #e2e8f0;
    pointer-events: none;
    cursor: not-allowed;
}

/* ================= ACTION BUTTON ================= */
.action {
    margin-top: 40px;
    text-align: center;
}

button.submit-btn {
    width: 100%;
    padding: 20px;
    border: none;
    border-radius: 50px;
    background: linear-gradient(135deg, #00bcd4, #0097a7);
    color: #ffffff;
    font-size: 16px;
    font-weight: 700;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 10px 25px rgba(0, 188, 212, 0.3);
    position: relative;
    overflow: hidden;
    letter-spacing: 1px;
    text-transform: uppercase;
}

button.submit-btn:hover {
    transform: translateY(-4px);
    box-shadow: 0 15px 35px rgba(0, 188, 212, 0.4);
    background: linear-gradient(135deg, #00e5ff, #00bcd4);
}

button.submit-btn:active {
    transform: translateY(-1px);
}

button.submit-btn.loading {
    background: #cbd5e1;
    color: #64748b;
    pointer-events: none;
    cursor: not-allowed;
    box-shadow: none;
}

.btn-text {
    position: relative;
    z-index: 1;
}

/* ================= TERMS TEXT ================= */
.terms-text {
    font-size: 13px;
    color: #64748b;
    margin-bottom: 25px;
    text-align: center;
    line-height: 1.6;
}

/* ================= ERROR MESSAGE ================= */
.error {
    background: #fef2f2;
    color: #ef4444;
    padding: 16px 20px;
    border-radius: 14px;
    margin-bottom: 25px;
    font-size: 14px;
    border: 1px solid #fecaca;
    animation: errorShake 0.5s ease;
}

@keyframes errorShake {
    0%, 100% { transform: translateX(0); }
    25% { transform: translateX(-10px); }
    75% { transform: translateX(10px); }
}

/* ================= RESPONSIVE ================= */
@media (max-width: 900px) {
    .container {
        flex-direction: column;
        margin: 20px;
        border-radius: 24px;
    }
    
    .left-panel,
    .right-panel {
        width: 100%;
    }
    
    .left-panel {
        border-right: none;
        border-bottom: 1px solid #e2e8f0;
        padding: 40px 30px;
    }
    
    .right-panel {
        padding: 40px 30px;
    }
    
    .logo {
        font-size: 40px;
        margin-bottom: 30px;
    }
    
    .meeting-title {
        font-size: 24px;
    }
    
    .panel-header {
        font-size: 22px;
    }
    
    .radio-group {
        grid-template-columns: 1fr;
    }
}

@media (max-width: 600px) {
    body {
        background: #ffffff; /* pure white on mobile for better space usage */
    }

    .container {
        margin: 0;
        border-radius: 0;
        border: none;
        box-shadow: none;
    }
    
    .left-panel,
    .right-panel {
        padding: 30px 20px;
    }
    
    .logo {
        font-size: 32px;
    }
    
    .meeting-title {
        font-size: 22px;
    }
    
    .panel-header {
        font-size: 20px;
    }
    
    .deco-text h3 {
        font-size: 18px;
    }
    
    .deco-text p {
        font-size: 13px;
    }
}
	
</style>
</head>

<body>
<!-- Floating Particles -->
<div class="particles">
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
</div>

<div class="container">

    <!-- LEFT PANEL -->
    <div class="left-panel">
        <div class="logo">
            <a href="index.jsp">
                <img src="${pageContext.request.contextPath}/assets/logo/logo-of-iardo.png" alt="Iardo Logo" class="logo-img"
                style="
        height: 130px;
        width: auto;
        background: transparent;
        filter:
            drop-shadow(0 0 6px rgba(255,255,255,0.6))
            drop-shadow(0 0 14px rgba(255,255,255,0.4));
        transition: transform 0.3s ease, filter 0.3s ease;
     ">
            </a>
        </div>

        <h2 class="meeting-title">45 Minute Meeting</h2>

        <div class="meeting-detail">
            <span>🕒</span>
            <span>45 Minutes</span>
        </div>
        <div class="meeting-detail">
            <span>📅</span>
            <span id="meetingDateTime"></span>
        </div>
        <div class="meeting-detail">
            <span>🌍</span>
            <span id="meetingTimezone"></span>
        </div>

        <!-- Decorative Image Section -->
        <div class="decorative-section">
            <div class="deco-card">
                <div class="deco-icon">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M12 2L2 7l10 5 10-5-10-5z"/>
                        <path d="M2 17l10 5 10-5"/>
                        <path d="M2 12l10 5 10-5"/>
                    </svg>
                </div>
                <div class="deco-text">
                    <h3>Expert Consultation</h3>
                    <p>Get personalized solutions for your business growth</p>
                </div>
            </div>
        </div>
    </div>

    <!-- RIGHT PANEL -->
    <div class="right-panel">

        <h2 class="panel-header">Enter Details</h2>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <form id="detailsForm" method="post" action="${pageContext.request.contextPath}/schedule-meeting"> <!-- calling the ScheduleMeetingServerlet.js  -->

            <input type="hidden" name="date" id="bookingDate">
            <input type="hidden" name="time" id="bookingTime">
            <input type="hidden" name="timezone" id="bookingTimezone">

            <div class="form-group">
                <label class="form-label">Name *</label>
                <input type="text" name="name" class="form-input" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label class="form-label">Email *</label>
                <input type="email" name="email" class="form-input" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label class="form-label">Phone *</label>
                <input type="tel" name="phone" class="form-input" placeholder="Enter your phone" required>
            </div>

            <div class="form-group">
    <label class="form-label">Service Required *</label>

    <div class="radio-group">

        <!-- Blinkit -->
        <label class="radio-option">
            <input type="radio" name="service" value="Blinkit Onboarding" required>
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M6 7h12l-1 10H7L6 7z"/>
                <path d="M9 7V5a3 3 0 0 1 6 0v2"/>
                <path d="M13 10l-2 4h3l-2 4"/>
            </svg>
            <span>Blinkit Onboarding</span>
            
    <div class="dot"></div>
            
        </label>
        
           <!-- Swiggy cloud kitchen -->
        <label class="radio-option">
            <input type="radio" name="service" value="Swiggy Cloud Kitchen">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M6 7h12l-1 10H7L6 7z"/>
                <path d="M9 7V5a3 3 0 0 1 6 0v2"/>
                <line x1="2" y1="12" x2="6" y2="12"/>
                <line x1="2" y1="15" x2="6" y2="15"/>
            </svg>
            <span>Swiggy Cloud Kitchen</span>
                <div class="dot"></div>
            
        </label>

        <!-- Zepto -->
        <label class="radio-option">
            <input type="radio" name="service" value="Zepto Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="9"/>
                <path d="M12 7v5l3 3"/>
                <path d="M13 3l-2 4h3l-2 4"/>
            </svg>
            <span>Zepto Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Swiggy Instamart -->
        <label class="radio-option">
            <input type="radio" name="service" value="Swiggy Instamart">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M6 7h12l-1 10H7L6 7z"/>
                <path d="M9 7V5a3 3 0 0 1 6 0v2"/>
                <line x1="2" y1="12" x2="6" y2="12"/>
                <line x1="2" y1="15" x2="6" y2="15"/>
            </svg>
            <span>Swiggy Instamart</span>
                <div class="dot"></div>
            
        </label>

        <!-- BigBasket -->
        <label class="radio-option">
            <input type="radio" name="service" value="BigBasket Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M3 7h18l-2 12H5L3 7z"/>
                <path d="M8 7l4-4 4 4"/>
            </svg>
            <span>BigBasket Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Myntra -->
        <label class="radio-option">
            <input type="radio" name="service" value="Myntra Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M12 5a2 2 0 0 0-2 2"/>
                <path d="M12 7l9 6H3l9-6z"/>
            </svg>
            <span>Myntra Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Nykaa -->
        <label class="radio-option">
            <input type="radio" name="service" value="Nykaa Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <circle cx="12" cy="12" r="2"/>
                <path d="M12 2v4M12 18v4M2 12h4M18 12h4"/>
                <path d="M4.9 4.9l2.8 2.8M16.3 16.3l2.8 2.8"/>
                <path d="M4.9 19.1l2.8-2.8M16.3 7.7l2.8-2.8"/>
            </svg>
            <span>Nykaa Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Amazon -->
        <label class="radio-option">
            <input type="radio" name="service" value="Amazon Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M3 7l9 5 9-5"/>
                <path d="M3 7v10l9 5 9-5V7"/>
                <path d="M8 14c2 2 6 2 8 0"/>
            </svg>
            <span>Amazon Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Flipkart -->
        <label class="radio-option">
            <input type="radio" name="service" value="Flipkart Onboarding">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <path d="M6 7h12l-1 12H7L6 7z"/>
                <path d="M9 7V5a3 3 0 0 1 6 0v2"/>
            </svg>
            <span>Flipkart Onboarding</span>
                <div class="dot"></div>
            
        </label>

        <!-- Website Development -->
        <label class="radio-option">
            <input type="radio" name="service" value="Website Development">
            <svg class="service-logo-svg" viewBox="0 0 24 24">
                <rect x="2" y="3" width="20" height="14" rx="2"/>
                <line x1="8" y1="21" x2="16" y2="21"/>
                <line x1="12" y1="17" x2="12" y2="21"/>
            </svg>
            <span>Website Development</span>
                <div class="dot"></div>
            
        </label>

  
            
                    <label class="radio-option">
                        <input type="radio" name="service" value="Performance Marketing">
                        <svg class="service-logo-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <line x1="18" y1="20" x2="18" y2="10"/>
                            <line x1="12" y1="20" x2="12" y2="4"/>
                            <line x1="6" y1="20" x2="6" y2="14"/>
                        </svg>
                        <span>Performance Marketing</span>
                            <div class="dot"></div>
                        
                    </label>
                    <label class="radio-option">
                        <input type="radio" name="service" value="Other">
                        <svg class="service-logo-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <circle cx="12" cy="12" r="1"/>
                            <circle cx="12" cy="5" r="1"/>
                            <circle cx="12" cy="19" r="1"/>
                        </svg>
                        <span>Other</span>
                            <div class="dot"></div>
                        
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="form-label">Company *</label>
                <input type="text" name="company" class="form-input" placeholder="Enter company name" required>
            </div>

            <div class="form-group">
                <label class="form-label">Designation *</label>
                <select name="designation" class="form-select" required>
                    <option value="">Select designation</option>
                    <option>Founder</option>
                    <option>CEO</option>
                    <option>Manager</option>
                    <option>Other</option>
                </select>
            </div>

            <div class="form-group">
                <label class="form-label">Website (optional)</label>
                <input type="url" name="website" class="form-input" placeholder="Enter website URL">
            </div>

            <div class="terms-text">
                By proceeding, you agree to our Terms & Privacy Policy.
            </div>

            <button type="submit" class="submit-btn">
                <span class="btn-text">Confirm Meeting</span>
            </button>

        </form>
    </div>
</div>
<script>
const params = new URLSearchParams(window.location.search);
const date = params.get("date");
const time = params.get("time");
const timezone = params.get("timezone");
const displayDate = params.get("displayDate");

if (!date || !time || !timezone) {
    alert("Invalid meeting details. Please reselect slot.");
    window.location.href = "${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/";
}

document.getElementById("bookingDate").value = date;
document.getElementById("bookingTime").value = time;
document.getElementById("bookingTimezone").value = timezone;

document.getElementById("meetingDateTime").textContent = 
    time + " , " + (displayDate || date);

document.getElementById("meetingTimezone").textContent = timezone;

document.getElementById("detailsForm").addEventListener("submit", () => {
    document.querySelector(".submit-btn").classList.add("loading");
    document.querySelector(".btn-text").textContent = "Processing...";
});
</script>

</body>
</html>
