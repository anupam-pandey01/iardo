<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Marketing Services - IARDO | ROI-Driven Marketing Solutions PAN India</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/services/quick-commerce/digital-marketing/style.css">
</head>
<body>

<jsp:include page="../../../includes/navbar/navbar.jsp" />

<section class="hero" id="home">
    <div class="hero-background">
        <div class="gradient-orb orb-1"></div>
        <div class="gradient-orb orb-2"></div>
        <div class="gradient-orb orb-3"></div>
    </div>
    
    <div class="hero-container">
        <div class="hero-content">
            <div class="hero-badge">
                <i class="fas fa-chart-line"></i>
                <span>Results-Driven Digital Marketing</span>
            </div>
            
            <h1 class="hero-title">
                Skyrocket Your Business with
                <span class="gradient-text">Data-Driven Digital Marketing</span>
            </h1>
            
            <p class="hero-description">
                Transform clicks into customers with IARDO's comprehensive digital marketing strategies. 
                We combine SEO, PPC, social media, and content marketing to deliver measurable ROI and 
                accelerate your business growth across PAN India.
            </p>
            
            <div class="hero-metrics">
                <div class="metric-card">
                    <div class="metric-icon">
                        <i class="fas fa-rocket"></i>
                    </div>
                    <div class="metric-info">
                        <span class="metric-value">300%+</span>
                        <span class="metric-label">Average ROI</span>
                    </div>
                </div>
                
                <div class="metric-card">
                    <div class="metric-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="metric-info">
                        <span class="metric-value">500+</span>
                        <span class="metric-label">Clients Served</span>
                    </div>
                </div>
                
                <div class="metric-card">
                    <div class="metric-icon">
                        <i class="fas fa-award"></i>
                    </div>
                    <div class="metric-info">
                        <span class="metric-value">95%</span>
                        <span class="metric-label">Client Retention</span>
                    </div>
                </div>
            </div>
            
            <div class="hero-buttons">
                <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                    <span>Get Free Marketing Audit</span>
                    <i class="fas fa-arrow-right"></i>
                </a>
                <a href="#services" class="btn btn-secondary">
                    <span>Explore Services</span>
                    <i class="fas fa-play-circle"></i>
                </a>
            </div>
        </div>
        
        <div class="hero-visual">
            <div class="analytics-dashboard">
                <div class="dashboard-header">
                    <div class="header-left">
                        <i class="fas fa-chart-bar"></i>
                        <span>Marketing Dashboard</span>
                    </div>
                </div>
                
                <div class="dashboard-stats">
                    <div class="stat-box">
                        <div class="stat-label">Total Reach</div>
                        <div class="stat-value">2.5M+</div>
                        <div class="stat-trend up">
                            <i class="fas fa-arrow-up"></i> 45% this month
                        </div>
                    </div>
                    
                    <div class="stat-box">
                        <div class="stat-label">Conversions</div>
                        <div class="stat-value">18.5K</div>
                        <div class="stat-trend up">
                            <i class="fas fa-arrow-up"></i> 67% increase
                        </div>
                    </div>
                </div>
                
                <div class="chart-container">
                    <div class="chart-bars">
                        <div class="bar" style="height: 60%"></div>
                        <div class="bar" style="height: 75%"></div>
                        <div class="bar" style="height: 50%"></div>
                        <div class="bar" style="height: 85%"></div>
                        <div class="bar" style="height: 70%"></div>
                        <div class="bar" style="height: 95%"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="services" id="services">
    <div class="section-header">
        <h2>Our Digital Marketing Services</h2>
        <p class="subtitle">Comprehensive strategies to dominate your digital presence</p>
    </div>
    
    <div class="services-grid">
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-search"></i>
            </div>
            <h3>Search Engine Optimization (SEO)</h3>
            <p>Rank #1 on Google with our proven SEO strategies. On-page optimization, technical SEO, link building, and local SEO to drive organic traffic and increase visibility.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Keyword Research & Strategy</li>
                <li><i class="fas fa-check"></i> Technical SEO Audits</li>
                <li><i class="fas fa-check"></i> Quality Link Building</li>
                <li><i class="fas fa-check"></i> Local SEO Optimization</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
        
        <div class="service-card featured">
            <div class="featured-badge">Most Popular</div>
            <div class="service-icon">
                <i class="fas fa-bullseye"></i>
            </div>
            <h3>Pay-Per-Click (PPC) Advertising</h3>
            <p>Maximize ROI with targeted PPC campaigns on Google Ads, Facebook Ads, and LinkedIn. Data-driven ad strategies that convert clicks into customers.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Google Ads Management</li>
                <li><i class="fas fa-check"></i> Social Media Advertising</li>
                <li><i class="fas fa-check"></i> Remarketing Campaigns</li>
                <li><i class="fas fa-check"></i> A/B Testing & Optimization</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-share-alt"></i>
            </div>
            <h3>Social Media Marketing</h3>
            <p>Build engaged communities and drive conversions through strategic social media campaigns. Content creation, community management, and influencer partnerships.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Content Strategy & Creation</li>
                <li><i class="fas fa-check"></i> Community Management</li>
                <li><i class="fas fa-check"></i> Influencer Marketing</li>
                <li><i class="fas fa-check"></i> Social Media Analytics</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-pen-fancy"></i>
            </div>
            <h3>Content Marketing</h3>
            <p>Engage your audience with high-quality content that drives traffic and builds authority. Blog posts, infographics, videos, and more.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Blog Writing & SEO</li>
                <li><i class="fas fa-check"></i> Video Production</li>
                <li><i class="fas fa-check"></i> Infographic Design</li>
                <li><i class="fas fa-check"></i> Content Distribution</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-envelope-open-text"></i>
            </div>
            <h3>Email Marketing</h3>
            <p>Nurture leads and boost sales with personalized email campaigns. Automated workflows, segmentation, and performance tracking.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Email Campaign Design</li>
                <li><i class="fas fa-check"></i> Marketing Automation</li>
                <li><i class="fas fa-check"></i> List Segmentation</li>
                <li><i class="fas fa-check"></i> A/B Testing</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-chart-pie"></i>
            </div>
            <h3>Analytics & Reporting</h3>
            <p>Make data-driven decisions with comprehensive analytics and transparent reporting. Track KPIs, measure ROI, and optimize campaigns.</p>
            <ul class="service-features">
                <li><i class="fas fa-check"></i> Google Analytics Setup</li>
                <li><i class="fas fa-check"></i> Custom Dashboards</li>
                <li><i class="fas fa-check"></i> Monthly Reports</li>
                <li><i class="fas fa-check"></i> Performance Insights</li>
            </ul>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="service-link">
                Learn More <i class="fas fa-arrow-right"></i>
            </a>
        </div>
    </div>
