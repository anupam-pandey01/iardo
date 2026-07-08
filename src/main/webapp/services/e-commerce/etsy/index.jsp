<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Etsy Onboarding Services - IARDO | PAN India</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<!-- <link rel="stylesheet" href="/assets/css/swiggy.css"> -->
<style>
/* =====================================================
   RESET & VARIABLES (LIGHT THEME)
===================================================== */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

:root {
	--swiggy-orange: #FC8019;
	--swiggy-dark-orange: #E07015;
	--swiggy-light-orange: #FF9633;
	--swiggy-red: #D93F21;
	/* Light Theme Colors */
	--bg-white: #ffffff;
	--bg-light: #f8f9fa;
	--bg-soft-orange: #fff9f5;
	--text-dark: #111827;
	--text-gray: #4b5563;
	--border-light: #e5e7eb;
}

body {
	font-family: 'Poppins', sans-serif;
	background: var(--bg-white);
	color: var(--text-dark);
	line-height: 1.6;
	overflow-x: hidden;
}

/* HIDE DARK THEME JAVASCRIPT ARTIFACTS */
#particleCanvas, .bg-gradient {
	display: none !important;
	opacity: 0 !important;
	visibility: hidden !important;
}

/* =====================================================
   HERO SECTION
===================================================== */
.hero {
	min-height: 90vh;
	background: linear-gradient(135deg, var(--bg-light) 0%, var(--bg-white)
		50%, var(--bg-soft-orange) 100%);
	display: flex;
	align-items: center;
	position: relative;
	padding-top: 80px;
}

.hero-container {
	max-width: 1400px;
	margin: 0 auto;
	padding: 4rem 2rem;
	display: grid;
	grid-template-columns: 1.2fr 1fr;
	gap: 5rem;
	align-items: center;
	position: relative;
	z-index: 2;
}

.hero-content h1 {
	font-size: clamp(2.5rem, 5vw, 4.5rem);
	font-weight: 900;
	color: var(--text-dark);
	line-height: 1.2;
	margin-bottom: 1.5rem;
}

.hero-content .highlight {
	color: var(--swiggy-dark-orange);
	display: inline-block;
}

.word-highlight {
	background: linear-gradient(135deg, var(--swiggy-orange),
		var(--swiggy-red));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	background-clip: text;
}

.hero-content p {
	font-size: 1.2rem;
	color: var(--text-gray);
	margin-bottom: 3rem;
	line-height: 1.8;
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
}

.btn-primary {
	background: var(--swiggy-orange);
	color: white;
	box-shadow: 0 8px 25px rgba(252, 128, 25, 0.3);
}

.btn-primary:hover {
	transform: translateY(-3px);
	background: var(--swiggy-dark-orange);
	box-shadow: 0 12px 30px rgba(252, 128, 25, 0.4);
}

.btn-secondary {
	background: var(--bg-white);
	color: var(--text-dark);
	border: 2px solid var(--border-light);
}

.btn-secondary:hover {
	background: var(--bg-light);
	color: var(--text-dark);
	transform: translateY(-3px);
	border-color: var(--swiggy-orange);
}

.hero-image img {
	width: 100%;
	border-radius: 30px;
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.08);
	border: 1px solid var(--border-light);
}

/* =====================================================
   ALL OTHER SECTIONS (SHARED STYLES)
===================================================== */
.trust-badges, .why-choose, .who-benefits, .trust-section,
	.results-section {
	padding: 6rem 2rem;
	background: var(--bg-white);
}

.why-choose, .trust-section {
	background: var(--bg-light);
}

.section-header {
	text-align: center;
	max-width: 900px;
	margin: 0 auto 5rem;
}

.section-header h2 {
	font-size: clamp(2.5rem, 5vw, 4rem);
	font-weight: 900;
	color: var(--text-dark);
	margin-bottom: 1.5rem;
}

.section-header .subtitle {
	font-size: 1.3rem;
	color: var(--text-gray);
}

.intro-text {
	max-width: 1200px;
	margin: 0 auto 4rem;
	font-size: 1.2rem;
	color: var(--text-gray);
	text-align: center;
}

/* Grids */
.badges-container {
	max-width: 1200px;
	margin: 0 auto;
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	gap: 3rem;
}

.features-grid {
	max-width: 1400px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
	gap: 3rem;
}

.benefits-grid {
	max-width: 1400px;
	margin: 3rem auto 0;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
	gap: 3rem;
}

.trust-grid {
	max-width: 1200px;
	margin: 3rem auto 0;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 2.5rem;
}

.results-grid {
	max-width: 1000px;
	margin: 0 auto;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 2rem;
}

