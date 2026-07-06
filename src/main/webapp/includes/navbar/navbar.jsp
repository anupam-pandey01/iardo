<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
/* =====================================================
CSS VARIABLES (LIGHT THEME)
===================================================== */
:root {
	--bg-light: #ffffff;
	--bg-light-2: #f8f9fa;
	--bg-glass: rgba(255, 255, 255, 0.85);
	--primary: #ff6b35;
	--primary-light: #ff8c61;
	--secondary: #ffb703;
	--text-dark: #111827;
	--text-gray: #4b5563;
	--text-muted: #6b7280;
	--border-glass: rgba(0, 0, 0, 0.08);
	--shadow-soft: 0 10px 40px rgba(0, 0, 0, 0.05);
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body.menu-open {
	overflow: hidden;
}

.container {
	margin: auto, 0px;
	padding: 0 20px;
}

/* =====================================================
NAVBAR BASE
===================================================== */
/* PREMIUM LIGHT GLASS NAVBAR */
/* PREMIUM LIGHT GLASS NAVBAR */
.navbar {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	padding: 10px 0;
	background: transparent;
	transition: all 0.3s ease;
}

/* When scrolled */
.navbar.scrolled {
	backdrop-filter: blur(18px);
	-webkit-backdrop-filter: blur(18px);
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.08);
}

/* Glass container */
.nav-glass {
	padding: 10px 20px;
	border-radius: 50px;
	backdrop-filter: blur(20px);
	-webkit-backdrop-filter: blur(20px);
	border: 1px solid rgba(0, 0, 0, 0.06);
	box-shadow: 0 10px 40px rgba(0, 0, 0, 0.06);
	overflow: visible;
}

/* FIX: !important to prevent any page CSS from overriding navbar layout */
.navbar .nav-wrapper {
	display: flex !important;
	align-items: center !important;
	justify-content: center !important;
	position: relative !important;
	flex-direction: row !important;
	flex-wrap: nowrap !important;
}
/* LOGO */
.logo .logo-img {
	height: 120px;
	width: auto;
	background: transparent;
	filter: drop-shadow(0 2px 5px rgba(0, 0, 0, 0.1));
}

.logo:hover .logo-img {
	filter: drop-shadow(0 4px 10px rgba(0, 0, 0, 0.15));
	transform: scale(1.05);
}

/* =====================================================
DESKTOP GLASS NAV (FOOTER BLUE + GLASS)
===================================================== */
.nav-glass:hover {
	background: rgba(255, 255, 255, 0.8);
	box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
}

.nav-menu {
	list-style: none;
	display: flex;
	gap: 12px;
	margin: 0;
	padding: 0;
}

.nav-menu>li {
	position: relative;
}

/* Desktop Text color (White to contrast dark nav) */
.nav-menu>li>a {
	padding: 12px 22px;
	border-radius: 40px;
	color: #ffffff; /* WHITE TEXT */
	text-decoration: none;
	font-size: 0.85rem;
	font-weight: 600;
	letter-spacing: 0.5px;
	transition: all 0.3s ease;
	white-space: nowrap;
	display: block;
}

.nav-menu>li>a:hover {
	background: rgba(255, 255, 255, 0.15);
	color: var(--secondary);
}

.nav-menu>li>a.active {
	background: linear-gradient(135deg, var(--primary), var(--secondary));
	color: #fff;
}

/* Desktop Dropdown (Light) */
.dropdown-menu {
	position: absolute;
	top: 100%;
	left: 50%;
	transform: translateX(-50%);
	background: rgba(255, 255, 255, 0.98);
	backdrop-filter: blur(30px);
	-webkit-backdrop-filter: blur(30px);
	border: 1px solid rgba(0, 0, 0, 0.08);
	border-radius: 20px;
	padding: 15px 0;
	margin-top: 15px;
	min-width: 220px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
	opacity: 0;
	visibility: hidden;
	transform: translateX(-50%) translateY(-10px);
	transition: all 0.3s ease;
	list-style: none;
	z-index: 1001;
}

.nav-menu>li:hover .dropdown-menu {
	opacity: 1;
	visibility: visible;
	transform: translateX(-50%) translateY(0);
}

