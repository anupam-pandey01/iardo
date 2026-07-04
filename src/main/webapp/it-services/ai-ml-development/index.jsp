<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>AI & ML Services | Smart Automation & Intelligent Solutions | IARDO</title>
    <meta name="description" content="Automate workflows and scale your business with expert AI and Machine Learning services. Discover custom AI development, ML models, and smart e-commerce solutions.">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* =================================================================
           AI & ML PAGE STYLES - LIGHT THEME (TEXT VISIBILITY FIXED)
        ================================================================= */
        :root {
            /* Brand Colors for AI/ML */
            --ai-primary: #4F46E5;     /* Indigo */
            --ai-secondary: #EC4899;   /* Pink */
            --ai-accent: #8B5CF6;      /* Purple */
            
            /* Light Theme Background Colors */
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --bg-card: #ffffff;
            
            /* Text Colors (Ensuring absolute darkness) */
            --text-dark: #0f172a;      /* Pure dark for headings */
            --text-gray: #334155;      /* Dark slate for paragraphs */
            --text-muted: #64748b;
            
            --border-color: #e2e8f0;
            --shadow-sm: 0 4px 15px rgba(0, 0, 0, 0.03);
            --shadow-hover: 0 15px 40px rgba(79, 70, 229, 0.12);
            
            --gradient-main: linear-gradient(135deg, var(--ai-primary) 0%, var(--ai-secondary) 100%);
            --font-main: 'Poppins', sans-serif;
        }

        /* Scope everything to prevent global CSS conflicts */
        .ai-page-wrapper {
            font-family: var(--font-main) !important;
            background: var(--bg-primary) !important;
            color: var(--text-dark) !important;
            line-height: 1.7;
            overflow-x: hidden;
            font-weight: 500;
            -webkit-font-smoothing: antialiased;
        }

        .ai-page-wrapper * {
            box-sizing: border-box;
        }

        /* FORCE TEXT COLORS TO BE DARK & BOLD */
        .ai-page-wrapper h1, 
        .ai-page-wrapper h2, 
        .ai-page-wrapper h3, 
        .ai-page-wrapper h4 {
            font-family: var(--font-main) !important;
            font-weight: 900 !important;
            color: #0f172a !important; /* Explicit Dark Black/Navy */
            line-height: 1.2;
        }

        .ai-page-wrapper p, .ai-page-wrapper li {
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
        .ai-hero {
            min-height: 85vh;
            background: linear-gradient(135deg, #ffffff 0%, #f5f3ff 100%) !important;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            padding: 120px 5% 60px; /* Clears navbar */
            border-bottom: 1px solid var(--border-color);
            text-align: center;
        }

        .ai-hero::before {
            content: ''; position: absolute; width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(79, 70, 229, 0.05), transparent 70%);
            border-radius: 50%; top: -200px; right: -100px;
            animation: pulse 8s infinite ease-in-out; pointer-events: none;
        }

        .ai-hero::after {
            content: ''; position: absolute; width: 500px; height: 500px;
            background: radial-gradient(circle, rgba(236, 72, 153, 0.05), transparent 70%);
            border-radius: 50%; bottom: -100px; left: -100px;
            animation: pulse 6s infinite ease-in-out reverse; pointer-events: none;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .ai-hero-content {
            max-width: 1000px;
            position: relative;
            z-index: 2;
        }

        .ai-badge {
            display: inline-flex; align-items: center; gap: 8px;
            background: rgba(79, 70, 229, 0.1); border: 1px solid rgba(79, 70, 229, 0.2);
            padding: 8px 20px; border-radius: 50px;
            color: var(--ai-primary) !important; font-weight: 800 !important;
            text-transform: uppercase; letter-spacing: 1px; font-size: 0.9rem;
            margin-bottom: 2rem;
        }

        .ai-hero h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            margin-bottom: 1.5rem;
            letter-spacing: -1px;
        }

        .ai-hero p {
            font-size: 1.25rem;
            margin-bottom: 3rem;
            max-width: 800px;
            margin-left: auto; margin-right: auto;
        }

        .ai-btn-group {
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
            box-shadow: 0 8px 25px rgba(79, 70, 229, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px); box-shadow: 0 12px 35px rgba(79, 70, 229, 0.4);
        }

        .btn-secondary {
            background: #ffffff !important;
            color: var(--ai-primary) !important;
            border: 2px solid var(--ai-primary) !important;
        }

        .btn-secondary:hover {
            background: var(--ai-primary) !important; color: #ffffff !important;
            transform: translateY(-3px); box-shadow: 0 8px 25px rgba(79, 70, 229, 0.2);
        }

        /* =========================================
           SECTION GLOBALS
        ========================================= */
        .ai-section { padding: 6rem 5%; position: relative; }
        .bg-alt { background: var(--bg-secondary) !important; border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }
        .section-container { max-width: 1400px; margin: 0 auto; }
        
        .section-header { text-align: center; max-width: 900px; margin: 0 auto 4rem; }
        .section-header h2 { font-size: clamp(2.2rem, 4vw, 3.5rem); margin-bottom: 1.2rem; }
        .section-header p { font-size: 1.15rem; }

        /* =========================================
           WHY BUSINESS NEEDS AI SECTION
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
            transform: translateY(-10px); border-color: var(--ai-primary); box-shadow: var(--shadow-hover);
        }

        .feature-icon {
            width: 70px; height: 70px; background: rgba(79, 70, 229, 0.1);
            border-radius: 50%; display: flex; align-items: center; justify-content: center;
            font-size: 2rem; color: var(--ai-primary); margin: 0 auto 1.5rem; transition: all 0.4s;
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
        .service-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-hover); border-color: var(--ai-primary); }

        .service-icon-box {
            font-size: 2.5rem; color: var(--ai-secondary); margin-bottom: 1.5rem;
        }

        .service-card h3 { font-size: 1.5rem; margin-bottom: 1.5rem; }
        
        .service-list { list-style: none; padding: 0; }
        .service-list li {
            padding: 8px 0 8px 25px; position: relative; font-size: 1.05rem;
            border-bottom: 1px solid #f1f5f9;
        }
        .service-list li:last-child { border-bottom: none; }
        .service-list li::before {
            content: '\f058'; font-family: 'Font Awesome 6 Free'; font-weight: 900;
            position: absolute; left: 0; color: var(--ai-primary); font-size: 1.1rem;
        }

        /* =========================================
           PROCESS SECTION
        ========================================= */
        .process-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 2rem;
        }

        .process-step {
            background: var(--bg-card); padding: 2.5rem; border-radius: 20px;
            border: 1px solid var(--border-color); position: relative; transition: all 0.3s;
            z-index: 1; text-align: center;
        }

        .process-step:hover { border-color: var(--ai-primary); transform: translateY(-5px); box-shadow: var(--shadow-hover); }

        .step-num {
            width: 60px; height: 60px; background: var(--gradient-main); color: white;
            border-radius: 50%; display: flex; align-items: center; justify-content: center;
            font-size: 1.5rem; font-weight: 900 !important; margin: 0 auto 1.5rem;
            box-shadow: 0 5px 15px rgba(79, 70, 229, 0.3);
        }

        .process-step h3 { font-size: 1.3rem; }

        /* =========================================
           SPLIT SECTION (ECOMMERCE & RESULTS)
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
        .check-list li i { color: var(--ai-primary); font-size: 1.3rem; }

        .result-box {
            background: var(--bg-primary); padding: 2rem; border-radius: 15px;
            border-left: 5px solid var(--ai-secondary); box-shadow: var(--shadow-sm);
            margin-top: 2rem;
        }
        .result-box strong { color: var(--ai-primary) !important; font-size: 1.2rem; }

        /* Results Stats Grid */
        .stats-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.5rem; }
        .stat-card {
            background: var(--bg-card); border: 1px solid var(--border-color);
            padding: 2rem; border-radius: 15px; text-align: center; transition: all 0.3s;
        }
        .stat-card:hover { border-color: var(--ai-primary); transform: scale(1.05); box-shadow: var(--shadow-hover); }
        .stat-icon { font-size: 2.5rem; margin-bottom: 1rem; color: var(--ai-primary); }
        .stat-card h4 { font-size: 1.1rem; }

        /* =========================================
           CTA SECTION
        ========================================= */
        .cta-section {
            background: var(--gradient-main) !important; text-align: center; padding: 7rem 2rem; position: relative; overflow: hidden;
        }
        .cta-section h2 { color: white !important; font-size: clamp(2.5rem, 4vw, 3.5rem); margin-bottom: 1.5rem; }
        .cta-section p { color: rgba(255,255,255,0.9) !important; font-size: 1.25rem; margin-bottom: 3rem; }
        
        .btn-cta {
            background: white !important; color: var(--ai-primary) !important;
            padding: 1.2rem 3rem; border-radius: 50px; font-size: 1.2rem; font-weight: 800 !important;
            text-decoration: none; display: inline-flex; align-items: center; gap: 10px;
            transition: all 0.3s; box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        .btn-cta:hover { transform: translateY(-5px); box-shadow: 0 15px 40px rgba(0,0,0,0.3); }

        /* =========================================
           RESPONSIVE DESIGN
        ========================================= */
        @media (max-width: 1024px) {
            .split-layout { grid-template-columns: 1fr; text-align: center; }
            .check-list li { justify-content: center; }
            .result-box { text-align: center; border-left: none; border-top: 5px solid var(--ai-secondary); }
        }

        @media (max-width: 768px) {
            .ai-hero { padding-top: 8rem; min-height: auto; }
            .ai-hero h1 { font-size: 2.2rem; }
            .ai-section { padding: 4rem 1.5rem; }
            .section-header h2 { font-size: 2rem; }
            .ai-btn-group { flex-direction: column; width: 100%; }
            .btn { width: 100%; justify-content: center; }
            .features-grid, .services-grid, .process-grid, .stats-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <div class="ai-page-wrapper">
        
        <section class="ai-hero">
            <div class="ai-hero-content">
                <div class="ai-badge"><i class="fas fa-robot"></i> AI & ML SERVICES</div>
                <h1>AI & ML Services – <br><span class="gradient-text">Smart Automation & Intelligent Business Solutions</span></h1>
                <p>AI (Artificial Intelligence) and ML (Machine Learning) services help businesses automate processes, analyze data, and make smarter decisions. Improve efficiency, reduce manual work, and enhance customer experience today.</p>
                <div class="ai-btn-group">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary"><i class="fas fa-rocket"></i> Get Started</a>
                    <a href="#services" class="btn btn-secondary"><i class="fas fa-list"></i> Explore Services</a>
                </div>
            </div>
        </section>

        <section class="ai-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Why Your Business Needs AI & ML?</h2>
                    <p>With AI & ML, businesses can scale faster and stay ahead in the digital world. Turn your data into your biggest competitive advantage.</p>
                </div>
                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-cogs"></i></div>
                        <h3>Automation of Repetitive Tasks</h3>
                        <p>Free up your workforce by automating routine tasks, allowing your team to focus on strategic growth.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-chart-pie"></i></div>
                        <h3>Data-Driven Decision Making</h3>
                        <p>Leverage predictive analytics and intelligent algorithms to make accurate, data-backed business decisions.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-arrow-trend-up"></i></div>
                        <h3>Increase Efficiency & Reduce Costs</h3>
                        <p>Optimize operations and minimize errors to drastically cut down overhead operational costs.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-users"></i></div>
                        <h3>Personalized Customer Experience</h3>
                        <p>Deliver tailored recommendations and smart interactions that increase customer satisfaction and loyalty.</p>
                    </div>
                    <div class="feature-card">
                        <div class="feature-icon"><i class="fas fa-bolt"></i></div>
                        <h3>Faster Business Growth</h3>
                        <p>Scale your capabilities instantly with intelligent systems that adapt and grow with your business demands.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ai-section" id="services">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our AI & ML Services</h2>
                    <p>We provide complete, end-to-end AI-powered solutions tailored for your industry.</p>
                </div>
                <div class="services-grid">
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-microchip"></i></div>
                        <h3>AI Automation</h3>
                        <ul class="service-list">
                            <li>Business process automation</li>
                            <li>Chatbots & AI assistants</li>
                            <li>Workflow automation</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-brain"></i></div>
                        <h3>Machine Learning Solutions</h3>
                        <ul class="service-list">
                            <li>Data analysis & prediction models</li>
                            <li>Recommendation systems</li>
                            <li>Customer behavior analysis</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-shopping-cart"></i></div>
                        <h3>AI for Ecommerce & Onboarding</h3>
                        <ul class="service-list">
                            <li>Smart product recommendations</li>
                            <li>Automated customer support</li>
                            <li>Lead qualification systems</li>
                        </ul>
                    </div>
                    <div class="service-card">
                        <div class="service-icon-box"><i class="fas fa-laptop-code"></i></div>
                        <h3>Custom AI Development</h3>
                        <ul class="service-list">
                            <li>Custom AI tools development</li>
                            <li>Bespoke ML models training</li>
                            <li>Seamless API integration</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="ai-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our AI & ML Process</h2>
                    <p>A proven methodology to build scalable, efficient, and highly accurate AI solutions.</p>
                </div>
                <div class="process-grid">
                    <div class="process-step">
                        <div class="step-num">1</div>
                        <h3>Business Requirement Analysis</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num">2</div>
                        <h3>Data Collection & Processing</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num">3</div>
                        <h3>Model Development</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num">4</div>
                        <h3>Testing & Optimization</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num">5</div>
                        <h3>Deployment</h3>
                    </div>
                    <div class="process-step">
                        <div class="step-num">6</div>
                        <h3>Continuous Improvement</h3>
                    </div>
                </div>
            </div>
        </section>

        <section class="ai-section">
            <div class="section-container">
                <div class="split-layout">
                    
                    <div class="split-content">
                        <h3>AI for Seller Onboarding & Ecommerce</h3>
                        <p>We help modern businesses leverage Artificial Intelligence to supercharge their digital platforms, automate operations, and scale effortlessly.</p>
                        <ul class="check-list">
                            <li><i class="fas fa-check-circle"></i> Automated seller onboarding processes</li>
                            <li><i class="fas fa-check-circle"></i> Smart lead generation systems</li>
                            <li><i class="fas fa-check-circle"></i> Customer behavior tracking & insights</li>
                            <li><i class="fas fa-check-circle"></i> Complete Ecommerce growth optimization</li>
                        </ul>
                        <div class="result-box">
                            <strong>💥 Result: Faster onboarding + Better sales conversions</strong>
                        </div>
                    </div>

                    <div class="split-content">
                        <h3>Why Choose Us for AI & ML?</h3>
                        <p>Partner with experts who understand both technology and business strategy.</p>
                        <div class="stats-grid">
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-user-graduate"></i></div>
                                <h4>Advanced AI Expertise</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-briefcase"></i></div>
                                <h4>Business-Focused Solutions</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-expand-arrows-alt"></i></div>
                                <h4>Scalable & Efficient Systems</h4>
                            </div>
                            <div class="stat-card">
                                <div class="stat-icon"><i class="fas fa-hands-helping"></i></div>
                                <h4>End-to-End Support</h4>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="ai-section bg-alt">
            <div class="section-container">
                <div class="section-header">
                    <h2>Our Results Speak for Themselves</h2>
                    <p>Real impact delivered through intelligent automation.</p>
                </div>
                <div class="features-grid">
                    <div class="feature-card" style="border-top: 4px solid var(--ai-primary);">
                        <div class="feature-icon" style="background: transparent; color: var(--ai-primary); font-size: 3rem;"><i class="fas fa-tachometer-alt"></i></div>
                        <h3>Improved Automation</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--ai-secondary);">
                        <div class="feature-icon" style="background: transparent; color: var(--ai-secondary); font-size: 3rem;"><i class="fas fa-lightbulb"></i></div>
                        <h3>Better Decision Making</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--ai-primary);">
                        <div class="feature-icon" style="background: transparent; color: var(--ai-primary); font-size: 3rem;"><i class="fas fa-level-up-alt"></i></div>
                        <h3>Increased Efficiency</h3>
                    </div>
                    <div class="feature-card" style="border-top: 4px solid var(--ai-secondary);">
                        <div class="feature-icon" style="background: transparent; color: var(--ai-secondary); font-size: 3rem;"><i class="fas fa-chart-line"></i></div>
                        <h3>Faster Growth</h3>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta-section">
            <div class="section-container">
                <h2>Start Using AI Today</h2>
                <p>Want to automate workflows and grow your business with Custom AI & ML solutions?</p>
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta"><i class="fas fa-calendar-check"></i> Contact Us for a Free Consultation</a>
            </div>
        </section>

    </div>

    <jsp:include page="../../includes/footer/footer.jsp" />

</body>
</html>
