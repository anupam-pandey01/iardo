<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us - Seller Onboarding and Digital Growth Experts | IARDO</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<script src="https://www.google.com/recaptcha/api.js?render=6Lcgz0IsAAAAAEoldmvjTXwU7yGuJPfYSseQtcJE"></script>

<style>
:root {
    --bg-light: #f4f7f9;
    --bg-white: #ffffff;
    --primary: #7c6cff;
    --primary-dark: #5a4bcf;
    --secondary: #ffb703;
    --text-dark: #111111;
    --text-gray: #444444;
    --text-muted: #666666;
    --border-light: rgba(0, 0, 0, 0.1);
    --border-solid: #e2e8f0;
    --shadow-soft: 0 10px 40px rgba(0,0,0,0.06);
    --shadow-heavy: 0 20px 60px rgba(0,0,0,0.1);
}

* { margin: 0; padding: 0; box-sizing: border-box; }

html, body {
    height: 100%;
    margin: 0;
    background-color: var(--bg-light);
    color: var(--text-dark);
    font-family: 'Segoe UI', system-ui, sans-serif;
    line-height: 1.6;
    overflow-x: hidden;
}

body.menu-open { overflow: hidden; }

.container { max-width: 1200px; margin: auto; padding: 0 20px; }

/* =====================================================
   SCROLL TO TOP
===================================================== */
.scroll-top {
    position: fixed;
    bottom: 30px; right: 30px;
    width: 50px; height: 50px;
    background: linear-gradient(135deg, #7c3aed, #3b82f6);
    color: #fff;
    border: none;
    border-radius: 50%;
    font-size: 18px;
    cursor: pointer;
    z-index: 9999;
    display: flex; align-items: center; justify-content: center;
    opacity: 0; visibility: hidden;
    transition: all 0.3s ease;
    box-shadow: 0 5px 20px rgba(124, 58, 237, 0.3);
}

.scroll-top.active { opacity: 1; visibility: visible; }
.scroll-top:hover { transform: translateY(-3px); box-shadow: 0 10px 30px rgba(124, 58, 237, 0.4); }

/* =====================================================
   CONTACT PAGE SPECIFIC STYLES
===================================================== */
.contact-wrapper {
    min-height: 100vh;
    position: relative;
    overflow: hidden;
    padding-top: 140px;
}

.contact-wrapper::before {
    content: '';
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background:
        radial-gradient(circle at 20% 50%, rgba(124, 58, 237, 0.05) 0%, transparent 50%),
        radial-gradient(circle at 80% 80%, rgba(59, 130, 246, 0.05) 0%, transparent 50%),
        radial-gradient(circle at 40% 20%, rgba(168, 85, 247, 0.05) 0%, transparent 50%);
    animation: gradientShift 15s ease infinite;
    pointer-events: none;
}

@keyframes gradientShift {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.8; transform: scale(1.1); }
}

.particle {
    position: absolute;
    background: rgba(124, 108, 255, 0.2);
    border-radius: 50%;
    pointer-events: none;
    animation: particleFloat 20s infinite;
}

.particle:nth-child(1) { width: 6px; height: 6px; top: 20%; left: 10%; animation-delay: 0s; }
.particle:nth-child(2) { width: 8px; height: 8px; top: 60%; left: 80%; animation-delay: 2s; }
.particle:nth-child(3) { width: 5px; height: 5px; top: 40%; left: 50%; animation-delay: 4s; }

@keyframes particleFloat {
    0%, 100% { transform: translateY(0) translateX(0); opacity: 0.5; }
    50% { transform: translateY(-50px) translateX(30px); opacity: 0.8; }
}