.nav-menu>li:hover .dropdown-menu {
	opacity: 1;
	visibility: visible;
	transform: translateX(-50%) translateY(0);
}

.dropdown-menu>li {
	position: relative;
}

.dropdown-menu>li>a {
	padding: 12px 25px;
	color: var(--text-gray);
	font-size: 0.9rem;
	font-weight: 500;
	border-radius: 0;
	display: flex;
	align-items: center;
	justify-content: space-between;
	text-decoration: none;
}

.dropdown-menu>li>a:hover {
	background: rgba(0, 0, 0, 0.03);
	color: var(--primary);
}

/* Desktop Sub-dropdown (Light) */
.sub-dropdown {
	position: relative;
}

.sub-menu {
	position: absolute;
	left: 100%;
	top: 0;
	background: rgba(255, 255, 255, 0.98);
	backdrop-filter: blur(30px);
	-webkit-backdrop-filter: blur(30px);
	border: 1px solid rgba(0, 0, 0, 0.08);
	border-radius: 20px;
	padding: 15px 0;
	margin-left: 10px;
	min-width: 220px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
	opacity: 0;
	visibility: hidden;
	transform: translateX(-10px);
	transition: all 0.3s ease;
	list-style: none;
	z-index: 1002;
}

.sub-dropdown:hover .sub-menu {
	opacity: 1;
	visibility: visible;
	transform: translateX(0);
}

.sub-menu li a {
	padding: 10px 25px;
	color: var(--text-gray);
	font-size: 0.85rem;
	border-radius: 0;
	display: block;
	text-decoration: none;
}

.sub-menu li a:hover {
	background: rgba(255, 107, 53, 0.08);
	color: var(--primary);
}

/* =====================================================
MEGA MENU (IT SERVICES) - LIGHT
===================================================== */
.mega-menu {
	position: absolute;
	top: 100%;
	right: -20px;
	left: auto;
	transform: none;
	background: rgba(255, 255, 255, 0.98);
	backdrop-filter: blur(30px);
	-webkit-backdrop-filter: blur(30px);
	border: 1px solid rgba(0, 0, 0, 0.08);
	border-radius: 20px;
	padding: 40px 30px;
	margin-top: 15px;
	width: 900px;
	max-width: calc(100vw - 40px);
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.12);
	opacity: 0;
	visibility: hidden;
	transform: translateY(-10px);
	transition: all 0.3s ease;
	z-index: 1001;
	overflow: hidden;
}

.nav-menu>li:hover .mega-menu {
	opacity: 1;
	visibility: visible;
	transform: translateY(0);
}

.mega-menu-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 30px;
}

.mega-menu-column {
	display: flex;
	flex-direction: column;
	min-width: 0;
	overflow: hidden;
}

.mega-menu-column h3 {
	font-size: 0.8rem;
	font-weight: 700;
	letter-spacing: 1.5px;
	color: var(--primary);
	margin-bottom: 20px;
	text-transform: uppercase;
}

.mega-menu-column ul {
	list-style: none;
	padding: 0;
	margin: 0;
	display: flex;
	flex-direction: column;
	gap: 8px;
}

.mega-menu-column ul li a {
	display: block;
	padding: 10px 5px;
	color: var(--text-gray);
	text-decoration: none;
	font-size: 0.9rem;
	font-weight: 500;
	border-radius: 8px;
	transition: all 0.3s ease;
	word-wrap: break-word;
	line-height: 1.4;
}

.mega-menu-column ul li a:hover {
	background: rgba(255, 107, 53, 0.08);
	padding-left: 20px;
	color: var(--primary);
}

/* =====================================================
LANGUAGE SWITCHER
===================================================== */
.language-switcher {
	display: flex;
	align-items: center;
	gap: 8px;
	margin-left: 20px;
	flex-shrink: 0;
}

.lang-btn {
	background: transparent;
	border: none;
	color: var(--text-dark);
	font-size: 14px;
	font-weight: 600;
	cursor: pointer;
	padding: 6px 10px;
	border-radius: 4px;
	transition: all 0.3s ease;
	font-family: inherit;
}

