<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spocket Dropshipping Setup Service - IARDO | PAN India</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

:root {
	--spocket-green: #00C58E;
	--spocket-dark-green: #00A075;
	--spocket-light-green: #00E5A0;
	--gradient-primary: linear-gradient(135deg, #00C58E, #00E5A0);
}

body {
	font-family: 'Poppins', sans-serif;
	overflow-x: hidden;
	background: #ffffff !important;
}

/* NAVBAR OVERLAP FIX */
.hero {
	min-height: 90vh;
	padding: 180px 20px 80px !important;
	display: flex;
	align-items: center;
	position: relative;
	overflow: hidden;
}

.hero::before {
	content: '';
	position: absolute;
	width: 800px;
	height: 800px;
	background: radial-gradient(circle, rgba(0, 197, 142, 0.1), transparent);
	border-radius: 50%;
	top: -400px;
	right: -300px;
	animation: pulse 8s infinite ease-in-out;
}

.hero::after {
	content: '';
	position: absolute;
	width: 600px;
	height: 600px;
	background: radial-gradient(circle, rgba(0, 229, 160, 0.05), transparent);
	border-radius: 50%;
	bottom: -300px;
	left: -200px;
	animation: pulse 6s infinite ease-in-out reverse;
}

@keyframes pulse { 0%, 100% {
	transform: scale(1);
	opacity: 0.5;
}

50%{
transform: scale( 1.1);
opacity: 0.8;}
}

.hero-container {
	max-width: 1200px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 60px;
	align-items: center;
	position: relative;
	z-index: 2;
}

.hero-content h1 {
	font-size: clamp(2.5rem, 4vw, 3.5rem);
	font-weight: 800;
	line-height: 1.2;
	margin-bottom: 24px;
}

.hero-content .highlight {
	color: var(--spocket-green) !important;
	font-weight: 600;
	display: inline-block;
}

.animated-heading .word {
	display: inline-block;
	margin-right: 0.3em;
	opacity: 0;
	transform: translateY(20px);
	animation: fadeInUp 0.6s ease forwards;
}

.animated-heading .word-highlight {
	display: inline-block;
	margin-right: 0.3em;
	opacity: 0;
	transform: scale(0.5);
	background: var(--gradient-primary);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-clip: text;
	animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
}

@keyframes fadeInUp {to { opacity:1;
		transform: translateY(0);
	}

}
@keyframes popIn { 0% {
		opacity: 0;
		transform: scale(0.5) rotate(-5deg);
	}
	70%{
	transform :scale( 1.1 ) rotate(2deg);
	}
	100%{ opacity : 1;
		  transform : scale(1) rotate(0deg);
	}

}
.animated-heading .word:nth-child(1) {
	animation-delay: 0.1s;
}

.animated-heading .word:nth-child(2) {
	animation-delay: 0.2s;
}

.animated-heading .word:nth-child(3) {
	animation-delay: 0.3s;
}

.animated-heading .word:nth-child(4) {
	animation-delay: 0.4s;
}

.animated-heading .word:nth-child(5) {
	animation-delay: 0.5s;
}

.animated-heading .word:nth-child(6) {
	animation-delay: 0.6s;
}

.animated-heading .word:nth-child(7) {
	animation-delay: 0.7s;
}

.animated-heading .word-highlight:nth-child(8) {
	animation-delay: 0.8s;
}

.animated-heading .word:nth-child(9) {
	animation-delay: 0.9s;
}

.hero-content p {
	font-size: 1.1rem;
	margin-bottom: 32px;
	line-height: 1.8;
}

/* UNIFORM STAT BOXES */
.hero-stats {
	display: flex;
	gap: 20px;
	margin-bottom: 40px;
	justify-content: flex-start;
	flex-wrap: wrap;
}

.stat-item {
	flex: 1;
	min-width: 160px;
	max-width: 220px;
	background: #ffffff !important;
	border: 1px solid rgba(0, 197, 142, 0.3) !important;
	border-radius: 12px;
	padding: 20px 15px;
	text-align: center;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	transition: all 0.3s ease;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.03) !important;
	position: relative;
	overflow: hidden;
}

