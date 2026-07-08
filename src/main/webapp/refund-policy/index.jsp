<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Refund Policy - IARDO E-commerce Enabler">
    <title>Refund Policy | IARDO Marketing</title>
    
    <style>
          :root {
            /* Light Theme Backgrounds */
            --bg-main: #f4f6f9;
            --bg-gradient-1: #e2e8f0;
            --bg-gradient-2: #ffffff;
            
            /* Glassmorphism Cards */
            --bg-card: rgba(255, 255, 255, 0.7);
            --bg-card-hover: rgba(255, 255, 255, 0.9);
            
            /* Text Colors for High Contrast */
            --text-main: #1e293b;
            --text-muted: #475569;
            --text-dim: #64748b;
            
            /* Vibrant Primary & Accents */
            --primary: #0284c7;        
            --primary-light: #0ea5e9;  
            --primary-glow: rgba(2, 132, 199, 0.2);
            
            --accent: #e11d48;         
            --accent-glow: rgba(225, 29, 72, 0.15);
            
            /* Borders & Highlights */
            --highlight-bg: rgba(2, 132, 199, 0.05);
            --border-color: rgba(0, 0, 0, 0.06);
            --border-glow: rgba(2, 132, 199, 0.15);
            
            /* Softer Shadows for Light Theme */
            --shadow-lg: 0 20px 40px -10px rgba(0, 0, 0, 0.08);
        }

        /* Base Styles */
        .refund-page {
            font-family: 'Outfit', system-ui, -apple-system, sans-serif;
            background: linear-gradient(135deg, var(--bg-main) 0%, var(--bg-gradient-1) 50%, var(--bg-gradient-2) 100%);
            color: var(--text-main);
            line-height: 1.8;
            min-height: 100vh;
            padding: 0;
            margin: 0;
            overflow-x: hidden;
            position: relative;
        }

        .refund-page * {
            box-sizing: border-box;
        }

        /* Animated Particle Background */
        .refund-page::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                radial-gradient(circle at 20% 30%, var(--primary-glow) 0%, transparent 50%),
                radial-gradient(circle at 80% 20%, var(--accent-glow) 0%, transparent 50%),
                radial-gradient(circle at 40% 70%, rgba(147, 51, 234, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 90% 80%, rgba(16, 185, 129, 0.08) 0%, transparent 50%);
            background-size: 200% 200%;
            animation: particleFloat 30s ease-in-out infinite;
            pointer-events: none;
            z-index: 0;
            opacity: 0.8;
        }

        @keyframes particleFloat {
            0%, 100% { background-position: 0% 0%, 100% 0%, 50% 100%, 100% 100%; opacity: 0.6; }
            25% { background-position: 100% 50%, 0% 100%, 0% 0%, 50% 50%; opacity: 0.8; }
            50% { background-position: 50% 100%, 50% 0%, 100% 50%, 0% 0%; opacity: 0.7; }
            75% { background-position: 0% 50%, 100% 100%, 50% 0%, 50% 100%; opacity: 0.9; }
        }

        /* Grid Pattern Overlay */
        .refund-page::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                linear-gradient(rgba(0, 0, 0, 0.04) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0, 0, 0, 0.04) 1px, transparent 1px);
            background-size: 50px 50px;
            pointer-events: none;
            z-index: 0;
            opacity: 0.6;
        }

        /* Container */
        .refund-page .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 150px 60px 80px; /* Reduced top padding since navbar is included */
            position: relative;
            z-index: 1;
        }

        /* Main Heading */
        .refund-page h1 {
            font-size: 64px;
            font-weight: 900;
            background: linear-gradient(135deg, var(--primary) 0%, #2563eb 40%, var(--accent) 80%, #9333ea 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            background-size: 200% auto;
            margin-bottom: 60px;
            letter-spacing: -2px;
            position: relative;
            animation: textGlow 4s ease-in-out infinite;
            line-height: 1.1;
            text-align: center;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(15px);
            border-radius: 24px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        }

        @keyframes textGlow {
            0%, 100% { filter: drop-shadow(0 0 8px rgba(2, 132, 199, 0.15)); }
            50% { filter: drop-shadow(0 0 15px rgba(2, 132, 199, 0.3)); }
        }

        /* Section Headings */
        .refund-page h2 {
            font-size: 30px;
            font-weight: 800;
            color: var(--text-main);
            margin: 0 0 25px;
            position: relative;
            padding-left: 30px;
            letter-spacing: -0.5px;
        }

        .refund-page h2::before {
            content: '';
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 5px;
            height: 30px;
            background: linear-gradient(180deg, var(--primary), var(--accent));
            border-radius: 6px;
            box-shadow: 0 0 10px var(--primary-glow);
        }

        /* Subheadings */
        .refund-page h3 {
            font-size: 22px;
            font-weight: 700;
            color: var(--primary);
            margin: 30px 0 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        /* Paragraphs */
        .refund-page p {
            margin-bottom: 20px;
            color: var(--text-muted);
            text-align: justify;
            line-height: 1.9;
            font-size: 16.5px;
            font-weight: 400;
        }

        /* Strong Text Enhancement */
        .refund-page strong {
            color: var(--text-main);
            font-weight: 700;
        }

        /* Enhanced Links */
        .refund-page a {
            color: var(--primary);
            font-weight: 600;
            text-decoration: none;
            position: relative;
            transition: all 0.3s ease;
        }
        
        .refund-page .section p a:hover, 
        .refund-page .highlight-box p a:hover {
            color: var(--primary-light);
            text-decoration: underline;
        }

        /* Premium Highlight Box (Used for Info and Warning boxes too) */
        .refund-page .highlight-box {
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.05) 0%, rgba(225, 29, 72, 0.05) 100%);
            border-left: 5px solid var(--primary);
            border-radius: 16px;
            padding: 30px 35px;
            margin: 30px 0;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04), 0 0 0 1px rgba(255, 255, 255, 0.6) inset;
            position: relative;
            overflow: hidden;
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.4);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .refund-page .highlight-box:hover {
            transform: translateY(-2px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.06), 0 0 0 1px rgba(255, 255, 255, 0.8) inset;
        }

        .refund-page .highlight-box::before {
            content: '⚠';
            position: absolute;
            top: 50%;
            right: 30px;
            transform: translateY(-50%);
            font-size: 64px;
            opacity: 0.05;
            color: var(--primary);
        }

        .refund-page .highlight-box p {
            margin: 0;
            font-weight: 500;
            color: var(--text-main);
            text-align: left;
            font-size: 17px;
        }

        /* Contact Info Box */
        .refund-page .contact-info {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.8) 0%, rgba(240, 244, 248, 0.8) 100%);
            border-radius: 20px;
            padding: 40px;
            margin: 50px 0;
            border: 1px solid var(--border-color);
            box-shadow: var(--shadow-lg);
            position: relative;
            backdrop-filter: blur(10px);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .refund-page .contact-info h3 {
            color: var(--primary);
            margin-top: 0;
            margin-bottom: 25px;
            font-size: 26px;
        }

        .refund-page .contact-info h3::before {
            content: '📧';
            font-size: 26px;
        }

        .refund-page .contact-info p {
            margin-bottom: 12px;
        }

        /* Sections with Glassmorphism */
        .refund-page .section {
            margin-bottom: 40px;
            background: var(--bg-card);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, 0.6);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.04);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .refund-page .section:hover {
            transform: translateY(-2px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.06);
            background: var(--bg-card-hover);
        }

        /* Enhanced Lists */
        .refund-page ul {
            margin-left: 30px;
            margin-bottom: 30px;
            list-style: none;
            padding-left: 0;
        }

        .refund-page ul li {
            margin-bottom: 15px;
            color: var(--text-muted);
            position: relative;
            padding-left: 30px;
            line-height: 1.8;
            transition: all 0.3s ease;
        }

        .refund-page ul li:hover {
            color: var(--primary);
            transform: translateX(5px);
        }

        .refund-page ul li::before {
            content: '→';
            position: absolute;
            left: 0;
            color: var(--primary);
            font-weight: 700;
        }

        /* Scroll Reveal Animation */
        .refund-page .reveal {
            opacity: 0;
            transform: translateY(40px);
            transition: all 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }

        .refund-page .reveal.active {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .refund-page .container { padding: 80px 40px 60px; }
            .refund-page h1 { font-size: 50px; }
        }

        @media (max-width: 768px) {
            .refund-page .container { padding: 60px 20px 50px; }
            .refund-page h1 { font-size: 36px; padding: 25px; }
            .refund-page h2 { font-size: 24px; padding-left: 25px; }
            .refund-page .section { padding: 30px 25px; margin-bottom: 30px; }
            .refund-page .highlight-box, .refund-page .contact-info { padding: 25px; }
        }

        @media (max-width: 480px) {
            .refund-page h1 { font-size: 28px; padding: 20px 15px; }
            .refund-page h2 { font-size: 22px; }
            .refund-page .section { padding: 25px 20px; }
        }
        
    </style>