.lang-btn:hover {
	background: rgba(0, 0, 0, 0.05);
	transform: translateY(-2px);
}

.lang-btn.active {
	background: rgba(0, 0, 0, 0.08);
	color: var(--primary);
}

.lang-divider {
	color: rgba(0, 0, 0, 0.3);
	font-size: 14px;
}

/* =====================================================
HAMBURGER BUTTON (SMART DYNAMIC COLOR)
===================================================== */
.hamburger {
	display: none;
	flex-direction: column;
	gap: 5px;
	cursor: pointer;
	z-index: 1100;
	padding: 10px;
	background: none;
	border: none;
	flex-shrink: 0;
}

/* Default state: Over white background -> Show Dark Footer Blue */
.hamburger span {
	width: 28px;
	height: 3px;
	background: #080e1a;
	/* Dark footer blue color so it's visible on white */
	border-radius: 3px;
	transition: all 0.3s ease;
	display: block;
}

/* Scrolled state: Over dark blue navbar -> Change to White */
.navbar.scrolled .hamburger span {
	background: #ffffff;
}

/* Open state: Over white mobile menu -> Keep it Dark Footer Blue */
.hamburger.active span {
	background: #080e1a !important;
}

.hamburger.active span:nth-child(1) {
	transform: rotate(45deg) translate(8px, 8px);
}

.hamburger.active span:nth-child(2) {
	opacity: 0;
}

.hamburger.active span:nth-child(3) {
	transform: rotate(-45deg) translate(8px, -8px);
}

/* =====================================================
MOBILE MENU OVERLAY (LIGHT THEME)
===================================================== */
.mobile-menu {
	position: fixed;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100vh;
	background: rgba(255, 255, 255, 0.98);
	backdrop-filter: blur(30px);
	-webkit-backdrop-filter: blur(30px);
	z-index: 999;
	padding-top: 120px;
	transition: left 0.4s cubic-bezier(0.68, -0.55, 0.27, 1.55);
	overflow-y: auto;
}

.mobile-menu.active {
	left: 0;
}

.mobile-nav-menu {
	list-style: none;
	padding: 0;
	margin: 0;
	display: flex;
	flex-direction: column;
	gap: 0;
}

