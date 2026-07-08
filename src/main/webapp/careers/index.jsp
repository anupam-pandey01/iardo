<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<title>Careers at IARDO | Jobs in Software Development, AI & Tech</title>
<meta name="description" content="Explore career opportunities at IARDO. Join our team and work on exciting projects in software development, AI, cloud, and digital technologies.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Montserrat:wght@700;900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* SCOPED CSS FOR CAREERS PAGE ONLY - Will not affect Navbar or Footer */
.careers-wrapper {
    font-family: 'Roboto', sans-serif;
    background: #ffffff;
    line-height: 1.6;
    overflow-x: hidden;
}

.careers-wrapper * {
    box-sizing: border-box;
}

/* SUCCESS MESSAGE */
.careers-wrapper .success {
    background: #ecfdf5;
    color: #047857;
    padding: 18px 25px;
    margin: 120px auto 20px; /* Pushed down so it clears the fixed navbar */
    max-width: 700px;
    text-align: center;
    border-radius: 15px;
    font-weight: 600;
    border: 1px solid #a7f3d0;
    box-shadow: 0 4px 15px rgba(16, 185, 129, 0.1);
    animation: slideDown 0.5s ease;
    position: relative;
    z-index: 10;
}
@keyframes slideDown{
    from{transform:translateY(-30px);opacity:0;}
    to{transform:translateY(0);opacity:1;}
}

/* HERO SECTION */
.careers-wrapper .hero {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    gap: 50px;
    padding: 160px 20px 80px; /* High top padding to prevent hiding behind navbar */
    background: #ffffff;
    position: relative;
    overflow: hidden;
}
.careers-wrapper .hero::before {
    content: '';
    position: absolute;
    top: -20%;
    right: -10%;
    width: 600px;
    height: 600px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(139,92,246,0.1) 0%, transparent 70%);
    animation: float 6s ease-in-out infinite;
    z-index: 0;
}
@keyframes float{
    0%, 100%{transform:translate(0,0) scale(1);}
    50%{transform:translate(30px,30px) scale(1.05);}
}
.careers-wrapper .hero-text {
    flex: 1 1 400px;
    max-width: 600px;
    z-index: 2;
    animation: fadeInLeft 1s ease;
}
@keyframes fadeInLeft{
    from{transform:translateX(-50px);opacity:0;}
    to{transform:translateX(0);opacity:1;}
}
.careers-wrapper .hero-text h1 {
    font-family: 'Montserrat', sans-serif;
    font-size: 48px;
    font-weight: 900;
    margin-bottom: 20px;
    line-height: 1.2;
    color: #0f172a; /* Explicit Dark Text */
}
.careers-wrapper .hero-text p {
    font-size: 18px;
    line-height: 1.7;
    margin-bottom: 15px;
    color: #334155; /* Explicit Dark Text */
}
.careers-wrapper .hero-img {
    flex: 1 1 300px;
    max-width: 500px;
    z-index: 2;
    animation: fadeInRight 1s ease;
}
@keyframes fadeInRight{
    from{transform:translateX(50px);opacity:0;}
    to{transform:translateX(0);opacity:1;}
}
.careers-wrapper .hero-img img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.1);
    transition: transform 0.4s ease;
}
.careers-wrapper .hero-img img:hover {
    transform: translateY(-10px);
}

/* SECTIONS (General) */
.careers-wrapper .section {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 50px;
    padding: 80px 20px;
    background: #ffffff;
    justify-content: center;
}
.careers-wrapper .section.alt-bg {
    background: #f8fafc;
}
.careers-wrapper .section img {
    flex: 1 1 300px;
    max-width: 500px;
    width: 100%;
    height: auto;
    border-radius: 20px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.08);
    transition: transform 0.4s ease;
}
.careers-wrapper .section img:hover {
    transform: translateY(-10px);
}
.careers-wrapper .section .text {
    flex: 1 1 400px;
    max-width: 600px;
}
.careers-wrapper .section h2 {
    font-family: 'Montserrat', sans-serif;
    font-size: 38px;
    font-weight: 900;
    margin-bottom: 20px;
    position: relative;
    display: inline-block;
    color: #0f172a;
}
.careers-wrapper .section h2::after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 60px;
    height: 4px;
    background: #8b5cf6;
    border-radius: 2px;
}
.careers-wrapper .section p {
    font-size: 17px;
    margin-bottom: 15px;
    color: #334155;
}

