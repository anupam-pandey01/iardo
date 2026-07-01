// ============================================
// UTILITY FUNCTIONS
// ============================================

/**
 * Debounce function for performance optimization
 */
function debounce(func, wait) {
    var timeout;
    return function executedFunction() {
        var context = this;
        var args = arguments;
        var later = function() {
            timeout = null;
            func.apply(context, args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

/**
 * Throttle function for performance optimization
 */
function throttle(func, limit) {
    var inThrottle;
    return function() {
        var args = arguments;
        var context = this;
        if (!inThrottle) {
            func.apply(context, args);
            inThrottle = true;
            setTimeout(function() {
                inThrottle = false;
            }, limit);
        }
    };
}

/**
 * Safe querySelector with error handling
 */
function safeQuerySelector(selector) {
    try {
        return document.querySelector(selector);
    } catch (e) {
        console.warn('Invalid selector:', selector);
        return null;
    }
}

/**
 * Safe querySelectorAll with error handling
 */
function safeQuerySelectorAll(selector) {
    try {
        return document.querySelectorAll(selector);
    } catch (e) {
        console.warn('Invalid selector:', selector);
        return [];
    }
}

// ============================================
// GLOBAL VARIABLES & STATE
// ============================================

var animations = {
    intervals: [],
    observers: [],
    rafIds: []
};

// ============================================
// SMOOTH SCROLL FOR NAVIGATION
// ============================================

function initSmoothScroll() {
    var anchors = safeQuerySelectorAll('a[href^="#"]');
    
    anchors.forEach(function(anchor) {
        anchor.addEventListener('click', function (e) {
            var href = this.getAttribute('href');
            if (!href || href === '#') return;
            
            e.preventDefault();
            var target = safeQuerySelector(href);
            
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
}

// ============================================
// INTERSECTION OBSERVER FOR FADE-IN ANIMATIONS
// ============================================

function initFadeInAnimations() {
    var observerOptions = {
        threshold: 0.15,
        rootMargin: '0px 0px -80px 0px'
    };

    var observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
                entry.target.classList.add('visible');
            }
        });
    }, observerOptions);

    animations.observers.push(observer);

    var animatedElements = safeQuerySelectorAll('.service-card, .benefit-card, .platform-card, .process-item');
    
    animatedElements.forEach(function(el) {
        el.style.opacity = '0';
        el.style.transform = 'translateY(40px)';
        el.style.transition = 'opacity 0.8s ease, transform 0.8s ease';
        observer.observe(el);
    });
}

// ============================================
// NAVBAR SCROLL EFFECT
// ============================================

function initNavbarScroll() {
    var navbar = safeQuerySelector('.navbar');
    if (!navbar) return;

    var scrollHandler = throttle(function() {
        /*var currentScroll = window.pageYOffset || document.documentElement.scrollTop;*/

        /*if (currentScroll > 100) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }*/
    }, 100);

    window.addEventListener('scroll', scrollHandler);
}

// ============================================
// SERVICE CARD 3D TILT EFFECT
// ============================================

function initServiceCard3DTilt() {
    var serviceCards = safeQuerySelectorAll('.service-card');
    
    serviceCards.forEach(function(card) {
        card.addEventListener('mousemove', function(e) {
            var rect = card.getBoundingClientRect();
            var x = e.clientX - rect.left;
            var y = e.clientY - rect.top;
            
            var centerX = rect.width / 2;
            var centerY = rect.height / 2;
            
            var rotateX = (y - centerY) / 20;
            var rotateY = (centerX - x) / 20;
            
            card.style.transform = 'translateY(-15px) scale(1.03) perspective(1000px) rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg)';
        });
        
        card.addEventListener('mouseleave', function() {
            card.style.transform = 'translateY(0) scale(1) perspective(1000px) rotateX(0deg) rotateY(0deg)';
        });
    });
}

// ============================================
// BENEFIT CARDS 3D TILT EFFECT
// ============================================

function initBenefitCard3DTilt() {
    var benefitCards = safeQuerySelectorAll('.benefit-card');
    
    benefitCards.forEach(function(card) {
        card.addEventListener('mousemove', function(e) {
            var rect = card.getBoundingClientRect();
            var x = e.clientX - rect.left;
            var y = e.clientY - rect.top;
            
            var centerX = rect.width / 2;
            var centerY = rect.height / 2;
            
            var rotateX = (y - centerY) / 15;
            var rotateY = (centerX - x) / 15;
            
            card.style.transform = 'translateY(-15px) perspective(1000px) rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg)';
        });
        
        card.addEventListener('mouseleave', function() {
            card.style.transform = 'translateY(0) perspective(1000px) rotateX(0deg) rotateY(0deg)';
        });
    });
}

// ============================================
// ANALYTICS DASHBOARD ANIMATION
// ============================================

function initAnalyticsDashboard() {
    var dashboard = safeQuerySelector('.analytics-dashboard');
    if (!dashboard) return;

    var dashboardObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                animateStatValues();
                dashboardObserver.unobserve(entry.target);
            }
        });
    }, { threshold: 0.5 });
    
    animations.observers.push(dashboardObserver);
    dashboardObserver.observe(dashboard);

    function animateStatValues() {
        var statValues = safeQuerySelectorAll('.stat-value');
        
        statValues.forEach(function(stat) {
            var text = stat.textContent;
            var number = parseFloat(text.replace(/[^0-9.]/g, ''));
            
            if (isNaN(number)) return;
            
            var suffix = text.replace(/[0-9.]/g, '');
            var duration = 2000;
            var startTime = null;
            
            function animate(currentTime) {
                if (!startTime) startTime = currentTime;
                var progress = (currentTime - startTime) / duration;
                
                if (progress < 1) {
                    var current = number * easeOutQuad(progress);
                    stat.textContent = current.toFixed(1) + suffix;
                    var rafId = requestAnimationFrame(animate);
                    animations.rafIds.push(rafId);
                } else {
                    stat.textContent = text;
                }
            }
            
            var rafId = requestAnimationFrame(animate);
            animations.rafIds.push(rafId);
        });
    }
    
    function easeOutQuad(t) {
        return t * (2 - t);
    }
}