.mobile-nav-menu>li {
	width: 100%;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.mobile-nav-menu>li>a {
	display: block;
	padding: 20px 40px;
	color: var(--text-dark);
	text-decoration: none;
	font-size: 1.1rem;
	font-weight: 600;
	letter-spacing: 1px;
	transition: all 0.3s ease;
}

.mobile-nav-menu>li>a:hover {
	background: rgba(0, 0, 0, 0.02);
	padding-left: 50px;
	color: var(--primary);
}

.mobile-nav-menu>li>a.active {
	background: linear-gradient(135deg, var(--primary), var(--secondary));
	color: #fff;
}

/* =====================================================
MOBILE DROPDOWN (Level 1)
===================================================== */
.mob-dropdown-menu {
	list-style: none;
	padding: 0;
	margin: 0;
	max-height: 0;
	overflow: hidden;
	background: #f9fafb; /* Light gray background */
	transition: max-height 0.4s ease;
}

.mob-dropdown-menu.open {
	max-height: 3000px;
}

.mob-dropdown-menu>li {
	border-bottom: 1px solid rgba(0, 0, 0, 0.03);
}

.mob-dropdown-menu>li>a {
	display: block;
	padding: 15px 50px;
	color: var(--text-gray);
	text-decoration: none;
	font-size: 1rem;
	font-weight: 500;
	letter-spacing: 0.5px;
	transition: all 0.3s ease;
}

.mob-dropdown-menu>li>a:hover {
	background: rgba(0, 0, 0, 0.03);
	padding-left: 60px;
	color: var(--text-dark);
}

/* =====================================================
MOBILE SUB-MENU (Level 2)
===================================================== */
.mob-sub-menu {
	list-style: none;
	padding: 0;
	margin: 0;
	max-height: 0;
	overflow: hidden;
	background: #f3f4f6; /* Slightly darker gray */
	transition: max-height 0.4s ease;
}

.mob-sub-menu.open {
	max-height: 1500px;
}

.mob-sub-menu li a {
	display: block;
	padding: 12px 65px;
	color: var(--text-muted);
	text-decoration: none;
	font-size: 0.95rem;
	font-weight: 500;
	transition: all 0.3s ease;
}

.mob-sub-menu li a:hover {
	background: rgba(255, 107, 53, 0.05);
	padding-left: 75px;
	color: var(--primary);
}

/* =====================================================
MOBILE IT SERVICES SECTION TITLES
===================================================== */
.mob-it-section-title {
	display: block;
	padding: 12px 50px;
	color: var(--primary);
	font-size: 0.8rem;
	font-weight: 700;
	letter-spacing: 1.5px;
	text-transform: uppercase;
	background: rgba(255, 107, 53, 0.05);
	border-bottom: 1px solid rgba(255, 107, 53, 0.1);
	cursor: default;
}

/* =====================================================
TOGGLE ARROW INDICATORS
===================================================== */
.mob-toggle {
	cursor: pointer;
	user-select: none;
	position: relative;
}

.mob-toggle::after {
	content: '▸';
	margin-left: 8px;
	font-size: 0.85em;
	transition: transform 0.3s ease;
	display: inline-block;
}

.mob-toggle.open::after {
	transform: rotate(90deg);
}

/* =====================================================
SCROLL TO TOP (Brand Gradient)
===================================================== */

/* =====================================================
RESPONSIVE
===================================================== */
 @media(max-width: 1385px){
	.nav-glass {
	    padding: 10px 5px;
	    border-radius: 50px;
	    backdrop-filter: blur(20px);
	    -webkit-backdrop-filter: blur(20px);
	    border: 1px solid rgba(0, 0, 0, 0.06);
	    box-shadow: 0 10px 40px rgba(0,0,0,0.06);
		overflow: visible; 
	}
	.logo .logo-img {
		margin-right: 20px;
		height: 100px;
		width: auto;
		background: transparent;
		filter: drop-shadow(0 2px 5px rgba(0, 0, 0, 0.1));
	}
	.nav-menu {
		list-style: none;
		display: flex;
		gap: 0px;
		margin: 0;
		padding: 0;
	}
	.nav-menu>li>a {
		padding: 10px 10px;
		border-radius: 30px;
		color: #111;
		font-size: 0.85rem;
		font-weight: 600;
		transition: all 0.25s ease;
	}
}
@media ( max-width : 1150px) {
	.logo .logo-img {
		height: 70px;
	}
	.navbar .nav-wrapper {
		display: flex !important;
		align-items: center !important;
		justify-content: space-between !important;
		position: relative !important;
		flex-direction: row !important;
		flex-wrap: nowrap !important;
		/* width: 100% !important; */
	}
	.navbar {
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 1000;
		padding: 10px 0;
		background: #ffffff;
		transition: all 0.3s ease;
	}
	.nav-glass {
		display: none;
	}
	.hamburger {
		display: flex !important;
	}
	.language-switcher {
		display: none;
	}
	.lang-btn {
		font-size: 12px;
		padding: 4px 8px;
	}
	.lang-divider {
		font-size: 12px;
	}
	.scroll-top {
		bottom: 20px;
		right: 20px;
		width: 42px;
		height: 42px;
		font-size: 16px;
	}
}

@media ( max-width : 480px) {
	.logo .logo-img {
		height: 60px;
	}
	.mobile-nav-menu>li>a {
		padding: 18px 30px;
		font-size: 1rem;
	}
	.mob-dropdown-menu>li>a {
		padding: 12px 40px;
		font-size: 0.95rem;
	}
	.mob-sub-menu li a {
		padding: 10px 50px;
		font-size: 0.9rem;
	}
	.mob-it-section-title {
		padding: 10px 40px;
	}
}

/* =====================================================
   NOON ONBOARDING FLASHING BUTTON EFFECT
   ===================================================== */
/* PREMIUM CTA BUTTON */
.flash-noon-btn {
	font-size: 0.85rem;
	font-weight: 700;
	color: #fff;
	background: linear-gradient(135deg, #ff6b35, #ffb703);
	padding: 10px 18px;
	border-radius: 30px;
	text-decoration: none;
	margin-left: 15px;
	box-shadow: 0 6px 20px rgba(255, 107, 53, 0.35);
	transition: all 0.3s ease;
	position: relative;
	overflow: hidden;
}

/* hover effect */
.flash-noon-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 30px rgba(255, 107, 53, 0.5);
}

/* subtle shine animation */
.flash-noon-btn::before {
	content: "";
	position: absolute;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100%;
	background: linear-gradient(120deg, transparent, rgba(255, 255, 255, 0.4),
		transparent);
	transition: 0.5s;
}

.flash-noon-btn:hover::before {
	left: 100%;
}

/* Mobile responsive ke liye adjust karna ho toh */
@media ( max-width : 768px) {
	.flash-noon-btn {
		margin-left: 0;
		margin-top: 10px;
		display: inline-block;
	}
}

.nav-menu>li>a {
	border-radius: 30px;
	color: #111;
	font-size: 0.85rem;
	font-weight: 600;
	transition: all 0.25s ease;
}

.nav-menu>li>a:hover {
	background: rgba(0, 0, 0, 0.05);
	color: #000;
}

/* =====================================================
MEGA MENU FIX - Viewport ke andar rakho
===================================================== */
.mega-menu {
	position: fixed;
	top: auto;
	left: auto;
	right: auto;
	background: rgba(255, 255, 255, 0.98);
	backdrop-filter: blur(30px);
	-webkit-backdrop-filter: blur(30px);
	border: 1px solid rgba(0, 0, 0, 0.08);
	border-radius: 20px;
	padding: 40px 30px;
	width: 900px;
	max-width: calc(100vw - 40px);
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.12);
	opacity: 0;
	visibility: hidden;
	transform: translateY(-10px);
	transition: opacity 0.3s ease, visibility 0.3s ease, transform 0.3s ease;
	z-index: 1001;
	overflow: hidden;
}