</head>
<body>
    
    <jsp:include page="../includes/navbar/navbar.jsp" />

    <div class="refund-page">
        <div class="container">
            
            <h1 class="reveal">Refund Policy</h1>

            <div class="section reveal">
                <p>We will notify you once we've received your refund request, and let you know if the refund was approved or not. If approved, you'll be automatically refunded on your original payment method within <strong>10 business days</strong>.</p>
                
                <p>Please remember it can take some time for your bank or credit card company to process and post the refund too. If more than 15 business days have passed since we approved your refund, please contact us at:</p>
                
                <div class="highlight-box reveal">
                    <p><strong>Email:</strong> <a href="mailto:info@iardo.in">info@iardo.in</a> | <strong>Phone:</strong> <a href="tel:+919310194865">931-0194-865</a></p>
                </div>
            </div>

            <div class="section reveal">
                <h2>Our Refund and Cancellation Policies</h2>
                <p>We are an <strong>E-commerce Enabler</strong>, services provider for E-commerce platform, digital marketing, and web development service provider company.</p>
                
                <p>Our refund policy has been designed in such a way that makes it easy for our clients to understand. Please read the below refund policies carefully:</p>
            </div>

            <div class="section reveal">
                <h2>Web Development & Design Policy</h2>
                <p>We provide a demo website to our clients so that they can check our quality of work and hence become comfortable before working with us. Before making a payment for our services feel free to contact us if you have any queries.</p>
                
                <div class="highlight-box reveal">
                    <p><strong>Important:</strong> We strongly encourage all potential clients to review our demo websites and discuss any concerns before committing to our services. This ensures complete transparency and satisfaction.</p>
                </div>
            </div>

            <div class="section reveal">
                <h2>Eligibility for Refund</h2>
                <p>At the <strong>International Association of Research and Develop Organization (IARDO)</strong>, every project is important to us and we handle each project very carefully and with professionalism. We always try to deliver the desired project to our clients at a given time.</p>
                
                <p>However, if a client is not satisfied or changed his/her plan regarding the project and wants a refund then he/she would check their eligibility for our refund policy listed below:</p>
            </div>

            <div class="section reveal">
                <h2>Advance Payment Policy</h2>
                <p>When you are comfortable with taking our service, you have to make a <strong>50% payment in advance</strong> for hiring us for any kind of services which we provide.</p>
                
                <div class="highlight-box reveal">
                    <p><strong>Important Notice:</strong> If our client wants to cancel the project, He/She can cancel the project within 15 days but the advance money will NOT be refundable.</p>
                </div>
                
                <p>This policy is in place because once we begin work on a project, we allocate dedicated resources, time, and expertise to ensure the highest quality delivery.</p>
            </div>

            <div class="section reveal">
                <h2>Refund Processing Timeline</h2>
                <ul>
                    <li><strong>Refund Request Review:</strong> Within 2-3 business days of receiving your request</li>
                    <li><strong>Approval Notification:</strong> You will be notified via email about the approval status</li>
                    <li><strong>Refund Processing:</strong> Approved refunds are processed within 10 business days</li>
                    <li><strong>Bank Processing:</strong> Additional 3-5 business days may be required by your bank</li>
                    <li><strong>Total Time:</strong> Complete refund process may take up to 15 business days</li>
                </ul>
            </div>

            <div class="section reveal">
                <h2>Non-Refundable Services</h2>
                <p>The following services and situations are not eligible for refunds:</p>
                <ul>
                    <li>Advance payments made for project initiation (50% initial payment)</li>
                    <li>Completed projects that have been delivered and accepted</li>
                    <li>Custom design work that has been specifically created for your business</li>
                    <li>Domain registration and hosting charges paid to third parties</li>
                    <li>Projects cancelled after the 15-day cancellation window</li>
                    <li>Services already rendered or completed</li>
                </ul>
            </div>

            <div class="section reveal">
                <h2>How to Request a Refund</h2>
                <p>If you believe you are eligible for a refund, please follow these steps:</p>
                <ul>
                    <li>Contact us within the applicable refund period (15 days for cancellations)</li>
                    <li>Provide your project details and payment information</li>
                    <li>Clearly state the reason for your refund request</li>
                    <li>Our team will review your request and respond within 2-3 business days</li>
                </ul>
                
                <div class="highlight-box reveal">
                    <p><strong>Tip:</strong> To expedite your refund request, please include your order number, project name, and payment receipt in your communication.</p>
                </div>
            </div>

            <div class="section reveal">
                <h2>Policy Change</h2>
                <p>The <strong>International Association of Research and Develop Organization (IARDO)</strong> can change this policy without any prior notice. We request you to review this policy periodically.</p>
                
                <p>If any changes occur in our policy then our existing, as well as new clients, will be agreed with our new policy. It is your responsibility to stay updated with our latest policies.</p>
            </div>

            <div class="contact-info reveal">
                <h3>Contact Us for Refund Queries</h3>
                <p><strong>International Association of Research and Developed Organization (IARDO)</strong></p>
                <p>Seventh floor, 714, Amba Tower, DC Chowk, Sector 9<br>
                New Delhi, North West Delhi, Delhi, 110085</p>
                <p><strong>Email:</strong> <a href="mailto:info@iardo.in">info@iardo.in</a></p>
                <p><strong>Phone:</strong> <a href="tel:+919310194865">931-0194-865</a></p>
                <p><strong>Website:</strong> <a href="https://iardo.in" target="_blank">www.iardo.in</a></p>
            </div>

            <div class="section reveal">
                <h2>Disclaimer</h2>
                <p>All logos belong to their respective brands and are used here only for illustration. IARDO does not use any logo for commercial purposes. All the logos given here are only for clarification of the people.</p>
                
                <p>If you have any kind of concern or problem, for that, we apologize to you and please contact us immediately by the given email at <a href="mailto:info@iardo.in">info@iardo.in</a>.</p>
            </div>

        </div>
    </div>

    <jsp:include page="../includes/footer/footer.jsp" />

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const reveals = document.querySelectorAll('.reveal');
            
            const observer = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if(entry.isIntersecting) {
                        entry.target.classList.add('active');
                        // Optional: observer.unobserve(entry.target); if you want it to animate only once
                    }
                });
            }, { 
                threshold: 0.1,
                rootMargin: "0px 0px -50px 0px"
            });

            reveals.forEach(reveal => observer.observe(reveal));
        });
    </script>

</body>
</html>
