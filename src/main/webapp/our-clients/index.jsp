<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Our Clients | IARDO</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<style>
/* ================= ROOT & LIGHT THEME VARIABLES ================= */
:root {
  --bg: #ffffff;
  --bg-alt: #f8fafc;
  --card: #ffffff;
  --accent: #FF6B35;      /* Main Orange Accent */
  --accent-light: #FF9B75;
  --text-main: #0f172a;   /* Dark text for visibility */
  --text-muted: #475569;  /* Gray text for descriptions */
  --border: #e2e8f0;      /* Light border color */
  --font-main: 'Poppins', sans-serif;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: var(--font-main);
  background: var(--bg);
  color: var(--text-main);
  overflow-x: hidden;
  font-weight: 500;
  -webkit-font-smoothing: antialiased;
}

/* ================= HERO ================= */
.hero {
  padding: 160px 20px 60px; /* Adjusted padding to clear navbar */
  text-align: center;
  background: linear-gradient(135deg, #ffffff 0%, #fff6f2 100%);
  border-bottom: 1px solid var(--border);
}

.hero h1 {
  font-size: clamp(34px, 5vw, 58px);
  font-weight: 900;
  background: linear-gradient(90deg, var(--text-main), var(--accent));
  -webkit-background-clip: text;
  color: transparent;
  margin-bottom: 15px;
}

.hero p {
  max-width: 760px;
  margin: 0 auto 20px;
  color: var(--text-muted);
  font-size: 18px;
  font-weight: 600;
}

/* ================= STATS ================= */
.stats {
  display: flex;
  justify-content: center;
  gap: 50px;
  flex-wrap: wrap;
  margin-top: 40px;
}

.stat {
  text-align: center;
}

.stat h2 {
  font-size: 42px;
  font-weight: 900;
  color: var(--accent);
}

.stat p {
  color: var(--text-main);
  font-size: 14px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

/* ================= FILTER BAR ================= */
.filter-bar {
  max-width: 1100px;
  margin: 50px auto 30px;
  padding: 0 20px;
  display: flex;
  gap: 15px;
  flex-wrap: wrap;
  justify-content: space-between;
}

.search {
  flex: 1;
}

.search input {
  width: 100%;
  padding: 14px 18px;
  border-radius: 30px;
  border: 1px solid var(--border);
  outline: none;
  background: var(--bg-alt);
  color: var(--text-main);
  font-family: var(--font-main);
  font-weight: 500;
  transition: 0.3s;
}

.search input:focus {
  border-color: var(--accent);
  box-shadow: 0 0 10px rgba(255, 107, 53, 0.1);
  background: var(--card);
}

.filters {
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
}

.filters button {
  background: var(--bg-alt);
  color: var(--text-muted);
  border: 1px solid var(--border);
  padding: 12px 20px;
  border-radius: 30px;
  cursor: pointer;
  transition: .3s;
  font-family: var(--font-main);
  font-weight: 600;
}

.filters button.active,
.filters button:hover {
  background: var(--accent);
  color: #fff;
  border-color: var(--accent);
}

/* ================= GRID ================= */
.wrapper {
  max-width: 1400px;
  margin: auto;
  padding: 40px 20px 120px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 28px;
}

/* ================= CARD ================= */
.card {
  height: 120px;
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  overflow: hidden;
  opacity: 0;
  transform: translateY(40px) scale(.96);
  transition: .6s cubic-bezier(.22,1,.36,1);
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.02);
  padding: 15px;
}

.card.reveal {
  opacity: 1;
  transform: none;
}

.card:hover {
  transform: translateY(-6px) scale(1.05);
  box-shadow: 0 15px 35px rgba(255, 107, 53, 0.15);
  border-color: var(--accent);
}

.card img {
  max-width: 90%;
  max-height: 85px;
  object-fit: contain;
  transition: .4s;
  
  
   /* Removes white background from logos */
}

.card:hover img {
  filter: grayscale(0%);
  opacity: 1;
  transform: scale(1.1);
}

/* ================= LOADING CARD ================= */
.loading-card {
  height: 120px;
  background: var(--bg-alt);
  border: 1px dashed #cbd5e1;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 12px;
  position: relative;
  overflow: hidden;
  opacity: 0;
  transform: translateY(40px) scale(.96);
  transition: .6s cubic-bezier(.22,1,.36,1);
}

.loading-card.reveal {
  opacity: 1;
  transform: none;
}

.loading-text {
  font-size: 13px;
  font-weight: 700;
  letter-spacing: 2px;
  color: var(--accent);
  text-transform: uppercase;
}

.loading-bar {
  width: 100px;
  height: 6px;
  background: #e2e8f0;
  border-radius: 6px;
  overflow: hidden;
  position: relative;
}

.loading-progress {
  height: 100%;
  background: linear-gradient(90deg, var(--accent), var(--accent-light));
  border-radius: 6px;
  animation: loading 2s ease-in-out infinite;
}

@keyframes loading {
  0% { width: 0%; margin-left: 0%; }
  50% { width: 80%; margin-left: 10%; }
  100% { width: 100%; margin-left: 100%; }
}

/* ================= MARQUEE ================= */
.marquee {
  overflow: hidden;
  margin: 60px 0 0;
  padding: 40px 0;
  background: var(--bg-alt);
  border-top: 1px solid var(--border);
  border-bottom: 1px solid var(--border);
}

.marquee-track {
  display: flex;
  gap: 80px;
  padding: 0 30px;
  align-items: center;
  animation: scroll 35s linear infinite;
  width: max-content;
}

.marquee img {
  height: 45px;
  object-fit: contain;
  
  
  
  transition: 0.3s ease;
}

.marquee img:hover {
  filter: grayscale(0%);
  opacity: 1;
  transform: scale(1.1);
}

@keyframes scroll {
  from { transform: translateX(0); }
  to { transform: translateX(-50%); }
}

/* ================= SCROLL TO TOP ================= */
.scroll-to-top {
  position: fixed;
  bottom: 40px;
  right: 40px;
  width: 56px;
  height: 56px;
  background: linear-gradient(135deg, var(--accent), var(--accent-light));
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  opacity: 0;
  visibility: hidden;
  transform: scale(0.8);
  transition: all 0.4s cubic-bezier(.22,1,.36,1);
  box-shadow: 0 8px 25px rgba(255, 107, 53, 0.3);
  z-index: 999;
  border: none;
}

.scroll-to-top.visible {
  opacity: 1;
  visibility: visible;
  transform: scale(1);
}

.scroll-to-top:hover {
  transform: scale(1.1) translateY(-3px);
  box-shadow: 0 12px 35px rgba(255, 107, 53, 0.5);
}

.scroll-to-top svg {
  width: 24px;
  height: 24px;
  stroke: #fff;
  stroke-width: 3;
  stroke-linecap: round;
  stroke-linejoin: round;
  fill: none;
}

/* ================= MOBILE ================= */
@media(max-width:768px){
  .hero { padding: 120px 20px 40px; }
  .stats { gap: 25px; flex-direction: column; }
  .stat h2 { font-size: 32px; }
  .grid { gap: 18px; grid-template-columns: repeat(auto-fill, minmax(130px, 1fr)); }
  .card { height: 100px; padding: 12px; }
  .card img { max-height: 65px; }
  .loading-card { height: 100px; }
  .filter-bar { flex-direction: column; }
  .filters { justify-content: center; }
  .marquee { padding: 30px 0; }
  .marquee img { height: 35px; }
  .scroll-to-top {
    bottom: 25px;
    right: 25px;
    width: 50px;
    height: 50px;
  }
}
</style>
</head>
<body>

<jsp:include page="../includes/navbar/navbar.jsp" />

<section class="hero">
  <h1>Brands That Trust IARDO</h1>
  <p>
    From global marketplaces to institutions and fast-growing startups,
    our partnerships span industries, borders, and scale.
  </p>
<div class="stats">
  <div class="stat">
    <h2 data-count="200000" data-suffix=" Lakhs+">0</h2>
    <p>Clients (E-commerce Sellers)</p>
  </div>

  <div class="stat">
    <h2 data-count="4000" data-suffix="+">0</h2>
    <p>Clients (Quick Commerce)</p>
  </div>

  <div class="stat">
    <h2 data-count="10" data-suffix="+">0</h2>
    <p>Years Experience</p>
  </div>
  <div class="stat">
    <h2 data-count="30" data-suffix="+">0</h2>
    <p>Marketplaces</p>
  </div>
</div>
</section>

<section class="wrapper">
  <div class="grid" id="grid"></div>
</section>

<div class="marquee">
  <div class="marquee-track" id="marquee"></div>
</div>

<button class="scroll-to-top" id="scrollToTop" aria-label="Scroll to top">
  <svg viewBox="0 0 24 24">
    <polyline points="18 15 12 9 6 15"></polyline>
  </svg>
</button>

<script>
/* ================= SCROLL TO TOP BUTTON ================= */
const scrollToTopBtn = document.getElementById("scrollToTop");

window.addEventListener("scroll", () => {
  if (window.pageYOffset > 300) {
    scrollToTopBtn.classList.add("visible");
  } else {
    scrollToTopBtn.classList.remove("visible");
  }
});

scrollToTopBtn.addEventListener("click", () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
});