// ============================================
// PROCESS ITEM ENHANCED HOVER EFFECTS
// ============================================

function initProcessItemEffects() {
    var processItems = safeQuerySelectorAll('.process-item');
    
    processItems.forEach(function(item) {
        var content = item.querySelector('.process-content');
        if (!content) return;
        
        var particleTimeout = null;
        
        // Parallax effect
        content.addEventListener('mousemove', function(e) {
            var rect = content.getBoundingClientRect();
            var x = e.clientX - rect.left;
            var y = e.clientY - rect.top;
            
            var centerX = rect.width / 2;
            var centerY = rect.height / 2;
            
            var moveX = (x - centerX) / 30;
            var moveY = (y - centerY) / 30;
            
            content.style.transform = 'translateX(' + (20 + moveX) + 'px) scale(1.02)';
        });
        
        content.addEventListener('mouseleave', function() {
            content.style.transform = 'translateX(0) scale(1)';
        });
        
        // Add floating particles with debounce
        content.addEventListener('mouseenter', function() {
            if (particleTimeout) clearTimeout(particleTimeout);
            particleTimeout = setTimeout(function() {
                createParticles(content);
            }, 100);
        });
    });
    
    function createParticles(element) {
        var particleCount = 6; // Reduced from 8
        
        for (var i = 0; i < particleCount; i++) {
            (function(index) {
                setTimeout(function() {
                    var particle = document.createElement('div');
                    particle.className = 'floating-particle';
                    particle.style.cssText = 
                        'position: absolute;' +
                        'width: 6px;' +
                        'height: 6px;' +
                        'background: #ff6b35;' +
                        'border-radius: 50%;' +
                        'pointer-events: none;' +
                        'z-index: 10;' +
                        'box-shadow: 0 0 10px rgba(255, 107, 53, 0.8);';
                    
                    particle.style.left = Math.random() * 100 + '%';
                    particle.style.top = Math.random() * 100 + '%';
                    
                    if (window.getComputedStyle(element).position === 'static') {
                        element.style.position = 'relative';
                    }
                    element.appendChild(particle);
                    
                    animateParticle(particle);
                }, index * 50);
            })(i);
        }
    }
    
    function animateParticle(particle) {
        var startY = parseFloat(particle.style.top);
        var startX = parseFloat(particle.style.left);
        var duration = 2000 + Math.random() * 1000;
        var startTime = Date.now();
        
        function animate() {
            var elapsed = Date.now() - startTime;
            var progress = elapsed / duration;
            
            if (progress < 1 && particle.parentNode) {
                var newY = startY - (progress * 80);
                var newX = startX + (Math.sin(progress * Math.PI * 4) * 15);
                var opacity = 1 - progress;
                var scale = 1 - (progress * 0.5);
                
                particle.style.top = newY + '%';
                particle.style.left = newX + '%';
                particle.style.opacity = opacity;
                particle.style.transform = 'scale(' + scale + ')';
                
                var rafId = requestAnimationFrame(animate);
                animations.rafIds.push(rafId);
            } else {
                if (particle.parentNode) {
                    particle.remove();
                }
            }
        }
        
        animate();
    }
}