.stat-item::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 3px;
	background: linear-gradient(135deg, #00A075, #00C58E);
	transform: scaleX(0);
	transition: transform 0.3s ease;
}

.stat-item:hover::before {
	transform: scaleX(1);
}

.stat-item:hover {
	transform: translateY(-5px);
	border-color: var(--spocket-green) !important;
	box-shadow: 0 8px 25px rgba(0, 197, 142, 0.15) !important;
}

.hero-buttons {
	display: flex;
	gap: 1.5rem;
	flex-wrap: wrap;
}

.btn {
	padding: 1.2rem 3rem;
	border-radius: 50px;
	font-weight: 700;
	font-size: 1.1rem;
	text-decoration: none;
	transition: all 0.4s;
	display: inline-flex;
	align-items: center;
	gap: 0.8rem;
	position: relative;
	overflow: hidden;
}

.btn-primary {
	background: var(--gradient-primary);
	color: white !important;
	box-shadow: 0 8px 30px rgba(0, 197, 142, 0.3);
}

.btn-primary::before {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	width: 0;
	height: 0;
	background: var(--spocket-dark-green);
	border-radius: 50%;
	transform: translate(-50%, -50%);
	transition: width 0.6s, height 0.6s;
}

.btn-primary:hover::before {
	width: 400px;
	height: 400px;
}

.btn-primary span, .btn-primary i {
	position: relative;
	z-index: 1;
	color: white !important;
}

.btn-primary:hover {
	transform: translateY(-3px);
	box-shadow: 0 12px 40px rgba(0, 197, 142, 0.4);
}

.hero-image {
	position: relative;
	animation: float-image 6s infinite ease-in-out;
}

@keyframes float-image { 0%, 100% {
		transform: translateY(0);
	}
	50% {
		transform:translateY(-20px);
	}
}
.hero-image img {
	width: 100%;
	height: auto;
	border-radius: 24px;
	box-shadow: 0 30px 80px rgba(0, 0, 0, 0.1);
	border: 3px solid rgba(0, 197, 142, 0.2);
}

.trust-badges {
	padding: 40px 20px;
	text-align: center;
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.badges-container {
	max-width: 1200px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 24px;
}

.badge {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 12px;
	padding: 16px;
	border-radius: 12px;
	transition: all 0.3s ease;
	font-weight: 600;
	border: 1px solid rgba(0, 0, 0, 0.05);
}

.badge:hover {
	transform: translateY(-3px);
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
	border-color: rgba(0, 197, 142, 0.3);
}

.badge-icon {
	font-size: 1.5rem;
	background: var(--gradient-primary);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-clip: text;
}

.why-choose {
	padding: 80px 20px;
}

.section-header {
	text-align: center;
	max-width: 800px;
	margin: 0 auto 50px;
}

.section-header h2 {
	font-size: 2.5rem;
	font-weight: 700;
	margin-bottom: 16px;
	background: var(--gradient-primary);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-clip: text;
}

.section-header .subtitle {
	font-size: 1.1rem;
}

.intro-text {
	max-width: 900px;
	margin: 0 auto 60px;
	text-align: center;
}

.features-grid {
	max-width: 1200px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
	gap: 30px;
}

.feature-card {
	padding: 32px;
	border-radius: 16px;
	border: 1px solid rgba(0, 0, 0, 0.08);
	transition: all 0.3s ease;
	position: relative;
	overflow: hidden;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.03);
}

.feature-card::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 4px;
	height: 0;
	background: var(--gradient-primary);
	transition: height 0.3s ease;
}

.feature-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 15px 30px rgba(0, 197, 142, 0.15);
	border-color: var(--spocket-green);
}

.feature-card:hover::before {
	height: 100%;
}

.feature-icon {
	width: 64px;
	height: 64px;
	background: var(--gradient-primary);
	border-radius: 16px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 20px;
	font-size: 1.8rem;
	color: white !important;
	box-shadow: 0 10px 20px rgba(0, 197, 142, 0.2);
	transition: all 0.4s;
}