/* ================= LOGOS ================= */
const TOTAL = 507;
const BASE1 = "https://iardo-assets.pages.dev/client-logo/"; 

const grid = document.getElementById("grid");
const marquee = document.getElementById("marquee");

for(let i = 1; i <= TOTAL; i++){
  const card = document.createElement("div");
  card.className = "card";
  const img = document.createElement("img");

  img.src = BASE1 + i + ".webp";
  img.loading = "lazy";
  img.alt = `Client Logo ${i}`;
  
  card.appendChild(img);
  grid.appendChild(card);

  // Marquee Track Setup (Single Loop for smoothness)
  if(i <= 20){
    const m = document.createElement("img");
    m.src = img.src;
    m.alt = `Marquee Logo ${i}`;
    marquee.appendChild(m);
  }
}

// Clone marquee content to make the infinite scroll smooth
const marqueeContent = marquee.innerHTML;
marquee.innerHTML = marqueeContent + marqueeContent;

/* ================= ADD LOADING CARD ================= */
const loadingCard = document.createElement("div");
loadingCard.className = "loading-card";
loadingCard.innerHTML = `
  <div class="loading-text">LOADING...</div>
  <div class="loading-bar">
    <div class="loading-progress"></div>
  </div>
`;
grid.appendChild(loadingCard);