// ============================================
// PLATFORM CARDS WAVE ANIMATION
// ============================================

function initPlatformCardsAnimation() {
    var platformCards = safeQuerySelectorAll('.platform-card');
    if (platformCards.length === 0) return;
    
    var platformObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                var cards = Array.from(platformCards);
                var index = cards.indexOf(entry.target);
                
                setTimeout(function() {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }, index * 100);
                
                platformObserver.unobserve(entry.target);
            }
        });
    }, { threshold: 0.2 });
    
    animations.observers.push(platformObserver);
    
    platformCards.forEach(function(card) {
        card.style.opacity = '0';
        card.style.transform = 'translateY(40px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        platformObserver.observe(card);
    });
}

// ============================================
// BUTTON RIPPLE EFFECT
// ============================================

function initButtonRipple() {
    // Add CSS animation first
    if (!document.getElementById('ripple-animation-style')) {
        var style = document.createElement('style');
        style.id = 'ripple-animation-style';
        style.innerHTML = 
            '@keyframes ripple-animation {' +
            '    to {' +
            '        transform: scale(4);' +
            '        opacity: 0;' +
            '    }' +
            '}';
        document.head.appendChild(style);
    }
    
    var buttons = safeQuerySelectorAll('.btn, .btn-cta');
    
    buttons.forEach(function(button) {
        button.addEventListener('click', function(e) {
            var existingRipples = button.querySelectorAll('.ripple-effect');
            if (existingRipples.length > 2) return; // Limit ripples
            
            var ripple = document.createElement('span');
            ripple.classList.add('ripple-effect');
            
            var rect = button.getBoundingClientRect();
            var size = Math.max(rect.width, rect.height);
            var x = e.clientX - rect.left - size / 2;
            var y = e.clientY - rect.top - size / 2;
            
            ripple.style.cssText = 
                'position: absolute;' +
                'width: ' + size + 'px;' +
                'height: ' + size + 'px;' +
                'border-radius: 50%;' +
                'background: rgba(255, 255, 255, 0.5);' +
                'left: ' + x + 'px;' +
                'top: ' + y + 'px;' +
                'transform: scale(0);' +
                'animation: ripple-animation 0.6s ease-out;' +
                'pointer-events: none;';
            
            if (window.getComputedStyle(button).position === 'static') {
                button.style.position = 'relative';
            }
            button.style.overflow = 'hidden';
            button.appendChild(ripple);
            
            setTimeout(function() {
                if (ripple && ripple.parentNode) {
                    ripple.remove();
                }
            }, 600);
        });
    });
}

