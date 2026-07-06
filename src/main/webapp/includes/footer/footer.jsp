<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700;800;900&family=Source+Serif+4:ital,wght@0,400;0,600;1,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
/* ── Brand Variables ── */
:root {
	--color-bg: #EAEFEF;
	--color-surface: #BFC9D1;
	--color-dark: #25343F;
	--color-accent: #FF9B51;
	--color-emerald: #003527;
	--color-emerald-mid: #0b513d;
	--color-teal-bg: #e1f5ee;
	--color-gold-start: #cca72f;
	--color-gold-end: #e9c349;
	--color-muted: #707974;
	--color-body: #404944;
	/* --font-display: 'Montserrat', sans-serif;
	--font-body: 'Source Serif 4', Georgia, serif; */
}

/* ── Footer shell ── */
.footer {
	background: var(--color-dark) !important;
	color: #c8d0d4;
	font-family: var(--font-display);
	position: relative;
	overflow: hidden;
	padding-top: 60px;
}

/* Gold top border */
.footer::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 4px;
	background: linear-gradient(90deg, var(--color-gold-start),
		var(--color-gold-end), var(--color-accent));
	z-index: 2;
}

/* Ambient glow */
.footer::after {
	content: '';
	position: absolute;
	inset: 0;
	background: radial-gradient(ellipse 55% 50% at 0% 100%, rgba(0, 53, 39, 0.18)
		0%, transparent 60%),
		radial-gradient(ellipse 40% 35% at 100% 0%, rgba(255, 155, 81, 0.07)
		0%, transparent 55%);
	pointer-events: none;
	z-index: 0;
}

.footer .container {
	position: relative;
	z-index: 1;
	max-width: 1280px;
	margin: 0 auto;
	padding: 0 28px;
}

/* ── 6-column footer grid ── */
.footer-grid {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	gap: 28px;
	align-items: start;
	padding-bottom: 48px;
}

/* ── Column headings ── */
.footer-col h4 {
	font-family: var(--font-display);
	font-weight: 700;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 0.08em;
	color: var(--color-gold-end);
	margin: 0 0 18px;
	padding-bottom: 10px;
	position: relative;
}

.footer-col h4::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	width: 28px;
	height: 2px;
	background: linear-gradient(90deg, var(--color-gold-start),
		var(--color-gold-end));
	border-radius: 2px;
}

/* ── Nav links ── */
.footer-col ul {
	list-style: none;
	padding: 0;
	margin: 0 0 20px;
}

.footer-col ul li {
	margin-bottom: 9px;
}

.footer-col ul li a {
	font-family: var(--font-display);
	font-weight: 600;
	font-size: 12px;
	letter-spacing: 0.02em;
	color: #8fa0a8;
	text-decoration: none;
	display: inline-block;
	padding-left: 13px;
	position: relative;
	transition: color 0.2s ease, transform 0.2s ease;
	line-height: 1.5;
}

.footer-col ul li a::before {
	content: '▸';
	position: absolute;
	left: 0;
	font-size: 9px;
	color: var(--color-accent);
	top: 2px;
	transition: transform 0.2s ease;
}

.footer-col ul li a:hover {
	color: var(--color-accent);
	transform: translateX(4px);
}

.footer-col ul li a:hover::before {
	transform: translateX(-2px);
}

/* ── Logo ── */
.footer-logo {
	margin-top: 20px;
}

.footer-logo .logo-img {
	max-width: 110px;
	height: auto;
	filter: drop-shadow(0 3px 8px rgba(255, 155, 81, 0.18));
}

/* ── Social Icons ── */
.social-icons {
	display: flex;
	flex-wrap: wrap;
	gap: 9px;
	margin-top: 18px;
}

.social-icon {
	width: 36px;
	height: 36px;
	border-radius: 9px;
	display: flex;
	align-items: center;
	justify-content: center;
	text-decoration: none;
	font-size: 15px;
	color: #fff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.28);
	transition: transform 0.25s ease, box-shadow 0.25s ease;
}

