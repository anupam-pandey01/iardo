<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Maintenance & Support Services | Software & Application Support | IARDO</title>
    <meta name="description" content="Get reliable maintenance and support services for software, apps, and systems. Ensure smooth performance, security, and zero downtime.">
    
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* LIGHT THEME VARIABLES */
        :root {
            --primary: #4f46e5;
            --primary-dark: #3730a3;
            --primary-light: #818cf8;
            --secondary: #0ea5e9;
            --accent: #f59e0b;
            --success: #10b981;
            
            /* Light theme backgrounds */
            --bg-main: #ffffff;
            --bg-alt: #f8fafc;
            --bg-card: #ffffff;
            
            /* Light theme text colors */
            --text-primary: #0f172a;
            --text-secondary: #475569;
            --text-muted: #94a3b8;
            
            /* Light theme borders */
            --border: #e2e8f0;
            
            --gradient-1: linear-gradient(135deg, #4f46e5 0%, #8b5cf6 50%, #d946ef 100%);
            --gradient-2: linear-gradient(135deg, #0ea5e9 0%, #4f46e5 100%);
            --gradient-3: linear-gradient(135deg, #f59e0b 0%, #ef4444 100%);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            line-height: 1.6;
            color: #0f172a !important; /* Forced dark text */
            background: var(--bg-main);
            overflow-x: hidden;
        }

        /* Hero Section with Animated Background */
        .hero {
            position: relative;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            padding: 100px 2rem 60px;
        }

        .hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
        }

        .hero-bg::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.95) 0%, rgba(248, 250, 252, 0.9) 100%);
            z-index: 2;
        }

        .hero-bg img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            animation: zoomInOut 20s ease-in-out infinite;
        }

        @keyframes zoomInOut {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .hero-content {
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            z-index: 3;
            text-align: center;
        }

        .hero-badge {
            display: inline-block;
            padding: 0.5rem 1.25rem;
            background: rgba(79, 70, 229, 0.1);
            border: 1px solid rgba(79, 70, 229, 0.2);
            border-radius: 50px;
            color: var(--primary) !important;
            font-size: 0.9rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
            animation: fadeInDown 0.8s ease-out;
        }

        .hero h1 {
            font-size: 3.8rem;
            font-weight: 900;
            line-height: 1.2;
            margin-bottom: 1.5rem;
            background: var(--gradient-1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: fadeInUp 0.8s ease-out 0.2s both;
            letter-spacing: -1.5px;
        }

        .hero p {
            font-size: 1.25rem;
            color: #334155 !important; /* Forced dark text */
            max-width: 850px;
            margin: 0 auto 1rem;
            line-height: 1.8;
            animation: fadeInUp 0.8s ease-out 0.4s both;
        }

        /* Stats/Importance Bar */
        .importance-bar {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 2rem;
            margin-top: 3rem;
            animation: fadeInUp 0.8s ease-out 0.6s both;
        }

        .importance-item {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 600;
            color: #0f172a !important; /* Forced dark text */
            background: #ffffff;
            padding: 0.75rem 1.5rem;
            border-radius: 50px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            border: 1px solid var(--border);
        }

        .importance-item i {
            color: var(--primary);
        }

        /* Services Section */
        .services {
            padding: 100px 2rem;
            background: var(--bg-alt);
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-badge {
            display: inline-block;
            padding: 0.5rem 1.25rem;
            background: rgba(14, 165, 233, 0.1);
            border: 1px solid rgba(14, 165, 233, 0.2);
            border-radius: 50px;
            color: var(--secondary) !important;
            font-size: 0.9rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .section-title {
            font-size: 2.8rem;
            font-weight: 900;
            background: var(--gradient-2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 1rem;
            letter-spacing: -1px;
        }

        .section-subtitle {
            font-size: 1.2rem;
            color: #475569 !important; /* Forced dark text */
            max-width: 700px;
            margin: 0 auto;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2rem;
        }

        .service-card {
            background: #ffffff;
            border: 1px solid var(--border);
            border-radius: 24px;
            padding: 2.5rem;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.03);
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: var(--gradient-1);
            transform: scaleX(0);
            transition: transform 0.4s ease;
        }

        .service-card:hover {
            transform: translateY(-12px);
            border-color: var(--primary-light);
            box-shadow: 0 25px 70px rgba(79, 70, 229, 0.1);
        }

        .service-card:hover::before {
            transform: scaleX(1);
        }

        .service-icon {
            width: 70px;
            height: 70px;
            background: var(--gradient-1);
            border-radius: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            font-size: 2rem;
            color: #ffffff !important;
            transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        .service-card:hover .service-icon {
            transform: rotateY(360deg) scale(1.1);
        }

        .service-card h3 {
            font-size: 1.4rem;
            font-weight: 700;
            margin-bottom: 1rem;
            color: #0f172a !important; /* Forced dark text */
        }

        .service-list {
            list-style: none;
            margin-top: 1rem;
        }

        .service-list li {
            position: relative;
            padding-left: 1.5rem;
            margin-bottom: 0.5rem;
            color: #334155 !important; /* Forced dark text */
        }

        .service-list li::before {
            content: '✓';
            position: absolute;
            left: 0;
            color: var(--primary);
            font-weight: bold;
        }

        /* Features/Process Section */
        .features {
            padding: 100px 2rem;
            background: #ffffff;
        }

        .process-steps {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            max-width: 800px;
            margin: 0 auto;
        }

        .process-card {
            background: #ffffff;
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 1.5rem 2rem;
            display: flex;
            align-items: center;
            gap: 1.5rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .process-card:hover {
            border-color: var(--primary);
            transform: translateX(8px);
            box-shadow: 0 15px 40px rgba(79, 70, 229, 0.08);
        }

        .process-number {
            width: 50px;
            height: 50px;
            background: rgba(79, 70, 229, 0.1);
            color: var(--primary) !important;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 800;
            flex-shrink: 0;
        }

        .process-content h4 {
            font-size: 1.25rem;
            font-weight: 700;
            color: #0f172a !important; /* Forced dark text */
        }

        /* Results & Why Choose Us Section */
        .results-section {
            padding: 100px 2rem;
            background: var(--bg-alt);
        }

        .grid-2col {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .list-box {
            background: #ffffff;
            border: 1px solid var(--border);
            border-radius: 24px;
            padding: 3rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.03);
        }

        .list-box h3 {
            font-size: 1.8rem;
            color: #0f172a !important; /* Forced dark text */
            margin-bottom: 2rem;
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        
        .list-box h3 i {
            color: var(--primary);
        }

        .check-list {
            list-style: none;
        }

        .check-list li {
            display: flex;
            align-items: center;
            gap: 1rem;
            font-size: 1.1rem;
            color: #334155 !important; /* Forced dark text */
            margin-bottom: 1.2rem;
            padding-bottom: 1.2rem;
            border-bottom: 1px solid var(--border);
        }

        .check-list li:last-child {
            border-bottom: none;
            margin-bottom: 0;
            padding-bottom: 0;
        }

        .check-list i {
            font-size: 1.5rem;
            color: var(--success);
        }

        /* CTA Section */
        .cta-section {
            padding: 80px 2rem;
            text-align: center;
            background: var(--gradient-1);
            color: white !important;
        }

        .cta-section h2 {
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: white !important;
        }

        .cta-section p {
            font-size: 1.2rem;
            margin-bottom: 2.5rem;
            color: white !important;
            opacity: 0.9;
        }

        .cta-btn {
            display: inline-block;
            background: white;
            color: var(--primary-dark) !important;
            padding: 1rem 2.5rem;
            font-size: 1.1rem;
            font-weight: 700;
            border-radius: 50px;
            text-decoration: none;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        .cta-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }

        /* Animations */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .scroll-reveal {
            opacity: 0;
            transform: translateY(50px);
            transition: all 0.8s ease;
        }

        .scroll-reveal.revealed {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 968px) {
            .hero h1 { font-size: 2.8rem; }
            .grid-2col { grid-template-columns: 1fr; }
        }

        @media (max-width: 640px) {
            .hero { min-height: auto; padding-top: 120px; }
            .hero h1 { font-size: 2.2rem; }
            .section-title { font-size: 2rem; }
            .importance-item { width: 100%; justify-content: center; }
            .list-box { padding: 2rem; }
        }
    </style>
</head>
<body>
	<jsp:include page="../../includes/navbar/navbar.jsp" />
    <section class="hero" id="home">
        <div class="hero-bg">
            <img src="https://images.unsplash.com/photo-1451187580459-43490279c0fa?q=80&w=2072&auto=format&fit=crop" alt="Technology Background">
        </div>
        <div class="hero-content">
            <div class="hero-badge">
                <i class="fas fa-tools"></i> 24/7 Support & Maintenance
            </div>
            <h1>Maintenance & Support Services</h1>
            <p><strong>Keep Your Systems Running Smoothly.</strong> Maintenance and support services ensure that your software, applications, and systems run smoothly without interruptions. It includes regular updates, bug fixes, performance monitoring, and technical support.</p>
            <p>With professional maintenance & support services, businesses can avoid downtime, improve performance, and ensure long-term system stability.</p>
            
            <div class="importance-bar">
                <div class="importance-item"><i class="fas fa-bolt"></i> Reduced downtime</div>
                <div class="importance-item"><i class="fas fa-sync"></i> Regular updates</div>
                <div class="importance-item"><i class="fas fa-shield-alt"></i> Enhanced security</div>
                <div class="importance-item"><i class="fas fa-chart-line"></i> Better performance</div>
            </div>
        </div>
    </section>

    <section class="services scroll-reveal" id="services">
        <div class="container">
            <div class="section-header">
                <div class="section-badge">
                    <i class="fas fa-cogs"></i> Our Services
                </div>
                <h2 class="section-title">Complete Support Solutions</h2>
                <p class="section-subtitle">We provide continuous maintenance to ensure your systems stay secure, fast, and reliable.</p>
            </div>

            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-laptop-code"></i></div>
                    <h3>Software Maintenance</h3>
                    <ul class="service-list">
                        <li>Bug fixing</li>
                        <li>Feature updates</li>
                        <li>System enhancements</li>
                    </ul>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-mobile-alt"></i></div>
                    <h3>Application Support</h3>
                    <ul class="service-list">
                        <li>Web & mobile app support</li>
                        <li>Performance monitoring</li>
                        <li>Issue resolution</li>
                    </ul>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-desktop"></i></div>
                    <h3>System Monitoring</h3>
                    <ul class="service-list">
                        <li>Real-time monitoring</li>
                        <li>Error detection</li>
                        <li>Performance tracking</li>
                    </ul>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-lock"></i></div>
                    <h3>Security Updates</h3>
                    <ul class="service-list">
                        <li>Security patches</li>
                        <li>Vulnerability fixes</li>
                        <li>Data protection</li>
                    </ul>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-headset"></i></div>
                    <h3>Technical Support</h3>
                    <ul class="service-list">
                        <li>24/7 support (if applicable)</li>
                        <li>Troubleshooting</li>
                        <li>Ongoing assistance</li>
                    </ul>
                </div>

                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-building"></i></div>
                    <h3>Support for Business</h3>
                    <ul class="service-list">
                        <li>Web & Mobile Apps</li>
                        <li>Ecommerce platforms</li>
                        <li>Enterprise systems & Cloud</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="features scroll-reveal" id="process">
        <div class="container">
            <div class="section-header">
                <div class="section-badge">
                    <i class="fas fa-tasks"></i> How We Work
                </div>
                <h2 class="section-title">Our Support Process</h2>
                <p class="section-subtitle">We ensure smooth, secure, and uninterrupted system performance through a structured workflow.</p>
            </div>

            <div class="process-steps">
                <div class="process-card">
                    <div class="process-number">1</div>
                    <div class="process-content">
                        <h4>System Analysis</h4>
                    </div>
                </div>
                <div class="process-card">
                    <div class="process-number">2</div>
                    <div class="process-content">
                        <h4>Issue Identification</h4>
                    </div>
                </div>
                <div class="process-card">
                    <div class="process-number">3</div>
                    <div class="process-content">
                        <h4>Fix & Optimization</h4>
                    </div>
                </div>
                <div class="process-card">
                    <div class="process-number">4</div>
                    <div class="process-content">
                        <h4>Testing & Deployment</h4>
                    </div>
                </div>
                <div class="process-card">
                    <div class="process-number">5</div>
                    <div class="process-content">
                        <h4>Continuous Monitoring</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="results-section scroll-reveal" id="why-us">
        <div class="container">
            <div class="grid-2col">
                <div class="list-box">
                    <h3><i class="fas fa-star"></i> Why Choose Us?</h3>
                    <ul class="check-list">
                        <li><i class="fas fa-check-circle"></i> Fast issue resolution</li>
                        <li><i class="fas fa-check-circle"></i> Proactive monitoring</li>
                        <li><i class="fas fa-check-circle"></i> Performance-focused approach</li>
                        <li><i class="fas fa-check-circle"></i> Experienced support team</li>
                        <li><i class="fas fa-check-circle"></i> Reliable long-term support</li>
                    </ul>
                </div>
                
                <div class="list-box">
                    <h3><i class="fas fa-chart-bar"></i> Our Results</h3>
                    <ul class="check-list">
                        <li><i class="fas fa-rocket" style="color:var(--primary);"></i> Improved system uptime</li>
                        <li><i class="fas fa-arrow-up" style="color:var(--primary);"></i> Better overall performance</li>
                        <li><i class="fas fa-wallet" style="color:var(--primary);"></i> Reduced maintenance costs</li>
                        <li><i class="fas fa-smile" style="color:var(--primary);"></i> Enhanced user experience</li>
                        <li><i class="fas fa-server" style="color:var(--primary);"></i> Stable systems + zero downtime risk</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section">
        <div class="container scroll-reveal">
            <h2>Get Reliable Support Today</h2>
            <p>Need ongoing maintenance and support for your systems?</p>
            <a href="/contact" class="cta-btn">Contact Us for a Free Consultation</a>
        </div>
    </section>

    <script>
        // Scroll reveal animation
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('revealed');
                }
            });
        }, observerOptions);

        document.querySelectorAll('.scroll-reveal').forEach(el => {
            observer.observe(el);
        });
    </script>
    
    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>