.careers-wrapper .feature-list {
    list-style: none;
    margin: 25px 0;
    padding: 0;
}
.careers-wrapper .feature-list li {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    font-size: 17px;
    font-weight: 500;
    color: #334155;
}
.careers-wrapper .feature-list li i {
    color: #8b5cf6;
    margin-right: 12px;
    font-size: 20px;
}

/* JOBS SECTION */
.careers-wrapper .jobs {
    background: #f8fafc;
    padding: 80px 20px;
    text-align: center;
}
.careers-wrapper .jobs h2 {
    font-family: 'Montserrat', sans-serif;
    font-size: 40px;
    font-weight: 900;
    margin-bottom: 15px;
    color: #0f172a;
}
.careers-wrapper .jobs > p {
    font-size: 18px;
    margin-bottom: 40px;
    color: #334155;
}
.careers-wrapper .jobs-cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 25px;
    max-width: 1200px;
    margin: 0 auto;
}
.careers-wrapper .job-card {
    background: #ffffff;
    padding: 30px 25px;
    border-radius: 20px;
    width: 340px;
    text-align: left;
    box-shadow: 0 10px 30px rgba(0,0,0,0.05);
    border: 1px solid #e2e8f0;
    transition: all 0.3s ease;
    position: relative;
}
.careers-wrapper .job-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 40px rgba(139,92,246,0.15);
    border-color: #8b5cf6;
}
.careers-wrapper .job-card .card-icon {
    font-size: 38px;
    color: #8b5cf6;
    margin-bottom: 15px;
}
.careers-wrapper .job-card h3 {
    font-size: 22px;
    margin-bottom: 15px;
    font-family: 'Montserrat', sans-serif;
    color: #0f172a;
}
.careers-wrapper .job-card ul {
    list-style: none;
    padding: 0;
}
.careers-wrapper .job-card ul li {
    font-size: 15px;
    margin-bottom: 10px;
    display: flex;
    align-items: flex-start;
    color: #334155;
}
.careers-wrapper .job-card ul li i {
    color: #8b5cf6;
    font-size: 14px;
    margin-right: 10px;
    margin-top: 5px;
}

/* PROCESS SECTION */
.careers-wrapper .process-section {
    background: #ffffff;
    padding: 80px 20px;
    text-align: center;
}
.careers-wrapper .process-section h2 {
    font-family: 'Montserrat', sans-serif;
    font-size: 38px;
    font-weight: 900;
    margin-bottom: 15px;
    color: #0f172a;
}
.careers-wrapper .process-section > p {
    font-size: 18px;
    margin-bottom: 50px;
    color: #334155;
}
.careers-wrapper .process-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    max-width: 1200px;
    margin: 0 auto;
}
.careers-wrapper .process-step {
    background: #f8fafc;
    padding: 30px 20px;
    border-radius: 20px;
    width: 200px;
    border: 1px solid #e2e8f0;
    transition: transform 0.3s;
}
.careers-wrapper .process-step:hover {
    transform: translateY(-10px);
    border-color: #8b5cf6;
    box-shadow: 0 15px 30px rgba(0,0,0,0.05);
}
.careers-wrapper .step-num {
    width: 50px;
    height: 50px;
    background: #ede9fe;
    color: #6d28d9;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 900;
    font-size: 22px;
    margin: 0 auto 15px;
}
.careers-wrapper .process-step h4 {
    font-size: 17px;
    font-weight: 700;
    color: #0f172a;
}