</section>

<section class="marketing-process" id="process">
    <div class="section-header">
        <h2>Our Marketing Process</h2>
        <p class="subtitle">A proven framework for digital marketing success</p>
    </div>
    
    <div class="process-container">
        <div class="process-item">
            <div class="process-number">01</div>
            <div class="process-content">
                <h3><i class="fas fa-compass"></i> Discovery & Research</h3>
                <p>Deep dive into your business, audience, competitors, and market trends. Identify opportunities and set clear, measurable goals aligned with your business objectives.</p>
                <div class="process-tags">
                    <span class="tag">Market Analysis</span>
                    <span class="tag">Competitor Research</span>
                    <span class="tag">Audience Insights</span>
                </div>
            </div>
        </div>
        
        <div class="process-item">
            <div class="process-number">02</div>
            <div class="process-content">
                <h3><i class="fas fa-lightbulb"></i> Strategy Development</h3>
                <p>Create a customized digital marketing roadmap. Define target personas, channels, messaging, budget allocation, and success metrics for maximum impact.</p>
                <div class="process-tags">
                    <span class="tag">Channel Selection</span>
                    <span class="tag">Content Strategy</span>
                    <span class="tag">Budget Planning</span>
                </div>
            </div>
        </div>
        
        <div class="process-item">
            <div class="process-number">03</div>
            <div class="process-content">
                <h3><i class="fas fa-rocket"></i> Campaign Launch</h3>
                <p>Execute multi-channel campaigns with precision. Create compelling content, optimize landing pages, set up tracking, and launch ads across selected platforms.</p>
                <div class="process-tags">
                    <span class="tag">Ad Creation</span>
                    <span class="tag">Content Production</span>
                    <span class="tag">Tracking Setup</span>
                </div>
            </div>
        </div>
        
        <div class="process-item">
            <div class="process-number">04</div>
            <div class="process-content">
                <h3><i class="fas fa-chart-line"></i> Monitor & Optimize</h3>
                <p>Continuously track performance metrics and optimize campaigns. A/B testing, bid adjustments, content refinement, and conversion rate optimization.</p>
                <div class="process-tags">
                    <span class="tag">A/B Testing</span>
                    <span class="tag">Performance Tracking</span>
                    <span class="tag">CRO</span>
                </div>
            </div>
        </div>
        
        <div class="process-item">
            <div class="process-number">05</div>
            <div class="process-content">
                <h3><i class="fas fa-file-alt"></i> Report & Scale</h3>
                <p>Deliver transparent reports with actionable insights. Analyze results, identify winning strategies, and scale successful campaigns for exponential growth.</p>
                <div class="process-tags">
                    <span class="tag">Monthly Reports</span>
                    <span class="tag">ROI Analysis</span>
                    <span class="tag">Scaling Strategy</span>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="why-choose">
    <div class="section-header">
        <h2>Why Choose IARDO for Digital Marketing?</h2>
        <p class="subtitle">Experience, expertise, and results that matter</p>
    </div>
    
    <div class="benefits-grid">
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-trophy"></i>
            </div>
            <h3>Proven Track Record</h3>
            <p>500+ successful campaigns delivering 300%+ average ROI. Our data-driven strategies consistently outperform industry benchmarks.</p>
        </div>
        
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-brain"></i>
            </div>
            <h3>Expert Team</h3>
            <p>Certified digital marketing specialists with expertise in SEO, PPC, social media, content, and analytics. Always learning, always innovating.</p>
        </div>
        
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-target"></i>
            </div>
            <h3>Custom Strategies</h3>
            <p>No cookie-cutter approaches. Every campaign is tailored to your unique business goals, audience, and market conditions.</p>
        </div>
        
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-chart-bar"></i>
            </div>
            <h3>Transparent Reporting</h3>
            <p>Real-time dashboards and detailed monthly reports. Track every metric, understand every dollar spent, see clear ROI.</p>
        </div>
        
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-sync-alt"></i>
            </div>
            <h3>Continuous Optimization</h3>
            <p>We don't set and forget. Ongoing testing, analysis, and refinement to maximize performance and stay ahead of trends.</p>
        </div>
        
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-handshake"></i>
            </div>
            <h3>Dedicated Support</h3>
            <p>Your success is our priority. Dedicated account manager, regular check-ins, and 24/7 support to keep your campaigns running smoothly.</p>
        </div>
    </div>
