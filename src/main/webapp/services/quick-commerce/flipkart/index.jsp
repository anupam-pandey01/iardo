<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<title>Flipkart Seller Onboarding | Grow with IARDO</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">

<style>
/* ================= ROOT ================= */
:root{
  --fk-blue:#2874f0;
  --fk-dark:#0b1d39;
  --fk-light:#f4f8ff;
  --white:#fff;
  --gray:#555;
}

/* ================= GLOBAL ================= */
*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:'Inter',sans-serif;
  background:#fff;
  color:#111;
  overflow-x:hidden;
}
section{padding:7rem 2rem}

/* ================= HEADER ================= */
.header{
  position:fixed;
  top:0;
  width:100%;
  z-index:1000;
  background:rgba(255,255,255,.92);
  backdrop-filter:blur(14px);
  box-shadow:0 12px 40px rgba(0,0,0,.08);
}
.header-inner{
  max-width:1400px;
  margin:auto;
  padding:1.2rem 2rem;
  display:flex;
  align-items:center;
  justify-content:space-between;
}
.logo{
  font-size:1.8rem;
  font-weight:900;
  color:var(--fk-blue);
  text-decoration:none;
}
.nav{
  display:flex;
  gap:2.2rem;
}
.nav a{
  text-decoration:none;
  font-weight:500;
  color:#000;
}
.header-btn{
  background:var(--fk-blue);
  color:#fff;
  padding:.75rem 2rem;
  border-radius:40px;
  font-weight:700;
  text-decoration:none;
}