.nav-menu>li:hover .mega-menu {
	opacity: 1;
	visibility: visible;
	transform: translateY(0);
}
</style>

<nav class="navbar" id="mainNavbar">
	<div class="container nav-wrapper">

		<div class="logo">
			<a href="${pageContext.request.contextPath}/index.jsp"> <img
				src="${pageContext.request.contextPath}/assets/logo/logo-of-iardo.png"
				alt="Iardo Logo" class="logo-img">
			</a>
		</div>

		<div class="nav-glass">
			<ul class="nav-menu">

				<li class="dropdown"><a>WHO WE ARE▾</a>
					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath}/about-our-chairman">About
								Our Chairman</a></li>
						<li><a href="${pageContext.request.contextPath}/about">About
								Us</a></li>
						<li><a
							href="${pageContext.request.contextPath}/why-choose-us">Why
								Choose Us</a></li>
						<li><a href="${pageContext.request.contextPath}/our-culture">Our
								Culture</a></li>
						<li><a
							href="${pageContext.request.contextPath}/sustainability">Sustainability</a></li>
					</ul></li>

				<li class="dropdown"><a href="#">SERVICES ▾</a>
					<ul class="dropdown-menu">

						<li class="sub-dropdown"><a href="#">Quick Commerce ▸</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/flipkart-minute">Flipkart
										Minutes</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/blinkit-onboarding-services">Blinkit</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-cloud-kitchen">Swiggy
										Cloud Kitchen</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart">Swiggy
										Instamart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/zepto">Zepto</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/big-basket">Big
										Basket</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/amazon-now">Amazon
										Now</a></li>
							</ul></li>

						<li class="sub-dropdown"><a href="#">E-Commerce ▸</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/flipkart">Flipkart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/meesho">Meesho</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/amazon">Amazon</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/myntra">Myntra</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/nykaa">Nykaa</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/ajio">Ajio</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/jio-mart">JioMart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/d-mart">DMart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/etsy">Etsy</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/spocket">Spocket</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/e-bay">eBay</a></li>
							</ul></li>

						<li class="sub-dropdown"><a href="#">Development ▸</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/development/web-development/">Website
										Development</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/development/app-development/">App
										Development</a></li>
							</ul></li>

						<li class="sub-dropdown"><a href="#">Digital Marketing ▸</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/seo/">SEO</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/smo">SMO</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/google-ads">Google
										Ads</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/meta-ads">Meta
										Ads</a></li>
							</ul></li>

						<li class="sub-dropdown"><a href="#">Email Marketing ▸</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/email-marketing">Email
										Marketing</a></li>
							</ul></li>

					</ul></li>

				<li><a href="${pageContext.request.contextPath}/our-clients">OUR
						CLIENTS</a></li>

				<li class="dropdown"><a href="#">IT SERVICES ▾</a>
					<div class="mega-menu">
						<div class="mega-menu-grid">
							<div class="mega-menu-column">
								<h3>Ideate</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/ux-ui-design-services">UX
											&amp; UI Design Services</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/custom-software-development">Custom
											Software Development</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/cloud-consulting-services">Cloud
											Consulting &amp; Services</a></li>
								</ul>
							</div>
							<div class="mega-menu-column">
								<h3>Build</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/dedicated-development-teams">Dedicated
											Development Teams</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/cloud-engineering-services">Cloud
											Engineering Service</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/embedded-software-services">Embedded
											Software Services</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/mobile-apps-development">Mobile
											Apps Development</a></li>
								</ul>
							</div>
							<div class="mega-menu-column">
								<h3>Improve</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/digital-transformation">Digital
											Transformation</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/generative-ai-development">Generative
											AI Development</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/ai-ml-development">AI
											&amp; ML Development</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/data-engineering-services">Data
											Engineering Services</a></li>
								</ul>
							</div>
						</div>
						<div class="mega-menu-grid" style="margin-top: 30px;">
							<div class="mega-menu-column">
								<h3>Operate</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/automation-testing">Automation
											Testing</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/devops-consulting">DevOps
											Consulting</a></li>
								</ul>
							</div>
							<div class="mega-menu-column">
								<h3>Scale</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/software-outsourcing">Software
											Outsourcing</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/dev-for-startups">Dev
											for Startups</a></li>
								</ul>
							</div>
							<div class="mega-menu-column">
								<h3>More Services</h3>
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/it-services/website-development">Website
											Development</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/app-development">App
											Development</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/graphics-design">Graphics
											Design</a></li>
									<li><a
										href="${pageContext.request.contextPath}/it-services/maintenance-support">Maintenance
											&amp; Support</a></li>
								</ul>
							</div>
						</div>
					</div></li>

				<li><a href="${pageContext.request.contextPath}/case-studies">CASE
						STUDIES</a></li>
				<li><a href="${pageContext.request.contextPath}/contact-us">CONTACT
						US</a></li>
				<li><a href="${pageContext.request.contextPath}/blog">BLOGS</a></li>
				<li><a
					href="${pageContext.request.contextPath}/noon-onboarding"
					class="flash-noon-btn">Noon Onboarding</a></li>

			</ul>
		</div>

		<button class="hamburger" id="mainHamburger" aria-label="Toggle menu">
			<span></span> <span></span> <span></span>
		</button>


		<div class="mobile-menu" id="mainMobileMenu">

			<ul class="mobile-nav-menu">

				<li><a href="#" class="mob-toggle" id="mob-whoweare-toggle">WHO
						WE ARE</a>
					<ul class="mob-dropdown-menu" id="mob-whoweare-menu">
						<li><a
							href="${pageContext.request.contextPath}/about-our-chairman">About
								Our Chairman</a></li>
						<li><a href="${pageContext.request.contextPath}/about">About
								Us</a></li>
						<li><a
							href="${pageContext.request.contextPath}/why-choose-us">Why
								Choose Us</a></li>
						<li><a href="${pageContext.request.contextPath}/our-culture">Our
								Culture</a></li>
						<li><a
							href="${pageContext.request.contextPath}/sustainability">Sustainability</a></li>
					</ul></li>

				<li><a href="#" class="mob-toggle" id="mob-services-toggle">SERVICES</a>
					<ul class="mob-dropdown-menu" id="mob-services-menu">

						<li><a href="#" class="mob-toggle">Quick Commerce</a>
							<ul class="mob-sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/flipkart-minute">Flipkart
										Minutes</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/blinkit-onboarding-services">Blinkit</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-cloud-kitchen">Swiggy
										Cloud Kitchen</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart">Swiggy
										Instamart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/zepto">Zepto</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/big-basket">Big
										Basket</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/quick-commerce/amazon-now">Amazon
										Now</a></li>
							</ul></li>

						<li><a href="#" class="mob-toggle">E-Commerce</a>
							<ul class="mob-sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/flipkart">Flipkart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/meesho">Meesho</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/amazon">Amazon</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/myntra">Myntra</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/nykaa">Nykaa</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/ajio">Ajio</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/jio-mart">JioMart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/d-mart">DMart</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/etsy">Etsy</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/spocket">Spocket</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/e-commerce/e-bay">eBay</a></li>
							</ul></li>

						<li><a href="#" class="mob-toggle">Development</a>
							<ul class="mob-sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/development/web-development/">Website
										Development</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/development/app-development/">App
										Development</a></li>
							</ul></li>

						<li><a href="#" class="mob-toggle">Digital Marketing</a>
							<ul class="mob-sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/seo/">SEO</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/smo">SMO</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/google-ads">Google
										Ads</a></li>
								<li><a
									href="${pageContext.request.contextPath}/services/digital-marketing/meta-ads">Meta
										Ads</a></li>
							</ul></li>

						<li><a href="#" class="mob-toggle">Email Marketing</a>
							<ul class="mob-sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/services/email-marketing">Email
										Marketing</a></li>
							</ul></li>

					</ul></li>
				<li><a href="${pageContext.request.contextPath}/our-clients">OUR
						CLIENTS</a></li>

				<li><a href="#" class="mob-toggle" id="mob-itservices-toggle">IT
						SERVICES</a>
					<ul class="mob-dropdown-menu" id="mob-itservices-menu">

						<li><span class="mob-it-section-title">Ideate</span>
							<ul class="mob-sub-menu open" style="max-height: none;">
								<li><a
									href="${pageContext.request.contextPath}/it-services/ux-ui-design-services">UX
										&amp; UI Design Services</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/custom-software-development">Custom
										Software Development</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/cloud-consulting-services">Cloud
										Consulting &amp; Services</a></li>
							</ul></li>

						<li><span class="mob-it-section-title">Build</span>
							<ul class="mob-sub-menu open" style="max-height: none;">
								<li><a
									href="${pageContext.request.contextPath}/it-services/dedicated-development-teams">Dedicated
										Development Teams</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/cloud-engineering-services">Cloud
										Engineering Service</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/embedded-software-services">Embedded
										Software Services</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/mobile-apps-development">Mobile
										Apps Development</a></li>
							</ul></li>

						<li><span class="mob-it-section-title">Improve</span>
							<ul class="mob-sub-menu open" style="max-height: none;">
								<li><a
									href="${pageContext.request.contextPath}/it-services/digital-transformation">Digital
										Transformation</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/generative-ai-development">Generative
										AI Development</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/ai-ml-development">AI
										&amp; ML Development</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/data-engineering-services">Data
										Engineering Services</a></li>
							</ul></li>

						<li><span class="mob-it-section-title">Operate</span>
							<ul class="mob-sub-menu open" style="max-height: none;">
								<li><a
									href="${pageContext.request.contextPath}/it-services/automation-testing">Automation
										Testing</a></li>
								<li><a
									href="${pageContext.request.contextPath}/it-services/devops-consulting">DevOps
										Consulting</a></li>
							</ul></li>