/* CTA BOX */
.careers-wrapper .cta-box {
    margin-top: 30px;
    padding: 30px;
    background: #ede9fe;
    border-left: 4px solid #8b5cf6;
    border-radius: 12px;
}
.careers-wrapper .cta-box h3 {
    font-size: 24px;
    margin-bottom: 10px;
    color: #0f172a;
}
.careers-wrapper .cta-box p {
    margin-bottom: 20px;
    color: #334155;
}
.careers-wrapper .apply-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 14px 28px;
    background: #8b5cf6;
    color: #ffffff !important;
    text-decoration: none;
    border-radius: 50px;
    font-weight: 700;
    font-size: 16px;
    transition: transform 0.3s, box-shadow 0.3s;
}
.careers-wrapper .apply-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 20px rgba(139,92,246,0.3);
    background: #6d28d9;
}
.careers-wrapper .apply-btn i {
    color: #ffffff !important;
}

/* RESPONSIVE */
@media(max-width:1024px) {
    .careers-wrapper .hero-text h1{font-size:40px;}
    .careers-wrapper .section h2{font-size:32px;}
    .careers-wrapper .job-card{width:45%;}
}

@media(max-width:768px) {
    .careers-wrapper .hero{padding:140px 15px 60px; text-align: center;} 
    .careers-wrapper .hero-text h1{font-size:36px;}
    .careers-wrapper .job-card{width:48%;}
    .careers-wrapper .process-step{width: 45%;}
    .careers-wrapper .section {text-align: center;}
    .careers-wrapper .section h2::after { left: 50%; transform: translateX(-50%); }
    .careers-wrapper .feature-list li { justify-content: center; }
}

@media(max-width:480px) {
    .careers-wrapper .hero{padding:120px 15px 50px;}
    .careers-wrapper .hero-text h1{font-size:30px;}
    .careers-wrapper .job-card{width:100%;}
    .careers-wrapper .process-step{width: 100%;}
    .careers-wrapper .section{padding:50px 15px;}
}
</style>
</head>

<body>

<jsp:include page="../includes/navbar/navbar.jsp" />

