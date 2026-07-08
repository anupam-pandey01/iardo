<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile App Development Services - IARDO | Android & iOS App Solutions PAN India</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;500;600;700;800&family=DM+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/it-services/mobile-apps-development/style.css">
</head>
<body>

<jsp:include page="../../includes/navbar/navbar.jsp" />


<!-- Hero Section -->
<section class="hero" id="home">
    <div class="hero-background">
        <div class="gradient-orb orb-1"></div>
        <div class="gradient-orb orb-2"></div>
        <div class="gradient-orb orb-3"></div>
    </div>
    
    <div class="hero-container">
        <div class="hero-content">
            <div class="hero-badge">
                <i class="fas fa-mobile-alt"></i>
                <span>Mobile App Development</span>
            </div>
            <h1 class="animated-heading">
                Transform Ideas into 
                <span class="gradient-text">Powerful Mobile Apps</span>
            </h1>
            <p class="hero-description">IARDO crafts exceptional Android and iOS applications that captivate users and drive business growth. From concept to launch, we build scalable, high-performance apps using cutting-edge technologies across PAN India.</p>
            
            <div class="hero-platforms">
                <div class="platform-badge">
                    <i class="fab fa-android"></i>
                    <span>Android</span>
                </div>
                <div class="platform-badge">
                    <i class="fab fa-apple"></i>
                    <span>iOS</span>
                </div>
                <div class="platform-badge">
                    <i class="fas fa-layer-group"></i>
                    <span>Cross-Platform</span>
                </div>
            </div>

            <div class="hero-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                    <span>Start Your App Journey</span>
                    <i class="fas fa-rocket"></i>
                </a>
                <a href="#process" class="btn btn-secondary">
                    <span>Our Process</span>
                    <i class="fas fa-play-circle"></i>
                </a>
            </div>

            <div class="hero-stats">
                <div class="stat-item">
                    <div class="stat-number">500+</div>
                    <div class="stat-label">Apps Delivered</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">4.9/5</div>
                    <div class="stat-label">Client Rating</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">24&#xD7;7</div>
                    <div class="stat-label">Support</div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- App Types Section -->
<section class="app-types">
    <div class="section-header">
        <div class="tagline-badge-hero">
            <div class="tagline-glow"></div>
            <i class="fas fa-bolt"></i>
            <span>Cross-Platform App Development.</span>
            <span>Within 10 days</span>
        </div>
        <h2>Mobile App Solutions We Build</h2>
        <p class="subtitle">Comprehensive app development services for every platform and industry</p>
    </div>
    
    <div class="types-grid">
        <div class="type-card">
            <div class="type-icon"><i class="fab fa-android"></i></div>
            <h3>Native Android Apps</h3>
            <p>High-performance Android applications using Kotlin and Java. Optimized for Google Play Store with Material Design principles.</p>
            <div class="type-tech">
                <span>Kotlin</span><span>Java</span><span>Jetpack Compose</span>
            </div>
        </div>

        <div class="type-card">
            <div class="type-icon"><i class="fab fa-apple"></i></div>
            <h3>Native iOS Apps</h3>
            <p>Premium iOS applications using Swift and SwiftUI. Perfectly optimized for App Store with Apple's design guidelines.</p>
            <div class="type-tech">
                <span>Swift</span><span>SwiftUI</span><span>UIKit</span>
            </div>
        </div>

        <div class="type-card">
            <div class="type-icon"><i class="fab fa-react"></i></div>
            <h3>React Native Apps</h3>
            <p>Cross-platform apps with single codebase. Cost-effective solution for iOS and Android with native-like performance.</p>
            <div class="type-tech">
                <span>React Native</span><span>JavaScript</span><span>TypeScript</span>
            </div>
        </div>

        <div class="type-card">
            <div class="type-icon"><i class="fas fa-layer-group"></i></div>
            <h3>Flutter Apps</h3>
            <p>Beautiful, fast cross-platform apps using Flutter and Dart. Stunning UI with excellent performance on all devices.</p>
            <div class="type-tech">
                <span>Flutter</span><span>Dart</span><span>Material Design</span>
            </div>
        </div>

        <div class="type-card">
            <div class="type-icon"><i class="fas fa-shopping-bag"></i></div>
            <h3>E-Commerce Apps</h3>
            <p>Feature-rich shopping apps with payment gateways, inventory management, and seamless checkout experiences.</p>
            <div class="type-tech">
                <span>Payment Integration</span><span>Cart System</span><span>Analytics</span>
            </div>
        </div>

        <div class="type-card">
            <div class="type-icon"><i class="fas fa-gamepad"></i></div>
            <h3>Gaming Apps</h3>
            <p>Engaging mobile games with Unity or native frameworks. From casual games to immersive experiences.</p>
            <div class="type-tech">
                <span>Unity</span><span>Game Development</span><span>Monetization</span>
            </div>
        </div>
    </div>
