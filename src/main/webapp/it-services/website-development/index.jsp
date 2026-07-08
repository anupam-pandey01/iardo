<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>IARDO — Get a Website That Brings You Customers</title>
<meta name="description" content="IARDO builds fast, modern, high-converting websites for businesses across India. Free quote on WhatsApp. Fixed price, money-back guarantee." />
<link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<link rel="apple-touch-icon" href="https://iardo.pages.dev/logo_iardo_wbg.webp">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&family=Source+Serif+4:ital,opsz,wght@0,8..60,300;0,8..60,400;0,8..60,600;1,8..60,300;1,8..60,400&display=swap" rel="stylesheet">

<style>
:root {
  --bg:         #F0F4FF;
  --border:     #D1D9F0;
  --dark:       #1A1F3C;
  --accent:     #6C63FF;
  --accent-dk:  #5248d4;
  --accent-lt:  #E8ECFF;
  --coral:      #FF6B6B;
  --coral-lt:   #FFF0F0;
  --surface:    #ffffff;
  --surface-2:  #F5F7FF;
  --text-body:  #3D4466;
  --text-muted: #8B91B3;
  --grad:       linear-gradient(135deg, #6C63FF 0%, #FF6B6B 100%);
  --grad-r:     linear-gradient(135deg, #FF6B6B 0%, #6C63FF 100%);
  --shadow-sm:  0 2px 10px rgba(108,99,255,0.07), 0 1px 3px rgba(26,31,60,0.05);
  --shadow:     0 8px 32px rgba(108,99,255,0.13), 0 2px 8px rgba(26,31,60,0.06);
  --shadow-lg:  0 20px 60px rgba(108,99,255,0.17), 0 6px 20px rgba(26,31,60,0.08);
  --font:       'Source Serif 4', Georgia, serif;
  --display:    'Montserrat', sans-serif;
  --container:  1140px;
  --gutter:     clamp(18px, 4vw, 44px);
  --radius:     18px;
}

*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
html { scroll-behavior: smooth; }
body {
  font-family: var(--font);
  background: var(--bg);
  color: var(--text-body);
  font-size: 16px; line-height: 1.7;
  -webkit-font-smoothing: antialiased;
  overflow-x: hidden;
}
img { max-width: 100%; display: block; }
a { color: inherit; text-decoration: none; }
button { font-family: var(--display); cursor: pointer; border: none; background: none; }
::selection { background: var(--accent); color: #fff; }
.container { max-width: var(--container); margin: 0 auto; padding: 0 var(--gutter); }

h1,h2,h3,h4,h5,h6 { font-family: var(--display); color: var(--dark); letter-spacing: -0.02em; line-height: 1.1; font-weight: 700; }
p,li,span,td,th,label { font-family: var(--font); }
a, button { font-family: var(--display); }

.grad-txt {
  background: var(--grad);
  -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent;
}
.icon { width:24px;height:24px;stroke:currentColor;fill:none;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;display:block; }

.eyebrow {
  display: inline-flex; align-items: center; gap: 8px;
  font-family: var(--display); font-size: 11px; font-weight: 800;
  text-transform: uppercase; letter-spacing: 0.12em;
  color: var(--accent); margin-bottom: 16px;
  padding: 7px 16px; border-radius: 100px;
  background: var(--accent-lt); border: 1.5px solid rgba(108,99,255,0.2);
}

/* ── BUTTONS ── */
.wa-btn {
  display: inline-flex; align-items: center; justify-content: center; gap: 10px;
  background: #25D366; color: #fff;
  font-family: var(--display); font-size: 15px; font-weight: 700;
  padding: 15px 28px; border-radius: 14px;
  transition: transform .22s, box-shadow .22s;
  box-shadow: 0 8px 22px rgba(37,211,102,0.32);
}
.wa-btn:hover { transform: translateY(-3px); box-shadow: 0 14px 36px rgba(37,211,102,0.46); }
.wa-btn svg { width:22px;height:22px;fill:#fff; }

.btn-ghost {
  display: inline-flex; align-items: center; gap: 9px;
  font-family: var(--display); font-size: 14px; font-weight: 700;
  padding: 14px 24px; border-radius: 14px;
  border: 1.5px solid var(--border); color: var(--dark);
  background: var(--surface); transition: all .22s;
}
.btn-ghost:hover { border-color: var(--accent); color: var(--accent); transform: translateY(-2px); box-shadow: var(--shadow-sm); }
.btn-ghost svg { width:18px;height:18px;stroke:currentColor; }

/* ── NAV ── */

/* ── HERO ── */
.hero {
  padding: 140px 0 70px;
  position: relative; overflow: hidden; background: var(--bg);
}
.hero-blob-1 { position:absolute;top:-140px;right:-100px;width:580px;height:580px;border-radius:50%;background:radial-gradient(circle,rgba(108,99,255,0.13) 0%,transparent 65%);pointer-events:none; }
.hero-blob-2 { position:absolute;bottom:-80px;left:-120px;width:460px;height:460px;border-radius:50%;background:radial-gradient(circle,rgba(255,107,107,0.10) 0%,transparent 65%);pointer-events:none; }
.hero-dots { position:absolute;inset:0;background-image:radial-gradient(rgba(108,99,255,0.07) 1px,transparent 1px);background-size:34px 34px;pointer-events:none; }

.hero-grid { display: grid; grid-template-columns: 1.1fr 1fr; gap: 56px; align-items: center; position: relative; z-index: 1; }
@media (max-width: 980px) { .hero-grid { grid-template-columns: 1fr; gap: 48px; } }

.urgency {
  display: inline-flex; align-items: center; gap: 9px;
  font-family: var(--display); font-size: 12px; font-weight: 800;
  color: #92400E; background: #FFFBEB; border: 1.5px solid #FDE68A;
  padding: 7px 16px; border-radius: 100px; margin-bottom: 18px;
  text-transform: uppercase; letter-spacing: 0.07em;
}
.urgency .udot { width:8px;height:8px;border-radius:50%;background:#F59E0B;box-shadow:0 0 0 0 rgba(245,158,11,0.5);animation:upulse 1.8s infinite; }
@keyframes upulse{0%{box-shadow:0 0 0 0 rgba(245,158,11,0.5);}70%{box-shadow:0 0 0 7px rgba(245,158,11,0);}100%{box-shadow:0 0 0 0 rgba(245,158,11,0);}}

.hero h1 { font-size: clamp(38px, 5.6vw, 68px); margin-bottom: 20px; line-height: 1.04; }
.hero-sub { font-family: var(--font); font-size: clamp(16px, 1.5vw, 19px); color: var(--text-muted); max-width: 48ch; margin-bottom: 32px; line-height: 1.75; font-style: italic; font-weight: 300; }
.hero-ctas { display: flex; gap: 14px; flex-wrap: wrap; align-items: center; margin-bottom: 30px; }

.hero-rating { display: flex; align-items: center; gap: 14px; flex-wrap: wrap; }
.rating-avatars { display: flex; }
.rating-avatars span { width:32px;height:32px;border-radius:50%;border:2.5px solid #fff;margin-left:-10px;display:flex;align-items:center;justify-content:center;font-family:var(--display);font-size:12px;font-weight:800;color:#fff; }
.rating-avatars span:first-child { margin-left:0; }
.ra-1{background:var(--accent);}.ra-2{background:var(--coral);}.ra-3{background:#1A1F3C;}.ra-4{background:#8B7FFF;}
.rating-meta .rating-stars { color:#FFB800;letter-spacing:1px;font-size:14px; }
.rating-meta .rating-text { font-family:var(--display);font-size:13px;font-weight:700;color:var(--text-body); }
.rating-meta .rating-text b { color:var(--dark); }

/* Browser mockup */
.hero-visual { position: relative; }
.browser {
  background: var(--surface); border: 1.5px solid var(--border);
  border-radius: 20px; overflow: hidden; box-shadow: var(--shadow-lg);
  transform: perspective(1000px) rotateY(-4deg) rotateX(2deg);
  transition: transform .6s ease;
}
.browser:hover { transform: perspective(1000px) rotateY(-1deg) rotateX(0); }
.browser-bar { display:flex;align-items:center;gap:7px;padding:13px 16px;background:var(--surface-2);border-bottom:1.5px solid var(--border); }
.bdot{width:11px;height:11px;border-radius:50%;}
.bdot.r{background:#FF5F57;}.bdot.y{background:#FEBC2E;}.bdot.g{background:#28C840;}
.browser-url { margin-left:10px;flex:1;background:var(--bg);border:1px solid var(--border);border-radius:7px;padding:6px 14px;font-family:var(--display);font-size:12px;color:var(--text-muted);display:flex;align-items:center;gap:7px; }
.browser-url svg { width:12px;height:12px;stroke:#11C74F; }
.browser-body { padding: 20px; }
.bm-hero { background:var(--grad);border-radius:12px;padding:20px;color:#fff;margin-bottom:14px; }
.bm-hero h4 { font-family:var(--display);font-size:17px;margin-bottom:5px;color:#fff;font-weight:800; }
.bm-hero p { font-family:var(--font);font-size:12px;opacity:0.88;margin-bottom:13px; }
.bm-btn { display:inline-block;background:#fff;color:var(--accent);font-family:var(--display);font-size:11px;font-weight:800;padding:7px 15px;border-radius:7px;text-transform:uppercase;letter-spacing:0.05em; }
.bm-grid { display:grid;grid-template-columns:1fr 1fr 1fr;gap:9px;margin-bottom:13px; }
.bm-card { background:var(--surface-2);border:1px solid var(--border);border-radius:9px;padding:12px;text-align:center; }
/* Image inside browser card */

/* Image inside browser card */
.bm-card .bm-img { width:100%;height:80px;border-radius:8px;margin:0 0 8px 0;overflow:hidden;background:var(--accent-lt);display:flex;align-items:center;justify-content:center; }
.bm-card .bm-img img { width:100%;height:100%;object-fit:cover;border-radius:8px; }
.bm-card span { font-family:var(--display);font-size:10px;font-weight:700;color:var(--text-body);text-transform:uppercase;letter-spacing:0.04em; }
.bm-line{height:8px;border-radius:5px;background:var(--bg);margin-bottom:8px;}
.bm-line.w70{width:70%;}.bm-line.w50{width:50%;}

.hero-badge-float { position:absolute;background:var(--surface);border:1.5px solid var(--border);border-radius:16px;padding:12px 16px;box-shadow:var(--shadow);display:flex;align-items:center;gap:11px;animation:floatY 3.5s ease-in-out infinite; }
.hbf-1{bottom:-18px;left:-24px;animation-delay:0s;}
.hbf-2{top:32px;right:-26px;animation-delay:1.6s;}
@keyframes floatY{0%,100%{transform:translateY(0);}50%{transform:translateY(-8px);}}
.hbf-ico { width:38px;height:38px;border-radius:10px;overflow:hidden;flex-shrink:0;display:flex;align-items:center;justify-content:center; }
.hbf-ico img { width:100%;height:100%;object-fit:cover; }
.hbf-ico.grad { background:var(--grad); }
.hbf-text .hbf-big { font-family:var(--display);font-size:16px;font-weight:900;line-height:1;color:var(--dark); }
.hbf-text .hbf-sm { font-family:var(--display);font-size:11px;color:var(--text-muted);margin-top:2px;text-transform:uppercase;letter-spacing:0.04em;font-weight:600; }
@media(max-width:480px){.hero-badge-float{display:none;}}

/* ── TRUST STRIP ── */
.trust-strip { padding:36px 0;border-top:1.5px solid var(--border);border-bottom:1.5px solid var(--border);background:var(--surface); }
.trust-label { text-align:center;font-family:var(--display);font-size:11px;font-weight:800;text-transform:uppercase;letter-spacing:0.12em;color:var(--text-muted);margin-bottom:22px; }
.trust-logos { display:flex;align-items:center;justify-content:center;gap:12px;flex-wrap:wrap; }
.trust-logo { display:inline-flex;align-items:center;gap:10px;padding:9px 18px;background:var(--surface-2);border:1.5px solid var(--border);border-radius:12px;font-family:var(--display);font-weight:800;font-size:13px;color:var(--dark);box-shadow:var(--shadow-sm);transition:all .22s;text-transform:uppercase;letter-spacing:0.04em; }
.trust-logo:hover { transform:translateY(-3px);border-color:var(--accent);color:var(--accent);box-shadow:var(--shadow); }
.trust-logo .t-img { width:22px;height:22px;object-fit:contain; }
.trust-logo .lg-dot{width:9px;height:9px;border-radius:50%;}

/* ── SECTIONS ── */
section { padding: 80px 0; position: relative; }
@media(max-width:768px){ section { padding: 58px 0; } }
.sec-head { text-align:center;max-width:660px;margin:0 auto 52px; }
.sec-head .eyebrow { margin-left:auto;margin-right:auto; }
.sec-head h2 { font-size:clamp(30px,4.2vw,50px);margin-bottom:14px; }
.sec-head p { font-family:var(--font);font-size:17px;color:var(--text-muted);line-height:1.7;font-style:italic;font-weight:300; }

/* ── SERVICES ── */
.services { background: var(--bg); }
.svc-grid { display:grid;grid-template-columns:repeat(4,1fr);gap:18px; }
@media(max-width:880px){.svc-grid{grid-template-columns:repeat(2,1fr);}}
@media(max-width:520px){.svc-grid{grid-template-columns:1fr;}}
.svc-card {
  background:var(--surface);border:1.5px solid var(--border);
  border-radius:var(--radius);padding:28px 24px;
  transition:transform .3s,box-shadow .3s,border-color .3s;
  box-shadow:var(--shadow-sm);position:relative;overflow:hidden;
}
.svc-card::after { content:'';position:absolute;bottom:-50px;right:-50px;width:130px;height:130px;border-radius:50%;background:radial-gradient(circle,rgba(108,99,255,0.06),transparent 70%);pointer-events:none; }
.svc-card::before { content:'';position:absolute;top:0;left:0;right:0;height:3px;background:var(--grad);transform:scaleX(0);transform-origin:left;transition:transform .3s ease; }
.svc-card:hover { transform:translateY(-6px);box-shadow:var(--shadow);border-color:rgba(108,99,255,0.28); }
.svc-card:hover::before { transform:scaleX(1); }
/* Image replacing icon */
.svc-img-wrap { width:64px;height:64px;border-radius:16px;overflow:hidden;margin-bottom:18px;background:var(--accent-lt);flex-shrink:0;display:flex;align-items:center;justify-content:center; }
.svc-img-wrap img { width:100%;height:100%;object-fit:cover; }
.svc-card h3 { font-family:var(--display);font-size:18px;margin-bottom:9px;font-weight:800;color:var(--dark); }
.svc-card p { font-family:var(--font);font-size:14.5px;color:var(--text-muted);line-height:1.6; }

/* coral variant */
.svc-card.coral-card::before { background:linear-gradient(135deg,#FF6B6B,#FFB347); }
.svc-card.coral-card:hover { border-color:rgba(255,107,107,0.3); }
.svc-card.coral-card .svc-img-wrap { background:var(--coral-lt); }

/* ── WHY US ── */
.why { background: var(--surface-2); }
.why-grid { display:grid;grid-template-columns:repeat(4,1fr);gap:18px; }
@media(max-width:880px){.why-grid{grid-template-columns:repeat(2,1fr);}}
@media(max-width:520px){.why-grid{grid-template-columns:1fr;}}
.why-card {
  background:var(--surface);border:1.5px solid var(--border);
  border-radius:var(--radius);padding:26px 22px;
  transition:transform .3s,box-shadow .3s,border-color .3s;
  box-shadow:var(--shadow-sm);
}
.why-card:hover { transform:translateY(-5px);box-shadow:var(--shadow);border-color:rgba(108,99,255,0.25); }
.why-img-wrap { width:56px;height:56px;border-radius:14px;overflow:hidden;margin-bottom:16px;background:var(--accent-lt);display:flex;align-items:center;justify-content:center;transition:background .3s; }
.why-img-wrap img { width:100%;height:100%;object-fit:cover; }
.why-card:hover .why-img-wrap { background:var(--grad); }
.why-card h3 { font-family:var(--display);font-size:17px;margin-bottom:8px;font-weight:800;color:var(--dark); }
.why-card p { font-family:var(--font);font-size:14px;color:var(--text-muted);line-height:1.6; }

/* ── PROCESS ── */
.process { background: var(--bg); }
.steps { display:grid;grid-template-columns:repeat(4,1fr);gap:20px; }
@media(max-width:880px){.steps{grid-template-columns:repeat(2,1fr);}}
@media(max-width:520px){.steps{grid-template-columns:1fr;}}
.step {
  position:relative;padding:28px 22px;
  background:var(--surface);border:1.5px solid var(--border);
  border-radius:var(--radius);box-shadow:var(--shadow-sm);
  transition:transform .3s,box-shadow .3s;overflow:hidden;
}
.step:hover { transform:translateY(-5px);box-shadow:var(--shadow); }
/* Step image replacing number icon */

/* WITH this */
.step-img-wrap {
  width:100%;height:130px;border-radius:15px;overflow:hidden;
  margin-bottom:16px;background:var(--dark);
  display:flex;align-items:center;justify-content:center;position:relative;
  box-shadow:0 6px 18px rgba(26,31,60,0.2);
}

.step-img-wrap img {
  width:100%;height:100%;object-fit:cover;border-radius:15px;
}

.step-num-badge {
  position:absolute;bottom:-2px;right:-2px;
  width:22px;height:22px;border-radius:50%;background:var(--grad);
  font-family:var(--display);font-size:11px;font-weight:900;color:#fff;
  display:flex;align-items:center;justify-content:center;
  border:2px solid #fff;
}
.step h3 { font-family:var(--display);font-size:17px;margin-bottom:8px;font-weight:800;color:var(--dark); }
.step p { font-family:var(--font);font-size:14px;color:var(--text-muted);line-height:1.6; }
.step:first-child .step-img-wrap { background:var(--grad); }

/* ── PORTFOLIO ── */

/* ── PORTFOLIO ── */
.work { background: var(--surface-2); }
.work-grid { display:grid;grid-template-columns:repeat(2,1fr);gap:16px; }
@media(max-width:820px){.work-grid{grid-template-columns:1fr;}}
.work-card {
  background:var(--surface);border:1.5px solid var(--border);
  border-radius:16px;overflow:hidden;
  transition:transform .3s,box-shadow .3s;
  box-shadow:var(--shadow-sm);display:flex;flex-direction:column;
}
.work-card:hover { transform:translateY(-5px);box-shadow:var(--shadow-lg); }
.work-thumb {
  aspect-ratio:16/9;overflow:hidden;position:relative;
  background:#f0f0f8;display:flex;align-items:center;justify-content:center;
  padding:18px;
}
.work-thumb img { width:100%;height:100%;object-fit:contain;transition:transform .5s ease; }
.work-card:hover .work-thumb img { transform:scale(1.03); }
.work-thumb-fallback {
  aspect-ratio:16/9;display:flex;align-items:center;justify-content:center;
  font-family:var(--display);font-size:42px;font-weight:900;
  color:rgba(255,255,255,0.22);position:relative;
}
.work-thumb-fallback.c1{background:linear-gradient(135deg,#6C63FF,#FF6B6B);}
.work-thumb-fallback.c2{background:linear-gradient(135deg,#1A1F3C,#6C63FF);}
.work-thumb-fallback.c3{background:linear-gradient(135deg,#FF6B6B,#FFB347);}
.work-thumb-fallback.c4{background:linear-gradient(135deg,#1A1F3C,#3D4466);}
.work-overlay { position:absolute;inset:0;background:linear-gradient(to bottom,transparent 50%,rgba(26,31,60,0.3));pointer-events:none; }
.work-body { padding:16px;display:flex;flex-direction:column;flex:1; }
.work-cat { font-family:var(--display);font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:0.1em;color:var(--accent);margin-bottom:5px; }
.work-body h3 { font-family:var(--display);font-size:17px;margin-bottom:7px;font-weight:800;color:var(--dark); }
.work-result { font-family:var(--font);font-size:13px;color:var(--text-muted);margin-bottom:14px;flex:1;line-height:1.55; }
.work-result strong { color:var(--dark);font-weight:600; }
.work-visit {
  display:inline-flex;align-items:center;justify-content:center;gap:7px;
  background:var(--surface-2);border:1.5px solid var(--border);
  color:var(--dark);font-family:var(--display);font-size:11px;font-weight:800;
  padding:9px 15px;border-radius:10px;transition:all .25s;
  align-self:flex-start;text-transform:uppercase;letter-spacing:0.05em;
}
.work-visit:hover { background:var(--grad);border-color:transparent;color:#fff;box-shadow:0 8px 24px rgba(108,99,255,0.35); }
.work-visit svg { width:13px;height:13px;stroke:currentColor;stroke-width:2.5; }


/* ── PROOF ── */
.proof { background:var(--dark);color:#fff;position:relative;overflow:hidden; }
.proof::before { content:'';position:absolute;top:-150px;right:-100px;width:500px;height:500px;background:radial-gradient(circle,rgba(108,99,255,0.4),transparent 60%);filter:blur(44px); }
.proof::after { content:'';position:absolute;bottom:-180px;left:-100px;width:450px;height:450px;background:radial-gradient(circle,rgba(255,107,107,0.3),transparent 60%);filter:blur(44px); }
.proof .container { position:relative;z-index:1; }
.stats-row { display:grid;grid-template-columns:repeat(4,1fr);gap:24px;margin-bottom:56px; }
@media(max-width:760px){.stats-row{grid-template-columns:repeat(2,1fr);gap:32px;}}
.stat-card { text-align:center; }
.stat-num { font-family:var(--display);font-size:clamp(38px,5.2vw,58px);font-weight:900;line-height:1;margin-bottom:8px;background:linear-gradient(120deg,#fff,#c7bfff);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent; }
.stat-label { font-family:var(--display);font-size:12px;color:rgba(255,255,255,0.55);font-weight:700;text-transform:uppercase;letter-spacing:0.07em; }
.t-grid { display:grid;grid-template-columns:repeat(3,1fr);gap:20px; }
@media(max-width:880px){.t-grid{grid-template-columns:1fr;}}
.t-card {
  background:rgba(255,255,255,0.05);border:1px solid rgba(255,255,255,0.09);
  border-radius:18px;padding:28px 24px;
  transition:background .3s,border-color .3s;position:relative;overflow:hidden;
}
.t-card::before { content:'"';position:absolute;top:8px;right:18px;font-family:var(--display);font-size:80px;font-weight:900;color:rgba(108,99,255,0.12);line-height:1;pointer-events:none; }
.t-card:hover { background:rgba(108,99,255,0.1);border-color:rgba(108,99,255,0.3); }
.t-stars { color:#FFB800;font-size:15px;margin-bottom:14px;letter-spacing:2px; }
.t-quote { font-family:var(--font);font-size:15px;line-height:1.7;color:rgba(255,255,255,0.9);margin-bottom:22px;font-style:italic; }
.t-author { display:flex;align-items:center;gap:12px; }
/* Avatar image */
.t-avatar-wrap { width:46px;height:46px;border-radius:50%;overflow:hidden;flex-shrink:0;background:var(--grad);display:flex;align-items:center;justify-content:center; }
.t-avatar-wrap img { width:100%;height:100%;object-fit:cover; }
.t-avatar-initials { font-family:var(--display);font-weight:900;font-size:15px;color:#fff; }
.t-name { font-family:var(--display);font-weight:800;font-size:14px;color:#fff; }
.t-role { font-family:var(--font);font-size:12px;color:rgba(255,255,255,0.5); }

/* ── OFFER ── */
.offer { background:var(--bg); }
.offer-box {
  background:var(--surface);border:1.5px solid var(--border);
  border-radius:26px;overflow:hidden;box-shadow:var(--shadow-lg);
  display:grid;grid-template-columns:1.1fr 1fr;
}
@media(max-width:820px){.offer-box{grid-template-columns:1fr;}}
.offer-left { padding:clamp(34px,4vw,52px); }
.offer-left .eyebrow { margin-bottom:16px; }
.offer-left h2 { font-size:clamp(26px,3.2vw,38px);margin-bottom:14px; }
.offer-left > p { font-family:var(--font);font-size:16px;color:var(--text-muted);margin-bottom:28px;line-height:1.7;font-style:italic; }
.offer-list { display:grid;grid-template-columns:1fr 1fr;gap:14px; }
@media(max-width:520px){.offer-list{grid-template-columns:1fr;}}
.offer-item { display:flex;align-items:flex-start;gap:11px;font-family:var(--display);font-size:13px;font-weight:700;color:var(--dark); }
.offer-item .oi-tick { width:24px;height:24px;border-radius:50%;background:rgba(108,99,255,0.1);color:var(--accent);display:flex;align-items:center;justify-content:center;flex-shrink:0; }
.offer-item .oi-tick svg { width:13px;height:13px;stroke-width:3; }
.offer-right {
  background:var(--dark);color:#fff;
  padding:clamp(34px,4vw,52px);
  display:flex;flex-direction:column;justify-content:center;align-items:center;text-align:center;
  position:relative;overflow:hidden;
}
.offer-right::before { content:'';position:absolute;top:-60px;right:-50px;width:280px;height:280px;background:radial-gradient(circle,rgba(108,99,255,0.35),transparent 60%); }
.offer-right::after { content:'';position:absolute;bottom:-60px;left:-40px;width:240px;height:240px;background:radial-gradient(circle,rgba(255,107,107,0.2),transparent 60%); }
.offer-right > * { position:relative;z-index:1; }
.offer-right .or-label { font-family:var(--display);font-size:11px;font-weight:800;text-transform:uppercase;letter-spacing:0.12em;opacity:0.6;margin-bottom:10px; }
.offer-right .or-big { font-family:var(--display);font-size:clamp(26px,3.2vw,38px);font-weight:900;line-height:1.1;margin-bottom:10px; }
.offer-right .or-sub { font-family:var(--font);font-size:14px;opacity:0.75;margin-bottom:28px;font-style:italic;line-height:1.7; }
.offer-right .wa-btn { background:#25D366;box-shadow:0 10px 28px rgba(37,211,102,0.35);width:100%;justify-content:center; }
.offer-right .or-note { font-family:var(--display);font-size:12px;opacity:0.65;margin-top:16px;display:flex;align-items:center;justify-content:center;gap:6px;font-weight:700;text-transform:uppercase;letter-spacing:0.05em; }
.offer-right .or-note svg { width:14px;height:14px;stroke:rgba(255,255,255,0.65); }

/* ── FAQ ── */
.faq { background:var(--surface-2); }
.faq-wrap { max-width:780px;margin:0 auto; }
.faq-item { background:var(--surface);border:1.5px solid var(--border);border-radius:14px;margin-bottom:12px;overflow:hidden;cursor:pointer;transition:border-color .24s,box-shadow .24s;box-shadow:var(--shadow-sm); }
.faq-item:hover { border-color:rgba(108,99,255,0.3); }
.faq-item.open { border-color:rgba(108,99,255,0.4);box-shadow:var(--shadow); }
.faq-q { display:flex;justify-content:space-between;align-items:center;gap:20px;padding:21px 24px; }
.faq-q h3 { font-family:var(--display);font-size:16px;font-weight:800;color:var(--dark); }
.faq-toggle { width:32px;height:32px;border-radius:50%;background:var(--accent-lt);color:var(--accent);flex-shrink:0;display:flex;align-items:center;justify-content:center;transition:transform .3s,background .3s; }
.faq-toggle svg { width:17px;height:17px;stroke-width:2.5; }
.faq-item.open .faq-toggle { transform:rotate(45deg);background:var(--grad);color:#fff; }
.faq-a { max-height:0;overflow:hidden;transition:max-height .4s ease; }
.faq-item.open .faq-a { max-height:300px; }
.faq-a p { font-family:var(--font);padding:0 24px 22px;font-size:15px;color:var(--text-muted);line-height:1.7; }

/* ── FINAL CTA ── */
.cta { background:var(--bg); }
.cta-box { border-radius:26px;padding:clamp(50px,6vw,84px) var(--gutter);text-align:center;position:relative;overflow:hidden;background:var(--dark);color:#fff; }
.cta-box::before { content:'';position:absolute;top:-40%;left:50%;transform:translateX(-50%);width:700px;height:500px;background:radial-gradient(ellipse,rgba(108,99,255,0.4),transparent 65%);filter:blur(40px); }
.cta-box::after { content:'';position:absolute;bottom:-40%;right:-10%;width:400px;height:400px;background:radial-gradient(ellipse,rgba(255,107,107,0.25),transparent 65%);filter:blur(40px); }
.cta-box > * { position:relative;z-index:1; }
.cta-box h2 { font-size:clamp(30px,4.2vw,52px);margin-bottom:16px;color:#fff; }
.cta-box p { font-family:var(--font);font-size:18px;color:rgba(255,255,255,0.7);max-width:48ch;margin:0 auto 34px;font-style:italic;line-height:1.7; }
.cta-note { margin-top:18px;font-family:var(--display);font-size:12px;color:rgba(255,255,255,0.55);display:inline-flex;align-items:center;gap:7px;font-weight:700;text-transform:uppercase;letter-spacing:0.05em; }
.cta-note svg { width:15px;height:15px;stroke:rgba(255,255,255,0.55); }

/* ── FLOATING WA ── */
.float-wa { position:fixed;bottom:24px;right:24px;z-index:200;width:60px;height:60px;border-radius:50%;background:#25D366;display:flex;align-items:center;justify-content:center;box-shadow:0 8px 32px rgba(37,211,102,0.5);transition:transform .24s,box-shadow .24s; }
.float-wa:hover { transform:scale(1.12);box-shadow:0 14px 44px rgba(37,211,102,0.6); }
.float-wa svg { width:32px;height:32px;fill:#fff; }

/* ── REVEAL ANIMATIONS ── */
.reveal { opacity:0;transform:translateY(30px);transition:opacity .8s cubic-bezier(0.16,1,0.3,1),transform .8s cubic-bezier(0.16,1,0.3,1); }
.reveal.visible { opacity:1;transform:translateY(0); }
.reveal.d1{transition-delay:.08s;}.reveal.d2{transition-delay:.16s;}.reveal.d3{transition-delay:.24s;}

/* ── HERO PAGE-LOAD ANIMATIONS ── */
@keyframes fadeUp { from{opacity:0;transform:translateY(34px);}to{opacity:1;transform:translateY(0);} }
.h-a1{animation:fadeUp .8s cubic-bezier(0.16,1,0.3,1) .1s both;}
.h-a2{animation:fadeUp .8s cubic-bezier(0.16,1,0.3,1) .22s both;}
.h-a3{animation:fadeUp .8s cubic-bezier(0.16,1,0.3,1) .34s both;}
.h-a4{animation:fadeUp .8s cubic-bezier(0.16,1,0.3,1) .46s both;}
.h-a5{animation:fadeUp .8s cubic-bezier(0.16,1,0.3,1) .58s both;}
.hero-visual{animation:fadeUp .9s cubic-bezier(0.16,1,0.3,1) .28s both;}
</style>
</head>
<body>

<!-- NAV -->

<jsp:include page="../../includes/navbar/navbar.jsp" />
<!-- HERO -->
<section class="hero">
  <div class="hero-blob-1"></div>
  <div class="hero-blob-2"></div>
  <div class="hero-dots"></div>
  <div class="container">
    <div class="hero-grid">
      <div>
        <h1 class="h-a2">Get a website that brings you <span class="grad-txt">customers</span></h1>
        <p class="hero-sub h-a3">We design fast, modern websites that turn visitors into real enquiries — built quickly, fixed price, no tech jargon.</p>
        <div class="hero-ctas h-a4">
          <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20build%20a%20website%20for%20my%20business" class="wa-btn" target="_blank" rel="noopener">
            <svg viewBox="0 0 24 24"><path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91S17.5 2 12.04 2zm5.8 14.01c-.24.68-1.42 1.31-1.96 1.36-.5.05-1.14.21-3.66-.78-3.07-1.21-5.04-4.34-5.19-4.54-.15-.2-1.24-1.65-1.24-3.15s.79-2.24 1.07-2.54c.28-.31.61-.39.81-.39.2 0 .41 0 .58.01.19.01.43-.07.68.52.24.59.83 2.05.9 2.2.07.15.12.32.02.52-.1.2-.15.32-.3.5-.15.18-.31.4-.45.53-.15.15-.3.31-.13.61.17.3.77 1.27 1.66 2.06 1.14 1.02 2.1 1.33 2.4 1.48.3.15.47.13.64-.08.17-.2.74-.86.94-1.16.2-.3.4-.25.67-.15.27.1 1.72.81 2.01.96.3.15.49.22.56.35.07.12.07.72-.17 1.4z"/></svg>
            Get a free quote
          </a>
          <a href="#work" class="btn-ghost">See our work
            <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M13 6l6 6-6 6"/></svg>
          </a>
        </div>
        <div class="hero-rating h-a5">

<div class="rating-avatars">
  <span class="ra-1">R</span>
  <span class="ra-2"><img src="/assets/images/girl.jpeg" alt="P" style="width:100%;height:100%;object-fit:cover;border-radius:50%;"></span>
  <span class="ra-3">M</span>
  <span class="ra-4"><img src="/assets/images/boy.jpeg" alt="A" style="width:100%;height:100%;object-fit:cover;border-radius:50%;"></span>
</div>

          <div class="rating-meta">
            <div class="rating-stars">★★★★★</div>
            <div class="rating-text"><b>4.9/5</b> · trusted by 100+ businesses</div>
          </div>
        </div>
      </div>

<div class="hero-visual">
        <div class="browser">
          <div class="browser-bar">
            <span class="bdot r"></span><span class="bdot y"></span><span class="bdot g"></span>
            <span class="browser-url">
              <svg viewBox="0 0 24 24" fill="none" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2"/><path d="M7 11V7a5 5 0 0110 0v4"/></svg>
              yourbusiness.com
            </span>
          </div>
          <div class="browser-body">
            <div class="bm-hero">
              <h4>Your Business, Online</h4>
              <p>A website built to bring you customers.</p>
              <span class="bm-btn">Get Started</span>
            </div>
            <div class="bm-grid">
              <div class="bm-card">
                <div class="bm-img">
                  <img src="/assets/images/websitefast.jpeg" alt="Fast" style="width:100%;height:100%;object-fit:cover;border-radius:6px;">
                </div>
                <span>Fast</span>
              </div>
              <div class="bm-card">
                <div class="bm-img">
                  <img src="/assets/images/mobileresponsive.jpeg" alt="Mobile" style="width:100%;height:100%;object-fit:cover;border-radius:6px;">
                </div>
                <span>Mobile</span>
              </div>
              <div class="bm-card">
                <div class="bm-img">
                  <img src="/assets/images/seoboost.jpeg" alt="SEO" style="width:100%;height:100%;object-fit:cover;border-radius:6px;">
                </div>
                <span>SEO</span>
              </div>
            </div>
            <div class="bm-line w70"></div>
            <div class="bm-line w50"></div>
          </div>
        </div>



        <div class="hero-badge-float hbf-1">
          <div class="hbf-ico grad">
            <!-- Replace src with your image -->
            <img src="" alt="" style="width:24px;height:24px;object-fit:cover;border-radius:4px;" onerror="this.style.display='none';this.parentElement.innerHTML='✅'">
          </div>
          <div class="hbf-text"><div class="hbf-big">100+</div><div class="hbf-sm">Websites delivered</div></div>
        </div>
        <div class="hero-badge-float hbf-2">
          <div class="hbf-ico" style="background:var(--accent-lt);">
            <img src="" alt="" style="width:24px;height:24px;object-fit:cover;border-radius:4px;" onerror="this.style.display='none';this.parentElement.innerHTML='⚡'">
          </div>
          <div class="hbf-text"><div class="hbf-big">&lt;1s</div><div class="hbf-sm">Load time</div></div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- TRUST STRIP -->

<!-- TRUST STRIP -->
<div class="trust-strip">
  <div class="container">
    <p class="trust-label">Built with trusted technology &amp; payments</p>
    <div class="trust-logos">
      <span class="trust-logo">
        <img class="t-img" src="assets/images/react2.png" alt="React" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
      <span class="trust-logo">
        <img class="t-img" src="assets/images/wordpress.png" alt="WordPress" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
      <span class="trust-logo">
        <img class="t-img" src="assets/images/razorpay.png" alt="Razorpay" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
      <span class="trust-logo">
        <img class="t-img" src="assets/images/paytm.png" alt="Paytm" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
      <span class="trust-logo">
        <img class="t-img" src="assets/images/google.png" alt="Google" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
      <span class="trust-logo">
        <img class="t-img" src="assets/images/shopify.png" alt="Shopify" style="width:80px;height:80px;object-fit:contain;" onerror="this.style.display='none'">
      </span>
    </div>
  </div>
</div>


<!-- SERVICES -->
<section class="services" id="services">
  <div class="container">
    <div class="sec-head">
      <span class="eyebrow">What We Build</span>
      <h2>Websites for <span class="grad-txt">every business</span></h2>
      <p>Whatever your goal — more leads, more sales, or a stronger brand.</p>
    </div>
    <div class="svc-grid">
      <div class="svc-card reveal">
        <div class="svc-img-wrap">
          <img src="/assets/images/bussinesssite.jpeg" alt="Business Sites">
        </div>
        <h3>Business Sites</h3>
        <p>Professional websites that build trust and turn visitors into enquiries.</p>
      </div>
      <div class="svc-card coral-card reveal d1">
        <div class="svc-img-wrap">
          <img src="/assets/images/onlinestores.jpeg" alt="Online Stores">
        </div>
        <h3>Online Stores</h3>
        <p>Complete e-commerce with secure payments, ready to sell from day one.</p>
      </div>
      <div class="svc-card reveal d2">
        <div class="svc-img-wrap">
          <img src="/assets/images/custom.jpeg" alt="Custom Web Apps">
        </div>
        <h3>Custom Web Apps</h3>
        <p>Booking systems, dashboards &amp; portals built exactly for your business.</p>
      </div>
      <div class="svc-card coral-card reveal d3">
        <div class="svc-img-wrap">
          <img src="/assets/images/landingpage.jpeg" alt="Landing Pages">
        </div>
        <h3>Landing Pages</h3>
        <p>High-converting pages for your Google &amp; Meta ad campaigns.</p>
      </div>
    </div>
  </div>
</section>


<!-- WHY US -->
<section class="why">
  <div class="container">
    <div class="sec-head">
      <span class="eyebrow">Why Choose Us</span>
      <h2>Built to <span class="grad-txt">deliver results</span></h2>
      <p>We don't just make websites look good — we make them work for you.</p>
    </div>
    <div class="why-grid">

      <div class="why-card reveal">
        <div class="why-img-wrap">
          <!-- Replace src with your image -->
          <img src="" alt="Fast" onerror="this.parentElement.innerHTML='⚡'">
        </div>
        <h3>Lightning fast</h3>
        <p>Loads in under a second, so no customer ever leaves waiting.</p>
      </div>

      <div class="why-card reveal d1">
        <div class="why-img-wrap">
          <img src="" alt="Mobile" onerror="this.parentElement.innerHTML='📱'">
        </div>
        <h3>Perfect on mobile</h3>
        <p>Looks flawless on every phone, where most customers are.</p>
      </div>

      <div class="why-card reveal d2">
        <div class="why-img-wrap">
          <img src="" alt="SEO" onerror="this.parentElement.innerHTML='🔍'">
        </div>
        <h3>Found on Google</h3>
        <p>SEO built in, so local customers find you when they search.</p>
      </div>

      <div class="why-card reveal d3">
        <div class="why-img-wrap">
          <img src="" alt="Easy Update" onerror="this.parentElement.innerHTML='✏️'">
        </div>
        <h3>Easy to update</h3>
        <p>Change prices, photos &amp; offers yourself, no coding needed.</p>
      </div>

    </div>
  </div>
</section>

<!-- PROCESS -->
<!-- PROCESS -->
<section class="process" id="process">
  <div class="container">
    <div class="sec-head">
      <span class="eyebrow">How It Works</span>
      <h2>Live in <span class="grad-txt">4 simple steps</span></h2>
      <p>No confusing meetings, no technical headaches.</p>
    </div>
    <div class="steps">
      <div class="step reveal">
        <div class="step-img-wrap">
          <img src="/assets/images/quickchat.jpeg" alt="Quick Chat" style="width:100%;height:100%;object-fit:cover;">
          <div class="step-num-badge">1</div>
        </div>
        <h3>Quick chat</h3>
        <p>Tell us about your business on WhatsApp or a short call.</p>
      </div>
      <div class="step reveal d1">
        <div class="step-img-wrap">
          <img src="/assets/images/design2.png" alt="We Design" style="width:100%;height:100%;object-fit:cover;">
          <div class="step-num-badge">2</div>
        </div>
        <h3>We design</h3>
        <p>You see a design draft fast and we refine it together.</p>
      </div>
      <div class="step reveal d2">
        <div class="step-img-wrap">
          <img src="/assets/images/build.jpeg" alt="We Build" style="width:100%;height:100%;object-fit:cover;">
          <div class="step-num-badge">3</div>
        </div>
        <h3>We build</h3>
        <p>A fast, mobile-ready site, fully tested and working.</p>
      </div>
      <div class="step reveal d3">
        <div class="step-img-wrap">
          <img src="/assets/images/golive.jpeg" alt="Go Live" style="width:100%;height:100%;object-fit:cover;">
          <div class="step-num-badge">4</div>
        </div>
        <h3>Go live</h3>
        <p>We launch, set up your domain &amp; SSL, and support you.</p>
      </div>
    </div>
  </div>
</section>

<!-- PORTFOLIO -->
<section class="work" id="work">
  <div class="container">
    <div class="sec-head">
      <span class="eyebrow">Our Work</span>
      <h2>Projects we're <span class="grad-txt">proud of</span></h2>
      <p>Click any project to visit the live website.</p>
    </div>
    <div class="work-grid">
      <div class="work-card reveal">
        <div class="work-thumb">
          <img src="/assets/images/dreamnaukriss.png" alt="Dream Naukri - Job Portal">
          <div class="work-overlay"></div>
        </div>
        <div class="work-body">
          <div class="work-cat">Job Portal</div>
          <h3>Dream Naukri</h3>
          <p class="work-result">A modern job portal connecting job seekers with top employers across India.</p>
          <a href="https://dreamnaukricareer.com/" class="work-visit" target="_blank" rel="noopener">Visit Website
            <svg viewBox="0 0 24 24" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M7 17L17 7M17 7H8M17 7V16"/></svg>
          </a>
        </div>
      </div>
      <div class="work-card reveal d1">
        <div class="work-thumb">
          <img src="/assets/images/netclixss.png" alt="Netclix - Bulk Marketing">
          <div class="work-overlay"></div>
        </div>
        <div class="work-body">
          <div class="work-cat">Bulk Marketing</div>
          <h3>Netclix</h3>
          <p class="work-result">Powerful bulk marketing platform to reach thousands of customers instantly.</p>
          <a href="https://www.netclixcloud.com/" class="work-visit" target="_blank" rel="noopener">Visit Website
            <svg viewBox="0 0 24 24" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M7 17L17 7M17 7H8M17 7V16"/></svg>
          </a>
        </div>
      </div>
      <div class="work-card reveal">
        <div class="work-thumb">
          <img src="/assets/images/toywallahss.png" alt="Toywallah - Baby Products">
          <div class="work-overlay"></div>
        </div>
        <div class="work-body">
          <div class="work-cat">E-Commerce</div>
          <h3>Toywallah</h3>
          <p class="work-result">E-marketplace where sellers list and customers buy quality baby products with ease.</p>
          <a href="https://toywallah.com/" class="work-visit" target="_blank" rel="noopener">Visit Website
            <svg viewBox="0 0 24 24" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M7 17L17 7M17 7H8M17 7V16"/></svg>
          </a>
        </div>
      </div>
<div class="work-card reveal">
  <div class="work-thumb">
    <img src="/assets/images/HOB.png" alt="House of Brownies - Premium Brownies & Blondies">
    <div class="work-overlay"></div>
  </div>
  <div class="work-body">
    <div class="work-cat">Food & Beverage</div>
    <h3>House of Brownies</h3>
    <p class="work-result">Supplying restaurants, cafés, IT parks, and corporate vendors across India with premium brownies and blondies in custom pack sizes.</p>
    <a href="${pageContext.request.contextPath}/case-study-brownies.jsp" class="work-visit" target="_blank" rel="noopener">Visit Website
      <svg viewBox="0 0 24 24" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M7 17L17 7M17 7H8M17 7V16"/></svg>
    </a>
  </div>
</div>


      <div class="work-card reveal d1">
        <div class="work-thumb">
          <img src="/assets/images/bullclothingsss.png" alt="Bullclothings - Online Shopping">
          <div class="work-overlay"></div>
        </div>
        <div class="work-body">
          <div class="work-cat">E-Commerce</div>
          <h3>Bullclothings</h3>
          <p class="work-result">Online clothing store where buyers can explore and purchase premium products with ease.</p>
          <a href="https://www.bullclothings.com/" class="work-visit" target="_blank" rel="noopener">Visit Website
            <svg viewBox="0 0 24 24" fill="none" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M7 17L17 7M17 7H8M17 7V16"/></svg>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- PROOF -->
<section class="proof">
  <div class="container">
    <div class="stats-row">
      <div class="stat-card"><div class="stat-num" data-count="100" data-suffix="+">0</div><div class="stat-label">Websites Delivered</div></div>
      <div class="stat-card"><div class="stat-num" data-count="98" data-suffix="%">0</div><div class="stat-label">Client Satisfaction</div></div>
      <div class="stat-card"><div class="stat-num" data-count="100" data-suffix="+">0</div><div class="stat-label">Happy Clients</div></div>
      <div class="stat-card"><div class="stat-num" data-count="7" data-suffix=" days">0</div><div class="stat-label">Avg. Delivery</div></div>
    </div>
    <div class="t-grid">
      <div class="t-card reveal">
        <div class="t-stars">★★★★★</div>
        <p class="t-quote">&ldquo;Best money we&rsquo;ve spent this year. Enquiries doubled within the first month.&rdquo;</p>
        <div class="t-author">
          <div class="t-avatar-wrap">
            <img src="/assets/images/boy.jpeg" alt="Rahul Sharma" style="width:100%;height:100%;object-fit:cover;border-radius:50%;">
          </div>
          <div><div class="t-name">Rahul Sharma</div><div class="t-role">Owner, Sharma Hardware</div></div>
        </div>
      </div>
      <div class="t-card reveal d1">
        <div class="t-stars">★★★★★</div>
        <p class="t-quote">&ldquo;Finally a website I&rsquo;m proud to share. Fast, clean and it looks premium.&rdquo;</p>
        <div class="t-author">
          <div class="t-avatar-wrap">
            <img src="/assets/images/girl.jpeg" alt="Dr. Priya Anand" style="width:100%;height:100%;object-fit:cover;border-radius:50%;">
          </div>
          <div><div class="t-name">Dr. Priya Anand</div><div class="t-role">Founder, Smile Dental</div></div>
        </div>
      </div>
      <div class="t-card reveal d2">
        <div class="t-stars">★★★★★</div>
        <p class="t-quote">&ldquo;Quick, professional and delivered on time. Explained everything simply.&rdquo;</p>
        <div class="t-author">
          <div class="t-avatar-wrap">
            <img src="/assets/images/boy2.jpeg" alt="Manish Kumar" style="width:100%;height:100%;object-fit:cover;border-radius:50%;">
          </div>
          <div><div class="t-name">Manish Kumar</div><div class="t-role">Director, FitZone Gym</div></div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- OFFER / CLOSER -->
<section class="offer">
  <div class="container">
    <div class="offer-box">
      <div class="offer-left">
        <span class="eyebrow">What You Get</span>
        <h2>Everything you need to <span class="grad-txt">win online</span></h2>
        <p>One simple package, one fixed price — and a website that actually brings you customers.</p>
        <div class="offer-list">
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Stunning, mobile-ready design</div>
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Fast loading &amp; SEO-ready</div>
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Easy-to-use editor</div>
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Domain, hosting &amp; SSL setup</div>
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Payment gateway integration</div>
          <div class="offer-item"><span class="oi-tick"><svg class="icon" viewBox="0 0 24 24"><path d="M20 6L9 17l-5-5"/></svg></span> Ongoing support &amp; care</div>
        </div>
      </div>
      <div class="offer-right">
        <div class="or-label">Free, no-pressure</div>
        <div class="or-big">Get your quote today</div>
        <div class="or-sub">Message us your requirement — we reply within an hour with a fixed price.</div>
        <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20a%20free%20quote%20for%20my%20website" class="wa-btn" target="_blank" rel="noopener">
          <svg viewBox="0 0 24 24"><path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91S17.5 2 12.04 2zm5.8 14.01c-.24.68-1.42 1.31-1.96 1.36-.5.05-1.14.21-3.66-.78-3.07-1.21-5.04-4.34-5.19-4.54-.15-.2-1.24-1.65-1.24-3.15s.79-2.24 1.07-2.54c.28-.31.61-.39.81-.39.2 0 .41 0 .58.01.19.01.43-.07.68.52.24.59.83 2.05.9 2.2.07.15.12.32.02.52-.1.2-.15.32-.3.5-.15.18-.31.4-.45.53-.15.15-.3.31-.13.61.17.3.77 1.27 1.66 2.06 1.14 1.02 2.1 1.33 2.4 1.48.3.15.47.13.64-.08.17-.2.74-.86.94-1.16.2-.3.4-.25.67-.15.27.1 1.72.81 2.01.96.3.15.49.22.56.35.07.12.07.72-.17 1.4z"/></svg>
          Message on WhatsApp
        </a>
        <div class="or-note">
          <svg class="icon" viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
          Money-back guarantee
        </div>
      </div>
    </div>
  </div>
</section>

<!-- FAQ -->
<section class="faq" id="faq">
  <div class="container">
    <div class="sec-head">
      <span class="eyebrow">Questions</span>
      <h2>Things people <span class="grad-txt">usually ask</span></h2>
    </div>
    <div class="faq-wrap">
      <div class="faq-item">
        <div class="faq-q"><h3>How much does a website cost?</h3><div class="faq-toggle"><svg class="icon" viewBox="0 0 24 24"><path d="M12 5v14M5 12h14"/></svg></div></div>
        <div class="faq-a"><p>It depends on what you need. We give you a clear, fixed quote before we start. Message us on WhatsApp with your requirement and we'll send a price quickly.</p></div>
      </div>
      <div class="faq-item">
        <div class="faq-q"><h3>How long does it take?</h3><div class="faq-toggle"><svg class="icon" viewBox="0 0 24 24"><path d="M12 5v14M5 12h14"/></svg></div></div>
        <div class="faq-a"><p>Most business websites are ready within a couple of weeks. Bigger projects take a little longer. We give you an exact timeline upfront.</p></div>
      </div>
      <div class="faq-item">
        <div class="faq-q"><h3>Will I be able to update it myself?</h3><div class="faq-toggle"><svg class="icon" viewBox="0 0 24 24"><path d="M12 5v14M5 12h14"/></svg></div></div>
        <div class="faq-a"><p>Yes. Every website comes with an easy editor so you can update content, photos, and prices without any coding. We'll show you exactly how.</p></div>
      </div>
      <div class="faq-item">
        <div class="faq-q"><h3>What about domain, hosting &amp; payments?</h3><div class="faq-toggle"><svg class="icon" viewBox="0 0 24 24"><path d="M12 5v14M5 12h14"/></svg></div></div>
        <div class="faq-a"><p>We handle it all — domain, SSL security, hosting, and payment gateway integration (Razorpay, PayU, Paytm). You don't worry about the technical side.</p></div>
      </div>
    </div>
  </div>
</section>

<!-- FINAL CTA -->
<section class="cta">
  <div class="container">
    <div class="cta-box">
      <h2>Ready to grow your business online?</h2>
      <a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20build%20a%20website%20for%20my%20business" class="wa-btn" target="_blank" rel="noopener">
        <svg viewBox="0 0 24 24"><path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91S17.5 2 12.04 2zm5.8 14.01c-.24.68-1.42 1.31-1.96 1.36-.5.05-1.14.21-3.66-.78-3.07-1.21-5.04-4.34-5.19-4.54-.15-.2-1.24-1.65-1.24-3.15s.79-2.24 1.07-2.54c.28-.31.61-.39.81-.39.2 0 .41 0 .58.01.19.01.43-.07.68.52.24.59.83 2.05.9 2.2.07.15.12.32.02.52-.1.2-.15.32-.3.5-.15.18-.31.4-.45.53-.15.15-.3.31-.13.61.17.3.77 1.27 1.66 2.06 1.14 1.02 2.1 1.33 2.4 1.48.3.15.47.13.64-.08.17-.2.74-.86.94-1.16.2-.3.4-.25.67-.15.27.1 1.72.81 2.01.96.3.15.49.22.56.35.07.12.07.72-.17 1.4z"/></svg>
        Get my free quote
      </a>
    </div>
  </div>
</section>


<!-- FOOTER -->
<jsp:include page="../../includes/footer/footer.jsp" />
<!-- Floating WhatsApp -->
<a href="https://wa.me/919310194865?text=Hi%2C%20I%20want%20to%20build%20a%20website%20for%20my%20business" class="float-wa" target="_blank" rel="noopener" aria-label="WhatsApp">
  <svg viewBox="0 0 24 24"><path d="M12.04 2c-5.46 0-9.91 4.45-9.91 9.91 0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91S17.5 2 12.04 2zm5.8 14.01c-.24.68-1.42 1.31-1.96 1.36-.5.05-1.14.21-3.66-.78-3.07-1.21-5.04-4.34-5.19-4.54-.15-.2-1.24-1.65-1.24-3.15s.79-2.24 1.07-2.54c.28-.31.61-.39.81-.39.2 0 .41 0 .58.01.19.01.43-.07.68.52.24.59.83 2.05.9 2.2.07.15.12.32.02.52-.1.2-.15.32-.3.5-.15.18-.31.4-.45.53-.15.15-.3.31-.13.61.17.3.77 1.27 1.66 2.06 1.14 1.02 2.1 1.33 2.4 1.48.3.15.47.13.64-.08.17-.2.74-.86.94-1.16.2-.3.4-.25.67-.15.27.1 1.72.81 2.01.96.3.15.49.22.56.35.07.12.07.72-.17 1.4z"/></svg>
</a>

<script>
/* NAV scroll */
const nav = document.getElementById('nav');
window.addEventListener('scroll', () => nav.classList.toggle('scrolled', window.scrollY > 20), { passive: true });

/* FAQ accordion */
document.querySelectorAll('.faq-item').forEach(item =>
  item.addEventListener('click', () => item.classList.toggle('open'))
);

/* Scroll reveal */
const obs = new IntersectionObserver((entries) => {
  entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add('visible'); obs.unobserve(e.target); } });
}, { threshold: 0.10 });
document.querySelectorAll('.reveal').forEach(el => obs.observe(el));

/* Animated counters */
const cObs = new IntersectionObserver((entries) => {
  entries.forEach(e => {
    if (!e.isIntersecting) return;
    const el = e.target;
    const goal = parseInt(el.dataset.count);
    const suffix = el.dataset.suffix || '';
    let cur = 0;
    const step = Math.max(1, Math.ceil(goal / 48));
    const tick = () => {
      cur += step;
      el.textContent = (cur >= goal ? goal : cur) + suffix;
      if (cur < goal) requestAnimationFrame(tick);
    };
    tick();
    cObs.unobserve(el);
  });
}, { threshold: 0.5 });
document.querySelectorAll('.stat-num').forEach(c => cObs.observe(c));
</script>

</body>
</html>
