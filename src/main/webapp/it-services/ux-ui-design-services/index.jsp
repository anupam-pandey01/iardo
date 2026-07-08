<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("MMMM dd, yyyy");
    String currentDate = sdf.format(new Date());
    
    String[] categories = {
        "Mobile App Design", "Web Design", "Dashboard UI", "E-commerce", "SaaS Platforms"
    };
%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>UI/UX Design Services | Website & App Design for Better Conversions</title>
    <meta name="description" content="Get professional UI/UX design services for websites and apps. Improve user experience, engagement, and conversions with expert design solutions.">
    <meta name="keywords" content="UI/UX design services, website design, app design, user interface, user experience, UI UX agency">
    
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Space+Grotesk:wght@500;600;700;800&family=Playfair+Display:wght@700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors for UI/UX */
            --gold: #F59E0B;           /* Adjusted Gold/Amber for light theme */
            --gold-dark: #D97706;
            --gold-light: #FBBF24;
            --accent-blue: #0284C7;    /* Adjusted Blue for light theme */
            --accent-purple: #7C3AED;
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light slate */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #F59E0B, #0284C7);
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-color) !important;
            color: var(--text-main) !important;
            overflow-x: hidden;
            line-height: 1.7;
            font-weight: 500; /* Increased base weight for bold look */
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Hero Section */
        header {
            padding: 8rem 2rem 6rem; /* Adjusted top padding to clear navbar */
            text-align: center;
            background: linear-gradient(135deg, #ffffff 0%, #fffbf0 100%) !important;
            position: relative;
            overflow: hidden;
            min-height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        header::before {
            content: '';
            position: absolute;
            top: -50%; left: -50%; width: 200%; height: 200%;
            background: repeating-linear-gradient(
                45deg,
                transparent,
                transparent 50px,
                rgba(245, 158, 11, 0.05) 50px,
                rgba(245, 158, 11, 0.05) 100px
            );
            animation: float 20s ease-in-out infinite;
            z-index: 0;
        }

        .header-content {
            position: relative;
            z-index: 2;
            max-width: 1400px;
            width: 100%;
            padding: 0 1rem;
        }

        h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.5rem, 8vw, 6rem);
            font-weight: 900 !important;
            letter-spacing: -0.05em;
            margin-bottom: 2rem;
            color: var(--text-main) !important;
            animation: fadeInUp 0.8s ease-out;
            line-height: 1.1;
            position: relative;
        }
        
        h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .subtitle {
            color: var(--text-muted) !important;
            font-size: clamp(1.1rem, 3vw, 1.4rem);
            font-weight: 600 !important;
            margin-bottom: 1.5rem;
            line-height: 1.8;
            max-width: 1000px;
            margin-left: auto;
            margin-right: auto;
            animation: fadeInUp 0.8s ease-out 0.3s backwards;
            padding: 0 1rem;
        }

        .cta-button {
            display: inline-block;
            margin-top: 2rem;
            padding: 1.2rem 3rem;
            background: var(--gradient-primary) !important;
            color: white !important;
            font-size: clamp(1rem, 2.5vw, 1.2rem);
            font-weight: 800 !important;
            text-decoration: none;
            border-radius: 50px;
            transition: all 0.4s ease;
            box-shadow: 0 10px 30px rgba(245, 158, 11, 0.3);
            animation: fadeInUp 0.8s ease-out 0.5s backwards;
            position: relative;
            overflow: hidden;
        }

        .cta-button:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 40px rgba(245, 158, 11, 0.4);
        }

        /* Filter Tabs */
        .filter-tabs {
            display: flex; gap: 1rem; padding: 2rem 1.5rem; overflow-x: auto;
            border-bottom: 1px solid var(--border-color);
            background: var(--section-bg) !important;
            justify-content: center; flex-wrap: wrap;
        }

        .filter-tab {
            padding: 0.8rem 2rem;
            background: var(--card-bg) !important;
            border: 2px solid var(--border-color);
            border-radius: 50px;
            color: var(--text-muted) !important;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            white-space: nowrap;
            font-weight: 700 !important;
            font-size: clamp(0.9rem, 2vw, 1.05rem);
            position: relative;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.02);
        }

        .filter-tab:hover, .filter-tab.active {
            background: var(--gradient-primary) !important;
            border-color: transparent;
            color: white !important;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(245, 158, 11, 0.3);
        }

        /* Gallery Section */
        .gallery {
            padding: 4rem 1.5rem; max-width: 1800px; margin: 0 auto;
            background: var(--bg-color) !important;
        }

        .masonry-grid { column-count: 4; column-gap: 2rem; }

        @media (max-width: 1400px) { .masonry-grid { column-count: 3; } }
        @media (max-width: 900px) { .masonry-grid { column-count: 2; column-gap: 1.5rem; } .gallery { padding: 2rem 1rem; } }
        @media (max-width: 600px) { .masonry-grid { column-count: 1; column-gap: 1rem; } }

        .gallery-item {
            break-inside: avoid; margin-bottom: 2rem; position: relative;
            border-radius: 20px; overflow: hidden; cursor: pointer;
            transition: all 0.6s cubic-bezier(0.4, 0, 0.2, 1);
            background: var(--section-bg) !important;
            border: 1px solid var(--border-color);
        }

        .gallery-item.hidden { display: none; }

        .gallery-item::before {
            content: ''; position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(135deg, rgba(245, 158, 11, 0.1), rgba(2, 132, 199, 0.1));
            opacity: 0; transition: opacity 0.6s; z-index: 1;
        }

        .gallery-item:hover::before { opacity: 1; }
        .gallery-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            border-color: var(--gold);
        }

        .gallery-item img { width: 100%; display: block; transition: transform 0.8s ease; }
        .gallery-item:hover img { transform: scale(1.08); }

        .gallery-overlay {
            position: absolute; bottom: 0; left: 0; right: 0; padding: 1.5rem;
            background: linear-gradient(to top, rgba(255,255,255,0.95) 0%, rgba(255,255,255,0.9) 70%, transparent 100%);
            opacity: 0; transform: translateY(30px); transition: all 0.5s ease; z-index: 2;
        }

        .gallery-item:hover .gallery-overlay { opacity: 1; transform: translateY(0); }

        .project-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(1.1rem, 2.5vw, 1.4rem);
            font-weight: 800 !important; margin-bottom: 0.5rem; color: var(--text-main) !important;
        }

        .project-category {
            font-size: clamp(0.85rem, 2vw, 1rem); color: var(--accent-blue);
            margin-bottom: 0.5rem; font-weight: 700 !important; text-transform: uppercase; letter-spacing: 0.1em;
        }

        /* Section Global Styles */
        section { padding: 6rem 2rem; max-width: 1400px; margin: 0 auto; position: relative; }

        .section-header { text-align: center; margin-bottom: clamp(3rem, 8vw, 5rem); padding: 0 1rem; }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2rem, 5vw, 3.5rem);
            font-weight: 900 !important; margin-bottom: 1.5rem; color: var(--text-main) !important;
            line-height: 1.2;
        }

        .section-header p {
            color: var(--text-muted) !important;
            font-size: clamp(1.1rem, 2.5vw, 1.3rem); font-weight: 600 !important;
            max-width: 900px; margin: 0 auto; line-height: 1.8;
        }

        /* Process Section */
        .process-section {
            padding: clamp(4rem, 10vw, 8rem) 1.5rem;
            background: var(--section-bg) !important;
            position: relative; border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color);
            max-width: 100% !important;
        }

        .process-timeline { max-width: 1300px; margin: 0 auto; position: relative; padding: 2rem 0; }

        .process-timeline::before {
            content: ''; position: absolute; left: 50%; top: 0; bottom: 0; width: 4px;
            background: var(--gradient-primary); transform: translateX(-50%);
        }

        @media (max-width: 768px) { .process-timeline::before { left: 30px; width: 3px; } }

        .timeline-item { display: flex; margin-bottom: clamp(3rem, 6vw, 6rem); position: relative; align-items: center; }
        .timeline-item:nth-child(even) { flex-direction: row-reverse; }

        @media (max-width: 768px) {
            .timeline-item, .timeline-item:nth-child(even) { flex-direction: row; padding-left: 60px; }
        }

        .timeline-content {
            width: 45%; padding: 2.5rem;
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px; position: relative; transition: all 0.6s ease; box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        @media (max-width: 768px) { .timeline-content { width: 100%; padding: 1.5rem; } }

        .timeline-content:hover {
            transform: translateY(-10px);
            border-color: var(--gold);
            box-shadow: 0 15px 40px rgba(245, 158, 11, 0.15);
        }

        .timeline-item:nth-child(even) .timeline-content { text-align: right; }
        @media (max-width: 768px) { .timeline-item:nth-child(even) .timeline-content { text-align: left; } }

        .timeline-marker {
            position: absolute; left: 50%; transform: translateX(-50%);
            width: clamp(60px, 10vw, 80px); height: clamp(60px, 10vw, 80px);
            background: var(--gradient-primary); border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: clamp(1.5rem, 3vw, 2rem); font-weight: 900; color: white;
            z-index: 2; transition: all 0.6s ease;
            box-shadow: 0 0 0 8px var(--bg-color), 0 5px 20px rgba(245, 158, 11, 0.3);
            font-family: 'Space Grotesk', sans-serif;
        }

        @media (max-width: 768px) { .timeline-marker { left: 30px; transform: translateX(-50%); } }

        .timeline-item:hover .timeline-marker {
            transform: translateX(-50%) scale(1.15) rotate(10deg);
        }
        @media (max-width: 768px) { .timeline-item:hover .timeline-marker { left: 30px; } }

        .process-icon { font-size: 3rem; margin-bottom: 1rem; display: inline-block; transition: transform 0.6s ease; }
        .timeline-content:hover .process-icon { transform: scale(1.2) rotate(-10deg); }

        .timeline-content h3 {
            font-family: 'Space Grotesk', sans-serif; font-size: 1.6rem; font-weight: 800 !important;
            margin-bottom: 1rem; color: var(--text-main) !important;
        }

        .timeline-content p { color: var(--text-muted) !important; line-height: 1.8; font-size: 1.05rem; font-weight: 500 !important; }

        .timeline-tags { margin-top: 1.5rem; display: flex; gap: 0.8rem; flex-wrap: wrap; }
        .timeline-item:nth-child(even) .timeline-tags { justify-content: flex-end; }
        @media (max-width: 768px) { .timeline-item:nth-child(even) .timeline-tags { justify-content: flex-start; } }

        .timeline-tag {
            padding: 0.5rem 1rem; background: rgba(245, 158, 11, 0.1); border: 1px solid rgba(245, 158, 11, 0.3);
            border-radius: 20px; font-size: 0.85rem; color: var(--gold-dark); font-weight: 700; transition: all 0.3s ease;
        }
        .timeline-tag:hover { background: var(--gold); color: white; transform: translateY(-3px); }

        /* After Process Section (Services) */
        .after-process-section { padding: 6rem 5%; background: var(--bg-color) !important; max-width: 100% !important; }
        
        .after-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 2.5rem; max-width: 1400px; margin: 0 auto; }

        .after-card {
            background: var(--card-bg) !important; border: 1px solid var(--border-color); border-radius: 25px;
            padding: 3rem 2.5rem; text-align: center; transition: all 0.4s ease; box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        .after-card:hover {
            transform: translateY(-10px); border-color: var(--gold);
            box-shadow: 0 20px 40px rgba(245, 158, 11, 0.15); background: var(--section-bg) !important;
        }

        .after-card-icon {
            font-size: 3.5rem; margin-bottom: 1.5rem; display: inline-block; transition: transform 0.6s ease;
        }

        .after-card:hover .after-card-icon { transform: scale(1.2) rotate(10deg); }

        .after-card h3 {
            font-family: 'Space Grotesk', sans-serif; font-size: 1.5rem; font-weight: 800 !important;
            margin-bottom: 1rem; color: var(--text-main) !important;
        }

        .after-card p { color: var(--text-muted) !important; line-height: 1.8; font-size: 1.05rem; font-weight: 500 !important; }

        /* Categories Section */
        .category-section { padding: 6rem 5%; background: var(--section-bg) !important; border-top: 1px solid var(--border-color); max-width: 100% !important;}
        .category-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2rem; max-width: 1400px; margin: 0 auto; }

        .category-card {
            position: relative; border-radius: 20px; overflow: hidden; cursor: pointer;
            transition: all 0.4s ease; border: 1px solid var(--border-color); height: 250px;
        }

        .category-card:hover {
            transform: translateY(-10px); box-shadow: 0 20px 40px rgba(0,0,0,0.1); border-color: var(--accent-blue);
        }

        .category-preview { width: 100%; height: 100%; object-fit: cover; transition: transform 0.8s ease; }
        .category-card:hover .category-preview { transform: scale(1.1); }

        .category-overlay {
            position: absolute; bottom: 0; left: 0; right: 0; padding: 1.5rem;
            background: linear-gradient(to top, rgba(255,255,255,0.95), rgba(255,255,255,0.7), transparent);
        }

        .category-name { font-size: 1.4rem; font-weight: 800 !important; color: var(--text-main) !important; margin-bottom: 0.3rem; font-family: 'Space Grotesk', sans-serif; }
        .category-count { font-size: 1rem; font-weight: 600 !important; color: var(--accent-blue); }

        /* Fade-in Animation Utility */
        .fade-in { opacity: 0; transform: translateY(40px); animation: fadeInUp 0.9s ease forwards; }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .after-grid, .category-grid { grid-template-columns: repeat(2, 1fr); }
        }

        @media (max-width: 768px) {
            header { padding: 6rem 1.5rem 4rem; }
            h1 { font-size: 3rem; }
            .subtitle { font-size: 1.1rem; }
            section { padding: 4rem 1.5rem; }
            .section-title { font-size: 2.2rem !important; }
            .after-grid, .category-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <header>
        <div class="header-content">
            <h1>UI/UX Design <span>Services</span></h1>
            <p class="subtitle">User-Centered & Conversion-Focused Design Solutions for Websites & Apps</p>
            <p class="subtitle">We create visually stunning, easy-to-use digital experiences that improve engagement, reduce bounce rates, and drive more conversions for your business.</p>
            <a href="/noon-onboarding/schedule-meeting/" class="cta-button">Get a Free Consultation ✨</a>
        </div>
    </header>

    <div class="filter-tabs">
        <div class="filter-tab active">All Designs</div>
        <% for (String category : categories) { %>
            <div class="filter-tab"><%= category %></div>
        <% } %>
    </div>

    <div class="gallery" id="gallery">
        <div class="masonry-grid">
            <%
                String[][] designs = {
                    {"Mobile Banking Dashboard", "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=600&q=80", "Mobile App Design"},
                    {"Task Management Platform", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&q=80", "SaaS Platforms"},
                    {"Analytics Dashboard", "https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=600&q=80", "Dashboard UI"},
                    {"Real Estate Mobile App", "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=600&q=80", "Mobile App Design"},
                    {"E-commerce Admin Panel", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&h=400&q=80", "E-commerce"},
                    {"Health & Wellness Dashboard", "https://images.unsplash.com/photo-1561070791-2526d30994b5?w=600&q=80", "Mobile App Design"},
                    {"Travel Booking Platform", "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&h=450&q=80", "Web Design"},
                    {"Social Media Feed Design", "https://images.unsplash.com/photo-1557838923-2985c318be48?w=600&q=80", "Mobile App Design"},
                    {"Project Management Interface", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&h=420&q=80", "SaaS Platforms"},
                    {"Contact Management System", "https://images.unsplash.com/photo-1596003906949-67221c37965c?w=600&h=500&q=80", "Dashboard UI"},
                    {"Finance Dashboard Theme", "https://images.unsplash.com/photo-1559028012-481c04fa702d?w=600&q=80", "Dashboard UI"},
                    {"Business Portal Interface", "https://images.unsplash.com/photo-1586717791821-3f44a563fa4c?w=600&h=480&q=80", "Web Design"},
                    {"Food Delivery Application", "https://images.unsplash.com/photo-1559028012-481c04fa702d?w=600&h=420&q=80", "Mobile App Design"},
                    {"Fitness Tracker Interface", "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=600&h=450&q=80", "Mobile App Design"},
                    {"E-learning Platform", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&h=500&q=80", "Dashboard UI"}
                };

                for (int i = 0; i < designs.length; i++) {
                    String title = designs[i][0];
                    String image = designs[i][1];
                    String category = designs[i][2];
            %>
            <div class="gallery-item" data-category="<%= category %>">
                <img src="<%= image %>" alt="<%= title %>">
                <div class="gallery-overlay">
                    <div class="project-category"><%= category %></div>
                    <div class="project-title"><%= title %></div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <section class="after-process-section" id="services">
        <div class="section-header">
            <h2>Our UI/UX Design Services</h2>
            <p>Complete design solutions to build digital experiences that convert visitors into customers.</p>
        </div>

        <div class="after-grid">
            <div class="after-card">
                <div class="after-card-icon">🖥️</div>
                <h3>User Interface Design</h3>
                <p>Modern and clean layouts for websites and apps — crafted for visual appeal, brand consistency, and seamless user interaction across all devices.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">🗺️</div>
                <h3>User Experience Design</h3>
                <p>User journey optimization, wireframing, and prototyping to ensure your product is intuitive, engaging, and easy to navigate for every type of user.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">📱</div>
                <h3>Website & App Design</h3>
                <p>Responsive website design, mobile app interface design, and landing page design — built to perform beautifully across all screens and platforms.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">🎯</div>
                <h3>Conversion-Focused Design</h3>
                <p>Lead generation optimization, strategic CTA placement, and targeted UI improvements to help you convert more visitors into paying customers.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">📐</div>
                <h3>Wireframing & Prototyping</h3>
                <p>Rapid wireframing and interactive prototyping to validate ideas early, reduce revision cycles, and get your product to market faster.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">📊</div>
                <h3>Usability Testing & Optimization</h3>
                <p>Real-user testing, heatmaps, and data-driven analysis to identify friction points and continuously improve your product's performance.</p>
            </div>
        </div>
    </section>

    <section class="process-section" id="process">
        <div class="section-header">
            <h2>Our UI/UX Design Process</h2>
            <p>A systematic, results-driven process that transforms your ideas into high-performing digital experiences.</p>
        </div>

        <div class="process-timeline">
            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">📋</div>
                    <h3>Requirement Analysis</h3>
                    <p>We start by understanding your business goals, target audience, and project requirements in detail — so every design decision is aligned with what you need to achieve.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Business Goals</span>
                        <span class="timeline-tag">Audience Analysis</span>
                        <span class="timeline-tag">Scope Definition</span>
                    </div>
                </div>
                <div class="timeline-marker">01</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🔍</div>
                    <h3>Research & Planning</h3>
                    <p>Deep dive into user behavior, competitor analysis, and market research. We create user personas and journey maps to build a strong strategic foundation for design.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">User Research</span>
                        <span class="timeline-tag">Competitor Analysis</span>
                        <span class="timeline-tag">Journey Mapping</span>
                    </div>
                </div>
                <div class="timeline-marker">02</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">✏️</div>
                    <h3>Wireframing</h3>
                    <p>We transform concepts into low-fidelity wireframes to define layout, structure, and user flows — before any visual design begins, saving time and reducing revisions.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Low-Fi Wireframes</span>
                        <span class="timeline-tag">User Flows</span>
                        <span class="timeline-tag">Information Architecture</span>
                    </div>
                </div>
                <div class="timeline-marker">03</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🎨</div>
                    <h3>UI Design</h3>
                    <p>High-fidelity visual design with attention to typography, color, spacing, and brand consistency. We create complete design systems for scalable, consistent interfaces.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">UI Design</span>
                        <span class="timeline-tag">Design Systems</span>
                        <span class="timeline-tag">Brand Guidelines</span>
                    </div>
                </div>
                <div class="timeline-marker">04</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🧪</div>
                    <h3>Testing & Optimization</h3>
                    <p>Usability testing with real users, A/B testing, and iterative refinement to ensure the design performs well and delivers the best possible user experience.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Usability Testing</span>
                        <span class="timeline-tag">A/B Testing</span>
                        <span class="timeline-tag">Iteration</span>
                    </div>
                </div>
                <div class="timeline-marker">05</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🚀</div>
                    <h3>Final Delivery</h3>
                    <p>Complete handoff with organized source files, developer specs, and documentation — ensuring pixel-perfect implementation and a smooth, on-time launch.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Source Files</span>
                        <span class="timeline-tag">Dev Handoff</span>
                        <span class="timeline-tag">Documentation</span>
                    </div>
                </div>
                <div class="timeline-marker">06</div>
            </div>
        </div>
    </section>

    <section class="after-process-section">
        <div class="section-header">
            <h2>UI/UX Design for Business Growth</h2>
            <p>Our design services deliver measurable results that directly impact your business performance.</p>
        </div>

        <div class="after-grid">
            <div class="after-card">
                <div class="after-card-icon">📈</div>
                <h3>Better User Engagement</h3>
                <p>Intuitive, visually appealing designs keep users on your platform longer, reduce bounce rates, and increase the time spent interacting with your product.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">💰</div>
                <h3>Higher Conversions</h3>
                <p>Conversion-focused UI layouts with strategic CTA placement and optimized user flows that turn more visitors into leads and paying customers.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">⚡</div>
                <h3>Improved Website Performance</h3>
                <p>Clean, optimized design improves page speed, accessibility, and overall digital performance — contributing to better SEO and user retention.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">🏆</div>
                <h3>Stronger Brand Perception</h3>
                <p>Professional, consistent design builds trust and credibility — making your brand look more authoritative and reliable to potential customers.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">🎯</div>
                <h3>More Leads & Sales</h3>
                <p>Data-driven design decisions aligned with your sales funnel help generate more qualified leads and directly increase revenue for your business.</p>
            </div>
            <div class="after-card">
                <div class="after-card-icon">🤝</div>
                <h3>End-to-End Support</h3>
                <p>From initial consultation to post-launch support — we stay with you throughout the process to ensure your design goals are fully achieved.</p>
            </div>
        </div>
    </section>

    <section class="category-section" id="categories">
        <div class="section-header">
            <h2>Browse by Category</h2>
            <p>Explore our curated collection of UI/UX design work across industries.</p>
        </div>

        <div class="category-grid">
            <%
                String[][] categoryData = {
                    {"Mobile App Design", "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=300&h=200&q=80", "7 designs"},
                    {"Web Design", "https://images.unsplash.com/photo-1547658719-da2b51169166?w=300&h=200&q=80", "2 designs"},
                    {"Dashboard UI", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=300&h=200&q=80", "4 designs"},
                    {"E-commerce", "https://images.unsplash.com/photo-1563013544-824ae1b704d3?w=300&h=200&q=80", "1 design"},
                    {"SaaS Platforms", "https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=300&h=200&q=80", "2 designs"}
                };

                for (String[] cat : categoryData) {
            %>
            <div class="category-card">
                <img src="<%= cat[1] %>" class="category-preview" alt="<%= cat[0] %>">
                <div class="category-overlay">
                    <div class="category-name"><%= cat[0] %></div>
                    <div class="category-count"><%= cat[2] %></div>
                </div>
            </div>
            <% } %>
        </div>
    </section>

    <script>
        const filterTabs = document.querySelectorAll('.filter-tab');
        const galleryItems = document.querySelectorAll('.gallery-item');
        
        filterTabs.forEach(tab => {
            tab.addEventListener('click', function() {
           this.classList.add('active');
                
                const filterText = this.textContent.trim();
                
                galleryItems.forEach(item => {
                    const itemCategory = item.getAttribute('data-category');
                    if (filterText === 'All Designs' || itemCategory === filterText) {
                        item.classList.remove('hidden');
                    } else {
                        item.classList.add('hidden');
                    }
                });
                
                document.getElementById('gallery').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });

        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });

        const timelineItems = document.querySelectorAll('.timeline-item, .fade-in');
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                    entry.target.style.animationPlayState = 'running';
                    observer.unobserve(entry.target);
                }
            });
        }, { threshold: 0.1 });

        timelineItems.forEach(item => {
            item.style.animationPlayState = 'paused';
            observer.observe(item);
        });
    </script>
    
    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>