.social-icon:hover {
	transform: translateY(-3px) scale(1.08);
	box-shadow: 0 6px 18px rgba(0, 0, 0, 0.38);
}

.social-icon.instagram {
	background: linear-gradient(135deg, #E1306C, #C13584, #833AB4);
}

.social-icon.facebook {
	background: #1877F2;
}

.social-icon.twitter {
	background: #1da1f2;
}

.social-icon.youtube {
	background: #FF0000;
}

.social-icon.linkedin {
	background: #0077B5;
}

.social-icon.whatsapp {
	background: #25D366;
}

/* ── Footer bottom ── */
.footer-bottom {
	border-top: 1px solid rgba(191, 201, 209, 0.12);
	padding: 22px 0;
	position: relative;
	z-index: 1;
}

.footer-bottom p {
	font-family: var(--font-display);
	font-weight: 600;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 0.07em;
	color: var(--color-muted);
	text-align: center;
	margin: 0;
}

.footer-bottom a.brand-name {
	color: var(--color-accent);
	text-decoration: none;
	font-weight: 700;
	transition: color 0.2s;
}

.footer-bottom a.brand-name:hover {
	color: var(--color-gold-end);
}

/* ── Scroll to Top ── */
.scroll-top {
	position: fixed;
	bottom: 32px;
	right: 32px;
	width: 48px;
	height: 48px;
	background: var(--color-emerald);
	border: 2px solid rgba(255, 155, 81, 0.35);
	border-radius: 50%;
	color: #fff;
	font-size: 18px;
	cursor: pointer;
	opacity: 0;
	visibility: hidden;
	transform: scale(0.8);
	transition: all 0.35s cubic-bezier(0.22, 1, 0.36, 1);
	box-shadow: 0 6px 20px rgba(0, 53, 39, 0.35);
	z-index: 1000;
	display: flex;
	align-items: center;
	justify-content: center;
}

.scroll-top.active {
	opacity: 1;
	visibility: visible;
	transform: scale(1);
}

.scroll-top:hover {
	background: var(--color-accent);
	border-color: var(--color-gold-end);
	transform: scale(1.1) translateY(-3px);
	box-shadow: 0 10px 28px rgba(255, 155, 81, 0.4);
}

.scroll-top:active {
	transform: scale(0.95);
}

.scroll-top i {
	font-size: 18px;
}

/* ── Responsive ── */
@media ( max-width : 1200px) {
	.footer-grid {
		grid-template-columns: repeat(3, 1fr);
	}
}

@media ( max-width : 768px) {
	.footer-grid {
		grid-template-columns: repeat(2, 1fr);
		gap: 20px;
	}
	.footer {
		padding-top: 44px;
	}
	.scroll-top {
		bottom: 22px;
		right: 22px;
		width: 42px;
		height: 42px;
	}
}

@media ( max-width : 480px) {
	.footer-grid {
		grid-template-columns: 1fr;
	}
}
</style>

	<footer class="footer">
		<div class="container">
			<div class="footer-content">
				<div class="footer-grid">

					<!-- Quick Commerce -->
					<div class="footer-col">
						<h4>Quick Commerce</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-instamart/">Swiggy
									Instamart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/blinkit-onboarding-services/">Blinkit</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/swiggy-cloud-kitchen/">Swiggy
									Cloud Kitchen</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/zepto/">Zepto</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/big-basket/">BigBasket</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/jio-mart/">JioMart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/d-mart/">DMart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/quick/">Creem
									Quik</a></li>
							<li><a
								href="${pageContext.request.contextPath}/noon-onboarding/">Noon</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/instashop/">Instashop</a></li>
						</ul>
					</div>

					<!-- E-Commerce -->
					<div class="footer-col">
						<h4>E-Commerce</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/amazon/">Amazon</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/flipkart/">Flipkart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/meesho/">Meesho</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/myntra/">Myntra</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/ajio/">Ajio</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/nykaa/">Nykaa</a></li>
							<li><a
								href="${pageContext.request.contextPath}/shopify-seller-onboarding">Shopify</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/e-bay/">eBay</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/etsy/">Etsy</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/e-commerce/spocket/">Spocket</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/quick-commerce/marketplace/">Marketplace
									Solutions</a></li>
						</ul>
					</div>

					<!-- Development -->
					<div class="footer-col">
						<h4>Development</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/services/development/web-development/">Website
									Development</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/development/app-development/">App
									Development</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/email-marketing/">Email
									Marketing</a></li>
						</ul>
					</div>

					<!-- Digital Marketing -->
					<div class="footer-col">
						<h4>Digital Marketing</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/services/digital-marketing/seo/">SEO
									Services</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/digital-marketing/smo/">SMO
									Services</a></li>
							<li><a
								href="${pageContext.request.contextPath}services/digital-marketing/google-ads/">Google
									Ads</a></li>
							<li><a
								href="${pageContext.request.contextPath}/services/digital-marketing/meta-ads/">Meta
									Ads</a></li>
						</ul>
						<div class="footer-logo">
							<img
								src="${pageContext.request.contextPath}/assets/logo/logo-of-iardo.png"
								alt="IARDO Logo" class="logo-img">
						</div>
					</div>

					<!-- Company -->
					<div class="footer-col">
						<h4>Company</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/about-our-chairman/">About
									Us</a></li>
							<li><a href="${pageContext.request.contextPath}/careers">Careers</a></li>
							<li><a href="${pageContext.request.contextPath}/blog">Blogs</a></li>
							<li><a
								href="${pageContext.request.contextPath}/life-at-iardo">Life@IARDO</a></li>
							<li><a href="${pageContext.request.contextPath}/contact-us/">Contact</a></li>
							<li><a href="${pageContext.request.contextPath}/our-clients">Our
									Clients</a></li>
						</ul>
						<div class="social-icons">
							<a href="https://www.instagram.com/iardo_2016/"
								class="social-icon instagram" aria-label="Instagram"
								target="_blank" rel="noopener noreferrer"><i
								class="fab fa-instagram"></i></a> <a
								href="https://www.facebook.com/iardo.iardo.9/"
								class="social-icon facebook" aria-label="Facebook"
								target="_blank" rel="noopener noreferrer"><i
								class="fab fa-facebook-f"></i></a> <a
								href="https://x.com/iardo89143" class="social-icon twitter"
								aria-label="Twitter" target="_blank" rel="noopener noreferrer"><i
								class="fab fa-twitter"></i></a> <a
								href="https://youtu.be/H7vYClpKznw?si=AVhC6cjkNYGE6iNV"
								class="social-icon youtube" aria-label="YouTube" target="_blank"
								rel="noopener noreferrer"><i class="fab fa-youtube"></i></a> <a
								href="https://www.linkedin.com/in/iardo-e-commerce-agency-3557b6238/"
								class="social-icon linkedin" aria-label="LinkedIn"
								target="_blank" rel="noopener noreferrer"><i
								class="fab fa-linkedin-in"></i></a> <a
								href="https://wa.me/9310194865" class="social-icon whatsapp"
								aria-label="WhatsApp" target="_blank" rel="noopener noreferrer"><i
								class="fab fa-whatsapp"></i></a>
						</div>
					</div>

					<!-- Legal -->
					<div class="footer-col">
						<h4>Legal</h4>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/privacy-policy">Privacy
									Policy</a></li>
							<li><a
								href="${pageContext.request.contextPath}/terms-of-services">Terms
									of Service</a></li>
							<li><a
								href="${pageContext.request.contextPath}/refund-policy">Refund
									Policy</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<!-- Footer Bottom -->
		<div class="footer-bottom">
			<div class="container">
				<p>
					&copy; 2026 <a href="https://www.iardo.in" class="brand-name">IARDO</a>.
					All rights reserved. | Empowering businesses across India.
				</p>
			</div>
		</div>
	</footer>
