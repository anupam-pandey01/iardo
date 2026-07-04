<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("MMMM dd, yyyy");
    String currentDate = sdf.format(new Date());

    String[] categories = {
        "Web-Based Software", "Automation Software", "Ecommerce Solutions", "SaaS Platforms", "API Integration"
    };
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Custom Software Development Services | Build Business Solutions</title>
    <meta name="description" content="Get custom software development services to automate your business, improve efficiency, and scale with tailored solutions.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Space+Grotesk:wght@500;600;700;800&family=Playfair+Display:wght@700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        :root {
            /* Brand Colors for Custom Software */
            --gold: #F59E0B;           /* Adjusted Gold/Amber for light theme */
            --gold-dark: #D97706;
            --gold-light: #FBBF24;
            --accent-blue: #0284C7;    /* Adjusted Blue for light theme */
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc; /* Very light slate */
            --text-main: #0f172a; /* Pure dark for headings */
            --text-muted: #334155; /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #F59E0B, #0284C7);
        }

        body { 
            font-family: 'Inter', sans-serif; 
            background: var(--bg-color) !important; 
            color: var(--text-main) !important; 
            overflow-x: hidden; 
            line-height: 1.7;
            font-weight: 500; /* Increased base weight for bold look */
        }
        
        html { scroll-behavior: smooth; }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
        }
        @keyframes glow {
            0%, 100% { opacity: 0.3; }
            50% { opacity: 0.8; }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        /* Hero */
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
            top: -50%; left: -50%;
            width: 200%; height: 200%;
            background: repeating-linear-gradient(
                45deg, transparent, transparent 50px,
                rgba(245, 158, 11, 0.05) 50px, rgba(245, 158, 11, 0.05) 100px
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
            letter-spacing: -0.02em;
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
            display: block;
        }

        header h1::after {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: clamp(100px, 30%, 150px);
            height: 4px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent);
            animation: glow 2s ease-in-out infinite;
        }

        .section-header h2::after { display: none; }

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
            display: inline-flex;
            align-items: center;
            gap: 10px;
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
            border: none;
            cursor: pointer;
        }

        .cta-button:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 40px rgba(245, 158, 11, 0.4);
        }

        /* Filter Tabs */
        .filter-tabs {
            display: flex;
            gap: 1rem;
            padding: 2rem 1.5rem;
            overflow-x: auto;
            border-bottom: 1px solid var(--border-color);
            background: var(--section-bg) !important;
            justify-content: center;
            flex-wrap: wrap;
        }

        @media (max-width: 768px) {
            .filter-tabs { justify-content: flex-start; flex-wrap: nowrap; padding: 1.5rem 1rem; }
        }

        .filter-tabs::-webkit-scrollbar { height: 6px; }
        .filter-tabs::-webkit-scrollbar-track { background: transparent; }
        .filter-tabs::-webkit-scrollbar-thumb { background: var(--gold); border-radius: 10px; }

        .filter-tab {
            padding: 0.8rem 2rem;
            background: var(--card-bg) !important;
            border: 2px solid var(--border-color);
            border-radius: 50px;
            color: var(--text-muted) !important;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.4,0,0.2,1);
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

        /* Portfolio Gallery */
        .gallery {
            padding: 4rem 1.5rem;
            max-width: 1800px;
            margin: 0 auto;
            background: var(--bg-color) !important;
        }

        .masonry-grid { column-count: 4; column-gap: 2rem; }

        @media (max-width: 1400px) { .masonry-grid { column-count: 3; } }
        @media (max-width: 900px) { .masonry-grid { column-count: 2; column-gap: 1.5rem; } .gallery { padding: 2rem 1rem; } }
        @media (max-width: 600px) { .masonry-grid { column-count: 1; column-gap: 1rem; } }

        .gallery-item {
            break-inside: avoid;
            margin-bottom: 2rem;
            position: relative;
            border-radius: 20px;
            overflow: hidden;
            cursor: pointer;
            transition: all 0.6s cubic-bezier(0.4,0,0.2,1);
            background: var(--section-bg) !important;
            border: 1px solid var(--border-color);
        }

        .gallery-item.hidden { display: none; }

        .gallery-item::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(135deg, rgba(245, 158, 11, 0.1), rgba(2, 132, 199, 0.1));
            opacity: 0;
            transition: opacity 0.6s;
            z-index: 1;
        }

        .gallery-item:hover::before { opacity: 1; }
        
        .gallery-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            border-color: var(--gold);
        }

        @media (max-width: 900px) {
            .gallery-item:hover { transform: translateY(-5px); }
        }

        .gallery-item img { width: 100%; display: block; transition: transform 0.8s ease; }
        .gallery-item:hover img { transform: scale(1.08); }

        .gallery-overlay {
            position: absolute;
            bottom: 0; left: 0; right: 0;
            padding: 1.5rem;
            background: linear-gradient(to top, rgba(255,255,255,0.95) 0%, rgba(255,255,255,0.9) 70%, transparent 100%);
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.5s ease;
            z-index: 2;
        }

        .gallery-item:hover .gallery-overlay {
            opacity: 1;
            transform: translateY(0);
        }

        .project-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(1.1rem, 2.5vw, 1.4rem);
            font-weight: 800 !important;
            margin-bottom: 0.5rem;
            color: var(--text-main) !important;
        }

        .project-category {
            font-size: clamp(0.85rem, 2vw, 1rem);
            color: var(--accent-blue);
            margin-bottom: 0.5rem;
            font-weight: 700 !important;
            text-transform: uppercase;
            letter-spacing: 0.1em;
        }

        /* Section Global Styles */
        .cards-section {
            padding: 6rem 5%;
            position: relative;
        }

        .cards-section.dark { background: var(--section-bg) !important; border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }
        .cards-section.light { background: var(--bg-color) !important; }

        .section-header {
            text-align: center;
            margin-bottom: clamp(3rem, 8vw, 5rem);
            padding: 0 1rem;
        }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2rem, 5vw, 3.5rem);
            font-weight: 900 !important;
            margin-bottom: 1.5rem;
            color: var(--text-main) !important;
            line-height: 1.2;
        }

        .section-header p {
            color: var(--text-muted) !important;
            font-size: clamp(1.1rem, 2.5vw, 1.3rem);
            font-weight: 600 !important;
            max-width: 900px;
            margin: 0 auto;
            line-height: 1.8;
        }

        /* Services Grid */
        .cards-grid {
            display: grid;
            gap: 2.5rem;
            max-width: 1400px;
            margin: 0 auto;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        }

        @media (max-width: 600px) { .cards-grid { grid-template-columns: 1fr; gap: 1.5rem; } }

        .card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            padding: 3rem 2.5rem;
            text-align: center;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }
        
        .card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 5px;
            background: var(--gradient-primary);
            transform: scaleX(0);
            transition: 0.4s;
            transform-origin: left;
        }

        .card:hover::before { transform: scaleX(1); }

        .card:hover {
            transform: translateY(-10px);
            border-color: var(--gold);
            box-shadow: 0 20px 40px rgba(245, 158, 11, 0.15);
        }

        .card-icon {
            font-size: 3rem;
            margin-bottom: 1.5rem;
            display: inline-block;
            transition: transform 0.6s ease;
            position: relative;
            z-index: 1;
        }

        .card:hover .card-icon { transform: scale(1.2) rotate(10deg); }

        .card h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(1.3rem, 3vw, 1.6rem);
            font-weight: 800 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
            position: relative;
            z-index: 1;
        }

        .card p { 
            color: var(--text-muted) !important; 
            line-height: 1.8; 
            font-size: 1.05rem; 
            font-weight: 500 !important;
            position: relative; 
            z-index: 1; 
        }

        /* Process Timeline */
        .process-section {
            padding: clamp(4rem, 10vw, 8rem) 1.5rem;
            background: var(--bg-color) !important;
            position: relative;
            border-bottom: 1px solid var(--border-color);
        }

        .process-timeline {
            max-width: 1300px;
            margin: 0 auto;
            position: relative;
            padding: 2rem 0;
        }

        .process-timeline::before {
            content: '';
            position: absolute;
            left: 50%; top: 0; bottom: 0;
            width: 4px;
            background: var(--gradient-primary);
            transform: translateX(-50%);
        }

        @media (max-width: 768px) { .process-timeline::before { left: 30px; width: 3px; } }

        .timeline-item {
            display: flex;
            margin-bottom: clamp(3rem, 6vw, 6rem);
            position: relative;
            align-items: center;
        }

        .timeline-item:nth-child(even) { flex-direction: row-reverse; }

        @media (max-width: 768px) {
            .timeline-item, .timeline-item:nth-child(even) {
                flex-direction: row;
                padding-left: 60px;
            }
        }

        .timeline-content {
            width: 45%;
            padding: 2.5rem;
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            position: relative;
            transition: all 0.6s ease;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        @media (max-width: 768px) { .timeline-content { width: 100%; padding: 1.5rem; } }

        .timeline-content:hover {
            transform: translateY(-10px);
            border-color: var(--gold);
            box-shadow: 0 20px 40px rgba(245, 158, 11, 0.15);
        }

        .timeline-item:nth-child(even) .timeline-content { text-align: right; }
        @media (max-width: 768px) { .timeline-item:nth-child(even) .timeline-content { text-align: left; } }

        .timeline-marker {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            width: clamp(60px, 10vw, 80px);
            height: clamp(60px, 10vw, 80px);
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: clamp(1.5rem, 3vw, 2rem);
            font-weight: 900;
            color: white;
            z-index: 2;
            transition: all 0.6s ease;
            box-shadow: 0 0 0 8px var(--bg-color), 0 5px 20px rgba(245, 158, 11, 0.3);
            font-family: 'Space Grotesk', sans-serif;
        }

        @media (max-width: 768px) { .timeline-marker { left: 30px; transform: translateX(-50%); } }

        .timeline-item:hover .timeline-marker {
            transform: translateX(-50%) scale(1.15) rotate(10deg);
        }

        @media (max-width: 768px) { .timeline-item:hover .timeline-marker { left: 30px; } }

        .process-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
            display: inline-block;
            transition: transform 0.6s ease;
        }

        .timeline-content:hover .process-icon { transform: scale(1.2) rotate(-10deg); }

        .timeline-content h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(1.3rem, 3vw, 1.8rem);
            font-weight: 800 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
        }

        .timeline-content p { 
            color: var(--text-muted) !important; 
            line-height: 1.8; 
            font-size: 1.05rem; 
            font-weight: 500 !important;
        }

        .timeline-tags { margin-top: 1.5rem; display: flex; gap: 0.8rem; flex-wrap: wrap; }
        .timeline-item:nth-child(even) .timeline-tags { justify-content: flex-end; }
        @media (max-width: 768px) { .timeline-item:nth-child(even) .timeline-tags { justify-content: flex-start; } }

        .timeline-tag {
            padding: 0.5rem 1rem;
            background: rgba(245, 158, 11, 0.1);
            border: 1px solid rgba(245, 158, 11, 0.3);
            border-radius: 20px;
            font-size: 0.85rem;
            color: var(--gold-dark);
            font-weight: 700;
            transition: all 0.3s ease;
        }

        .timeline-tag:hover { background: var(--gold); color: white; transform: translateY(-3px); }

        /* Category Section */
        .category-section {
            padding: 6rem 5%;
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
        }

        .category-grid {
            display: grid;
            gap: 2rem;
            max-width: 1400px;
            margin: 0 auto;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        }

        @media (max-width: 600px) { .category-grid { grid-template-columns: 1fr; gap: 1.5rem; } }

        .category-card {
            position: relative;
            border-radius: 20px;
            overflow: hidden;
            cursor: pointer;
            transition: all 0.4s ease;
            border: 1px solid var(--border-color);
            height: 250px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.03);
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            border-color: var(--accent-blue);
        }

        .category-preview { width: 100%; height: 100%; object-fit: cover; transition: transform 0.8s ease; }
        .category-card:hover .category-preview { transform: scale(1.1); }

        .category-overlay {
            position: absolute;
            bottom: 0; left: 0; right: 0;
            padding: 1.5rem;
            background: linear-gradient(to top, rgba(255,255,255,0.95), rgba(255,255,255,0.7), transparent);
        }

        .category-name { 
            font-size: 1.3rem; 
            font-weight: 800 !important; 
            color: var(--text-main) !important; 
            margin-bottom: 0.3rem; 
            font-family: 'Space Grotesk', sans-serif; 
        }
        .category-count { font-size: 1rem; font-weight: 600 !important; color: var(--accent-blue); }

        /* Fade-in Animation Utility */
        .fade-in { opacity: 0; transform: translateY(40px); animation: fadeInUp 0.9s ease forwards; }
        
        /* Responsive adjustments */
        @media (max-width: 1024px) {
            .cards-grid { grid-template-columns: repeat(2, 1fr); }
        }

        @media (max-width: 768px) {
            header { padding: 6rem 1.5rem 4rem; }
            h1 { font-size: 3rem; }
            .subtitle { font-size: 1.1rem; }
            .cards-section, .process-section, .category-section { padding: 4rem 1.5rem; }
            .section-title { font-size: 2.2rem !important; }
            .cards-grid, .category-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <header>
        <div class="header-content">
            <h1>Custom Software <br><span>Development Services</span></h1>
            <p class="subtitle">Build Scalable Business Solutions Tailored to Your Needs</p>
            <p class="subtitle">We develop powerful, custom-built software to automate your operations, improve efficiency, and scale your business — designed specifically for how you work.</p>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-button">Get a Free Consultation <i class="fas fa-arrow-right"></i></a>
        </div>
    </header>

    <div class="filter-tabs">
        <div class="filter-tab active">All Projects</div>
        <% for (String category : categories) { %>
            <div class="filter-tab"><%= category %></div>
        <% } %>
    </div>

    <div class="gallery" id="gallery">
        <div class="masonry-grid">
            <%
                String[][] projects = {
                    {"CRM & ERP System", "https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=600&q=80", "Web-Based Software"},
                    {"Seller Onboarding Platform", "https://images.unsplash.com/photo-1551650975-87deedd944c3?w=600&q=80", "Ecommerce Solutions"},
                    {"Workflow Automation Tool", "https://images.unsplash.com/photo-1518186285589-2f7649de83e0?w=600&q=80", "Automation Software"},
                    {"SaaS Business Dashboard", "https://images.unsplash.com/photo-1557838923-2985c318be48?w=600&q=80", "SaaS Platforms"},
                    {"API Integration System", "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&h=400&q=80", "API Integration"},
                    {"Ecommerce Admin Panel", "https://images.unsplash.com/photo-1563013544-824ae1b704d3?w=600&q=80", "Ecommerce Solutions"},
                    {"Order & Inventory Tracker", "https://images.unsplash.com/photo-1586717791821-3f44a563fa4c?w=600&h=450&q=80", "Ecommerce Solutions"},
                    {"Business Analytics Dashboard", "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&q=80", "Web-Based Software"},
                    {"Task Management System", "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=600&h=420&q=80", "Automation Software"},
                    {"Marketplace Integration Tool", "https://images.unsplash.com/photo-1596003906949-67221c37965c?w=600&h=500&q=80", "Ecommerce Solutions"},
                    {"Process Automation Platform", "https://images.unsplash.com/photo-1559028012-481c04fa702d?w=600&q=80", "Automation Software"},
                    {"Custom SaaS Product", "https://images.unsplash.com/photo-1547658719-da2b51169166?w=600&h=480&q=80", "SaaS Platforms"},
                    {"REST API Development", "https://images.unsplash.com/photo-1558655146-9f40138edfeb?w=600&h=420&q=80", "API Integration"},
                    {"Admin Control Panel", "https://images.unsplash.com/photo-1561070791-2526d30994b5?w=600&h=450&q=80", "Web-Based Software"},
                    {"B2B Onboarding System", "https://images.unsplash.com/photo-1560472354-b33ff0c44a43?w=600&h=500&q=80", "Ecommerce Solutions"}
                };

                for (int i = 0; i < projects.length; i++) {
                    String title = projects[i][0];
                    String image = projects[i][1];
                    String category = projects[i][2];
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

    <section class="cards-section dark" id="services">
        <div class="section-header">
            <h2>Our Custom Software Development Services</h2>
            <p>End-to-end software solutions built to automate, scale, and grow your business</p>
        </div>
        <div class="cards-grid">
            <div class="card">
                <div class="card-icon">🖥️</div>
                <h3>Web-Based Software</h3>
                <p>Custom CRM &amp; ERP systems, business dashboards, and admin panels — built to streamline your operations and give you full control over your business data.</p>
            </div>
            <div class="card">
                <div class="card-icon">⚙️</div>
                <h3>Automation Software</h3>
                <p>Workflow automation, process automation, and task management systems that eliminate manual work, reduce errors, and help your team focus on high-value activities.</p>
            </div>
            <div class="card">
                <div class="card-icon">🛒</div>
                <h3>Ecommerce &amp; Onboarding Software</h3>
                <p>Seller onboarding systems, marketplace integration tools, and ecommerce automation platforms — built for businesses managing high-volume online operations.</p>
            </div>
            <div class="card">
                <div class="card-icon">🚀</div>
                <h3>SaaS Product Development</h3>
                <p>Custom SaaS platforms built from scratch with scalable architecture, multi-tenant support, and all the features your customers need to succeed.</p>
            </div>
            <div class="card">
                <div class="card-icon">🔌</div>
                <h3>API Development &amp; Integration</h3>
                <p>Custom REST/GraphQL API development and third-party integrations to connect your software with external platforms, payment gateways, and business tools.</p>
            </div>
            <div class="card">
                <div class="card-icon">🎯</div>
                <h3>Custom Business Platforms</h3>
                <p>Fully tailored business platforms and tools designed around your specific workflows, processes, and goals — built to grow with your business at every stage.</p>
            </div>
        </div>
    </section>

    <section class="process-section" id="process">
        <div class="section-header">
            <h2>Our Development Process</h2>
            <p>A structured, agile development process that delivers scalable and performance-driven solutions on time</p>
        </div>

        <div class="process-timeline">
            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">📋</div>
                    <h3>Requirement Analysis</h3>
                    <p>We deep-dive into your business goals, workflows, and pain points to fully understand what you need — ensuring every line of code serves a clear business purpose.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Business Goals</span>
                        <span class="timeline-tag">Workflow Mapping</span>
                        <span class="timeline-tag">Scope Definition</span>
                    </div>
                </div>
                <div class="timeline-marker">01</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🏗️</div>
                    <h3>Planning &amp; Architecture</h3>
                    <p>Technical planning, system architecture design, and technology stack selection — laying a solid foundation for a scalable, secure, and maintainable solution.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">System Design</span>
                        <span class="timeline-tag">Tech Stack</span>
                        <span class="timeline-tag">Scalability Planning</span>
                    </div>
                </div>
                <div class="timeline-marker">02</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🎨</div>
                    <h3>UI/UX Design</h3>
                    <p>Intuitive interface design with wireframes and prototypes — ensuring your software is not just functional but also easy to use for your team and customers.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Wireframing</span>
                        <span class="timeline-tag">Prototyping</span>
                        <span class="timeline-tag">User Testing</span>
                    </div>
                </div>
                <div class="timeline-marker">03</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">💻</div>
                    <h3>Development</h3>
                    <p>Agile development with regular updates and milestone reviews. We build your software with clean, well-documented code following industry best practices.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Agile Sprints</span>
                        <span class="timeline-tag">Code Reviews</span>
                        <span class="timeline-tag">Milestone Updates</span>
                    </div>
                </div>
                <div class="timeline-marker">04</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🧪</div>
                    <h3>Testing &amp; Optimization</h3>
                    <p>Rigorous QA testing including functional, security, and performance testing — to ensure your software is bug-free, fast, and ready for real-world usage at scale.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">QA Testing</span>
                        <span class="timeline-tag">Performance Testing</span>
                        <span class="timeline-tag">Security Audit</span>
                    </div>
                </div>
                <div class="timeline-marker">05</div>
            </div>

            <div class="timeline-item">
                <div class="timeline-content">
                    <div class="process-icon">🚀</div>
                    <h3>Deployment &amp; Support</h3>
                    <p>Smooth deployment to production, complete documentation handoff, and ongoing technical support — so your software keeps running at peak performance.</p>
                    <div class="timeline-tags">
                        <span class="timeline-tag">Production Deployment</span>
                        <span class="timeline-tag">Documentation</span>
                        <span class="timeline-tag">Ongoing Support</span>
                    </div>
                </div>
                <div class="timeline-marker">06</div>
            </div>
        </div>
    </section>

    <section class="cards-section light">
        <div class="section-header">
            <h2>Software for Ecommerce &amp; Onboarding Businesses</h2>
            <p>Custom software solutions that deliver measurable results — faster operations, better scalability, higher efficiency</p>
        </div>
        <div class="cards-grid">
            <div class="card">
                <div class="card-icon">📦</div>
                <h3>Automated Seller Onboarding</h3>
                <p>Custom onboardification process — reducing manual effort and onboarding sellers faster at scale.</p>
            </div>
            <div class="card">
                <div class="card-icon">🛍️</div>
                <h3>Ecommerce Management Systems</h3>
                <p>Centralized platforms to manage products, pricing, orders, and customers across multiple marketplaces — all from a single, easy-to-use dashboard.</p>
            </div>
            <div class="card">
                <div class="card-icon">📊</div>
                <h3>Order &amp; Inventory Tracking</h3>
                <p>Real-time order management and inventory tracking systems with automated alerts and reporting — eliminating stockouts and fulfillment errors.</p>
            </div>
            <div class="card">
                <div class="card-icon">🤖</div>
                <h3>Business Automation Tools</h3>
                <p>End-to-end automation for repetitive business tasks — from data entry and report generation to customer communication and workflow approvals.</p>
            </div>
            <div class="card">
                <div class="card-icon">📈</div>
                <h3>Faster Operations</h3>
                <p>Custom software eliminates inefficiencies and speeds up your core operations — helping your team do more in less time with fewer resources.</p>
            </div>
            <div class="card">
                <div class="card-icon">⚡</div>
                <h3>Scalable Growth</h3>
                <p>Built on scalable architecture, our solutions grow with your business — handling increased load, users, and data without performance degradation.</p>
            </div>
        </div>
    </section>

    <section class="category-section" id="categories">
        <div class="section-header">
            <h2>Browse by Solution Type</h2>
            <p>Explore our custom software solutions across different business categories</p>
        </div>
        <div class="category-grid">
            <%
                String[][] categoryData = {
                    {"Web-Based Software", "https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=300&h=200&q=80", "CRM, ERP, Admin Panels"},
                    {"Automation Software", "https://images.unsplash.com/photo-1518186285589-2f7649de83e0?w=300&h=200&q=80", "Workflow & Process Automation"},
                    {"Ecommerce Solutions", "https://images.unsplash.com/photo-1563013544-824ae1b704d3?w=300&h=200&q=80", "Onboarding & Marketplace Tools"},
                    {"SaaS Platforms", "https://images.unsplash.com/photo-1557838923-2985c318be48?w=300&h=200&q=80", "Custom SaaS Products"},
                    {"API Integration", "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=300&h=200&q=80", "API Development & Integrations"}
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
        // Filter functionality for portfolio gallery
        const filterTabs = document.querySelectorAll('.filter-tab');
        const galleryItems = document.querySelectorAll('.gallery-item');

        filterTabs.forEach(tab => {
            tab.addEventListener('click', function () {
                filterTabs.forEach(t => t.classList.remove('active'));
                this.classList.add('active');

                const filterText = this.textContent.trim();

                galleryItems.forEach(item => {
                    const itemCategory = item.getAttribute('data-category');
                    if (filterText === 'All Projects' || itemCategory === filterText) {
                        item.classList.remove('hidden');
                    } else {
                        item.classList.add('hidden');
                    }
                });

                document.getElementById('gallery').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });

        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });

        // Scroll animation observer
        const timelineItems = document.querySelectorAll('.timeline-item, .card, .category-card');
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