/* ================= REVEAL ================= */
const io = new IntersectionObserver(e => {
  e.forEach(x => {
    if(x.isIntersecting){
      x.target.classList.add("reveal");
      io.unobserve(x.target);
    }
  });
}, { threshold: .15 });

setTimeout(() => {
    document.querySelectorAll(".card, .loading-card").forEach(c => io.observe(c));
}, 100);

/* ================= COUNTERS ================= */
const counters = document.querySelectorAll(".stat h2");

counters.forEach(counter => {
  const target = +counter.getAttribute("data-count");
  const suffix = counter.getAttribute("data-suffix") || "";
  const speed = 200;

  const updateCount = () => {
    const current = +counter.innerText.replace(/\D/g, "");
    const increment = Math.ceil(target / speed);

    if(current < target){
      counter.innerText = current + increment;
      setTimeout(updateCount, 20);
    } else {
      if(target >= 100000){
        counter.innerText = (target / 100000) + suffix;
      } else {
        counter.innerText = target + suffix;
      }
    }
  };

  // Trigger counter only when visible
  const counterObserver = new IntersectionObserver((entries) => {
      if(entries[0].isIntersecting) {
          updateCount();
          counterObserver.disconnect();
      }
  });
  
  counterObserver.observe(counter);
});

</script>

<jsp:include page="../includes/footer/footer.jsp" />
</body>
</html>