/* Cards */
.badge, .feature-card, .benefit-card, .trust-item, .result-card {
	background: var(--bg-white);
	border: 1px solid var(--border-light);
	border-radius: 20px;
	padding: 2.5rem;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.03);
	transition: all 0.4s;
	text-align: center;
}

.badge {
	flex-direction: row;
	gap: 1rem;
	font-weight: 600;
	color: var(--text-dark);
	padding: 1.5rem;
}

.feature-card:hover, .benefit-card:hover, .trust-item:hover,
	.result-card:hover {
	transform: translateY(-10px);
	border-color: var(--swiggy-orange);
	box-shadow: 0 15px 35px rgba(252, 128, 25, 0.1);
	background: var(--bg-soft-orange);
}

.feature-icon, .benefit-icon, .badge-icon, .trust-item h4 i,
	.result-label i {
	color: var(--swiggy-orange);
	font-size: 3rem;
	margin-bottom: 1.5rem;
	display: inline-block;
}

.feature-card h3, .benefit-card h4, .trust-item h4 {
	font-size: 1.5rem;
	font-weight: 700;
	color: var(--text-dark);
	margin-bottom: 1rem;
}

.feature-card p, .benefit-card p, .trust-item p {
	color: var(--text-gray);
	line-height: 1.7;
}

/* Results */
.result-number {
	display: block;
	font-size: clamp(1.6rem, 3.5vw, 3rem);
	font-weight: 900;
	color: var(--swiggy-orange);
	margin-bottom: 1rem;
}

.result-label {
	font-size: 0.95rem;
	font-weight: 600;
	color: var(--text-gray);
}

/* =====================================================
   CTA SECTION (BULLETPROOF CENTER FIX)
===================================================== */
section.cta {
	background: linear-gradient(135deg, var(--bg-light), var(--bg-white))
		!important;
	border-top: 3px solid var(--swiggy-orange) !important;
	padding: 8rem 2rem !important;
	width: 100% !important;
	display: block !important; /* Switched to block to force center */
	text-align: center !important;
}

section.cta .cta-content {
	max-width: 900px !important;
	width: 100% !important;
	margin: 0 auto !important; /* Centers the container */
	display: block !important;
	text-align: center !important;
}

section.cta .cta-content h2 {
	font-size: clamp(2.5rem, 5vw, 4rem) !important;
	font-weight: 900 !important;
	color: var(--text-dark) !important;
	margin-bottom: 1.5rem !important;
	text-align: center !important;
	display: block !important;
	width: 100% !important;
}

section.cta .cta-content p {
	font-size: 1.5rem !important;
	color: var(--text-gray) !important;
	margin-bottom: 3rem !important;
	text-align: center !important;
	display: block !important;
	width: 100% !important;
}

section.cta .cta-buttons {
	display: flex !important;
	justify-content: center !important;
	align-items: center !important;
	width: 100% !important;
}

.btn-cta {
	background: var(--swiggy-orange) !important;
	color: white !important;
	padding: 1.5rem 3.5rem !important;
	border-radius: 50px !important;
	font-size: 1.3rem !important;
	font-weight: 800 !important;
	text-decoration: none !important;
	transition: all 0.4s !important;
	box-shadow: 0 10px 30px rgba(252, 128, 25, 0.3) !important;
	display: inline-flex !important;
	align-items: center !important;
	justify-content: center !important;
	gap: 1rem !important;
	margin: 0 auto !important; /* Force button to center */
}

.btn-cta:hover {
	transform: translateY(-5px) scale(1.05) !important;
	background: var(--swiggy-dark-orange) !important;
	box-shadow: 0 15px 40px rgba(252, 128, 25, 0.5) !important;
}

/* =====================================================
   RESPONSIVE DESIGN
===================================================== */
@media ( max-width : 1024px) {
	.hero-container {
		grid-template-columns: 1fr;
		text-align: center;
		gap: 3rem;
	}
	.hero-buttons {
		justify-content: center;
	}
	.hero-image {
		order: -1;
		max-width: 600px;
		margin: 0 auto;
	}
}