// ============================================
// METRIC CARDS PULSE ANIMATION
// ============================================

function initMetricCardsPulse() {
    // Add CSS animation first
    if (!document.getElementById('pulse-ring-style')) {
        var style = document.createElement('style');
        style.id = 'pulse-ring-style';
        style.innerHTML = 
            '@keyframes pulse-ring {' +
            '    to {' +
            '        transform: translate(0, -50%) scale(2);' +
            '        opacity: 0;' +
            '    }' +
            '}';
        document.head.appendChild(style);
    }
    
    var metricCards = safeQuerySelectorAll('.metric-card');
    
    metricCards.forEach(function(card) {
        var isPulsing = false;
        
        card.addEventListener('mouseenter', function() {
            if (isPulsing) return;
            isPulsing = true;
            
            for (var i = 0; i < 3; i++) {
                (function(index) {
                    setTimeout(function() {
                        var pulse = document.createElement('div');
                        pulse.style.cssText = 
                            'position: absolute;' +
                            'top: 50%;' +
                            'left: 0;' +
                            'width: 55px;' +
                            'height: 55px;' +
                            'border: 2px solid #ff6b35;' +
                            'border-radius: 15px;' +
                            'transform: translate(0, -50%);' +
                            'animation: pulse-ring 1.5s ease-out forwards;' +
                            'pointer-events: none;';
                        
                        if (window.getComputedStyle(card).position === 'static') {
                            card.style.position = 'relative';
                        }
                        card.insertBefore(pulse, card.firstChild);
                        
                        setTimeout(function() {
                            if (pulse && pulse.parentNode) {
                                pulse.remove();
                            }
                        }, 1500);
                    }, index * 200);
                })(i);
            }
            
            setTimeout(function() {
                isPulsing = false;
            }, 1000);
        });
    });
}

// ============================================
// GRADIENT ORBS MOUSE TRACKING
// ============================================

function initGradientOrbsTracking() {
    var orbs = safeQuerySelectorAll('.gradient-orb');
    if (orbs.length === 0) return;
    
    var mouseMoveHandler = throttle(function(e) {
        var mouseX = e.clientX / window.innerWidth;
        var mouseY = e.clientY / window.innerHeight;
        
        orbs.forEach(function(orb, index) {
            var speed = (index + 1) * 0.05;
            var x = mouseX * 100 * speed;
            var y = mouseY * 100 * speed;
            
            orb.style.transform = 'translate(' + x + 'px, ' + y + 'px)';
        });
    }, 32); // ~30fps for better performance
    
    document.addEventListener('mousemove', mouseMoveHandler);
}

// ============================================
// CHART BARS ANIMATION
// ============================================

function initChartBarsAnimation() {
    var chartBars = safeQuerySelectorAll('.bar');
    var chartContainer = safeQuerySelector('.chart-container');
    
    if (!chartContainer || chartBars.length === 0) return;
    
    var chartObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (entry.isIntersecting) {
                chartBars.forEach(function(bar, index) {
                    setTimeout(function() {
                        bar.style.opacity = '1';
                        bar.style.transform = 'scaleY(1)';
                    }, index * 150);
                });
                chartObserver.unobserve(entry.target);
            }
        });
    }, { threshold: 0.5 });
    
    animations.observers.push(chartObserver);
    
    chartBars.forEach(function(bar) {
        bar.style.opacity = '0';
        bar.style.transform = 'scaleY(0)';
        bar.style.transformOrigin = 'bottom';
        bar.style.transition = 'opacity 0.6s ease, transform 0.8s cubic-bezier(0.4, 0, 0.2, 1)';
    });
    
    chartObserver.observe(chartContainer);
}