.contact-page {
    max-width: 1300px;
    margin: 0 auto 80px;
    display: grid;
    grid-template-columns: 1fr 1.2fr;
    gap: 50px;
    padding: 20px;
    position: relative;
    z-index: 10;
    animation: fadeInUp 0.8s ease-out;
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

.contact-info {
    background: var(--bg-white);
    color: var(--text-dark);
    padding: 50px 40px;
    border-radius: 30px;
    border: 1px solid var(--border-solid);
    box-shadow: var(--shadow-heavy);
    position: relative;
    overflow: hidden;
    animation: fadeInLeft 0.8s ease-out 0.2s backwards;
}

@keyframes fadeInLeft {
    from { opacity: 0; transform: translateX(-40px); }
    to { opacity: 1; transform: translateX(0); }
}

.contact-info::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 4px;
    background: linear-gradient(90deg, #7c3aed, #3b82f6, #a855f7);
}

.contact-info h2 {
    font-size: 34px;
    font-weight: 800;
    margin-bottom: 15px;
    color: var(--text-dark);
    letter-spacing: -0.5px;
    line-height: 1.2;
}

.subtitle {
    color: var(--text-gray);
    font-weight: 600;
    margin-bottom: 40px;
    line-height: 1.8;
    font-size: 15px;
}

.subtitle strong { color: var(--primary-dark); font-weight: 800; }

.contact-details { margin-bottom: 40px; }

.detail-item {
    display: flex;
    align-items: center;
    gap: 18px;
    margin-bottom: 20px;
    padding: 18px 20px;
    background: var(--bg-light);
    border-radius: 16px;
    border: 1px solid var(--border-solid);
    transition: all 0.3s ease;
    cursor: pointer;
}

.detail-item:hover {
    background: #ffffff;
    border-color: rgba(124, 58, 237, 0.4);
    box-shadow: 0 10px 20px rgba(124, 58, 237, 0.08);
    transform: translateX(5px);
}

.detail-item i {
    font-size: 22px;
    color: #7c3aed;
    width: 45px; height: 45px;
    display: flex; align-items: center; justify-content: center;
    background: rgba(124, 58, 237, 0.1);
    border-radius: 12px;
    transition: all 0.3s ease;
    flex-shrink: 0;
}

.detail-item:hover i { background: rgba(124, 58, 237, 0.2); transform: scale(1.1); color: var(--primary-dark); }

.detail-item a, .detail-item span {
    color: var(--text-dark);
    text-decoration: none;
    font-weight: 700;
    font-size: 16px;
    transition: color 0.3s ease;
}

.detail-item:hover a, .detail-item:hover span { color: var(--primary-dark); }

.social-links {
    display: flex;
    gap: 15px;
    margin-top: 30px;
    flex-wrap: wrap;
}

.social-links a {
    width: 48px; height: 48px;
    display: flex; align-items: center; justify-content: center;
    background: var(--bg-light);
    border-radius: 12px;
    font-size: 22px;
    border: 1px solid var(--border-solid);
    transition: all 0.3s ease;
    text-decoration: none;
    color: var(--text-gray);
}

.social-links a i { transition: color 0.3s ease; }
.social-links a:hover i { color: #ffffff !important; }
.social-links a[title="Facebook"]:hover  { background: #1877F2; border-color: #1877F2; box-shadow: 0 10px 20px rgba(24,119,242,0.3); transform: translateY(-3px); }
.social-links a[title="Twitter"]:hover   { background: #1DA1F2; border-color: #1DA1F2; box-shadow: 0 10px 20px rgba(29,161,242,0.3); transform: translateY(-3px); }
.social-links a[title="LinkedIn"]:hover  { background: #0A66C2; border-color: #0A66C2; box-shadow: 0 10px 20px rgba(10,102,194,0.3); transform: translateY(-3px); }
.social-links a[title="Instagram"]:hover { background: linear-gradient(45deg, #f09433, #e6683c, #dc2743, #cc2366, #bc1888); border-color: transparent; box-shadow: 0 10px 20px rgba(220,39,67,0.3); transform: translateY(-3px); }
.social-links a[title="YouTube"]:hover   { background: #FF0000; border-color: #FF0000; box-shadow: 0 10px 20px rgba(255,0,0,0.3); transform: translateY(-3px); }
.social-links a[title="WhatsApp"]:hover  { background: #25D366; border-color: #25D366; box-shadow: 0 10px 20px rgba(37,211,102,0.3); transform: translateY(-3px); }

.map-box {
    width: 100%;
    height: 250px;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: var(--shadow-soft);
    border: 1px solid var(--border-solid);
    margin-top: 30px;
    position: relative;
}

.map-box iframe { width: 100%; height: 100%; border: 0; }

.contact-form-box {
    background: var(--bg-white);
    padding: 50px 45px;
    border-radius: 30px;
    border: 1px solid var(--border-solid);
    box-shadow: var(--shadow-heavy);
    position: relative;
    overflow: hidden;
    animation: fadeInRight 0.8s ease-out 0.3s backwards;
}

@keyframes fadeInRight {
    from { opacity: 0; transform: translateX(40px); }
    to { opacity: 1; transform: translateX(0); }
}

.contact-form-box::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 4px;
    background: linear-gradient(90deg, #a855f7, #3b82f6, #7c3aed);
}

.contact-form-box h2 {
    margin-bottom: 30px;
    font-size: 36px;
    font-weight: 800;
    color: var(--text-dark);
    letter-spacing: -0.5px;
}

.form-group { margin-bottom: 24px; position: relative; }

.form-group label {
    display: block;
    margin-bottom: 10px;
    color: var(--text-dark);
    font-size: 15px;
    font-weight: 800;
    letter-spacing: 0.5px;
}

.contact-form-box input,
.contact-form-box textarea {
    width: 100%;
    padding: 16px 20px;
    background: var(--bg-light);
    border: 2px solid #cbd5e1;
    border-radius: 14px;
    color: var(--text-dark);
    font-size: 16px;
    font-weight: 700;
    font-family: inherit;
    transition: all 0.3s ease;
    outline: none;
}

.contact-form-box input::placeholder,
.contact-form-box textarea::placeholder { color: #888888; font-weight: 600; }

.contact-form-box input:focus,
.contact-form-box textarea:focus {
    background: #ffffff;
    border-color: #7c3aed;
    box-shadow: 0 0 0 4px rgba(124, 58, 237, 0.15);
}

.contact-form-box textarea { min-height: 140px; resize: vertical; }

.submit-btn {
    background: linear-gradient(135deg, #7c3aed, #3b82f6);
    color: #fff;
    border: none;
    padding: 18px 40px;
    border-radius: 14px;
    cursor: pointer;
    font-size: 17px;
    font-weight: 800;
    width: 100%;
    position: relative;
    overflow: hidden;
    transition: all 0.3s ease;
    letter-spacing: 0.5px;
}

.submit-btn::before {
    content: '';
    position: absolute;
    top: 0; left: -100%;
    width: 100%; height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
    transition: left 0.5s ease;
}

.submit-btn:hover::before { left: 100%; }
.submit-btn:hover { transform: translateY(-2px); box-shadow: 0 15px 30px rgba(124, 58, 237, 0.3); }
.submit-btn:active { transform: translateY(0); }

.hidden-field { display: none; }

.success-message {
    display: none;
    background: #f0fdf4;
    border: 1px solid #86efac;
    color: #166534;
    font-weight: 700;
    padding: 16px;
    border-radius: 12px;
    margin-bottom: 20px;
    text-align: center;
}

.loading { pointer-events: none; opacity: 0.7; }

.loading .submit-btn::after {
    content: '';
    position: absolute;
    width: 20px; height: 20px;
    top: 50%; left: 50%;
    margin: -10px 0 0 -10px;
    border: 3px solid rgba(255,255,255,0.3);
    border-radius: 50%;
    border-top-color: #fff;
    animation: spinner 0.6s linear infinite;
}

@keyframes spinner { to { transform: rotate(360deg); } }

@media (max-width: 1024px) {
    .contact-page { grid-template-columns: 1fr; gap: 40px; }
}

@media (max-width: 768px) {
    .scroll-top { bottom: 20px; right: 20px; width: 42px; height: 42px; font-size: 16px; }
    .contact-wrapper { padding-top: 100px; }
    .contact-page { padding: 15px; gap: 30px; }
    .contact-info, .contact-form-box { padding: 35px 25px; }
    .contact-info h2, .contact-form-box h2 { font-size: 28px; }
    .subtitle { font-size: 14px; }
    .detail-item { padding: 14px 16px; }
    .map-box { height: 200px; }
}

@media (max-width: 480px) {
    .contact-info h2, .contact-form-box h2 { font-size: 24px; }
    .contact-info, .contact-form-box { padding: 30px 20px; }
    .detail-item i { width: 35px; height: 35px; font-size: 18px; }
    .social-links a { width: 42px; height: 42px; font-size: 18px; }
}


</style>
</head>

<body>

<jsp:include page="/includes/navbar/navbar.jsp" />
<div id="google_translate_element" style="position:absolute;left:-9999px;"></div>

<button class="scroll-top" id="scrollTopBtn" aria-label="Scroll to top">
    <i class="fas fa-arrow-up"></i>
</button>

<div class="contact-wrapper">
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>

    <div class="contact-page">

        <div class="contact-info">
            <h2>Contact Us - Seller Onboarding and Digital Growth Experts</h2>
            <p class="subtitle">
                Looking for a reliable onboarding services company to start or grow your business online?<br><br>
                At IARDO, we provide expert support for <strong>seller onboarding services</strong>, ecommerce setup, and digital growth solutions. Whether you want to expand your business on marketplaces or need help with scaling, our team is here to guide you at every step.<br><br>
                If you are searching for an <strong>ecommerce service contact</strong> or a trusted <strong>digital marketing agency contact</strong>, we are ready to help you with the right strategy and execution.<br><br>
                Get in touch with us today for a free consultation and take your business to the next level.
            </p>

            <div class="contact-details">
                <div class="detail-item">
                    <i class="fa-solid fa-phone"></i>
                    <a href="tel:+919310194865">+91 9310194865</a>
                </div>
                <div class="detail-item">
                    <i class="fa-solid fa-envelope"></i>
                    <a href="mailto:info@iardo.in">info@iardo.in</a>
                </div>
                <div class="detail-item">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>714 - 715, Seventh Floor, Amba Tower, DC Chowk Central Market, Sector - 9, Rohini, Delhi - 110085</span>
                </div>
            </div>

            <div class="social-links">
                <a href="https://www.facebook.com/iardo.iardo.9/" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="https://x.com/iardo89143" title="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="https://www.linkedin.com/in/iardo-e-commerce-agency-3557b6238/" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://www.instagram.com/iardo_2016/" title="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="https://www.youtube.com/@iardo9986" title="YouTube"><i class="fab fa-youtube"></i></a>
                <a href="https://wa.me/9310194865" title="WhatsApp"><i class="fab fa-whatsapp"></i></a>
            </div>

            <div class="map-box">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3499.0273445448124!2d77.1249803!3d28.7187288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d015d15491e79%3A0xea53315a463db4a8!2sIARDO!5e0!3m2!1sen!2sin!4v1767609189736" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>

        <div class="contact-form-box">
            <h2>Send us a Message</h2>

            <div class="success-message" id="successMessage">
                Thank you! Your message has been sent successfully.
            </div>

            <form id="contactForm" action="${pageContext.request.contextPath}/contact" method="post">
                <input type="text" name="company_name" class="hidden-field" tabindex="-1">
                <input type="hidden" name="g-recaptcha-response" id="g-recaptcha-response">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="your.email@example.com" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="+91 XXXXX XXXXX" required>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" placeholder="Tell us about your project or inquiry..." required></textarea>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>

    </div>
</div>

<jsp:include page="/includes/footer/footer.jsp" />

<!-- <script>
(function () {

    var scrollBtn = document.getElementById('scrollTopBtn');
    if (scrollBtn) {
        window.addEventListener('scroll', function () {
            scrollBtn.classList.toggle('active', window.scrollY > 300);
        });
        scrollBtn.addEventListener('click', function () {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    }

    var hamburger  = document.getElementById('mainHamburger');
    var mobileMenu = document.getElementById('mainMobileMenu');

    if (hamburger && mobileMenu) {
        hamburger.addEventListener('click', function () {
            var isOpen = hamburger.classList.toggle('active');
            mobileMenu.classList.toggle('active', isOpen);
            document.body.classList.toggle('menu-open', isOpen);
        });

        mobileMenu.querySelectorAll('a:not(.mob-toggle)').forEach(function (link) {
            link.addEventListener('click', function () {
                hamburger.classList.remove('active');
                mobileMenu.classList.remove('active');
                document.body.classList.remove('menu-open');
            });
        });
    }

    document.querySelectorAll('.mob-toggle').forEach(function (toggle) {
        toggle.addEventListener('click', function (e) {
            e.preventDefault();
            var next = toggle.parentElement.querySelector(':scope > .mob-dropdown-menu, :scope > .mob-sub-menu');
            if (!next) return;
            var isOpen = next.classList.toggle('open');
            toggle.classList.toggle('open', isOpen);
        });
    });
})();
</script> -->

<script>
grecaptcha.ready(function () {
    document.getElementById("contactForm").addEventListener("submit", function (e) {
        e.preventDefault();
        var form = e.target;
        form.classList.add('loading');
        grecaptcha.execute("6Lcgz0IsAAAAAEoldmvjTXwU7yGuJPfYSseQtcJE", { action: "contact" })
        .then(function (token) {
            document.getElementById("g-recaptcha-response").value = token;
            form.submit();
        })
        .catch(function () {
            form.classList.remove('loading');
            alert('An error occurred. Please try again.');
        });
    });
});
</script>

</body>
</html>