.feature-card:hover .feature-icon {
	transform: scale(1.1) rotate(5deg);
	box-shadow: 0 15px 30px rgba(0, 197, 142, 0.4);
}

.feature-card h3 {
	font-size: 1.3rem;
	font-weight: 600;
	margin-bottom: 12px;
}

.feature-card p {
	line-height: 1.7;
}

.who-benefits {
	padding: 80px 20px;
}

.benefits-grid {
	max-width: 1200px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
	gap: 30px;
}

.benefit-card {
	padding: 40px 32px;
	border-radius: 16px;
	text-align: center;
	transition: all 0.3s ease;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.03);
	border: 1px solid rgba(0, 0, 0, 0.08);
}

.benefit-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 15px 40px rgba(0, 197, 142, 0.15);
	border-color: var(--spocket-green);
}

.benefit-icon {
	width: 80px;
	height: 80px;
	background: var(--gradient-primary);
	border-radius: 50%;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	font-size: 2rem;
	color: white !important;
	margin-bottom: 24px;
	box-shadow: 0 10px 20px rgba(0, 197, 142, 0.3);
}

.benefit-card h4 {
	font-size: 1.3rem;
	font-weight: 600;
	margin-bottom: 12px;
}

.benefit-card p {
	line-height: 1.7;
}

.trust-section {
	padding: 80px 20px;
}

.trust-grid {
	max-width: 1200px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
	gap: 30px;
}

.trust-item {
	padding: 32px;
	border-radius: 16px;
	border-left: 4px solid var(--spocket-green);
	transition: all 0.3s ease;
	border-top: 1px solid rgba(0, 0, 0, 0.05);
	border-right: 1px solid rgba(0, 0, 0, 0.05);
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.02);
}

.trust-item:hover {
	box-shadow: 0 10px 30px rgba(0, 197, 142, 0.1);
	transform: translateX(8px);
	border-color: var(--spocket-green);
}

.trust-item h4 {
	font-size: 1.2rem;
	font-weight: 600;
	margin-bottom: 12px;
}

.trust-item p {
	line-height: 1.7;
}

.cta {
	padding: 80px 20px;
	text-align: center;
	position: relative;
	overflow: hidden;
	border-top: 2px solid var(--spocket-green);
}

.cta::before {
	content: '';
	position: absolute;
	width: 600px;
	height: 600px;
	background: radial-gradient(circle, rgba(0, 197, 142, 0.1), transparent);
	border-radius: 50%;
	top: -300px;
	right: -200px;
	animation: pulse 10s infinite ease-in-out;
}

.cta-content {
	max-width: 800px;
	margin: 0 auto;
	position: relative;
	z-index: 1;
}

.cta-content h2 {
	font-size: 2.5rem;
	font-weight: 700;
	margin-bottom: 16px;
	background: var(--gradient-primary);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-clip: text;
}

.cta-content p {
	font-size: 1.2rem;
	margin-bottom: 32px;
}

.cta-buttons {
	display: flex;
	gap: 2rem;
	justify-content: center;
	flex-wrap: wrap;
}

.btn-cta {
	background: var(--gradient-primary);
	color: white !important;
	padding: 1.5rem 3.5rem;
	border-radius: 50px;
	font-size: 1.3rem;
	font-weight: 800;
	text-decoration: none;
	transition: all 0.4s;
	box-shadow: 0 10px 30px rgba(0, 197, 142, 0.3);
	display: inline-flex;
	align-items: center;
	gap: 1rem;
	position: relative;
	overflow: hidden;
}

.btn-cta i {
	position: relative;
	z-index: 1;
	color: white !important;
}

.btn-cta:hover {
	transform: translateY(-5px) scale(1.05);
	box-shadow: 0 15px 40px rgba(0, 197, 142, 0.5);
}

/* Responsive */
@media ( max-width : 1024px) {
	.hero-container {
		grid-template-columns: 1fr;
		text-align: center;
		gap: 3rem;
	}
	.hero-stats {
		justify-content: center;
	}
	.hero-buttons {
		justify-content: center;
	}
	.hero-image {
		order: -1;
	}
}

