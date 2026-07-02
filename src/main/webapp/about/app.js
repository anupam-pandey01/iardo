// ===== INTERSECTION OBSERVER FOR REVEAL ANIMATIONS =====
const revealEls = document.querySelectorAll('.reveal, .reveal-left, .reveal-right, .reveal-scale');
const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('revealed');
      observer.unobserve(entry.target);
    }
  });
}, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });
revealEls.forEach(el => observer.observe(el));

// ===== ANIMATED NUMBER COUNTERS =====
const counterEls = document.querySelectorAll('.stat-num[data-target]');
const counterObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const el = entry.target;
      const target = parseInt(el.getAttribute('data-target'));
      const sup = el.querySelector('sup')?.outerHTML || '';
      let current = 0;
      const duration = 1600;
      const step = target / (duration / 16);
      el.classList.add('counting');
      const timer = setInterval(() => {
        current = Math.min(current + step, target);
        el.innerHTML = Math.round(current) + sup;
        if (current >= target) {
          clearInterval(timer);
          el.classList.remove('counting');
        }
      }, 16);
      counterObserver.unobserve(el);
    }
  });
}, { threshold: 0.5 });
counterEls.forEach(el => counterObserver.observe(el));

// ===== SMOOTH SCROLL FOR ANCHOR LINKS =====
/*document.querySelectorAll('a[href^="#"]').forEach(a => {
  a.addEventListener('click', e => {
    const target = document.querySelector(a.getAttribute('href'));
    if (target) {
      e.preventDefault();
      target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  });
});*/

// ===== NAV SHRINK ON SCROLL =====
/*const nav = document.querySelector('nav');
window.addEventListener('scroll', () => {
  if (window.scrollY > 60) {
    nav.style.boxShadow = '0 4px 24px rgba(26,31,60,0.1)';
  } else {
    nav.style.boxShadow = 'none';
  }
}, { passive: true });*/