<div class="careers-wrapper">

    <%
    String msg=(String)request.getAttribute("msg");
    if(msg!=null){
    %>
    <div class="success"><i class="fa-solid fa-circle-check"></i> <%=msg%></div>
    <%}%>

    <div class="hero">
        <div class="hero-text">
            <h1>Careers at IARDO – Join Our Team & Build Your Future</h1>
            <p>At IARDO, we are building innovative digital solutions that help businesses grow and scale. We are always looking for talented, passionate, and driven individuals who want to make an impact.</p>
            <p>Join our team and work on exciting projects across software development, AI, cloud, and more.</p>
        </div>
        <div class="hero-img">
            <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?w=800&auto=format&fit=crop" alt="Team collaboration at IARDO">
        </div>
    </div>

    <div class="section alt-bg">
        <img src="https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?w=800&auto=format&fit=crop" alt="Why Join IARDO">
        <div class="text">
            <h2>Why Join IARDO?</h2>
            <ul class="feature-list">
                <li><i class="fa-solid fa-arrow-trend-up"></i> Growth opportunities & continuous learning</li>
                <li><i class="fa-solid fa-laptop-code"></i> Work on the latest technologies & tools</li>
                <li><i class="fa-solid fa-rocket"></i> Fast-paced & innovative environment</li>
                <li><i class="fa-solid fa-users"></i> Collaborative & inclusive team culture</li>
                <li><i class="fa-solid fa-briefcase"></i> Dedicated career development support</li>
            </ul>
            <p style="color: #6d28d9 !important; font-weight: 600;">👉 We believe in learning, growth, and building something impactful together.</p>
        </div>
    </div>

    <div class="jobs">
        <h2>Open Positions</h2>
        <p>We are currently hiring for the following roles:</p>
        <div class="jobs-cards">
            
            <div class="job-card">
                <i class="fa-solid fa-code card-icon"></i>
                <h3>Software Developer</h3>
                <ul>
                    <li><i class="fa-solid fa-check"></i> Experience with web & app development</li>
                    <li><i class="fa-solid fa-check"></i> Knowledge of modern frameworks</li>
                    <li><i class="fa-solid fa-check"></i> Strong problem-solving skills</li>
                </ul>
            </div>

            <div class="job-card">
                <i class="fa-solid fa-mobile-screen-button card-icon"></i>
                <h3>Mobile App Developer</h3>
                <ul>
                    <li><i class="fa-solid fa-check"></i> Android / iOS development</li>
                    <li><i class="fa-solid fa-check"></i> Cross-platform (Flutter, React Native)</li>
                    <li><i class="fa-solid fa-check"></i> App deployment experience</li>
                </ul>
            </div>

            <div class="job-card">
                <i class="fa-solid fa-cloud card-icon"></i>
                <h3>DevOps Engineer</h3>
                <ul>
                    <li><i class="fa-solid fa-check"></i> CI/CD pipeline knowledge</li>
                    <li><i class="fa-solid fa-check"></i> Cloud platforms (AWS, Azure, GCP)</li>
                    <li><i class="fa-solid fa-check"></i> Infrastructure automation tools</li>
                </ul>
            </div>

            <div class="job-card">
                <i class="fa-solid fa-pen-nib card-icon"></i>
                <h3>UI/UX Designer</h3>
                <ul>
                    <li><i class="fa-solid fa-check"></i> Design tools (Figma, Adobe XD)</li>
                    <li><i class="fa-solid fa-check"></i> User-centric design approach</li>
                    <li><i class="fa-solid fa-check"></i> Wireframing & prototyping</li>
                </ul>
            </div>

            <div class="job-card">
                <i class="fa-solid fa-bullhorn card-icon"></i>
                <h3>Digital Marketing Executive</h3>
                <ul>
                    <li><i class="fa-solid fa-check"></i> SEO & social media marketing</li>
                    <li><i class="fa-solid fa-check"></i> Ads & campaign management</li>
                    <li><i class="fa-solid fa-check"></i> Content creation & strategy</li>
                </ul>
            </div>

        </div>
    </div>

    <div class="process-section">
        <h2>Our Hiring Process</h2>
        <p>We ensure a smooth, fair, and transparent hiring process.</p>
        <div class="process-container">
            <div class="process-step">
                <div class="step-num">1</div>
                <h4>Application Submission</h4>
            </div>
            <div class="process-step">
                <div class="step-num">2</div>
                <h4>Resume Screening</h4>
            </div>
            <div class="process-step">
                <div class="step-num">3</div>
                <h4>Technical Interview</h4>
            </div>
            <div class="process-step">
                <div class="step-num">4</div>
                <h4>Final Discussion</h4>
            </div>
            <div class="process-step">
                <div class="step-num">5</div>
                <h4>Offer & Onboarding</h4>
            </div>
        </div>
    </div>

    <div class="section alt-bg">
        <div class="text">
            <h2>Who Can Apply?</h2>
            <ul class="feature-list">
                <li><i class="fa-solid fa-user-graduate"></i> Freshers & experienced professionals</li>
                <li><i class="fa-solid fa-laptop"></i> Developers, designers, and marketers</li>
                <li><i class="fa-solid fa-fire"></i> Startup enthusiasts looking for scale</li>
                <li><i class="fa-solid fa-lightbulb"></i> Passionate problem solvers & learners</li>
            </ul>
            
            <div class="cta-box">
                <h3>📩 Apply Now</h3>
                <p>If you are passionate about technology and growth, we’d love to hear from you!</p>
                <a href="mailto:info@iardo.in" class="apply-btn">
                    <i class="fa-solid fa-paper-plane"></i> Send your resume to careers@iardo.in
                </a>
            </div>
        </div>
        <img src="https://images.unsplash.com/photo-1556761175-b413da4baf72?w=800&auto=format&fit=crop" alt="Modern office workspace">
    </div>

</div> <jsp:include page="../includes/footer/footer.jsp" />

</body>
</html>