@media ( max-width : 768px) {
	.hero {
		padding: 120px 20px 40px !important;
	}
	.hero-stats {
		justify-content: center;
	}
	.badges-container {
		grid-template-columns: 1fr;
		gap: 1.5rem;
	}
	.btn {
		width: 100%;
		justify-content: center;
	}
	.hero-buttons {
		flex-direction: column;
	}
	.stat-item {
		min-width: 140px;
		max-width: none;
	}
}

@media ( max-width : 480px) {
	.hero-content h1 {
		font-size: 2rem;
	}
	.section-header h2 {
		font-size: 2rem;
	}
	.cta-content h2 {
		font-size: 2rem;
	}
}
</style>
</head>
<body>
	<jsp:include page="../../../includes/navbar/navbar.jsp" />

	<section class="hero" id="home"
		style="background: linear-gradient(135deg, #ffffff 0%, #f0fdf9 50%, #ffffff 100%) !important;">
		<div class="hero-container">
			<div class="hero-content">
				<h1 class="animated-heading" style="color: #111111 !important;">
					<span class="word" style="color: #111111 !important;">Spocket</span>
					<span class="word" style="color: #111111 !important;">Dropshipping</span>
					<span class="word" style="color: #111111 !important;">Setup</span>
					<span class="word" style="color: #111111 !important;">Service</span>
					<span class="word" style="color: #111111 !important;">–</span> <span
						class="word" style="color: #111111 !important;">Start</span> <span
						class="word" style="color: #111111 !important;">Your</span> <span
						class="word-highlight">Ecommerce</span> <span class="word"
						style="color: #111111 !important;">Business</span>
				</h1>
				<p style="color: #444444 !important; font-weight: 500;">
					IARDO offers comprehensive <span class="highlight">Spocket
						Dropshipping Setup</span> Services across PAN India to help you build a
					scalable ecommerce business with global suppliers — no inventory
					required.
				</p>

				<div class="hero-stats">
					<div class="stat-item">
						<span
							style="color: #111111 !important; font-size: 1.4rem !important; font-weight: 800 !important; display: block; line-height: 1.2 !important;">PAN</span>
						<span
							style="color: #555555 !important; font-size: 1rem !important; font-weight: 500 !important; display: block; margin-top: 5px;">India
							Coverage</span>
					</div>
					<div class="stat-item">
						<span
							style="color: #111111 !important; font-size: 1.4rem !important; font-weight: 800 !important; display: block; line-height: 1.2 !important;">Quick
							& Easy</span> <span
							style="color: #555555 !important; font-size: 1rem !important; font-weight: 500 !important; display: block; margin-top: 5px;">Setup</span>
					</div>
					<div class="stat-item">
						<span
							style="color: #111111 !important; font-size: 1.4rem !important; font-weight: 800 !important; display: block; line-height: 1.2 !important;">24×7</span>
						<span
							style="color: #555555 !important; font-size: 1rem !important; font-weight: 500 !important; display: block; margin-top: 5px;">Support</span>
					</div>
				</div>

				<div class="hero-buttons">
					<a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary"> <span><i
							class="fas fa-rocket"></i> Start Onboarding</span>
					</a>
				</div>
			</div>
			<div class="hero-image">
				<img src="https://iardo.pages.dev/spocket.webp"
					alt="Spocket Dropshipping Setup">
			</div>
		</div>
	</section>

	<section class="trust-badges"
		style="background-color: #fcfcfc !important;">
		<div class="badges-container">
			<div class="badge"
				style="background: #ffffff; border-color: rgba(0, 0, 0, 0.05);">
				<span class="badge-icon"><i class="fas fa-check-circle"></i></span>
				<span style="color: #111111 !important;">Expert Knowledge</span>
			</div>
			<div class="badge"
				style="background: #ffffff; border-color: rgba(0, 0, 0, 0.05);">
				<span class="badge-icon"><i class="fas fa-bolt"></i></span> <span
					style="color: #111111 !important;">Quick Onboarding</span>
			</div>
			<div class="badge"
				style="background: #ffffff; border-color: rgba(0, 0, 0, 0.05);">
				<span class="badge-icon"><i class="fas fa-star"></i></span> <span
					style="color: #111111 !important;">End-to-End Support</span>
			</div>
			<div class="badge"
				style="background: #ffffff; border-color: rgba(0, 0, 0, 0.05);">
				<span class="badge-icon"><i class="fas fa-bullseye"></i></span> <span
					style="color: #111111 !important;">PAN India Service</span>
			</div>
		</div>
	</section>

	<section class="why-choose" id="services"
		style="background-color: #ffffff !important;">
		<div class="section-header">
			<h2>Why Use Spocket?</h2>
			<p class="subtitle" style="color: #555555 !important;">Spocket is
				a popular dropshipping platform that helps ecommerce sellers source
				products from global suppliers without holding inventory</p>
		</div>

		<div class="intro-text">
			<p style="color: #444444 !important; font-weight: 500;">Spocket
				allows businesses to source products from suppliers in the US,
				Europe, and other regions. It helps ecommerce sellers easily connect
				their store and sell products without managing inventory. If you
				want to start a dropshipping business or scale your ecommerce store
				globally, Spocket is a great platform. IARDO's Spocket Setup
				Services are designed to help you launch and grow your business
				efficiently.</p>
		</div>

		<div class="features-grid">
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-globe"></i>
				</div>
				<h3 style="color: #111111 !important;">Access to Global
					Suppliers</h3>
				<p style="color: #555555 !important;">Connect with thousands of
					verified suppliers from the US, Europe, and worldwide — offering
					quality products with fast shipping options to your customers.</p>
			</div>
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-boxes"></i>
				</div>
				<h3 style="color: #111111 !important;">No Inventory Management
					Required</h3>
				<p style="color: #555555 !important;">Sell products without
					stocking any inventory. Spocket handles fulfillment directly from
					suppliers, so you can focus entirely on marketing and growing
					sales.</p>
			</div>
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-wallet"></i>
				</div>
				<h3 style="color: #111111 !important;">Low Investment Business
					Model</h3>
				<p style="color: #555555 !important;">Start your ecommerce
					business with minimal upfront investment. No warehouse, no bulk
					orders — just set up your store and start selling immediately.</p>
			</div>
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-shipping-fast"></i>
				</div>
				<h3 style="color: #111111 !important;">Fast Shipping Options</h3>
				<p style="color: #555555 !important;">Spocket's US and EU-based
					suppliers offer significantly faster shipping times compared to
					other dropshipping platforms, improving customer satisfaction.</p>
			</div>
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-store"></i>
				</div>
				<h3 style="color: #111111 !important;">Easy Integration with
					Shopify</h3>
				<p style="color: #555555 !important;">Spocket integrates
					seamlessly with Shopify, WooCommerce, and other platforms —
					automating product imports, order processing, and inventory sync.</p>
			</div>
			<div class="feature-card"
				style="background-color: #ffffff !important;">
				<div class="feature-icon">
					<i class="fas fa-chart-line"></i>
				</div>
				<h3 style="color: #111111 !important;">Scalable Business Growth</h3>
				<p style="color: #555555 !important;">Easily scale your
					dropshipping business by adding more products, suppliers, and
					markets — without any increase in operational complexity or
					overhead costs.</p>
			</div>
		</div>
	</section>

	<section class="who-benefits" id="benefits"
		style="background-color: #fcfcfc !important;">
		<div class="section-header">
			<h2>Our Spocket Services</h2>
			<p class="subtitle" style="color: #555555 !important;">We provide
				complete dropshipping setup and growth support to launch and scale
				your ecommerce business</p>
		</div>
		<div class="benefits-grid">
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-user-cog"></i></span>
				<h4 style="color: #00C58E !important;">Spocket Account Setup</h4>
				<p style="color: #555555 !important;">We handle complete Spocket
					account creation, plan selection, and configuration so your
					dropshipping foundation is set up correctly from day one.</p>
			</div>
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-plug"></i></span>
				<h4 style="color: #00C58E !important;">Shopify Integration</h4>
				<p style="color: #555555 !important;">Seamless Spocket
					integration with your Shopify or WooCommerce store for automated
					product imports, inventory sync, and order fulfillment.</p>
			</div>
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-search"></i></span>
				<h4 style="color: #00C58E !important;">Product Research &
					Selection</h4>
				<p style="color: #555555 !important;">We identify winning
					products and connect you with reliable suppliers offering quality
					goods, fast shipping, and healthy profit margins for your niche.</p>
			</div>
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-box-open"></i></span>
				<h4 style="color: #00C58E !important;">Store Setup & Product
					Listing</h4>
				<p style="color: #555555 !important;">We import and optimize
					products with compelling descriptions, enhanced images, and
					SEO-ready content to maximize store conversions and visibility.</p>
			</div>
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-tags"></i></span>
				<h4 style="color: #00C58E !important;">Pricing & Profit
					Strategy</h4>
				<p style="color: #555555 !important;">We develop smart pricing
					strategies accounting for product costs, shipping fees, platform
					charges, and competition to ensure healthy profit margins.</p>
			</div>
			<div class="benefit-card"
				style="background-color: #ffffff !important;">
				<span class="benefit-icon"><i class="fas fa-chart-bar"></i></span>
				<h4 style="color: #00C58E !important;">Store Launch & Sales
					Growth</h4>
				<p style="color: #555555 !important;">From store launch to
					Facebook Ads, Google Ads, and conversion optimization — we help you
					drive traffic, increase sales, and scale your business globally.</p>
			</div>
		</div>
	</section>

	<section class="trust-section"
		style="background-color: #ffffff !important;">
		<div class="section-header">
			<h2>Why Choose Us for Spocket Setup?</h2>
			<p class="subtitle" style="color: #555555 !important;">Your
				reliable partner for dropshipping success</p>
		</div>
		<div class="trust-grid">
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">Global Ecommerce
					Expertise</h4>
				<p style="color: #555555 !important;">Our team has deep
					experience with Spocket's platform, supplier network, and global
					ecommerce dynamics — ensuring smooth setup and optimal
					configuration for your store.</p>
			</div>
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">Sales-Focused Strategy</h4>
				<p style="color: #555555 !important;">We don't just set up your
					account — we help you build a profitable business with smart
					product selection, pricing strategies, and growth-focused store
					optimization.</p>
			</div>
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">Fast Setup Process</h4>
				<p style="color: #555555 !important;">Our streamlined onboarding
					process gets your Spocket-powered store live quickly with winning
					products, optimized listings, and automated fulfillment ready to
					go.</p>
			</div>
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">Shopify & Dropshipping
					Experience</h4>
				<p style="color: #555555 !important;">Expertise in connecting
					Spocket with Shopify, WooCommerce, and other platforms for
					seamless, automated order fulfillment with minimal manual
					intervention.</p>
			</div>
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">End-to-End Support</h4>
				<p style="color: #555555 !important;">From account setup to
					product research, store launch, and ongoing growth strategy — we
					provide complete support throughout your entire dropshipping
					journey.</p>
			</div>
			<div class="trust-item" style="background-color: #fcfcfc !important;">
				<h4 style="color: #111111 !important;">Proven Results</h4>
				<p style="color: #555555 !important;">With 100+ ecommerce setups
					completed and consistent business growth delivered, we have a
					proven track record of building profitable dropshipping stores.</p>
			</div>
		</div>
	</section>

	<section class="cta"
		style="background: linear-gradient(135deg, #f0fdf9, #ffffff) !important;">
		<div class="cta-content">
			<h2>Start Your Dropshipping Business Today</h2>
			<p style="color: #444444 !important; font-weight: 500;">Want to
				start your ecommerce business with Spocket? Let IARDO handle your
				complete setup and launch your profitable dropshipping store!</p>
			<div class="cta-buttons">
				<a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i
					class="fas fa-rocket"></i> Contact Us for a Free Consultation</a>
			</div>
		</div>
	</section>

	<jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