<li>
<span class="mob-it-section-title">Scale</span>
<ul class="mob-sub-menu open" style="max-height:none;">
<li><a href="${pageContext.request.contextPath}/it-services/software-outsourcing">Software Outsourcing</a></li>
<li><a href="${pageContext.request.contextPath}/it-services/dev-for-startups">Dev for Startups</a></li>
</ul>
</li>

<li>
<span class="mob-it-section-title">More Services</span>
<ul class="mob-sub-menu open" style="max-height:none;">
<li><a href="${pageContext.request.contextPath}/it-services/website-development">Website Development</a></li>
<li><a href="${pageContext.request.contextPath}/it-services/app-development">App Development</a></li>
<li><a href="${pageContext.request.contextPath}/it-services/graphics-design">Graphics Design</a></li>
<li><a href="${pageContext.request.contextPath}/it-services/maintenance-support">Maintenance &amp; Support</a></li>
</ul>
</li>
</ul>


	<li>
    <a href="${pageContext.request.contextPath}/case-studies">
        CASE STUDIES
    </a>
	</li>
	
	<li>
	    <a href="${pageContext.request.contextPath}/contact-us">
	        CONTACT US
	    </a>
	</li>
	
	<li>
	    <a href="${pageContext.request.contextPath}/noon-onboarding"
	       class="flash-noon-btn">
	        Noon Onboarding
	    </a>
	</li>
