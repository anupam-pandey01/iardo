<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>D-Mart Vendor Onboarding Service in India | IARDO</title>
    <meta name="description" content="Expert D-Mart Vendor Onboarding Services across PAN India — vendor registration, documentation, product approval, supply chain setup & pricing strategy. Trusted by FMCG and grocery brands.">
    <link rel="canonical" href="${pageContext.request.contextPath}/Dmart">
    <meta property="og:title" content="D-Mart Vendor Onboarding Service in India | IARDO">
    <meta property="og:description" content="End-to-end D-Mart Vendor Onboarding across PAN India — vendor registration, documentation, product approval, supply chain setup.">
    <meta property="og:image" content="dmart-onboarding-services.png">
    <meta property="og:type" content="website">
    <meta property="og:url" content="${pageContext.request.contextPath}/Dmart">
    <meta name="twitter:card" content="summary_large_image">

    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@graph": [
        {
          "@type": "Organization",
          "@id": "https://iardo.in#org",
          "name": "IARDO",
          "url": "https://iardo.in",
          "description": "India's Top Ecommerce Enabler — marketplace, quick-commerce & retail onboarding services.",
          "address": {
            "@type": "PostalAddress",
            "streetAddress": "714-715, 7th Floor, Amba Tower, DC Chowk, Sec-9",
            "addressLocality": "Rohini",
            "addressRegion": "Delhi",
            "postalCode": "110085",
            "addressCountry": "IN"
          },
          "telephone": "+919310194865",
          "email": "info@iardo.in"
        },
        {
          "@type": "Service",
          "@id": "${pageContext.request.contextPath}/Dmart#service",
          "name": "D-Mart Vendor Onboarding Service",
          "serviceType": "D-Mart Vendor Onboarding",
          "description": "End-to-end D-Mart vendor onboarding services across PAN India — vendor registration, documentation, product approval, supply chain setup, and pricing strategy.",
          "provider": { "@id": "https://iardo.in#org" },
          "areaServed": { "@type": "Country", "name": "India" }
        },
        {
          "@type": "FAQPage",
          "mainEntity": [
            {
              "@type": "Question",
              "name": "What is D-Mart Vendor Onboarding?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "D-Mart Vendor Onboarding is the structured process of becoming an approved supplier with D-Mart — India's leading value-retail chain. The process covers Expression of Interest, brand evaluation, documentation, commercial negotiation, ERP integration, and operational go-live."
              }
            },
            {
              "@type": "Question",
              "name": "How long does D-Mart Vendor Onboarding take?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "Typical onboarding timeline is 2-3 months, and may extend up to 180 working days depending on category fitment, documentation readiness, and D-Mart's internal evaluation process."
              }
            },
            {
              "@type": "Question",
              "name": "What documents are required for D-Mart vendor onboarding?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "Trademark certificate or application, business GST registration certificate, PAN card, cancelled cheque or bank statement, brand deck, Udyam or MSME certificate, website link, and (optionally) identity proof such as Aadhaar, driving licence, or passport."
              }
            },
            {
              "@type": "Question",
              "name": "How much does D-Mart Vendor Onboarding cost?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "D-Mart Vendor Onboarding pricing is customised based on category, scope, and your existing readiness. Contact IARDO for a tailored quote. Travel expenses for the IARDO team (if any) are charged at actuals."
              }
            },
            {
              "@type": "Question",
              "name": "Who can become a D-Mart vendor?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "FMCG brands, grocery and packaged food manufacturers, personal care and home product brands, organic and health food companies, and bulk-suitable D2C brands are ideal candidates for D-Mart vendor onboarding."
              }
            },
            {
              "@type": "Question",
              "name": "What commission does D-Mart charge vendors?",
              "acceptedAnswer": {
                "@type": "Answer",
                "text": "D-Mart determines commission and trade margins based on product category, brand strength, and commercial negotiations. There is no fixed published rate — terms are agreed during the contracting stage of onboarding."
              }
            }
          ]
        }
      ]
    }
    </script>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* =================================================================
           D-MART ONBOARDING PAGE STYLES - LIGHT THEME (TEXT VISIBILITY FIXED)
        ================================================================= */
        :root {
            --dmart-green: #0B6F3A;
            --dmart-dark-green: #085A2E;
            --dmart-light-green: #0D8645;
            --dmart-accent-green: #10A04F;
            --dmart-bright-green: #12B559;
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --bg-card: #ffffff;
            --bg-elevated: #f1f5f9;
            --bg-green-light: #f0fdf4;
            --text-dark: #0f172a;
            --text-gray: #334155;
            --border-color: #e2e8f0;
            --font-main: 'Poppins', sans-serif;
        }

        .dmart-page-wrapper {
            font-family: var(--font-main) !important;
            background: var(--bg-primary) !important;
            color: var(--text-dark) !important;
            line-height: 1.7;
            overflow-x: hidden;
            font-weight: 500;
            -webkit-font-smoothing: antialiased;
        }

        .dmart-page-wrapper * { box-sizing: border-box; }

        .dmart-page-wrapper h1,
        .dmart-page-wrapper h2,
        .dmart-page-wrapper h3,
        .dmart-page-wrapper h4 {
            font-family: var(--font-main) !important;
            font-weight: 900 !important;
            color: #0f172a !important;
            line-height: 1.2;
        }

        .dmart-page-wrapper p { color: #334155 !important; font-weight: 600 !important; }

        /* =========================================
           HERO SECTION
        ========================================= */
        .dmart-hero {
            min-height: 85vh;
            background: linear-gradient(135deg, #ffffff 0%, #f0fdf4 100%) !important;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            padding-top: 120px;
            border-bottom: 1px solid var(--border-color);
        }

        .dmart-hero::before {
            content: '';
            position: absolute;
            width: 800px; height: 800px;
            background: radial-gradient(circle, rgba(18, 181, 89, 0.08), transparent 70%);
            border-radius: 50%;
            top: -300px; right: -200px;
            animation: pulse 8s infinite ease-in-out;
            pointer-events: none;
        }

        .dmart-hero-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 2rem 2rem 4rem;
            display: grid;
            grid-template-columns: 1.2fr 1fr;
            gap: 4rem;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        .dmart-hero-content h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            margin-bottom: 1.5rem;
            letter-spacing: -1px;
            color: #0f172a !important;
        }

        .animated-heading .word {
            display: inline-block;
            opacity: 0;
            transform: translateY(30px);
            animation: slideUp 0.6s ease forwards;
            color: #0f172a !important;
        }

        .animated-heading .word-highlight {
            display: inline-block;
            opacity: 0;
            transform: scale(0.8);
            background: linear-gradient(135deg, var(--dmart-green), var(--dmart-bright-green)) !important;
            -webkit-background-clip: text !important;
            -webkit-text-fill-color: transparent !important;
            background-clip: text !important;
            animation: popIn 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55) forwards;
        }

        @keyframes slideUp { to { opacity: 1; transform: translateY(0); } }
        @keyframes popIn {
            0% { opacity: 0; transform: scale(0.8) rotate(-5deg); }
            70% { transform: scale(1.05) rotate(2deg); }
            100% { opacity: 1; transform: scale(1) rotate(0deg); }
        }

        .animated-heading .word:nth-child(1) { animation-delay: 0.1s; }
        .animated-heading .word:nth-child(2) { animation-delay: 0.2s; }
        .animated-heading .word:nth-child(3) { animation-delay: 0.3s; }
        .animated-heading .word:nth-child(4) { animation-delay: 0.4s; }
        .animated-heading .word:nth-child(5) { animation-delay: 0.5s; }
        .animated-heading .word:nth-child(6) { animation-delay: 0.6s; }
        .animated-heading .word:nth-child(7) { animation-delay: 0.7s; }
        .animated-heading .word:nth-child(8) { animation-delay: 0.8s; }
        .animated-heading .word-highlight:nth-child(9) { animation-delay: 0.9s; }

        .dmart-hero-content p {
            font-size: 1.15rem;
            margin-bottom: 2.5rem;
            line-height: 1.8;
            color: #334155 !important;
        }

        .dmart-hero-content p span.highlight {
            color: var(--dmart-green) !important;
            font-weight: 800 !important;
        }

        .dmart-hero-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
            margin-bottom: 3rem;
        }

        .stat-item {
            background: var(--bg-card);
            border: 2px solid var(--border-color);
            border-radius: 12px;
            padding: 15px;
            text-align: center;
            min-height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
        }

        .stat-item:hover {
            transform: translateY(-5px);
            border-color: var(--dmart-green);
            background: var(--bg-green-light);
        }

        .stat-number {
            font-size: 1.05rem;
            font-weight: 800 !important;
            color: #0f172a !important;
            line-height: 1.4;
            transition: color 0.3s ease;
            display: block;
        }

        .stat-item:hover .stat-number { color: var(--dmart-green) !important; }

        .dmart-hero-buttons {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 1.2rem 2.5rem;
            border-radius: 50px;
            font-weight: 800 !important;
            font-size: 1.1rem;
            text-decoration: none;
            transition: all 0.4s;
            display: inline-flex;
            align-items: center;
            gap: 0.8rem;
            border: none;
            cursor: pointer;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--dmart-green), var(--dmart-light-green)) !important;
            color: #ffffff !important;
            box-shadow: 0 8px 25px rgba(11,111,58,0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 35px rgba(11,111,58,0.5);
        }

        .btn-secondary {
            background: var(--bg-card) !important;
            color: var(--dmart-green) !important;
            border: 2px solid var(--dmart-green) !important;
        }

        .btn-secondary:hover {
            background: var(--dmart-green) !important;
            color: #ffffff !important;
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(11,111,58,0.2);
        }

        .dmart-hero-image img {
            width: 100%;
            border-radius: 25px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
            border: 5px solid #ffffff;
            animation: float-image 6s infinite ease-in-out;
        }

        @keyframes float-image {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-15px); }
        }

        /* =========================================
           TRUST BADGES
        ========================================= */
        .trust-badges {
            background: var(--bg-green-light);
            padding: 2.5rem 2rem;
            text-align: center;
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
        }

        .badges-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-around;
            align-items: center;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .badge {
            display: flex;
            align-items: center;
            gap: 0.8rem;
            font-weight: 800 !important;
            color: #0f172a !important;
            font-size: 1.1rem;
        }

        .badge-icon { font-size: 2.2rem; color: var(--dmart-green); }

        /* =========================================
           SECTION GLOBALS
        ========================================= */
        .dmart-page-wrapper section { padding: 6rem 2rem; position: relative; }

        .section-header {
            text-align: center;
            max-width: 900px;
            margin: 0 auto 4rem;
        }

        .section-header h2 {
            font-size: clamp(2.2rem, 4vw, 3.5rem);
            margin-bottom: 1rem;
            color: #0f172a !important;
        }

        .section-header .subtitle {
            font-size: 1.2rem;
            color: var(--dmart-green) !important;
            font-weight: 800 !important;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .intro-text {
            max-width: 1000px;
            margin: 0 auto 4rem;
            text-align: center;
        }

        .intro-text p {
            font-size: 1.15rem;
            line-height: 1.8;
            font-weight: 600 !important;
            color: #334155 !important;
        }

        /* =========================================
           FEATURES / SERVICES GRID
        ========================================= */
        .why-choose { background: var(--bg-primary); }

        .features-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2.5rem;
        }

        .feature-card {
            background: var(--bg-card);
            padding: 2.5rem;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border-color);
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 4px;
            background: linear-gradient(90deg, var(--dmart-green), var(--dmart-bright-green));
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.4s ease;
        }

        .feature-card:hover::before { transform: scaleX(1); }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(11,111,58,0.15);
            border-color: var(--dmart-green);
        }

        .feature-icon {
            width: 75px; height: 75px;
            background: rgba(11,111,58,0.1);
            border-radius: 15px;
            display: flex; align-items: center; justify-content: center;
            font-size: 2.2rem;
            margin-bottom: 1.5rem;
            color: var(--dmart-green);
            transition: all 0.4s ease;
        }

        .feature-card:hover .feature-icon {
            transform: scale(1.1) rotate(5deg);
            background: var(--dmart-green);
            color: white;
            box-shadow: 0 8px 20px rgba(11,111,58,0.2);
        }

        .feature-card h3 { font-size: 1.4rem; margin-bottom: 1rem; color: #0f172a !important; }
        .feature-card p { color: #334155 !important; }

        /* =========================================
           PROCESS STEPS SECTION
        ========================================= */
        .process-section { background: var(--bg-secondary); border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }

        .process-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .process-card {
            background: var(--bg-card);
            padding: 2rem;
            border-radius: 18px;
            border: 1px solid var(--border-color);
            position: relative;
            transition: all 0.4s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
        }

        .process-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 35px rgba(11,111,58,0.12);
            border-color: var(--dmart-green);
        }

        .process-card .step-number {
            width: 46px; height: 46px;
            background: var(--dmart-green);
            color: #fff;
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 1.1rem;
            font-weight: 900 !important;
            margin-bottom: 1rem;
            flex-shrink: 0;
        }

        .process-card h3 { font-size: 1.15rem; margin-bottom: 0.6rem; color: #0f172a !important; }
        .process-card p { font-size: 0.95rem; color: #334155 !important; margin: 0; }

        /* =========================================
           DOCUMENTS TABLE
        ========================================= */
        .docs-section { background: var(--bg-primary); }

        .docs-table-wrap {
            max-width: 900px;
            margin: 0 auto;
            border: 1px solid var(--border-color);
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0,0,0,0.06);
        }

        .docs-table { width: 100%; border-collapse: collapse; font-size: 1rem; background: #fff; }

        .docs-table th {
            background: var(--dmart-green);
            color: #fff;
            text-align: left;
            padding: 14px 20px;
            font-weight: 800 !important;
            font-size: 0.95rem;
            letter-spacing: 0.04em;
            text-transform: uppercase;
        }

        .docs-table td {
            padding: 14px 20px;
            border-top: 1px solid var(--border-color);
            vertical-align: top;
            color: #334155 !important;
            font-weight: 600 !important;
        }

        .docs-table tr:nth-child(even) td { background: #f8fafc; }

        .docs-table td:first-child { font-weight: 700 !important; color: #0f172a !important; }

        .badge-yes {
            display: inline-block;
            background: #dcfce7;
            color: var(--dmart-dark-green);
            font-weight: 800 !important;
            font-size: 0.85rem;
            padding: 3px 12px;
            border-radius: 50px;
        }

        .badge-opt {
            display: inline-block;
            background: #fef9c3;
            color: #854d0e;
            font-weight: 800 !important;
            font-size: 0.85rem;
            padding: 3px 12px;
            border-radius: 50px;
        }

        /* =========================================
           WHO BENEFITS SECTION
        ========================================= */
        .who-benefits { background: var(--bg-secondary); border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }

        .benefits-grid {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
        }

        .benefit-card {
            background: var(--bg-card);
            padding: 3rem 2rem;
            border-radius: 20px;
            text-align: center;
            border: 1px solid var(--border-color);
            transition: all 0.4s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
        }

        .benefit-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 40px rgba(11,111,58,0.15);
            border-color: var(--dmart-green);
        }

        .benefit-icon { font-size: 3.5rem; margin-bottom: 1.5rem; display: block; color: var(--dmart-green); }
        .benefit-card h4 { font-size: 1.4rem; margin-bottom: 1rem; color: #0f172a !important; }
        .benefit-card p { color: #334155 !important; }

        /* =========================================
           FAQ SECTION
        ========================================= */
        .faq-section { background: var(--bg-primary); }

        .faq-wrap { max-width: 900px; margin: 0 auto; }

        .faq-item {
            background: var(--bg-card);
            border: 1px solid var(--border-color);
            border-radius: 14px;
            margin-bottom: 14px;
            overflow: hidden;
        }

        .faq-item summary {
            cursor: pointer;
            list-style: none;
            padding: 20px 56px 20px 22px;
            position: relative;
            font-weight: 700 !important;
            font-size: 1.05rem;
            color: #0f172a !important;
        }

        .faq-item summary::-webkit-details-marker { display: none; }

        .faq-item summary::after {
            content: "+";
            position: absolute;
            right: 22px; top: 50%;
            transform: translateY(-50%);
            font-size: 1.8rem;
            font-weight: 400;
            color: var(--dmart-green);
            line-height: 1;
            transition: transform 0.2s ease;
        }

        .faq-item[open] summary::after { content: "\2212"; color: var(--dmart-dark-green); }
        .faq-item[open] summary { color: var(--dmart-dark-green) !important; }

        .faq-answer {
            padding: 0 22px 22px;
            color: #334155 !important;
            font-size: 0.98rem;
            line-height: 1.7;
            font-weight: 600 !important;
        }

        /* =========================================
           TRUST SECTION
        ========================================= */
        .trust-section { background: var(--bg-secondary); border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color); }

        .trust-grid {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 2.5rem;
        }

        .trust-item {
            text-align: center;
            padding: 2.5rem 2rem;
            background: var(--bg-card);
            border-radius: 20px;
            border: 2px solid var(--border-color);
            transition: all 0.3s ease;
        }

        .trust-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(11,111,58,0.08);
            border-color: var(--dmart-green);
            background: var(--bg-green-light);
        }

        .trust-item h4 { font-size: 1.3rem; color: var(--dmart-green) !important; margin-bottom: 1rem; }
        .trust-item p { color: #334155 !important; }

        /* =========================================
           WARNING / NOTE BOX
        ========================================= */
        .warning-note {
            max-width: 900px;
            margin: 2rem auto 0;
            padding: 18px 22px;
            border-radius: 14px;
            background: #f0fdf4;
            border: 1px solid #bbf7d0;
            display: flex;
            align-items: flex-start;
            gap: 14px;
        }

        .warning-note .wn-icon { font-size: 1.4rem; flex-shrink: 0; margin-top: 2px; }
        .warning-note .wn-text { font-size: 0.98rem; color: #334155 !important; line-height: 1.6; font-weight: 600 !important; }
        .warning-note .wn-text strong { color: var(--dmart-dark-green) !important; }

        /* =========================================
           CTA SECTION
        ========================================= */
        .cta {
            padding: 7rem 2rem;
            background: linear-gradient(135deg, var(--dmart-green), var(--dmart-dark-green)) !important;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .cta::before {
            content: '';
            position: absolute;
            width: 500px; height: 500px;
            background: rgba(255,255,255,0.05);
            border-radius: 50%;
            top: -200px; right: -100px;
            pointer-events: none;
        }

        .cta-content { max-width: 900px; margin: 0 auto; position: relative; z-index: 2; }

        .cta h2 {
            font-size: clamp(2.2rem, 4vw, 3.5rem);
            color: #ffffff !important;
            margin-bottom: 1.5rem;
        }

        .cta p {
            font-size: 1.25rem;
            color: rgba(255,255,255,0.9) !important;
            margin-bottom: 3rem;
            font-weight: 600 !important;
        }

        .btn-cta {
            background: #ffffff !important;
            color: var(--dmart-green) !important;
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 800 !important;
            text-decoration: none;
            transition: all 0.4s ease;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            display: inline-flex;
            align-items: center;
            gap: 1rem;
            border: none;
            margin: 0.5rem;
        }

        .btn-cta:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }

        .btn-cta-outline {
            background: transparent !important;
            color: #ffffff !important;
            padding: 1.2rem 3rem;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 800 !important;
            text-decoration: none;
            transition: all 0.4s ease;
            display: inline-flex;
            align-items: center;
            gap: 1rem;
            border: 2px solid rgba(255,255,255,0.6) !important;
            margin: 0.5rem;
        }

        .btn-cta-outline:hover {
            background: rgba(255,255,255,0.15) !important;
            transform: translateY(-3px);
        }

        /* =========================================
           RELATED SERVICES
        ========================================= */
        .related-section { background: var(--bg-primary); }

        .related-links { max-width: 900px; margin: 0 auto; text-align: center; }

        .related-links p { font-size: 1.05rem; color: #334155 !important; line-height: 2; }

        .related-links a {
            color: var(--dmart-green) !important;
            font-weight: 700 !important;
            text-decoration: underline;
            text-decoration-color: #bbf7d0;
            text-underline-offset: 3px;
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .dmart-hero-container { grid-template-columns: 1fr; text-align: center; gap: 3rem; }
            .dmart-hero-stats, .dmart-hero-buttons { justify-content: center; }
            .dmart-hero-image { order: -1; max-width: 600px; margin: 0 auto; }
            .features-grid, .benefits-grid, .trust-grid, .process-grid { grid-template-columns: repeat(2, 1fr); }
        }

        @media (max-width: 768px) {
            .dmart-hero { padding-top: 8rem; min-height: auto; }
            .dmart-hero-content h1 { font-size: 2.5rem; }
            .dmart-hero-stats { grid-template-columns: 1fr; gap: 1rem; }
            .stat-item { min-height: 60px; padding: 10px; }
            .dmart-page-wrapper section { padding: 4rem 1.5rem; }
            .features-grid, .benefits-grid, .trust-grid, .process-grid { grid-template-columns: 1fr; gap: 1.5rem; }
            .badges-container { gap: 1rem; flex-direction: column; }
            .badge { flex-direction: column; gap: 0.5rem; }
            .dmart-hero-buttons, .cta-buttons { flex-direction: column; width: 100%; }
            .btn, .btn-cta, .btn-cta-outline { width: 100%; justify-content: center; }
            .docs-table-wrap { overflow-x: auto; }
        }
    </style>
</head>
<body>

    <jsp:include page="../../../includes/navbar/navbar.jsp" />

    <div class="dmart-page-wrapper">

        <!-- HERO -->
        <section class="dmart-hero" id="home">
            <div class="dmart-hero-container">
                <div class="dmart-hero-content">
                    <h1 class="animated-heading">
                        <span class="word">D-Mart</span>
                        <span class="word">Vendor</span>
                        <span class="word">Onboarding</span>
                        <span class="word">Service</span>
                        <span class="word">&ndash;</span>
                        <span class="word">Start</span>
                        <span class="word">Selling</span>
                        <span class="word">with</span>
                        <span class="word-highlight highlight">D-Mart</span>
                    </h1>
                    <p>IARDO provides complete <span class="highlight">D-Mart Vendor Onboarding Services</span> across PAN India &mdash; helping FMCG brands, grocery businesses, and suppliers partner with one of India's largest retail chains and access bulk order opportunities at scale.</p>

                    <div class="dmart-hero-stats">
                        <div class="stat-item">
                            <span class="stat-number">PAN India Coverage</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number">2&ndash;3 Months Typical TAT</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number" style="color: var(--dmart-green) !important;">24&times;7 Support</span>
                        </div>
                    </div>

                    <div class="dmart-hero-buttons">
                        <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">
                            <i class="fas fa-rocket"></i> Become a D-Mart Vendor
                        </a>
                        <a href="#services" class="btn btn-secondary">
                            <i class="fas fa-clipboard-list"></i> Explore Services
                        </a>
                    </div>
                </div>
                <div class="dmart-hero-image">
                    <img src="https://iardo.pages.dev/dmart.webp" alt="D-Mart Vendor Onboarding">
                </div>
            </div>
        </section>

        <!-- TRUST BADGES -->
        <section class="trust-badges">
            <div class="badges-container">
                <div class="badge">
                    <span class="badge-icon"><i class="fas fa-check-circle"></i></span>
                    <span>Trusted Partner</span>
                </div>
                <div class="badge">
                    <span class="badge-icon"><i class="fas fa-bolt"></i></span>
                    <span>Fast Onboarding</span>
                </div>
                <div class="badge">
                    <span class="badge-icon"><i class="fas fa-star"></i></span>
                    <span>Complete Support</span>
                </div>
                <div class="badge">
                    <span class="badge-icon"><i class="fas fa-bullseye"></i></span>
                    <span>PAN India Reach</span>
                </div>
            </div>
        </section>

        <!-- WHY CHOOSE IARDO -->
        <section class="why-choose" id="services">
            <div class="section-header">
                <p class="subtitle">End-to-end support</p>
                <h2>Why Choose IARDO for D-Mart Vendor Onboarding?</h2>
            </div>

            <div class="intro-text">
                <p>D-Mart is one of India's largest retail supermarket chains offering groceries, daily essentials, and household products at value-led pricing. Through IARDO's D-Mart Vendor Onboarding Service, businesses can become approved suppliers and access D-Mart's massive distribution network. Our team simplifies the entire process &mdash; from registration and documentation to product approval and supply chain setup &mdash; so you can start supplying to D-Mart with confidence.</p>
            </div>

            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-user-check"></i></div>
                    <h3>Vendor Registration Assistance</h3>
                    <p>We handle the complete D-Mart vendor registration process &mdash; from submitting your business details and application to ensuring all steps are completed correctly for smooth approval.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-file-alt"></i></div>
                    <h3>Documentation Support</h3>
                    <p>We guide you through all required documentation including GST certificate, PAN card, FSSAI licence for food products, business registration proof, and bank account details.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-boxes"></i></div>
                    <h3>Product Approval Guidance</h3>
                    <p>We help you prepare and present your product catalog to maximize approval chances &mdash; ensuring correct categorization, compliance, and alignment with D-Mart's quality and listing standards.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-truck"></i></div>
                    <h3>Supply Chain Onboarding</h3>
                    <p>Complete assistance in setting up your supply chain &mdash; from warehouse integration and logistics coordination to fulfilment processes that meet D-Mart's delivery and distribution requirements.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-rupee-sign"></i></div>
                    <h3>Pricing &amp; Distribution Strategy</h3>
                    <p>Get expert guidance on competitive pricing strategies aligned with D-Mart's value-focused model &mdash; helping you optimize margins while staying attractive for bulk retail orders.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                    <h3>Business Growth Consulting</h3>
                    <p>Beyond onboarding, we help you scale &mdash; advising on product expansion, improving vendor performance metrics, and growing your supply relationship with D-Mart consistently.</p>
                </div>
            </div>
        </section>

        <!-- DOCUMENTS REQUIRED -->
        <section class="docs-section" id="documents">
            <div class="section-header">
                <p class="subtitle">What you need</p>
                <h2>Documents Required for D-Mart Onboarding</h2>
            </div>
            <div class="docs-table-wrap">
                <table class="docs-table">
                    <thead>
                        <tr>
                            <th>Document</th>
                            <th>Mandatory</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Trademark Certificate / Application</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Business GST Registration Certificate</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>PAN Card</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Bank Account Details (cancelled cheque or bank statement)</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Brand Deck</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Udyam / MSME Certificate</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Website Link</td>
                            <td><span class="badge-yes">Yes</span></td>
                        </tr>
                        <tr>
                            <td>Identity Proof (Aadhaar / Driving Licence / Passport)</td>
                            <td><span class="badge-opt">Optional</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- 8-STAGE PROCESS -->
        <section class="process-section" id="process">
            <div class="section-header">
                <p class="subtitle">Step by step</p>
                <h2>D-Mart's Vendor Onboarding Process</h2>
            </div>

            <div class="process-grid">
                <div class="process-card">
                    <div class="step-number">1</div>
                    <h3>Expression of Interest (EOI)</h3>
                    <p>Submit brand profile, product catalog, and certifications. Share details about market presence, manufacturing capacity, and category fit.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">2</div>
                    <h3>Brand Evaluation</h3>
                    <p>Internal assessment of product quality, pricing, packaging, shelf-life, and compliance with FSSAI, GST, and regulatory standards. Fitment check with D-Mart's current category strategy.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">3</div>
                    <h3>Documentation Submission</h3>
                    <p>GST certificate, FSSAI licence, company PAN, cancelled cheque, product-wise price list, MOQ, shelf-life, packaging dimensions, and third-party lab tests (if applicable).</p>
                </div>
                <div class="process-card">
                    <div class="step-number">4</div>
                    <h3>Commercial Negotiation &amp; Contracting</h3>
                    <p>Discussion of trade margins, payment terms, delivery schedules. Finalisation of onboarding agreement, NDAs, and SLAs.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">5</div>
                    <h3>System Integration</h3>
                    <p>Vendor creation in D-Mart's ERP/procurement system. Article code generation, barcode sharing, pack image uploads, and vendor portal access where applicable.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">6</div>
                    <h3>Operational Onboarding</h3>
                    <p>Training on order cycles, supply schedules, dispatch process, invoicing format, GRN process, and returns policy.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">7</div>
                    <h3>Go-Live &amp; First Order</h3>
                    <p>PO release and fulfilment based on agreed timelines. Coordination with warehouse and store operations for delivery.</p>
                </div>
                <div class="process-card">
                    <div class="step-number">8</div>
                    <h3>Post-Onboarding Monitoring</h3>
                    <p>KPI tracking: fill rate, lead-time adherence, defect %. Monthly or quarterly performance reviews, compliance audits, and documentation renewal as needed.</p>
                </div>
            </div>

            <div class="warning-note">
                <span class="wn-icon">&#9888;&#65039;</span>
                <span class="wn-text"><strong>Important:</strong> D-Mart reserves the right to reject or hold applications based on internal category constraints. Non-compliance or delay in documentation may extend onboarding timelines.</span>
            </div>
        </section>

        <!-- WHO BENEFITS -->
        <section class="who-benefits" id="benefits">
            <div class="section-header">
                <p class="subtitle">Who is this for?</p>
                <h2>Who Can Benefit from Our D-Mart Onboarding Services?</h2>
            </div>
            <div class="benefits-grid">
                <div class="benefit-card">
                    <span class="benefit-icon"><i class="fas fa-apple-alt"></i></span>
                    <h4>FMCG &amp; Grocery Brands</h4>
                    <p>Perfect for packaged food, beverages, snacks, and daily essentials manufacturers looking to access D-Mart's massive retail distribution network and generate consistent bulk orders.</p>
                </div>
                <div class="benefit-card">
                    <span class="benefit-icon"><i class="fas fa-spray-can"></i></span>
                    <h4>Personal Care &amp; Home Products</h4>
                    <p>Ideal for brands selling toiletries, cleaning supplies, household items, and personal care products that align with D-Mart's high-demand product categories.</p>
                </div>
                <div class="benefit-card">
                    <span class="benefit-icon"><i class="fas fa-leaf"></i></span>
                    <h4>Organic &amp; Health Foods</h4>
                    <p>A great opportunity for organic food brands, health supplements, and wellness products to reach D-Mart's growing base of health-conscious value shoppers.</p>
                </div>
            </div>
        </section>

        <!-- COMMISSION SECTION -->
        <section class="trust-section" id="commission">
            <div class="section-header">
                <p class="subtitle">Understanding margins</p>
                <h2>How D-Mart Commission Works</h2>
            </div>
            <div class="trust-grid">
                <div class="trust-item">
                    <h4>Category-Based Margins</h4>
                    <p>Unlike marketplaces with fixed commission slabs, D-Mart determines commission and trade margins based on product category, brand strength, and commercial negotiations.</p>
                </div>
                <div class="trust-item">
                    <h4>Contracting Stage Terms</h4>
                    <p>There is no fixed published rate &mdash; terms are agreed during the contracting stage of onboarding. IARDO supports you through these negotiations to secure favourable margins.</p>
                </div>
                <div class="trust-item">
                    <h4>Payment Cycle Negotiation</h4>
                    <p>IARDO helps you negotiate payment cycles, supply terms, and distribution conditions to ensure your business remains profitable while meeting D-Mart's pricing expectations.</p>
                </div>
                <div class="trust-item">
                    <h4>Volume-Based Growth</h4>
                    <p>As your supply relationship grows, IARDO advises on improving vendor performance metrics and increasing order volumes to build a long-term supply partnership with D-Mart.</p>
                </div>
            </div>
        </section>

        <!-- WHY TRUST IARDO -->
        <section class="why-choose" id="trust">
            <div class="section-header">
                <p class="subtitle">Your reliable partner</p>
                <h2>Why Businesses Trust IARDO</h2>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-award"></i></div>
                    <h3>Strong Onboarding Expertise</h3>
                    <p>Our team has deep experience with D-Mart's vendor requirements, documentation process, and approval guidelines &mdash; ensuring a smooth, hassle-free onboarding experience every time.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-store"></i></div>
                    <h3>FMCG &amp; Grocery Experience</h3>
                    <p>We understand the nuances of grocery and FMCG vendor onboarding &mdash; from FSSAI compliance to supply chain setup &mdash; giving your application the best chance of fast approval.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-seedling"></i></div>
                    <h3>Growth-Focused Approach</h3>
                    <p>We don't just get you onboarded &mdash; we help you grow. Our strategies are designed to improve your vendor performance, increase order volumes, and build a long-term supply relationship.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon"><i class="fas fa-headset"></i></div>
                    <h3>End-to-End Support</h3>
                    <p>From the first consultation and documentation to product approval and supply chain setup, we handle everything so you can focus on production and fulfilment.</p>
                </div>
            </div>
        </section>

        <!-- FAQ -->
        <section class="faq-section" id="faq">
            <div class="section-header">
                <p class="subtitle">Common questions</p>
                <h2>Frequently Asked Questions</h2>
            </div>
            <div class="faq-wrap">
                <details class="faq-item" open>
                    <summary>What is D-Mart Vendor Onboarding?</summary>
                    <div class="faq-answer">D-Mart Vendor Onboarding is the structured process of becoming an approved supplier with D-Mart &mdash; India's leading value-retail chain. The process covers Expression of Interest, brand evaluation, documentation, commercial negotiation, ERP integration, and operational go-live.</div>
                </details>
                <details class="faq-item">
                    <summary>How long does D-Mart Vendor Onboarding take?</summary>
                    <div class="faq-answer">Typical onboarding timeline is 2&ndash;3 months, and may extend up to 180 working days depending on category fitment, documentation readiness, and D-Mart's internal evaluation process.</div>
                </details>
                <details class="faq-item">
                    <summary>What documents are required for D-Mart vendor onboarding?</summary>
                    <div class="faq-answer">Trademark certificate or application, business GST registration certificate, PAN card, cancelled cheque or bank statement, brand deck, Udyam or MSME certificate, website link, and (optionally) identity proof such as Aadhaar, driving licence, or passport.</div>
                </details>
                <details class="faq-item">
                    <summary>How much does D-Mart Vendor Onboarding cost?</summary>
                    <div class="faq-answer">D-Mart Vendor Onboarding pricing is customised based on category, scope, and your existing readiness. Contact IARDO for a tailored quote. Travel expenses for the IARDO team (if any) are charged at actuals.</div>
                </details>
                <details class="faq-item">
                    <summary>Who can become a D-Mart vendor?</summary>
                    <div class="faq-answer">FMCG brands, grocery and packaged food manufacturers, personal care and home product brands, organic and health food companies, and bulk-suitable D2C brands are ideal candidates for D-Mart vendor onboarding.</div>
                </details>
                <details class="faq-item">
                    <summary>What commission does D-Mart charge vendors?</summary>
                    <div class="faq-answer">D-Mart determines commission and trade margins based on product category, brand strength, and commercial negotiations. There is no fixed published rate &mdash; terms are agreed during the contracting stage of onboarding.</div>
                </details>
            </div>
        </section>

        <!-- CTA -->
        <section class="cta">
            <div class="cta-content">
                <h2>Want to Become a D-Mart Vendor and Grow Your Business?</h2>
                <p>D-Mart's vendor onboarding rewards brands that get it right. Let IARDO handle your complete D-Mart vendor onboarding &mdash; from EOI submission and commercial negotiations to ERP integration and first PO &mdash; so you can launch with confidence!</p>
                <div class="cta-buttons">
                    <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn-cta">
                        <i class="fas fa-rocket"></i> Get a Free Consultation Today
                    </a>
                    <a href="tel:+919310194865" class="btn-cta-outline">
                        <i class="fas fa-phone"></i> Call +91 93101 94865
                    </a>
                </div>
            </div>
        </section>

    </div>

    <jsp:include page="../../../includes/footer/footer.jsp" />

</body>
</html>