// ============================================
// SERVICE FEATURES CASCADE ANIMATION
// ============================================

function initServiceFeaturesCascade() {
    var serviceCards = safeQuerySelectorAll('.service-card');
    
    serviceCards.forEach(function(card) {
        var features = card.querySelectorAll('.service-features li');
        if (features.length === 0) return;
        
        var hoverTimeout = null;
        
        card.addEventListener('mouseenter', function() {
            if (hoverTimeout) clearTimeout(hoverTimeout);
            
            features.forEach(function(feature, index) {
                setTimeout(function() {
                    feature.style.transform = 'translateX(10px)';
                    feature.style.color = '#ff6b35';
                    feature.style.transition = 'transform 0.3s ease, color 0.3s ease';
                }, index * 100);
            });
        });
        
        card.addEventListener('mouseleave', function() {
            features.forEach(function(feature) {
                feature.style.transform = 'translateX(0)';
                feature.style.color = '#666';
            });
        });
    });
}

// ============================================
// TAGS FLOAT ANIMATION
// ============================================

function initTagsFloatAnimation() {
    var processItems = safeQuerySelectorAll('.process-item');
    
    processItems.forEach(function(item) {
        var tags = item.querySelectorAll('.tag');
        if (tags.length === 0) return;
        
        item.addEventListener('mouseenter', function() {
            tags.forEach(function(tag, index) {
                setTimeout(function() {
                    tag.style.transform = 'translateY(-5px) scale(1.05)';
                    tag.style.boxShadow = '0 5px 20px rgba(255, 107, 53, 0.4)';
                    tag.style.transition = 'transform 0.3s ease, box-shadow 0.3s ease';
                }, index * 100);
            });
        });
        
        item.addEventListener('mouseleave', function() {
            tags.forEach(function(tag) {
                tag.style.transform = 'translateY(0) scale(1)';
                tag.style.boxShadow = 'none';
            });
        });
    });
}

// ============================================
// CTA ICON ROTATION
// ============================================

function initCTAIconRotation() {
    var ctaIcon = safeQuerySelector('.cta-icon');
    if (!ctaIcon) return;
    
    var scrollHandler = throttle(function() {
        var scrolled = window.pageYOffset;
        var rotation = scrolled * 0.1;
        ctaIcon.style.transform = 'rotate(' + rotation + 'deg)';
    }, 32);
    
    window.addEventListener('scroll', scrollHandler);
}

// ============================================
// HERO SPARKLE EFFECT
// ============================================

function initHeroSparkle() {
    var hero = safeQuerySelector('.hero');
    if (!hero) return;
    
    if (window.getComputedStyle(hero).position === 'static') {
        hero.style.position = 'relative';
    }
    
    var sparkleInterval = setInterval(function() {
        createSparkle(hero);
    }, 800); // Reduced frequency
    
    animations.intervals.push(sparkleInterval);
    
    // Cleanup when hero is not visible
    var heroObserver = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
            if (!entry.isIntersecting) {
                clearInterval(sparkleInterval);
                var index = animations.intervals.indexOf(sparkleInterval);
                if (index > -1) animations.intervals.splice(index, 1);
            }
        });
    });
    
    animations.observers.push(heroObserver);
    heroObserver.observe(hero);
    
    function createSparkle(container) {
        var sparkle = document.createElement('div');
        sparkle.className = 'sparkle';
        sparkle.style.cssText = 
            'position: absolute;' +
            'width: 4px;' +
            'height: 4px;' +
            'background: white;' +
            'border-radius: 50%;' +
            'pointer-events: none;' +
            'z-index: 3;' +
            'box-shadow: 0 0 10px white;' +
            'opacity: 0;';
        
        sparkle.style.left = Math.random() * 100 + '%';
        sparkle.style.top = Math.random() * 100 + '%';
        
        container.appendChild(sparkle);
        
        // Trigger animation
        setTimeout(function() {
            sparkle.style.opacity = '1';
            sparkle.style.transition = 'opacity 0.3s ease, transform 1s ease';
        }, 10);
        
        setTimeout(function() {
            sparkle.style.opacity = '0';
            sparkle.style.transform = 'scale(3)';
        }, 50);
        
        setTimeout(function() {
            if (sparkle && sparkle.parentNode) {
                sparkle.remove();
            }
        }, 1050);
    }
}