</div>
</nav>



<div id="google_translate_element"
	style="position: absolute; left: -9999px;"></div>

<script>
(function () {
	// ── Navbar scroll effect ─────────────────────────────────────
   /*  var navbar = document.getElementById('mainNavbar');
    if (navbar) {
        window.addEventListener('scroll', function () {
            navbar.classList.toggle('scrolled', window.scrollY > 50);
        });
    } */
    
    // ── Hamburger open / close ───────────────────────────────────
    var hamburger  = document.getElementById('mainHamburger');
    var mobileMenu = document.getElementById('mainMobileMenu');

    if (hamburger && mobileMenu) {
        hamburger.addEventListener('click', function () {
            var isOpen = hamburger.classList.toggle('active');
            mobileMenu.classList.toggle('active', isOpen);
            document.body.classList.toggle('menu-open', isOpen);
        });

        // Close menu when a real navigation link is tapped
        mobileMenu.querySelectorAll('a:not(.mob-toggle)')
            .forEach(function (link) {
                link.addEventListener('click', function () {
                    hamburger.classList.remove('active');
                    mobileMenu.classList.remove('active');
                    document.body.classList.remove('menu-open');
                });
            });
    }

    // ── Generic mobile toggle helper ────────────────────────────
    function setupMobToggles(scope) {
        (scope || document).querySelectorAll('.mob-toggle').forEach(function (toggle) {
            toggle.addEventListener('click', function (e) {
                e.preventDefault();
                var next = toggle.parentElement.querySelector(
                    ':scope > .mob-dropdown-menu, :scope > .mob-sub-menu'
                );
                if (!next) return;
                var isOpen = next.classList.toggle('open');
                toggle.classList.toggle('open', isOpen);
            });
        });
    }

    setupMobToggles();
    
 // ── Mega menu smart positioning (stays inside viewport always) ──
    document.querySelectorAll('.nav-menu > li').forEach(function (li) {
        var mega = li.querySelector('.mega-menu');
        if (!mega) return;

        li.addEventListener('mouseenter', function () {
            var triggerRect = li.getBoundingClientRect();
            var menuWidth   = Math.min(900, window.innerWidth - 40);
            var margin      = 20;

            // Position vertically just below the nav item
            var topPos = triggerRect.bottom + 8;

            // Start by centering under the trigger
            var leftPos = triggerRect.left + (triggerRect.width / 2) - (menuWidth / 2);

            // Clamp: don't overflow right
            if (leftPos + menuWidth > window.innerWidth - margin) {
                leftPos = window.innerWidth - margin - menuWidth;
            }

            // Clamp: don't overflow left
            if (leftPos < margin) {
                leftPos = margin;
            }

            mega.style.top   = topPos + 'px';
            mega.style.left  = leftPos + 'px';
            mega.style.width = menuWidth + 'px';
        });
    });

    
    var mobClose = document.getElementById('mobCloseBtn');
    if (mobClose) {
        hamburger.addEventListener('click', function() {
            setTimeout(function() {
                mobClose.style.display = mobileMenu.classList.contains('active') ? 'flex' : 'none';
            }, 50);
        });
        mobClose.addEventListener('click', function() {
            mobClose.style.display = 'none';
            hamburger.classList.remove('active');
            mobileMenu.classList.remove('active');
            document.body.classList.remove('menu-open');
        });
    }

})();
</script>
