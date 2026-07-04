<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>Cloud Consulting Services | AWS, Azure & Google Cloud Solutions | IARDO</title>
    <meta name="description" content="Get expert cloud consulting services for AWS, Azure, and Google Cloud. Improve performance, reduce costs, and scale your business.">
    <meta name="keywords" content="cloud consulting services, AWS consulting, Azure consulting, Google Cloud partner, cloud migration, cloud architecture">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            /* Brand Colors for Cloud */
            --cyan: #0088cc;          /* Darker cyan for light theme */
            --blue: #0055ff;          /* Deep blue */
            --orange: #f97316;
            --gold: #eab308;
            
            /* Light Theme Variables */
            --bg-color: #ffffff;
            --section-bg: #f8fafc;    /* Very light slate */
            --text-main: #0f172a;     /* Pure dark for headings */
            --text-muted: #334155;    /* Dark gray for text */
            --border-color: rgba(0, 0, 0, 0.08);
            --card-bg: #ffffff;
            
            --gradient-primary: linear-gradient(135deg, #0088cc, #0055ff);
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: 'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            background: var(--bg-color) !important;
            color: var(--text-main) !important;
            line-height: 1.7;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-weight: 500; /* Increased base weight for bold look */
        }

        /* Hero Section */
        .hero {
            position: relative;
            min-height: 90vh;
            display: flex;
            align-items: center;
            overflow: hidden;
            padding-top: 8rem; /* Push content below navbar */
            background: linear-gradient(135deg, #ffffff 0%, #f0f7ff 100%) !important;
        }

        .hero-bg-image {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background: url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1600&q=80') center/cover;
            opacity: 0.1; /* Very light opacity for light theme */
            transition: opacity 0.5s ease, background-image 0.5s ease;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: 
                repeating-linear-gradient(90deg, transparent, transparent 40px, rgba(0, 136, 204, 0.03) 40px, rgba(0, 136, 204, 0.03) 41px),
                repeating-linear-gradient(0deg, transparent, transparent 40px, rgba(0, 136, 204, 0.03) 40px, rgba(0, 136, 204, 0.03) 41px);
            pointer-events: none;
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
            width: 100%;
            text-align: left;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.5rem, 4vw, 4.5rem);
            font-weight: 900 !important;
            color: var(--text-main) !important;
            letter-spacing: -0.02em;
            line-height: 1.15;
            margin-bottom: 1.5rem;
            animation: fadeInUp 1s ease-out;
            max-width: 850px;
        }
        
        .hero h1 span {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-subtitle {
            font-size: clamp(1.1rem, 2vw, 1.4rem);
            color: var(--text-muted) !important;
            font-weight: 600 !important;
            animation: fadeInUp 1s ease-out 0.2s backwards;
            max-width: 750px;
            letter-spacing: 0.02em;
            line-height: 1.8;
            margin-bottom: 2.5rem;
        }

        .hero-badges {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            animation: fadeInUp 1s ease-out 0.4s backwards;
        }

        .hero-badge {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            background: rgba(0, 136, 204, 0.08);
            border: 1px solid rgba(0, 136, 204, 0.3);
            padding: 0.6rem 1.5rem;
            border-radius: 50px;
            font-size: 0.95rem;
            font-weight: 700 !important;
            color: var(--cyan);
            letter-spacing: 0.05em;
        }

        /* Animation */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Section Base Styles */
        section {
            padding: 6rem 2rem;
            width: 100%;
            position: relative;
        }

        .section-container {
            max-width: 1400px;
            margin: 0 auto;
            width: 100%;
        }

        .section-title {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2rem, 4vw, 3.5rem);
            font-weight: 900 !important;
            margin-bottom: 3rem;
            letter-spacing: -0.03em;
            position: relative;
            display: inline-block;
            color: var(--text-main) !important;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -12px;
            left: 0;
            width: 60%;
            height: 4px;
            background: var(--gradient-primary);
        }

        /* What is Cloud Consulting */
        .what-is-cloud {
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
            position: relative;
            overflow: hidden;
        }

        .what-is-cloud::before {
            content: '';
            position: absolute;
            top: 50%; right: -200px;
            transform: translateY(-50%);
            width: 600px; height: 600px;
            background: radial-gradient(circle, rgba(0, 136, 204, 0.08) 0%, transparent 70%);
            pointer-events: none;
        }

        .what-grid {
            display: grid;
            grid-template-columns: 1.2fr 1fr;
            gap: 5rem;
            align-items: center;
        }

        .what-text p {
            font-size: 1.15rem;
            color: var(--text-muted) !important;
            font-weight: 500 !important;
            line-height: 1.9;
            margin-bottom: 1.5rem;
        }

        .what-text p strong {
            color: var(--text-main) !important;
            font-weight: 800 !important;
        }

        .what-highlights {
            display: flex;
            flex-direction: column;
            gap: 1.2rem;
        }

        .highlight-item {
            display: flex;
            align-items: center;
            gap: 1.5rem;
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            padding: 1.5rem;
            border-radius: 12px;
            transition: all 0.4s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.02);
        }

        .highlight-item:hover {
            border-color: var(--cyan);
            transform: translateX(8px);
            box-shadow: 0 8px 30px rgba(0, 136, 204, 0.15);
        }

        .highlight-icon {
            font-size: 1.8rem;
            min-width: 40px;
            text-align: center;
        }

        .highlight-text {
            font-size: 1.05rem;
            color: var(--text-main) !important;
            font-weight: 700 !important;
        }

        /* Our Expertise */
        .our-expertise {
            background: var(--bg-color) !important;
            position: relative;
            overflow: hidden;
        }

        .our-expertise::before {
            content: '';
            position: absolute;
            top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            width: 800px; height: 800px;
            background: radial-gradient(circle, rgba(0, 136, 204, 0.05) 0%, transparent 70%);
            pointer-events: none;
            animation: rotate 20s linear infinite;
        }

        @keyframes rotate {
            from { transform: translate(-50%, -50%) rotate(0deg); }
            to { transform: translate(-50%, -50%) rotate(360deg); }
        }

        .expertise-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem;
            margin-top: 2rem;
        }

        .expertise-card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            padding: 2.5rem 2rem;
            border-radius: 15px;
            text-align: center;
            transition: all 0.5s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.03);
        }

        .expertise-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(135deg, rgba(0, 136, 204, 0.05), transparent);
            opacity: 0;
            transition: opacity 0.5s ease;
        }

        .expertise-card:hover::before { opacity: 1; }

        .expertise-card:hover {
            transform: translateY(-10px);
            border-color: var(--cyan);
            box-shadow: 0 20px 50px rgba(0, 136, 204, 0.15);
        }

        .expertise-icon {
            width: 90px; height: 90px;
            margin: 0 auto 1.5rem;
            border-radius: 50%;
            overflow: hidden;
            border: 3px solid rgba(0, 136, 204, 0.2);
            transition: all 0.5s ease;
            position: relative;
        }

        .expertise-card:hover .expertise-icon {
            transform: scale(1.1) rotate(360deg);
            border-color: var(--cyan);
            box-shadow: 0 0 30px rgba(0, 136, 204, 0.3);
        }

        .expertise-icon img {
            width: 100%; height: 100%; object-fit: cover;
        }

        .expertise-card h3 {
            font-size: 1.4rem;
            font-weight: 800 !important;
            margin-bottom: 1rem;
            color: var(--text-main) !important;
        }

        .expertise-card p {
            color: var(--text-muted) !important;
            line-height: 1.7;
            font-size: 1rem;
            font-weight: 500 !important;
        }

        /* Services Section */
        .services-section {
            background: var(--section-bg) !important;
            border-top: 1px solid var(--border-color);
            position: relative;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2.5rem;
            margin-top: 3rem;
        }

        .service-card {
            background: var(--card-bg) !important;
            border: 1px solid var(--border-color);
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.4s ease;
            position: relative;
            box-shadow: 0 5px 15px rgba(0,0,0,0.03);
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(135deg, rgba(0, 136, 204, 0.05) 0%, transparent 100%);
            opacity: 0; transition: opacity 0.4s ease; z-index: 1; pointer-events: none;
        }

        .service-card:hover::before { opacity: 1; }

        .service-card:hover {
            transform: translateY(-10px);
            border-color: var(--cyan);
            box-shadow: 0 25px 60px rgba(0, 136, 204, 0.15);
        }

        .service-image {
            width: 100%; height: 220px;
            position: relative; overflow: hidden;
            background-size: cover; background-position: center;
            transition: transform 0.4s ease;
        }

        .service-card:nth-child(1) .service-image { background-image: url('https://images.unsplash.com/photo-1639322537228-f710d846310a?w=800&q=80'); }
        .service-card:nth-child(2) .service-image { background-image: url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&q=80'); }
        .service-card:nth-child(3) .service-image { background-image: url('https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&q=80'); }
        .service-card:nth-child(4) .service-image { background-image: url('https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=800&q=80'); }
        .service-card:nth-child(5) .service-image { background-image: url('https://images.unsplash.com/photo-1504868584819-f8e8b4b6d7e3?w=800&q=80'); }
        .service-card:nth-child(6) .service-image { background-image: url('https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&q=80'); }

        .service-content {
            padding: 2rem; position: relative; z-index: 2;
        }

        .service-label {
            font-size: 0.85rem; font-weight: 800 !important;
            letter-spacing: 0.15em; text-transform: uppercase;
            color: var(--cyan); margin-bottom: 0.8rem;
        }

        .service-title {
            font-family: 'Playfair Display', serif;
            font-size: 1.6rem; font-weight: 900 !important;
            margin-bottom: 1rem; line-height: 1.3;
            color: var(--text-main) !important;
        }

        .service-list { list-style: none; margin-top: 0.8rem; }
        .service-list li {
            color: var(--text-muted) !important;
            font-size: 1rem; font-weight: 600 !important;
            padding: 0.4rem 0 0.4rem 1.5rem; position: relative;
        }
        .service-list li::before {
            content: '▸'; position: absolute; left: 0; color: var(--cyan);
        }

        /* Workflow Timeline */
        .workflow-section { background: var(--bg-color) !important; position: relative; }

        .timeline {
            position: relative; margin-top: 4rem; display: flex; flex-direction: column; gap: 3rem;
        }

        .timeline-item {
            display: flex; gap: 2rem; align-items: flex-start;
            padding: 2.5rem; background: var(--card-bg) !important;
            border: 1px solid var(--border-color); border-radius: 16px;
            transition: all 0.4s ease; box-shadow: 0 5px 20px rgba(0,0,0,0.02);
        }

        .timeline-item:hover {
            border-color: var(--cyan); transform: translateX(10px);
            box-shadow: 0 15px 40px rgba(0, 136, 204, 0.15);
        }

        .timeline-icon {
            width: 70px; height: 70px; min-width: 70px;
            background: var(--gradient-primary); border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 1.8rem; font-weight: 800 !important; color: white;
            box-shadow: 0 10px 20px rgba(0, 136, 204, 0.3);
        }

        .timeline-content { flex: 1; }
        .timeline-content h3 { font-size: 1.6rem; font-weight: 800 !important; margin-bottom: 0.8rem; color: var(--text-main) !important; }
        .timeline-content p { color: var(--text-muted) !important; line-height: 1.7; font-size: 1.05rem; font-weight: 500 !important;}

        /* Why Choose Us */
        .why-choose-us { background: var(--section-bg) !important; border-top: 1px solid var(--border-color); position: relative; }
        .why-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 2rem; margin-top: 3rem; }

        .why-card {
            background: var(--card-bg) !important; border: 1px solid var(--border-color);
            padding: 3rem 2.5rem; border-radius: 15px; transition: all 0.4s ease;
            position: relative; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.02);
        }
        
        .why-card::before {
            content: ''; position: absolute; top: 0; left: 0; width: 100%; height: 4px;
            background: var(--gradient-primary); transform: scaleX(0); transition: 0.4s; transform-origin: left;
        }

        .why-card:hover::before { transform: scaleX(1); }

        .why-card:hover {
            transform: translateY(-10px); border-color: var(--cyan);
            box-shadow: 0 20px 50px rgba(0, 136, 204, 0.15);
        }

        .why-icon { font-size: 3rem; margin-bottom: 1.5rem; display: inline-block; }
        .why-card h3 { font-size: 1.4rem; font-weight: 800 !important; margin-bottom: 1rem; color: var(--text-main) !important; }
        .why-card p { color: var(--text-muted) !important; line-height: 1.7; font-size: 1rem; font-weight: 500 !important;}

        /* Digital Core Platform */
        .digital-core { background: var(--bg-color) !important; position: relative; }
        .core-content { display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: center; }

        .core-text h2 {
            font-family: 'Playfair Display', serif; font-size: clamp(2rem, 3.5vw, 3.2rem);
            font-weight: 900 !important; margin-bottom: 2rem; line-height: 1.2; color: var(--text-main) !important;
        }

        .core-text p { font-size: 1.15rem; color: var(--text-muted) !important; margin-bottom: 1.5rem; font-weight: 500 !important; line-height: 1.8; }

        .core-diagram { position: relative; height: 400px; display: flex; align-items: center; justify-content: center; }
        
        .circle {
            position: absolute; border-radius: 50%;
            border: 2px solid rgba(0, 136, 204, 0.2);
            display: flex; align-items: center; justify-content: center;
            background: rgba(0, 136, 204, 0.05); transition: all 0.4s ease;
        }

        .circle-1 { width: 100px; height: 100px; z-index: 4; background: var(--gradient-primary); border-color: var(--cyan); }
        .circle-2 { width: 180px; height: 180px; z-index: 3; }
        .circle-3 { width: 260px; height: 260px; z-index: 2; }
        .circle-4 { width: 340px; height: 340px; z-index: 1; }

        /* Benefits Cards */
        .benefits-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); gap: 2.5rem; margin-top: 3rem; }
        .benefit-card { background: var(--section-bg) !important; border: 1px solid var(--border-color); padding: 3rem; border-radius: 15px; transition: all 0.4s ease; box-shadow: 0 4px 15px rgba(0,0,0,0.02);}
        .benefit-card:hover { transform: translateY(-10px); border-color: var(--cyan); box-shadow: 0 20px 50px rgba(0, 136, 204, 0.15); background: var(--card-bg) !important;}
        .card-title { font-family: 'Playfair Display', serif; font-size: 1.8rem; font-weight: 800 !important; margin-bottom: 1.5rem; padding-bottom: 1.2rem; border-bottom: 2px solid rgba(0, 136, 204, 0.2); color: var(--text-main) !important; }
        .benefit-list { list-style: none; }
        .benefit-list li { padding: 0.8rem 0 0.8rem 2rem; position: relative; font-size: 1.05rem; color: var(--text-muted) !important; font-weight: 600 !important; }
        .benefit-list li::before { content: '▪'; position: absolute; left: 0; font-size: 1.5rem; color: var(--cyan); }

        /* Results Section */
        .results-section { background: var(--bg-color) !important; position: relative; }
        .results-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 2rem; margin-top: 3rem; }
        .result-card { background: var(--card-bg) !important; border: 1px solid var(--border-color); padding: 3rem 2rem; border-radius: 15px; text-align: center; transition: all 0.4s ease; box-shadow: 0 5px 15px rgba(0,0,0,0.02);}
        .result-card:hover { border-color: var(--cyan); transform: translateY(-8px); box-shadow: 0 20px 40px rgba(0, 136, 204, 0.15); }
        .result-icon { font-size: 3rem; margin-bottom: 1rem; }
        .result-card h3 { font-size: 1.3rem; font-weight: 800 !important; color: var(--text-main) !important; margin-bottom: 0.8rem; }
        .result-card p { font-size: 1rem; color: var(--text-muted) !important; font-weight: 500 !important;}

        /* Cloud Infrastructure Diagram */
        .infrastructure-diagram { background: var(--section-bg) !important; border-top: 1px solid var(--border-color); }
        .diagram-wrapper { margin-top: 4rem; }
        .infra-visual { display: flex; flex-direction: column; gap: 2rem; }
        .infra-layer { background: var(--card-bg) !important; border: 1px solid var(--border-color); padding: 2.5rem; border-radius: 15px; transition: all 0.4s ease; box-shadow: 0 4px 15px rgba(0,0,0,0.02); }
        .infra-layer:hover { border-color: var(--cyan); transform: scale(1.02); box-shadow: 0 15px 40px rgba(0, 136, 204, 0.15); }
        .layer-title { font-size: 1.4rem; font-weight: 800 !important; margin-bottom: 1.5rem; color: var(--cyan); text-align: center; }
        .layer-nodes { display: flex; justify-content: center; flex-wrap: wrap; gap: 1.5rem; }
        .node { background: rgba(0, 136, 204, 0.05); border: 1px solid rgba(0, 136, 204, 0.2); padding: 1rem 2rem; border-radius: 50px; font-weight: 700 !important; color: var(--text-main) !important; transition: all 0.3s ease; }
        .node:hover { background: rgba(0, 136, 204, 0.1); border-color: var(--cyan); transform: translateY(-5px); box-shadow: 0 10px 20px rgba(0, 136, 204, 0.2); }
        .connection-line { width: 4px; height: 30px; background: linear-gradient(180deg, var(--cyan), transparent); margin: 0 auto; }

        /* CTA Section */
        .cta-section { background: var(--gradient-primary) !important; text-align: center; position: relative; overflow: hidden; padding: 8rem 2rem; }
        .cta-content { position: relative; z-index: 1; max-width: 800px; margin: 0 auto; }
        .cta-content h2 { font-family: 'Playfair Display', serif; font-size: clamp(2.5rem, 5vw, 4.5rem); font-weight: 900 !important; margin-bottom: 1.5rem; color: white !important; }
        .cta-content p { font-size: 1.3rem; color: rgba(255,255,255,0.95) !important; font-weight: 600 !important; margin-bottom: 3rem; line-height: 1.8; }
        .cta-btn { display: inline-block; background: white !important; color: var(--blue) !important; font-size: 1.2rem; font-weight: 800 !important; padding: 1.2rem 3.5rem; border-radius: 50px; text-decoration: none; transition: all 0.4s ease; box-shadow: 0 10px 30px rgba(0,0,0,0.2); }
        .cta-btn:hover { transform: translateY(-5px); box-shadow: 0 15px 40px rgba(0,0,0,0.3); color: var(--text-main) !important;}

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero { padding-top: 7rem; min-height: 80vh;}
            .what-grid, .core-content { grid-template-columns: 1fr; gap: 3rem; text-align: center; }
            .core-diagram { order: -1; height: 350px;}
            .expertise-grid, .services-grid, .benefits-grid, .why-grid { grid-template-columns: repeat(2, 1fr); }
            .highlight-item { text-align: left; }
        }

        @media (max-width: 768px) {
            section { padding: 4rem 1.5rem; }
            .hero { padding-top: 6rem; min-height: 70vh;}
            .hero h1 { font-size: 2.8rem; }
            .section-title { font-size: 2.2rem !important; }
            .expertise-grid, .services-grid, .benefits-grid, .why-grid, .results-grid { grid-template-columns: 1fr; }
            .timeline-item { flex-direction: column; text-align: center; padding: 2rem 1.5rem; }
            .timeline-icon { margin: 0 auto 1rem; }
            .layer-nodes { flex-direction: column; align-items: stretch; }
            .node { text-align: center; }
            .cta-content h2 { font-size: 2.5rem !important; }
        }
    </style>