// ============================================
// SCROLL PROGRESS INDICATOR
// ============================================

function initScrollProgress() {
    var progressBar = document.createElement('div');
    progressBar.id = 'scroll-progress-bar';
    progressBar.style.cssText = 
        'position: fixed;' +
        'top: 0;' +
        'left: 0;' +
        'height: 4px;' +
        'background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);' +
        'z-index: 9999;' +
        'transition: width 0.1s ease;' +
        'width: 0;';
    document.body.appendChild(progressBar);
    
    var scrollHandler = throttle(function() {
        var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
        var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
        var scrolled = height > 0 ? (winScroll / height) * 100 : 0;
        progressBar.style.width = scrolled + '%';
    }, 32);
    
    window.addEventListener('scroll', scrollHandler);
}

// ============================================
// LAZY LOAD IMAGES
// ============================================

function initLazyLoadImages() {
    var lazyImages = safeQuerySelectorAll('img[data-src]');
    if (lazyImages.length === 0) return;
    
    if ('IntersectionObserver' in window) {
        var imageObserver = new IntersectionObserver(function(entries) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting) {
                    var img = entry.target;
                    if (img.dataset.src) {
                        img.src = img.dataset.src;
                        img.removeAttribute('data-src');
                    }
                    imageObserver.unobserve(img);
                }
            });
        }, { rootMargin: '50px' });
        
        animations.observers.push(imageObserver);
        
        lazyImages.forEach(function(img) {
            imageObserver.observe(img);
        });
    } else {
        // Fallback for older browsers
        lazyImages.forEach(function(img) {
            if (img.dataset.src) {
                img.src = img.dataset.src;
                img.removeAttribute('data-src');
            }
        });
    }
}

// ============================================
// CLEANUP FUNCTION
// ============================================

function cleanup() {
    // Clear all intervals
    animations.intervals.forEach(function(interval) {
        clearInterval(interval);
    });
    
    // Disconnect all observers
    animations.observers.forEach(function(observer) {
        observer.disconnect();
    });
    
    // Cancel all animation frames
    animations.rafIds.forEach(function(id) {
        cancelAnimationFrame(id);
    });
    
    // Reset arrays
    animations.intervals = [];
    animations.observers = [];
    animations.rafIds = [];
}

// ============================================
// MAIN INITIALIZATION
// ============================================

function initAllAnimations() {
    try {
        initSmoothScroll();
        initFadeInAnimations();
        initNavbarScroll();
        initServiceCard3DTilt();
        initBenefitCard3DTilt();
        initAnalyticsDashboard();
        initProcessItemEffects();
        initPlatformCardsAnimation();
        initButtonRipple();
        initMetricCardsPulse();
        initGradientOrbsTracking();
        initChartBarsAnimation();
        initServiceFeaturesCascade();
        initTagsFloatAnimation();
        initCTAIconRotation();
        initHeroSparkle();
        initScrollProgress();
        initLazyLoadImages();
    } catch (error) {
        console.error('Error initializing animations:', error);
    }
}

// ============================================
// PAGE LOAD & CLEANUP LISTENERS
// ============================================

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initAllAnimations);
} else {
    initAllAnimations();
}

// Cleanup on page unload
window.addEventListener('beforeunload', cleanup);

// Cleanup on page visibility change (for SPA compatibility)
document.addEventListener('visibilitychange', function() {
    if (document.hidden) {
        cleanup();
    }
});
