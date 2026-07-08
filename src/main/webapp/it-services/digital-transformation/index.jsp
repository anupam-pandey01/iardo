<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>Digital Transformation Services | Business Automation & Cloud Solutions | IARDO</title>
    <meta name="description" content="Transform your business with digital transformation services including automation, cloud, and AI solutions. Improve efficiency and scale faster.">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* =================================================================
           DIGITAL TRANSFORMATION PAGE STYLES - LIGHT THEME
        ================================================================= */
        :root {
            /* Brand Colors - Orange Theme */
            --dt-primary: #f97316;     /* Orange */
            --dt-secondary: #fb923c;   /* Light Orange */
            --dt-accent: #ea580c;      /* Dark Orange */
            
            /* Light Theme Background Colors */
            --bg-primary: #ffffff;
            --bg-secondary: #fffaf5;   /* Very light orange tint */
            --bg-card: #ffffff;
            
            /* Text Colors (Ensuring absolute darkness) */
            --text-dark: #0f172a;      /* Pure dark for headings */
            --text-gray: #334155;      /* Dark slate for paragraphs */
            
            --border-color: #fed7aa;   /* Light orange border */
            --shadow-sm: 0 4px 15px rgba(249, 115, 22, 0.05);
            --shadow-hover: 0 15px 40px rgba(249, 115, 22, 0.15);
            
            --gradient-main: linear-gradient(135deg, var(--dt-primary) 0%, var(--dt-secondary) 100%);
            --font-main: 'Poppins', sans-serif;
        }

        /* Scope everything to prevent global CSS conflicts */
        .dt-page-wrapper {
            font-family: var(--font-main) !important;
            background: var(--bg-primary) !important;
            color: var(--text-dark) !important;
            line-height: 1.7;
            overflow-x: hidden;
            font-weight: 500;
            -webkit-font-smoothing: antialiased;
        }

        .dt-page-wrapper * {
            box-sizing: border-box;
        }

        /* FORCE TEXT COLORS TO BE DARK & BOLD */
        .dt-page-wrapper h1, 
        .dt-page-wrapper h2, 
        .dt-page-wrapper h3, 
        .dt-page-wrapper h4 {
            font-family: var(--font-main) !important;
            font-weight: 900 !important;
            color: #0f172a !important; /* Explicit Dark Black/Navy */
            line-height: 1.2;
        }

        .dt-page-wrapper p, .dt-page-wrapper li {
            color: #334155 !important; /* Explicit Dark Gray */
            font-weight: 600 !important;
        }

        .gradient-text {
            background: var(--gradient-main);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: inline-block;
        }

        /* =========================================
           HERO SECTION
        ========================================= */
        .dt-hero {
            min-height: 85vh;
            background: linear-gradient(135deg, #ffffff 0%, #fff7ed 100%) !important;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            padding: 120px 5% 60px; /* Clears navbar */
            border-bottom: 1px solid var(--border-color);
            text-align: center;
        }

        .dt-hero::before {
            content: ''; position: absolute; width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(249, 115, 22, 0.08), transparent 70%);
            border-radius: 50%; top: -200px; right: -100px;
            animation: pulse 8s infinite ease-in-out; pointer-events: none;
        }

        .dt-hero::after {
            content: ''; position: absolute; width: 500px; height: 500px;
            background: radial-gradient(circle, rgba(251, 146, 60, 0.08), transparent 70%);
            border-radius: 50%; bottom: -100px; left: -100px;
            animation: pulse 6s infinite ease-in-out reverse; pointer-events: none;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .dt-hero-content {
            max-width: 1000px;
            position: relative;
            z-index: 2;
        }

        .dt-badge {
            display: inline-flex; align-items: center; gap: 8px;
            background: rgba(249, 115, 22, 0.1); border: 1px solid rgba(249, 115, 22, 0.3);
            padding: 8px 20px; border-radius: 50px;
            color: var(--dt-accent) !important; font-weight: 800 !important;
            text-transform: uppercase; letter-spacing: 1px; font-size: 0.9rem;
            margin-bottom: 2rem;
        }

        .dt-hero h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            margin-bottom: 1.5rem;
            letter-spacing: -1px;
        }

        .dt-hero p {
            font-size: 1.25rem;
            margin-bottom: 3rem;
            max-width: 850px;
            margin-left: auto; margin-right: auto;
        }

        .dt-btn-group {
            display: flex; gap: 1.5rem; justify-content: center; flex-wrap: wrap;
        }

        .btn {
            padding: 1.2rem 2.8rem; border-radius: 50px;
            font-weight: 800 !important; font-size: 1.1rem;
            text-decoration: none; transition: all 0.4s ease;
            display: inline-flex; align-items: center; gap: 0.8rem;
            border: none; cursor: pointer;
        }

        .btn-primary {
            background: var(--gradient-main) !important;
            color: #ffffff !important;
            box-shadow: 0 8px 25px rgba(249, 115, 22, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px); box-shadow: 0 12px 35px rgba(249, 115, 22, 0.5);
        }

        .btn-secondary {
            background: #ffffff !important;
            color: var(--dt-accent) !important;
            border: 2px solid var(--dt-accent) !important;
        }

        .btn-secondary:hover {
            background: var(--dt-accent) !important; color: #ffffff !important;
            transform: translateY(-3px); box-shadow: 0 8px 25px rgba(249, 115, 22, 0.2);
        }

        /* =========================================
           SECTION GLOBALS
        ========================================= */
        .dt-section { padding: 6rem 5%; position: relative; }
        .bg-alt { background: var(--bg-secondary) !important; border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }
        .section-container { max-width: 1400px; margin: 0 auto; }
        
        .section-header { text-align: center; max-width: 900px; margin: 0 auto 4rem; }
        .section-header h2 { font-size: clamp(2.2rem, 4vw, 3.5rem); margin-bottom: 1.2rem; }
        .section-header p { font-size: 1.15rem; }

        /* =========================================
           WHY DT SECTION (Features Grid)
        ========================================= */
        .features-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2rem;
        }

        .feature-card {
            background: var(--bg-card); padding: 2.5rem 2rem; border-radius: 20px;
            text-align: center; border: 1px solid var(--border-color);
            transition: all 0.4s ease; box-shadow: var(--shadow-sm);
        }

        .feature-card:hover {
            transform: translateY(-10px); border-color: var(--dt-primary); box-shadow: var(--shadow-hover);
        }

        .feature-icon {
            width: 70px; height: 70px; background: rgba(249, 115, 22, 0.1);
            border-radius: 50%; display: flex; align-items: center; justify-content: center;
            font-size: 2rem; color: var(--dt-accent); margin: 0 auto 1.5rem; transition: all 0.4s;
        }

        .feature-card:hover .feature-icon {
            background: var(--gradient-main); color: white; transform: rotate(10deg) scale(1.1);
        }

        .feature-card h3 { font-size: 1.25rem; margin-bottom: 1rem; }
        .feature-card p { font-size: 0.95rem; }

        /* =========================================
           SERVICES SECTION
        ========================================= */
        .services-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 2.5rem;
        }

        .service-card {
            background: var(--bg-card); padding: 3rem 2.5rem; border-radius: 20px;
            border: 1px solid var(--border-color); transition: all 0.4s ease;
            box-shadow: var(--shadow-sm); position: relative; overflow: hidden;
        }

        .service-card::before {
            content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 4px;
            background: var(--gradient-main); transform: scaleX(0); transform-origin: left; transition: transform 0.4s ease;
        }

        .service-card:hover::before { transform: scaleX(1); }
        .service-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-hover); border-color: var(--dt-primary); }

        .service-icon-box {
            font-size: 2.5rem; color: var(--dt-primary); margin-bottom: 1.5rem;
        }

        .service-card h3 { font-size: 1.5rem; margin-bottom: 1.5rem; }
        
        .service-list { list-style: none; padding: 0; }
        .service-list li {
            padding: 8px 0 8px 25px; position: relative; font-size: 1.05rem;
            border-bottom: 1px solid #fef08a; /* Light warning color for division */
        }
        .service-list li:last-child { border-bottom: none; }
        .service-list li::before {
            content: '\f058'; font-family: 'Font Awesome 6 Free'; font-weight: 900;
            position: absolute; left: 0; color: var(--dt-accent); font-size: 1.1rem;
        }

        /* =========================================
           PROCESS TIMELINE
        ========================================= */
        .process-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem;
            position: relative;
        }

        .process-step {
            background: var(--bg-card); padding: 2.5rem 1.5rem; border-radius: 20px;
            border: 1px solid var(--border-color); position: relative; transition: all 0.3s;
            z-index: 1; text-align: center;
            box-shadow: var(--shadow-sm);
        }

        .process-step:hover { border-color: var(--dt-primary); transform: translateY(-5px); box-shadow: var(--shadow-hover); }

        .step-num {
            width: 60px; height: 60px; background: var(--gradient-main); color: white;
            border-radius: 50%; display: flex; align-items: center; justify-content: center;
            font-size: 1.5rem; font-weight: 900 !important; margin: 0 auto 1.5rem;
            box-shadow: 0 5px 15px rgba(249, 115, 22, 0.3);
        }

        .process-step h3 { font-size: 1.2rem; }

        /* =========================================
           SPLIT SECTION (ENTERPRISE & RESULTS)
        ========================================= */
        .split-layout {
            display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: center;
        }

        .split-content h3 { font-size: 2.2rem; margin-bottom: 1.5rem; }
        .split-content p { font-size: 1.15rem; margin-bottom: 2rem; }

        .check-list { list-style: none; }
        .check-list li {
            display: flex; align-items: center; gap: 15px; font-size: 1.1rem;
            padding: 12px 0; border-bottom: 1px solid var(--border-color);
        }
        .check-list li i { color: var(--dt-accent); font-size: 1.3rem; }

        .result-box {
            background: #fffaf5; padding: 2rem; border-radius: 15px;
            border-left: 5px solid var(--dt-accent); box-shadow: var(--shadow-sm);
            margin-top: 2rem;
        }
        .result-box strong { color: var(--dt-accent) !important; font-size: 1.2rem; }

        /* Results Stats Grid */
        .stats-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.5rem; }
        .stat-card {
            background: var(--bg-card); border: 1px solid var(--border-color);
            padding: 2rem; border-radius: 15px; text-align: center; transition: all 0.3s;
            box-shadow: var(--shadow-sm);
        }
        .stat-card:hover { border-color: var(--dt-primary); transform: scale(1.05); box-shadow: var(--shadow-hover); }
        .stat-icon { font-size: 2.5rem; margin-bottom: 1rem; color: var(--dt-primary); }
        .stat-card h4 { font-size: 1.1rem; }

        /* =========================================
           CTA SECTION
        ========================================= */
        .cta-section {
            background: var(--gradient-main) !important; text-align: center; padding: 7rem 2rem; position: relative; overflow: hidden;
        }
        .cta-section::before {
            content: ''; position: absolute; width: 100%; height: 100%; top: 0; left: 0;
            background: url('data:image/svg+xml,<svg width="40" height="40" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg"><circle cx="20" cy="20" r="1" fill="rgba(255,255,255,0.2)"/></svg>');
        }

        .cta-container { position: relative; z-index: 2; }
        .cta-section h2 { color: white !important; font-size: clamp(2.5rem, 4vw, 3.5rem); margin-bottom: 1.5rem; }
        .cta-section p { color: rgba(255,255,255,0.9) !important; font-size: 1.25rem; margin-bottom: 3rem; }
        
        .btn-cta {
            background: white !important; color: var(--dt-accent) !important;
            padding: 1.2rem 3rem; border-radius: 50px; font-size: 1.2rem; font-weight: 800 !important;
            text-decoration: none; display: inline-flex; align-items: center; gap: 10px;
            transition: all 0.3s; box-shadow: 0 10px 30px rgba(0,0,0,0.2); border: none;
        }
        .btn-cta:hover { transform: translateY(-5px); box-shadow: 0 15px 40px rgba(0,0,0,0.3); }

        /* =========================================
           RESPONSIVE DESIGN
        ========================================= */
        @media (max-width: 1024px) {
            .split-layout { grid-template-columns: 1fr; text-align: center; }
            .check-list li { justify-content: center; }
            .result-box { text-align: center; border-left: none; border-top: 5px solid var(--dt-accent); }
        }

        @media (max-width: 768px) {
            .dt-hero { padding-top: 8rem; min-height: auto; }
            .dt-hero h1 { font-size: 2.2rem; }
            .dt-section { padding: 4rem 1.5rem; }
            .section-header h2 { font-size: 2rem; }
            .dt-btn-group { flex-direction: column; width: 100%; }
            .btn { width: 100%; justify-content: center; }
            .features-grid, .services-grid, .process-grid, .stats-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <div class="dt-page-wrapper">
        
        <section class="dt-hero">
            <div class="dt-hero-content">
                <div class="dt-badge"><i class="fas fa-globe"></i> DIGITAL TRANSFORMATION</div>
                <h1>Digital Transformation Services – <br><span class="gradient-text">Transform & Scale Your Business</span></h1>
                <p>Digital transformation is the process of using technology to improve business operations, customer experience, and overall performance. Streamline processes, reduce costs, and achieve faster growth.</p>
                <div class="dt-btn-group">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary"><i class="fas fa-rocket"></i> Transform Today</a>
                    <a href="#services" class="btn btn-secondary"><i class="fas fa-list"></i> Our Services</a>
                </div>
            </div>
        </section>

        <section class="dt-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Why Digital Transformation is Important?</h2>
                    <p>Digital transformation helps businesses adapt, innovate, and grow in the digital era.</p>
                </div>
                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-bolt"></i></div>
                        <h3>Improved Business Efficiency</h3>
                        <p>Streamline workflows and eliminate bottlenecks to get more done in less time.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-chart-pie"></i></div>
                        <h3>Data-Driven Decision Making</h3>
                        <p>Utilize real-time data and analytics to make strategic, informed business decisions.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-piggy-bank"></i></div>
                        <h3>Reduced Operational Costs</h3>
                        <p>Automate manual tasks and optimize resource allocation to significantly cut expenses.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-rocket"></i></div>
                        <h3>Faster Growth & Scalability</h3>
                        <p>Build an agile technological foundation that easily scales as your market share grows.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-handshake"></i></div>
                        <h3>Enhanced Customer Experience</h3>
                        <p>Deliver seamless, personalized, and rapid interactions that delight modern consumers.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="dt-section" id="services">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our Digital Transformation Services</h2>
                    <p>We provide end-to-end transformation solutions tailored to your business needs.</p>
                </div>
                <div class="services-grid">
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-cogs"></i></div>
                        <h3>Business Process Automation</h3>
                        <ul class="service-list">
                            <li>Workflow automation</li>
                            <li>Task optimization</li>
                            <li>Reduced manual effort</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-cloud"></i></div>
                        <h3>Cloud Transformation</h3>
                        <ul class="service-list">
                            <li>Cloud migration</li>
                            <li>Scalable infrastructure</li>
                            <li>Cost optimization</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-chart-line"></i></div>
                        <h3>Data & Analytics Solutions</h3>
                        <ul class="service-list">
                            <li>Business intelligence</li>
                            <li>Data visualization</li>
                            <li>Performance tracking</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-laptop-code"></i></div>
                        <h3>Custom Software Development</h3>
                        <ul class="service-list">
                            <li>Tailored digital solutions</li>
                            <li>System modernization</li>
                            <li>Legacy system upgrade</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-robot"></i></div>
                        <h3>AI & Automation Integration</h3>
                        <ul class="service-list">
                            <li>AI-powered solutions</li>
                            <li>Smart automation</li>
                            <li>Predictive analytics</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="dt-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our Transformation Process</h2>
                    <p>We ensure smooth, scalable, and result-driven digital transformation.</p>
                </div>
                <div class="process-grid">
                    <div class="process-step">
                        <div class="step-num"><i class="fas fa-search"></i></div>
                        <h3>Business Analysis</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num"><i class="fas fa-map-signs"></i></div>
                        <h3>Strategy & Planning</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num"><i class="fas fa-code"></i></div>
                        <h3>Technology Implementation</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num"><i class="fas fa-puzzle-piece"></i></div>
                        <h3>Integration & Testing</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num"><i class="fas fa-chart-line"></i></div>
                        <h3>Optimization & Scaling</h3>
                    </div>
                </div>
            </div>
        </section>

        <section class="dt-section">
            <div class="section-container">
                <div class="split-layout">
                    
                    <div class="split-content">
                        <h3>Digital Transformation for Business & Enterprises</h3>
                        <p>We help businesses across all sectors transform their operations to stay competitive and relevant.</p>
                        <ul class="check-list">
                            <li><i class="fas fa-building"></i> Traditional businesses</li>
                            <li><i class="fas fa-shopping-cart"></i> Ecommerce platforms</li>
                            <li><i class="fas fa-rocket"></i> Startups & enterprises</li>
                            <li><i class="fas fa-briefcase"></i> Service-based companies</li>
                            <li><i class="fas fa-industry"></i> Manufacturing & operations</li>
                        </ul>
                        <div class="result-box">
                            <strong>💥 Result: Better Efficiency + Innovation + Business Growth</strong>
                        </div>
                    </div>

                    <div class="split-content">
                        <h3>Why Choose Us for Digital Transformation?</h3>
                        <p>Partner with experts dedicated to delivering tangible business value.</p>
                        <div class="stats-grid">
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-project-diagram"></i></div>
                                <h4>End-to-End Solutions</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-tachometer-alt"></i></div>
                                <h4>Fast Implementation</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-database"></i></div>
                                <h4>Data-Driven Approach</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-laptop-code"></i></div>
                                <h4>Latest Technologies</h4>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="dt-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our Results Speak for Themselves</h2>
                    <p>Real impact delivered through intelligent digital upgrades.</p>
                </div>
                <div class="features-grid">
                    <div class="feature-card" style="border-top: 4px solid var(--dt-primary);">
                        <div class="feature-icon" style="background: transparent; color: var(--dt-primary); font-size: 3rem;"><i class="fas fa-arrow-up"></i></div>
                        <h3>Increased Efficiency</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--dt-accent);">
                        <div class="feature-icon" style="background: transparent; color: var(--dt-accent); font-size: 3rem;"><i class="fas fa-chart-line"></i></div>
                        <h3>Faster Business Growth</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--dt-primary);">
                        <div class="feature-icon" style="background: transparent; color: var(--dt-primary); font-size: 3rem;"><i class="fas fa-piggy-bank"></i></div>
                        <h3>Reduced Operational Costs</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--dt-accent);">
                        <div class="feature-icon" style="background: transparent; color: var(--dt-accent); font-size: 3rem;"><i class="fas fa-chart-bar"></i></div>
                        <h3>Improved Performance</h3>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta-section">
            <div class="cta-container">
                <h2>Start Your Digital Transformation Today</h2>
                <p>Ready to transform your business digitally and achieve unprecedented growth?</p>
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-calendar-check"></i> Contact Us for a Free Consultation</a>
            </div>
        </section>

    </div>

    <jsp:include page="../../includes/footer/footer.jsp" />

</body>
</html>