@media ( max-width : 768px) {
	.hero {
		min-height: auto;
		padding: 2rem 0;
	}
	.hero-container {
		padding: 2rem 1rem;
	}
	.hero-content h1 {
		font-size: 2rem;
	}
	.btn, .btn-cta {
		width: 100%;
		justify-content: center;
	}
	.results-grid {
		grid-template-columns: 1fr;
	}
	.section-header h2 {
		font-size: 2rem;
	}
	section.cta {
		padding: 5rem 1rem !important;
	}
}
</style>
</head>
<body>
	<jsp:include page="../../../includes/navbar/navbar.jsp" />

	<!-- Hero Section -->
	<section class="hero" id="home">
		<div class="hero-container">
			<div class="hero-content">
				<h1 class="animated-heading">
					<span class="word">Launch</span> <span class="word">Your</span> <span
						class="word">Creative</span> <span class="word">Business</span> <span
						class="word">on</span> <span class="word-highlight">Etsy</span> <span
						class="word">with</span> <span class="word">Expert</span> <span
						class="word">Onboarding</span>
				</h1>
				<p>
					IARDO offers comprehensive <span class="highlight">Etsy
						Onboarding</span> Services across PAN India to help you establish your
					unique handmade, vintage, and creative business on the world's
					leading marketplace for artisans and creators.
				</p>


				<div class="hero-stats">
					<div class="stat-item">
						<span class="stat-number">PAN</span> <span class="stat-label">India
							Coverage</span>
					</div>
					<div class="stat-item">
						<span class="stat-number"
							style="font-size: 1.3rem; font-weight: 800;">Quick and
							Early Setup</span>
					</div>
					<div class="stat-item">
						<span
							style="font-size: 2.2rem; font-weight: 800; color: #FC8019; line-height: 1; display: inline-block;">24×7
							Support</span>

					</div>
				</div>


				<div class="hero-buttons">
					<a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary"> <span><i
							class="fas fa-rocket"></i> Start Onboarding</span>
					</a> <a href="#services" class="btn btn-secondary"> <span><i
							class="fas fa-clipboard-list"></i> Our Services</span>
					</a>
				</div>
			</div>
			<div class="hero-image">
				<img
					src="https://images.unsplash.com/photo-1452860606245-08befc0ff44b?auto=format&fit=crop&w=800&q=80"
					alt="Etsy Onboarding">
			</div>
		</div>
	</section>

	<!-- Trust Badges -->
	<section class="trust-badges">
		<div class="badges-container">
			<div class="badge">
				<span class="badge-icon"><i class="fas fa-check-circle"></i></span>
				<span>Expert Knowledge</span>
			</div>
			<div class="badge">
				<span class="badge-icon"><i class="fas fa-bolt"></i></span> <span>Quick
					Onboarding</span>
			</div>
			<div class="badge">
				<span class="badge-icon"><i class="fas fa-star"></i></span> <span>End-to-End
					Support</span>
			</div>
			<div class="badge">
				<span class="badge-icon"><i class="fas fa-bullseye"></i></span> <span>PAN
					India Service</span>
			</div>
		</div>
	</section>

	<!-- Why Choose IARDO Section -->
	<section class="why-choose" id="services">
		<div class="section-header">
			<h2>Why Choose IARDO for Etsy Onboarding?</h2>
			<p class="subtitle">Comprehensive onboarding solutions for
				seamless platform integration</p>
		</div>

		<div class="intro-text">
			<p>Selling on Etsy connects you with millions of buyers worldwide
				who value unique, handmade, and vintage items. However, succeeding
				on Etsy requires understanding its creative community, search
				algorithms, and seller best practices. IARDO's Etsy Onboarding
				Services are designed to help you build a thriving shop that stands
				out in the marketplace.</p>
		</div>

		<div class="features-grid">
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-shield-alt"></i>
				</div>
				<h3>Shop Setup & Account Verification</h3>
				<p>We handle complete Etsy shop creation, including account
					registration, payment setup, billing information, and verification
					to get your creative business live quickly.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-box-open"></i>
				</div>
				<h3>Product Listing & SEO Optimization</h3>
				<p>Our team creates compelling product listings with Etsy
					SEO-optimized titles, tags, and descriptions that help your items
					appear in relevant searches and attract ideal customers.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-camera"></i>
				</div>
				<h3>Professional Photography Guidance</h3>
				<p>We provide expert advice on product photography standards,
					lighting, styling, and image editing to showcase your handmade
					items beautifully and drive conversions.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-tags"></i>
				</div>
				<h3>Pricing Strategy & Market Research</h3>
				<p>We analyze competitor pricing in your niche and help you
					develop profitable pricing strategies that account for materials,
					time, Etsy fees, and market positioning.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-shipping-fast"></i>
				</div>
				<h3>Shipping & International Delivery Setup</h3>
				<p>We configure shipping profiles for domestic and international
					orders, helping you set competitive shipping rates while managing
					costs and delivery expectations.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-palette"></i>
				</div>
				<h3>Shop Branding & Customization</h3>
				<p>Create a cohesive brand identity with shop banner design,
					logo placement, about section storytelling, and shop policies that
					build trust with buyers.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-graduation-cap"></i>
				</div>
				<h3>Platform Training & Best Practices</h3>
				<p>Comprehensive training on Etsy Shop Manager, order
					processing, customer communication, handling reviews, and utilizing
					Etsy's seller tools for growth.</p>
			</div>
			<div class="feature-card">
				<div class="feature-icon">
					<i class="fas fa-chart-bar"></i>
				</div>
				<h3>Marketing & Etsy Ads Management</h3>
				<p>Guidance on Etsy Ads, social media integration, promotional
					strategies, and utilizing Etsy's marketing tools to increase
					visibility and drive sales.</p>
			</div>
		</div>
	</section>

	<!-- Who Can Benefit Section -->
	<section class="who-benefits" id="benefits">
		<div class="section-header">
			<h2>Who Can Benefit from Our Etsy Onboarding Services?</h2>
			<p class="subtitle">Our services are ideal for various creative
				business categories</p>
		</div>
		<div class="benefits-grid">
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-paint-brush"></i></span>
				<h4>Handmade Artisans & Crafters</h4>
				<p>Perfect for jewelry makers, pottery artists, textile
					crafters, woodworkers, and any creator producing unique handmade
					items with authentic craftsmanship.</p>
			</div>
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-clock"></i></span>
				<h4>Vintage Collectors & Sellers</h4>
				<p>Ideal for those selling vintage items, antiques,
					collectibles, and retro products that are at least 20 years old and
					meet Etsy's vintage criteria.</p>
			</div>
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-pencil-ruler"></i></span>
				<h4>Digital Product Creators</h4>
				<p>Great for designers creating printables, digital art,
					templates, patterns, fonts, and downloadable content for instant
					customer delivery.</p>
			</div>
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-cut"></i></span>
				<h4>Craft Supply Sellers</h4>
				<p>Excellent for businesses selling materials, tools,
					components, and supplies that crafters and makers use to create
					their own handmade items.</p>
			</div>
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-ring"></i></span>
				<h4>Custom & Personalized Items</h4>
				<p>Perfect for sellers offering customized jewelry, engraved
					gifts, monogrammed products, and made-to-order items with personal
					touches.</p>
			</div>
			<div class="benefit-card">
				<span class="benefit-icon"><i class="fas fa-home"></i></span>
				<h4>Home Decor Creators</h4>
				<p>Ideal for artists creating wall art, handmade furniture,
					decorative items, candles, textiles, and unique pieces that make
					houses into homes.</p>
			</div>
		</div>
	</section>

	<!-- Why Businesses Trust IARDO -->
	<section class="trust-section">
		<div class="section-header">
			<h2>Why Businesses Trust IARDO</h2>
			<p class="subtitle">Your reliable partner for Etsy onboarding
				success</p>
		</div>
		<div class="trust-grid">
			<div class="trust-item">
				<h4>Etsy Algorithm & SEO Expertise</h4>
				<p>Our team understands Etsy's unique search algorithm and SEO
					requirements, ensuring your products are discovered by buyers
					actively searching for what you create.</p>
			</div>
			<div class="trust-item">
				<h4>Creative Community Understanding</h4>
				<p>We know what makes Etsy special—authentic storytelling,
					handmade quality, and personal connections—and help you communicate
					your brand's unique story effectively.</p>
			</div>
			<div class="trust-item">
				<h4>End-to-End Support</h4>
				<p>From shop setup to product photography, SEO optimization,
					pricing strategy, and ongoing performance monitoring, we provide
					comprehensive support throughout your journey.</p>
			</div>
			<div class="trust-item">
				<h4>Quick & Efficient Onboarding</h4>
				<p>Our streamlined process gets your Etsy shop live faster, with
					professionally optimized listings ready to attract buyers and
					generate sales from day one.</p>
			</div>
			<div class="trust-item">
				<h4>Global Marketplace Readiness</h4>
				<p>We prepare you for Etsy's international customer base with
					proper shipping configurations, currency handling, and strategies
					to appeal to diverse buyers worldwide.</p>
			</div>
			<div class="trust-item">
				<h4>Long-Term Growth Focus</h4>
				<p>Beyond onboarding, we equip you with knowledge on seasonal
					trends, repeat customer strategies, collection building, and
					scaling your creative business sustainably.</p>
			</div>
		</div>
	</section>

	<!-- CTA Section -->
	<section class="cta">
		<div class="cta-content">
			<h2>Ready to Start Selling on Etsy?</h2>
			<p>Let IARDO transform your creative passion into a thriving Etsy
				business with expert onboarding!</p>
			<div class="cta-buttons">
				<a
					href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/"
					class="btn-cta"><i class="fas fa-rocket"></i> Start Your Etsy
					Journey Today</a>
			</div>
		</div>
	</section>

	<jsp:include page="../../../includes/footer/footer.jsp" />

	<script src="/assets/js/swiggy.js"></script>
</body>
</html>