/* ================= HERO ================= */
.hero{
  margin-top:90px;
  min-height:95vh;
  background:linear-gradient(135deg,#e8f0ff,#ffffff);
  display:flex;
  align-items:center;
  position:relative;
  overflow:hidden;
}
.hero::after{
  content:'';
  position:absolute;
  right:-200px;
  top:-200px;
  width:600px;
  height:600px;
  background:radial-gradient(circle,var(--fk-blue),transparent 70%);
  opacity:.15;
}
.hero-container{
  max-width:1400px;
  margin:auto;
  display:grid;
  grid-template-columns:1.1fr 1fr;
  gap:4rem;
  padding:0 2rem;
}
.hero h1{
  font-size:clamp(3rem,6vw,4.6rem);
  font-weight:900;
}
.hero h1 span{color:var(--fk-blue)}
.hero p{
  font-size:1.2rem;
  margin:1.8rem 0 3rem;
  color:#333;
}
.hero-actions{
  display:flex;
  gap:1rem;
  flex-wrap:wrap;
}
.btn{
  padding:1.2rem 2.8rem;
  border-radius:50px;
  font-weight:800;
  text-decoration:none;
}
.btn-primary{
  background:var(--fk-blue);
  color:#fff;
}
.btn-outline{
  border:2px solid var(--fk-blue);
  color:var(--fk-blue);
}
.hero-image img{
  width:100%;
  border-radius:36px;
  box-shadow:0 80px 180px rgba(0,0,0,.3);
  animation:float 6s ease-in-out infinite;
}
@keyframes float{
  0%,100%{transform:translateY(0)}
  50%{transform:translateY(-20px)}
}

/* ================= STATS ================= */
.stats{
  background:#fff;
}
.stats-grid{
  max-width:1200px;
  margin:auto;
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
  gap:3rem;
}
.stat{
  text-align:center;
}
.stat h3{
  font-size:3rem;
  color:var(--fk-blue);
}
.stat p{color:#555}

/* ================= FEATURES ================= */
.features{
  background:var(--fk-light);
}
.features-grid{
  max-width:1400px;
  margin:auto;
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
  gap:3rem;
}
.feature{
  background:#fff;
  padding:3rem;
  border-radius:28px;
  box-shadow:0 40px 100px rgba(0,0,0,.1);
  transition:.4s;
}
.feature:hover{
  transform:translateY(-16px);
}
.feature span{
  font-size:3rem;
  display:block;
  margin-bottom:1rem;
}

/* ================= PROCESS ================= */
.process{
  background:#fff;
}
.timeline{
  max-width:1100px;
  margin:auto;
}
.step{
  display:grid;
  grid-template-columns:80px 1fr;
  gap:2rem;
  padding:2.4rem;
  margin-bottom:2rem;
  border-radius:26px;
  box-shadow:0 25px 80px rgba(0,0,0,.12);
}
.step b{
  font-size:2.4rem;
  color:var(--fk-blue);
}

/* ================= CTA ================= */
.cta{
  background:linear-gradient(135deg,var(--fk-blue),#0b4fd8);
  color:#fff;
  text-align:center;
}
.cta h2{
  font-size:3rem;
  margin-bottom:1.2rem;
}

/* ================= FOOTER ================= */
.footer{
  background:#0b1d39;
  color:#ccc;
  padding:4rem 2rem;
}
.footer-inner{
  max-width:1400px;
  margin:auto;
  text-align:center;
}

/* ================= ANIMATION ================= */
.reveal{
  opacity:0;
  transform:translateY(40px);
  transition:1s cubic-bezier(.2,.8,.2,1);
}
.reveal.show{
  opacity:1;
  transform:none;
}

/* ================= MOBILE ================= */
@media(max-width:900px){
  .hero-container{grid-template-columns:1fr;text-align:center}
  .hero-actions{justify-content:center}
}
</style>
</head>

<body>
<%@ include file="../../../includes/navbar/navbar.jsp" %>
<!-- HERO -->
<section class="hero">
  <div class="hero-container">
    <div class="reveal">
      <h1>Sell on <span>Flipkart</span><br>with Confidence</h1>
      <p>India’s largest marketplace meets IARDO’s advanced seller enablement.</p>
      <div class="hero-actions">
        <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">Start Onboarding</a>
        <a href="#features" class="btn btn-outline">Explore Benefits</a>
      </div>
    </div>
    <div class="hero-image reveal">
      <img src="https://iardo.pages.dev/flipkart1.webp">
    </div>
  </div>
</section>

<!-- STATS -->
<section class="stats">
  <div class="stats-grid">
    <div class="stat reveal"><h3>10L+</h3><p>Active Sellers</p></div>
    <div class="stat reveal"><h3>27K+</h3><p>Pincodes Served</p></div>
    <div class="stat reveal"><h3>190M+</h3><p>Customers</p></div>
    <div class="stat reveal"><h3>24x7</h3><p>Seller Support</p></div>
  </div>
</section>

<!-- FEATURES -->
<section class="features" id="features">
  <div class="features-grid">
    <div class="feature reveal"><span>📦</span><h3>Seller Setup</h3><p>GST, KYC, Bank & Account Activation</p></div>
    <div class="feature reveal"><span>📸</span><h3>Catalog Excellence</h3><p>SEO titles, images & pricing</p></div>
    <div class="feature reveal"><span>🚚</span><h3>Logistics Support</h3><p>Flipkart Fulfilment & Self Ship</p></div>
    <div class="feature reveal"><span>📊</span><h3>Growth Strategy</h3><p>Ads, analytics & scale planning</p></div>
  </div>
</section>

<!-- PROCESS -->
<section class="process" id="process">
  <div class="timeline">
    <div class="step reveal"><b>1</b><div><h3>Register</h3><p>Submit GST & documents</p></div></div>
    <div class="step reveal"><b>2</b><div><h3>List Products</h3><p>High-conversion listings</p></div></div>
    <div class="step reveal"><b>3</b><div><h3>Go Live</h3><p>QC approval & launch</p></div></div>
    <div class="step reveal"><b>4</b><div><h3>Scale</h3><p>Ads, insights & expansion</p></div></div>
  </div>
</section>

<!-- CTA -->
<section class="cta">
  <h2>Start Selling on Flipkart Today</h2>
  <p>Partner with IARDO & grow faster</p><br>
  <a href="${pageContext.request.contextPath}/noon-onboarding/schedule-meeting/" class="btn btn-primary">Book Free Consultation</a>
</section>

<jsp:include page="../../../includes/footer/footer.jsp" />
<script>
const reveal = document.querySelectorAll('.reveal');
const io = new IntersectionObserver(entries=>{
  entries.forEach(e=>{
    if(e.isIntersecting){e.target.classList.add('show')}
  })
},{threshold:.15});
reveal.forEach(el=>io.observe(el));
</script>

</body>
</html>