</head>
<body>
    <jsp:include page="../../includes/navbar/navbar.jsp" />

    <section class="hero">
        <div class="hero-bg-image"></div>
        <div class="hero-content">
            <h1>Cloud Consulting Services <br><span>Scalable &amp; Secure Cloud Solutions</span></h1>
            <p class="hero-subtitle">Transform your business with cloud-powered digital innovation. Move faster, spend less, and scale without limits on AWS, Azure &amp; Google Cloud.</p>
            <div class="hero-badges">
                <span class="hero-badge">☁️ Scalable Infrastructure</span>
                <span class="hero-badge">⚡ Faster Performance</span>
                <span class="hero-badge">🔒 Secure Data</span>
                <span class="hero-badge">💰 Reduced IT Costs</span>
            </div>
        </div>
    </section>

    <section class="what-is-cloud">
        <div class="section-container">
            <h2 class="section-title">What is Cloud Consulting?</h2>
            <div class="what-grid">
                <div class="what-text">
                    <p>Cloud consulting helps businesses <strong>move their operations, data, and applications</strong> to cloud platforms like AWS, Google Cloud, and Microsoft Azure. It improves scalability, performance, and security while reducing infrastructure costs.</p>
                    <p>With cloud solutions, businesses can operate more efficiently and scale without limitations — accessing computing power, storage, and intelligent services on demand. Whether you're migrating legacy systems or building cloud-native applications, our experts guide every step of your transformation.</p>
                    <p><strong>Cloud consulting helps businesses become faster, smarter, and more efficient.</strong> Companies with a strong, modern cloud-powered digital core benefit 2–4× more than their competitors.</p>
                </div>
                <div class="what-highlights">
                    <div class="highlight-item">
                        <span class="highlight-icon">☁️</span>
                        <span class="highlight-text">Scalable infrastructure that grows with your business</span>
                    </div>
                    <div class="highlight-item">
                        <span class="highlight-icon">⚡</span>
                        <span class="highlight-text">Faster performance and reduced latency</span>
                    </div>
                    <div class="highlight-item">
                        <span class="highlight-icon">🔒</span>
                        <span class="highlight-text">Secure data management and compliance</span>
                    </div>
                    <div class="highlight-item">
                        <span class="highlight-icon">💰</span>
                        <span class="highlight-text">Significantly reduced IT infrastructure costs</span>
                    </div>
                    <div class="highlight-item">
                        <span class="highlight-icon">🚀</span>
                        <span class="highlight-text">Flexible and remote access from anywhere</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our-expertise">
        <div class="section-container">
            <h2 class="section-title">Our Cloud Expertise</h2>
            <div class="expertise-grid">
                <div class="expertise-card">
                    <div class="expertise-icon">
                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Crect fill='%23FF9900' width='100' height='100'/%3E%3Ctext x='50' y='60' font-size='40' fill='white' text-anchor='middle' font-family='Arial,sans-serif' font-weight='bold'%3EAWS%3C/text%3E%3C/svg%3E" alt="AWS">
                    </div>
                    <h3>Amazon Web Services</h3>
                    <p>Certified AWS experts delivering scalable cloud solutions with deep expertise across the full AWS ecosystem</p>
                </div>
                <div class="expertise-card">
                    <div class="expertise-icon">
                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Crect fill='%230078D4' width='100' height='100'/%3E%3Ctext x='50' y='65' font-size='25' fill='white' text-anchor='middle' font-family='Arial,sans-serif' font-weight='bold'%3EAzure%3C/text%3E%3C/svg%3E" alt="Azure">
                    </div>
                    <h3>Microsoft Azure</h3>
                    <p>Enterprise-grade Azure cloud infrastructure, services, and seamless Microsoft 365 integration</p>
                </div>
                <div class="expertise-card">
                    <div class="expertise-icon">
                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Cdefs%3E%3ClinearGradient id='g' x1='0' y1='0' x2='100' y2='100' gradientUnits='userSpaceOnUse'%3E%3Cstop offset='0' stop-color='%234285F4'/%3E%3Cstop offset='33' stop-color='%23EA4335'/%3E%3Cstop offset='66' stop-color='%23FBBC04'/%3E%3Cstop offset='100' stop-color='%2334A853'/%3E%3C/linearGradient%3E%3C/defs%3E%3Crect fill='url(%23g)' width='100' height='100'/%3E%3Ctext x='50' y='60' font-size='30' fill='white' text-anchor='middle' font-family='Arial,sans-serif' font-weight='bold'%3EGCP%3C/text%3E%3C/svg%3E" alt="GCP">
                    </div>
                    <h3>Google Cloud Platform</h3>
                    <p>Advanced GCP solutions leveraging AI, BigQuery, and Kubernetes for modern applications</p>
                </div>
                <div class="expertise-card">
                    <div class="expertise-icon">
                        <img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Crect fill='%2300ADD8' width='100' height='100'/%3E%3Ctext x='50' y='65' font-size='22' fill='white' text-anchor='middle' font-family='Arial,sans-serif' font-weight='bold'%3EDocker%3C/text%3E%3C/svg%3E" alt="Docker">
                    </div>
                    <h3>Docker &amp; Kubernetes</h3>
                    <p>Container orchestration and microservices architecture for resilient, scalable deployments</p>
                </div>
            </div>
        </div>
    </section>

    <section class="services-section">
        <div class="section-container">
            <h2 class="section-title">Our Cloud Consulting Services</h2>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-image"></div>
                    <div class="service-content">
                        <div class="service-label">Migration</div>
                        <h3 class="service-title">Cloud Migration</h3>
                        <ul class="service-list">
                            <li>Move data &amp; applications to cloud</li>
                            <li>Legacy system migration</li>
                            <li>Zero downtime transition</li>
                        </ul>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-image"></div>
                    <div class="service-content">
                        <div class="service-label">Setup</div>
                        <h3 class="service-title">Cloud Setup &amp; Deployment</h3>
                        <ul class="service-list">
                            <li>AWS, Azure, Google Cloud setup</li>
                            <li>Server configuration</li>
                            <li>Hosting &amp; infrastructure setup</li>
                        </ul>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-iv class="service-content">
                        <div class="service-label">Optimization</div>
                        <h3 class="service-title">Cloud Optimization</h3>
                        <ul class="service-list">
                            <li>Cost optimization &amp; FinOps</li>
                            <li>Performance improvement</li>
                            <li>Resource management</li>
                        </ul>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-image"></div>
                    <div class="service-content">
                        <div class="service-label">Security</div>
                        <h3 class="service-title">Cloud Security</h3>
                        <ul class="service-list">
                            <li>Data protection &amp; encryption</li>
                            <li>Backup &amp; disaster recovery</li>
                            <li>Security configuration &amp; compliance</li>
                        </ul>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-image"></div>
                    <div class="service-content">
                        <div class="service-label">Ecommerce</div>
                        <h3 class="service-title">Cloud for Ecommerce</h3>
                        <ul class="service-list">
                            <li>Scalable ecommerce hosting</li>
                            <li>Seller onboarding system hosting</li>
                            <li>High-performance infrastructure</li>
                        </ul>
                    </div>
                </div>
                <div class="service-card">
                    <div class="service-image"></div>
                    <div class="service-content">
                        <div class="service-label">AI &amp; Automation</div>
                        <h3 class="service-title">Business Automation Systems</h3>
                        <ul class="service-list">
                            <li>Scalable infrastructure for automation</li>
                            <li>AI &amp; Gen AI workload hosting</li>
                            <li>High-performance application deployments</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="workflow-section">
        <div class="section-container">
            <h2 class="section-title">Our Cloud Consulting Process</h2>
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-icon"><span>1</span></div>
                    <div class="timeline-content">
                        <h3>Business Analysis</h3>
                        <p>Analyze current infrastructure, identify pain points, and understand your business goals and requirements</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-icon"><span>2</span></div>
                    <div class="timeline-content">
                        <h3>Cloud Strategy Planning</h3>
                        <p>Design comprehensive cloud architecture, select the optimal platform, and create a detailed migration roadmap</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-icon"><span>3</span></div>
                    <div class="timeline-content">
                        <h3>Migration &amp; Setup</h3>
                        <p>Execute seamless cloud migration and deployment with minimal downtime, ensuring full data integrity</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-icon"><span>4</span></div>
                    <div class="timeline-content">
                        <h3>Optimization</h3>
                        <p>Continuous performance tuning, cost management, and resource optimization for maximum efficiency</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-icon"><span>5</span></div>
                    <div class="timeline-content">
                        <h3>Security Implementation</h3>
                        <p>Deploy enterprise-grade security controls, compliance checks, and data protection measures</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-icon"><span>6</span></div>
                    <div class="timeline-content">
                        <h3>Ongoing Support</h3>
                        <p>24/7 expert monitoring, proactive support, and continuous improvements to keep your cloud running optimally</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="why-choose-us">
        <div class="section-container">
            <h2 class="section-title">Why Choose Us for Cloud Consulting?</h2>
            <div class="why-grid">
                <div class="why-card">
                    <div class="why-icon">☁️</div>
                    <h3>Multi-Cloud Expertise</h3>
                    <p>Certified specialists across AWS, Azure, and GCP delivering the right solution for your platform</p>
                </div>
                <div class="why-card">
                    <div class="why-icon">📈</div>
                    <h3>Business-Focused Solutions</h3>
                    <p>We align every cloud decision to your business goals — not just technology for technology's sake</p>
                </div>
                <div class="why-card">
                    <div class="why-icon">⚡</div>
                    <h3>Scalable Architecture</h3>
                    <p>Future-proof infrastructure designed to grow seamlessly with your business needs</p>
                </div>
                <div class="why-card">
                    <div class="why-icon">🔒</div>
                    <h3>Secure Implementation</h3>
                    <p>Bank-grade security with compliance to GDPR, HIPAA, SOC 2, and ISO standards</p>
                </div>
                <div class="why-card">
                    <div class="why-icon">🤝</div>
                    <h3>End-to-End Support</h3>
                    <p>From initial strategy through migration to 24/7 ongoing operations — we're with you every step</p>
                </div>
                <div class="why-card">
                    <div class="why-icon">💰</div>
                    <h3>Cost Optimization</h3>
                    <p>Average 40% reduction in cloud costs through intelligent resource management and FinOps practices</p>
                </div>
            </div>
        </div>
    </section>

    <section class="infrastructure-diagram">
        <div class="section-container">
            <h2 class="section-title">Cloud Infrastructure Architecture</h2>
            <div class="diagram-wrapper">
                <div class="infra-visual">
                    <div class="infra-layer">
                        <div class="layer-title">User Layer</div>
                        <div class="layer-nodes">
                            <div class="node">🖥️ Web Apps</div>
                            <div class="node">📱 Mobile</div>
                            <div class="node">💻 Desktop</div>
                        </div>
                    </div>
                    <div class="connection-line"></div>
                    <div class="infra-layer">
                        <div class="layer-title">Application Layer</div>
                        <div class="layer-nodes">
                            <div class="node">⚙️ Microservices</div>
                            <div class="node">🔄 APIs</div>
                            <div class="node">🎯 Load Balancer</div>
                        </div>
                    </div>
                    <div class="connection-line"></div>
                    <div class="infra-layer">
                        <div class="layer-title">Cloud Platform</div>
                        <div class="layer-nodes">
                            <div class="node">☁️ Compute</div>
                            <div class="node">💾 Storage</div>
                            <div class="node">🗄️ Database</div>
                        </div>
                    </div>
                    <div class="connection-line"></div>
                    <div class="infra-layer">
                        <div class="layer-title">Security &amp; Monitoring</div>
                        <div class="layer-nodes">
                            <div class="node">🔐 IAM</div>
                            <div class="node">🛡️ Firewall</div>
                            <div class="node">📊 Analytics</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="digital-core">
        <div class="section-container">
            <div class="core-content">
                <div class="core-text">
                    <h2>Why do you need a cloud-powered digital core?</h2>
                    <p>Building a modern Digital Core platform is pivotal for digital transformation. Companies with a strong, modern Digital Core platform powered by Cloud, Data and AI have benefited 2–4 times more than other companies.</p>
                    <p>A cloud-powered digital core enables new products, new revenue streams, and the agility to innovate faster — while reducing technical debt and operational costs.</p>
                </div>
                <div class="core-diagram">
                    <div class="circle circle-4"></div>
                    <div class="circle circle-3"></div>
                    <div class="circle circle-2"></div>
                    <div class="circle circle-1"></div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="section-container">
            <h2 class="section-title">Benefits of Cloud &amp; Digital Core Platform</h2>
            <div class="benefits-grid">
                <div class="benefit-card">
                    <h3 class="card-title">Business Transformation</h3>
                    <ul class="benefit-list">
                        <li>New products and services</li>
                        <li>New revenue streams and market expansion</li>
                        <li>Accelerated innovation cycles</li>
                        <li>Business model transformation</li>
                        <li>Better support for sustainability and Gen AI initiatives</li>
                    </ul>
                </div>
                <div class="benefit-card">
                    <h3 class="card-title">IT Modernisation</h3>
                    <ul class="benefit-list">
                        <li>Cost optimisation and FinOps</li>
                        <li>IT modernisation and tech debt reduction</li>
                        <li>Adopting emerging technologies</li>
                        <li>Agility and automation</li>
                        <li>Operational excellence</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="results-section">
        <div class="section-container">
            <h2 class="section-title">Our Results</h2>
            <div class="results-grid">
                <div class="result-card">
                    <div class="result-icon">🚀</div>
                    <h3>Improved Performance</h3>
                    <p>Faster load times and higher availability across all environments</p>
                </div>
                <div class="result-card">
                    <div class="result-icon">💰</div>
                    <h3>Reduced Costs</h3>
                    <p>Average 40% reduction in infrastructure and operational costs</p>
                </div>
                <div class="result-card">
                    <div class="result-icon">📈</div>
                    <h3>Better Scalability</h3>
                    <p>Infrastructure that scales on demand — no over-provisioning</p>
                </div>
                <div class="result-card">
                    <div class="result-icon">🔒</div>
                    <h3>Enhanced Security</h3>
                    <p>Enterprise-grade protection with full compliance coverage</p>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section">
        <div class="cta-content">
            <h2>Move Your Business to Cloud Today</h2>
            <p>Want to scale your business with cloud solutions? Talk to our experts for a free consultation and discover how we can transform your infrastructure.</p>
            <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="cta-btn">Get a Free Consultation</a>
        </div>
    </section>

    <jsp:include page="../../includes/footer/footer.jsp" />
</body>
</html>