</section>

<!-- Tech Stack Section -->
<section class="tech-stack">
    <div class="section-header">
        <h2>Our Technology Expertise</h2>
        <p class="subtitle">Building powerful apps with industry-leading technologies</p>
    </div>
    
    <div class="tech-categories">
        <div class="tech-category">
            <h3><i class="fas fa-mobile-screen"></i> Mobile Frameworks</h3>
            <div class="tech-items">
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-react"></i></div>
                    <div class="tech-item-info"><h4>React Native</h4><p>Cross-platform development with JavaScript</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-f"></i></div>
                    <div class="tech-item-info"><h4>Flutter</h4><p>Beautiful UI with Dart programming</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-android"></i></div>
                    <div class="tech-item-info"><h4>Kotlin/Java</h4><p>Native Android development</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-apple"></i></div>
                    <div class="tech-item-info"><h4>Swift/SwiftUI</h4><p>Native iOS development</p></div>
                </div>
            </div>
        </div>

        <div class="tech-category">
            <h3><i class="fas fa-server"></i> Backend Technologies</h3>
            <div class="tech-items">
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-node-js"></i></div>
                    <div class="tech-item-info"><h4>Node.js</h4><p>Scalable backend APIs</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-python"></i></div>
                    <div class="tech-item-info"><h4>Python/Django</h4><p>Robust backend framework</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-fire"></i></div>
                    <div class="tech-item-info"><h4>Firebase</h4><p>Real-time backend services</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fab fa-aws"></i></div>
                    <div class="tech-item-info"><h4>AWS/Cloud</h4><p>Cloud infrastructure</p></div>
                </div>
            </div>
        </div>

        <div class="tech-category">
            <h3><i class="fas fa-database"></i> Databases &amp; Storage</h3>
            <div class="tech-items">
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-database"></i></div>
                    <div class="tech-item-info"><h4>MongoDB</h4><p>NoSQL database solution</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-database"></i></div>
                    <div class="tech-item-info"><h4>PostgreSQL</h4><p>Relational database</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-leaf"></i></div>
                    <div class="tech-item-info"><h4>Realm</h4><p>Mobile database</p></div>
                </div>
                <div class="tech-item">
                    <div class="tech-item-icon"><i class="fas fa-box"></i></div>
                    <div class="tech-item-info"><h4>SQLite</h4><p>Local storage</p></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Development Process -->
<section class="dev-process" id="process">
    <div class="section-header">
        <h2>Our App Development Process</h2>
        <p class="subtitle">From concept to launch - a transparent, agile journey</p>
    </div>
    
    <div class="process-timeline">
        <div class="process-step">
            <div class="step-number">01</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-lightbulb"></i></div>
                <h3>Discovery &amp; Strategy</h3>
                <p>We begin by understanding your business goals, target audience, and app requirements. Conduct market research, competitor analysis, and define the app's core features and functionality.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> Requirement gathering &amp; analysis</li>
                    <li><i class="fas fa-check"></i> Market &amp; competitor research</li>
                    <li><i class="fas fa-check"></i> Feature roadmap planning</li>
                    <li><i class="fas fa-check"></i> Technical feasibility study</li>
                </ul>
            </div>
        </div>

        <div class="process-step">
            <div class="step-number">02</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-palette"></i></div>
                <h3>UI/UX Design</h3>
                <p>Create stunning, user-centric designs with wireframes, prototypes, and high-fidelity mockups. Focus on intuitive navigation, engaging interactions, and platform-specific design guidelines.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> User journey mapping</li>
                    <li><i class="fas fa-check"></i> Wireframes &amp; prototypes</li>
                    <li><i class="fas fa-check"></i> Visual design &amp; branding</li>
                    <li><i class="fas fa-check"></i> Interactive prototypes</li>
                </ul>
            </div>
        </div>

        <div class="process-step">
            <div class="step-number">03</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-code"></i></div>
                <h3>Development &amp; Coding</h3>
                <p>Build the app using agile methodology with sprint-based development. Implement features, integrate APIs, set up backend infrastructure, and ensure clean, maintainable code.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> Agile sprint development</li>
                    <li><i class="fas fa-check"></i> Frontend &amp; backend integration</li>
                    <li><i class="fas fa-check"></i> API development &amp; integration</li>
                    <li><i class="fas fa-check"></i> Database architecture</li>
                </ul>
            </div>
        </div>

        <div class="process-step">
            <div class="step-number">04</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-vial"></i></div>
                <h3>Testing &amp; QA</h3>
                <p>Rigorous testing across devices, OS versions, and scenarios. Perform functional, performance, security, and usability testing to ensure flawless app experience.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> Multi-device testing</li>
                    <li><i class="fas fa-check"></i> Performance optimization</li>
                    <li><i class="fas fa-check"></i> Security audit &amp; testing</li>
                    <li><i class="fas fa-check"></i> Beta testing program</li>
                </ul>
            </div>
        </div>

        <div class="process-step">
            <div class="step-number">05</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-rocket"></i></div>
                <h3>Launch &amp; Deployment</h3>
                <p>Deploy your app to App Store and Google Play Store. Handle app submission, review process, and ensure compliance with platform guidelines for successful launch.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> App Store optimization</li>
                    <li><i class="fas fa-check"></i> Submission &amp; review process</li>
                    <li><i class="fas fa-check"></i> Launch marketing support</li>
                    <li><i class="fas fa-check"></i> Performance monitoring</li>
                </ul>
            </div>
        </div>

        <div class="process-step">
            <div class="step-number">06</div>
            <div class="step-content">
                <div class="step-icon"><i class="fas fa-headset"></i></div>
                <h3>Support &amp; Maintenance</h3>
                <p>Ongoing support, updates, and enhancements post-launch. Monitor performance, fix bugs, add new features, and ensure compatibility with latest OS updates.</p>
                <ul class="step-features">
                    <li><i class="fas fa-check"></i> 24&#xD7;7 technical support</li>
                    <li><i class="fas fa-check"></i> Regular updates &amp; patches</li>
                    <li><i class="fas fa-check"></i> Performance monitoring</li>
                    <li><i class="fas fa-check"></i> Feature enhancements</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- Why Choose Us -->