</section>

<section class="platforms">
    <div class="section-header">
        <h2>Marketing Platforms We Master</h2>
        <p class="subtitle">Expertise across all major digital marketing platforms</p>
    </div>
    
    <div class="platforms-grid">
        <div class="platform-card">
            <i class="fab fa-google"></i>
            <h4>Google Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-facebook"></i>
            <h4>Facebook Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-instagram"></i>
            <h4>Instagram</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-linkedin"></i>
            <h4>LinkedIn Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-youtube"></i>
            <h4>YouTube Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-twitter"></i>
            <h4>Twitter/X Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-tiktok"></i>
            <h4>TikTok Ads</h4>
        </div>
        <div class="platform-card">
            <i class="fab fa-google"></i>
            <h4>Google Analytics</h4>
        </div>
    </div>
</section>

<section class="cta">
    <div class="cta-background">
        <div class="cta-orb cta-orb-1"></div>
        <div class="cta-orb cta-orb-2"></div>
    </div>
    
    <div class="cta-content">
        <div class="cta-icon">
            <i class="fas fa-rocket"></i>
        </div>
        <h2>Ready to Dominate Your Digital Presence?</h2>
        <p>Get a free marketing audit and discover how we can 3x your ROI in 90 days. No obligations, just results-driven insights.</p>
        
        <div class="cta-buttons">
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta primary">
                <span>Get Free Marketing Audit</span>
                <i class="fas fa-calendar-check"></i>
            </a>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta secondary">
                <span>Schedule Consultation</span>
                <i class="fas fa-phone-alt"></i>
            </a>
        </div>
        
        <div class="cta-guarantee">
            <i class="fas fa-shield-alt"></i>
            <span>No long-term contracts • Cancel anytime • 30-day money-back guarantee</span>
        </div>
    </div>
</section>

<jsp:include page="../../../includes/footer/footer.jsp" />

<script src="${pageContext.request.contextPath}/services/quick-commerce/digital-marketing/app.js"></script>
</body>
</html>