<section class="why-choose">
    <div class="section-header">
        <h2>Why Choose IARDO for App Development?</h2>
        <p class="subtitle">Industry expertise meets innovative solutions</p>
    </div>
    
    <div class="features-grid">
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-layer-group"></i></div>
            <h3>Cross-Platform Excellence</h3>
            <p>Build once, deploy everywhere. Our React Native and Flutter expertise delivers high-performance apps for iOS and Android from a single codebase, cutting costs and time by 50%.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-medal"></i></div>
            <h3>Expert Development Team</h3>
            <p>Certified developers with 5+ years experience in Android, iOS, and cross-platform development. Expertise in latest frameworks and best practices.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-palette"></i></div>
            <h3>Stunning UI/UX Design</h3>
            <p>Beautiful, intuitive interfaces that users love. Following platform-specific guidelines while maintaining brand identity and user engagement.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-tachometer-alt"></i></div>
            <h3>High Performance</h3>
            <p>Optimized apps with fast loading times, smooth animations, and efficient memory usage. Native performance across all devices.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-shield-alt"></i></div>
            <h3>Enterprise Security</h3>
            <p>Bank-level security with encryption, secure authentication, data protection, and compliance with industry standards like GDPR.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-expand-arrows-alt"></i></div>
            <h3>Scalable Architecture</h3>
            <p>Apps built to scale with your business. Cloud-ready infrastructure, microservices, and modular architecture for easy expansion.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-puzzle-piece"></i></div>
            <h3>API Integration</h3>
            <p>Seamless integration with third-party services - payment gateways, social media, analytics, maps, and custom business systems.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
            <h3>Agile Development &amp; Analytics</h3>
            <p>Flexible, iterative approach with regular sprints and transparent communication. Integrated analytics to track user behavior, app performance, and business metrics.</p>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta">
    <div class="cta-glow"></div>
    <div class="cta-content">
        <div class="cta-icon"><i class="fas fa-mobile-alt"></i></div>
        <h2>Ready to Build Your Dream App?</h2>
        <p>Let's transform your vision into a powerful mobile application that users will love. Get a free consultation and project estimate today.</p>
        <div class="cta-buttons">
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta primary">
                <span>Schedule Free Consultation</span>
                <i class="fas fa-calendar-check"></i>
            </a>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta secondary">
                <span>Get Project Quote</span>
                <i class="fas fa-file-invoice-dollar"></i>
            </a>
        </div>
    </div>
</section>

<jsp:include page="../../includes/footer/footer.jsp" />

<script src="/assets/js/app.js"></script>

<!-- Theme Toggle Script -->
<script>
    const THEME_KEY = 'iardo-theme';

    function applyTheme(theme) {
        const body = document.body;
        const icon = document.getElementById('themeIcon');
        const label = document.getElementById('themeLabel');

        if (theme === 'light') {
            body.classList.add('light-theme');
            icon.className = 'fas fa-moon';
            label.textContent = 'Dark Mode';
        } else {
            body.classList.remove('light-theme');
            icon.className = 'fas fa-sun';
            label.textContent = 'Light Mode';
        }
    }

    function toggleTheme() {
        const isLight = document.body.classList.contains('light-theme');
        const newTheme = isLight ? 'dark' : 'light';
        localStorage.setItem(THEME_KEY, newTheme);
        applyTheme(newTheme);
    }

    (function () {
        const saved = localStorage.getItem(THEME_KEY) || 'dark';
        applyTheme(saved);
    })();
</script>

</body>
</html>
