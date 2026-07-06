<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Life @ IARDO - Memories</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #f8fafc; /* Changed to Light Background */
    color: #0f172a; /* Changed to Dark Text */
    overflow-x: hidden;
}

.hero {
    /* Changed overlay to light transparent white */
    background: linear-gradient(rgba(255,255,255,0.85), rgba(255,255,255,0.85)), url("https://images.unsplash.com/photo-1522071820081-009f0129c71c?auto=format&fit=crop&w=1920&q=80") center/cover no-repeat;
    padding: 100px 40px;
    color: #0f172a; /* Dark Text */
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.hero h1 {
	margin-top: 100px;
    font-size: 56px;
    margin-bottom: 15px;
    font-weight: 700;
    letter-spacing: 1px;
    text-shadow: none; /* Removed heavy shadow for light theme */
    text-align: left;
}

.hero h1 i {
    color: #8b5cf6;
}

.hero p {
    font-size: 20px;
    max-width: 700px;
    margin: 0;
    line-height: 1.6;
    opacity: 0.95;
    color: #475569; /* Darker gray for readability */
    text-align: left;
}

.container {
    max-width: 1400px;
    margin: 50px auto;
    padding: 0 20px;
    display: flex;
    gap: 30px;
}

.sidebar {
	margin-top: 40px;
    width: 320px;
    background: #ffffff; /* White background */
    backdrop-filter: blur(10px);
    padding: 25px;
    border-radius: 20px;
    box-shadow: 0 10px 40px rgba(0,0,0,0.05); /* Lighter shadow */
    border: 1px solid #e2e8f0; /* Light border */
    height: fit-content;
    position: sticky;
    top: 20px;
}

.sidebar h2 {
    font-size: 22px;
    margin-bottom: 20px;
    color: #8b5cf6;
    display: flex;
    align-items: center;
    gap: 10px;
}

.category {
    margin-bottom: 20px;
}

.category-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 18px;
    background: linear-gradient(135deg, #8b5cf6, #6d28d9);
    color: #fff;
    border-radius: 12px;
    cursor: pointer;
    font-weight: 600;
    font-size: 15px;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(139,92,246,0.3);
}

.category-header:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(139,92,246,0.5);
}

.category-header i {
    transition: transform 0.3s ease;
}

.category-header.active i.fa-chevron-down {
    transform: rotate(180deg);
}

.category-items {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.4s ease;
    padding-left: 5px;
    margin-top: 10px;
}

.category-items.show {
    max-height: 600px;
}

.category-items li {
    list-style: none;
    padding: 12px 16px;
    margin-bottom: 8px;
    border-radius: 10px;
    background: #f1f5f9; /* Light gray background */
    cursor: pointer;
    font-size: 14px;
    display: flex;
    align-items: center;
    gap: 12px;
    transition: all 0.3s ease;
    border-left: 3px solid transparent;
    font-weight: 500;
    color: #475569; /* Dark gray text */
}

.category-items li:hover {
    background: rgba(139,92,246,0.1); /* Light purple hover */
    border-left-color: #8b5cf6;
    transform: translateX(8px);
}

.category-items li.active {
    background: linear-gradient(135deg, #8b5cf6, #6d28d9);
    color: #fff;
    border-left-color: #fff;
    box-shadow: 0 3px 10px rgba(139,92,246,0.4);
}

.category-items li i {
    min-width: 20px;
    text-align: center;
    font-size: 14px;
}

.gallery-section {
	margin-top: 40px;
    flex: 1;
}

.gallery-header {
    background: #ffffff; /* White background */
    backdrop-filter: blur(10px);
    padding: 20px 30px;
    border-radius: 15px;
    margin-bottom: 25px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.05); /* Lighter shadow */
    border: 1px solid #e2e8f0; /* Light border */
}

.gallery-header h2 {
    font-size: 28px;
    color: #0f172a; /* Dark Text */
    margin-bottom: 5px;
}

.gallery-header p {
    color: #64748b; /* Gray text */
    font-size: 15px;
}

.gallery {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    margin-bottom: 20px;
}

.card {
    position: relative;
    overflow: hidden;
    border-radius: 16px;
    cursor: pointer;
    box-shadow: 0 5px 20px rgba(0,0,0,0.05); /* Light shadow */
    transition: all 0.4s ease;
    background: #ffffff; /* White background */
    height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid #e2e8f0; /* Light border */
}

.card img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    object-position: center;
    display: block;
    transition: all 0.4s ease;
}

.card:hover {
    transform: translateY(-8px) scale(1.02);
    box-shadow: 0 15px 40px rgba(139,92,246,0.2); /* Purple shadow */
    border-color: rgba(139,92,246,0.4);
}

.card:hover img {
    transform: scale(1.1);
    filter: brightness(1.05);
}

.card-overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    padding: 15px;
    background: linear-gradient(to top, rgba(0,0,0,0.8), transparent); /* Kept dark for text readability */
    color: #fff;
    transform: translateY(10px);
    opacity: 0;
    transition: all 0.4s ease;
}

.card:hover .card-overlay {
    transform: translateY(0);
    opacity: 1;
}

.card-overlay h4 {
    margin: 0 0 5px 0;
    font-size: 15px;
    font-weight: 600;
}

.card-overlay span {
    font-size: 12px;
    opacity: 0.9;
    color: #e2e8f0;
}

.see-more-btn {
    display: inline-block;
    padding: 15px 40px;
    background: linear-gradient(135deg, #8b5cf6, #6d28d9);
    color: #fff;
    border: none;
    border-radius: 12px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 5px 20px rgba(139,92,246,0.4);
    margin-top: 10px;
}

.see-more-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 30px rgba(139,92,246,0.6);
}

.see-more-btn i {
    margin-left: 8px;
}

.btn-container {
    text-align: center;
}

/* Lightbox Modal (Kept dark for better focus on image) */
.slider-overlay {
    position: fixed;
    inset: 0;
    background: rgba(15, 23, 42, 0.95); /* Dark slate background */
    display: none;
    justify-content: center;
    align-items: center;
    z-index: 9999;
    animation: fadeIn 0.3s ease;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

.slider-box {
    position: relative;
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 40px 20px;
}

.slider-main {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    max-width: 1400px;
}

.slider-main img {
    width: auto;
    max-width: 90vw;
    max-height: 80vh;
    border-radius: 0;
    object-fit: contain;
    box-shadow: 0 20px 60px rgba(0,0,0,0.5);
    transition: all 0.3s ease;
}

.slider-caption {
    display: none;
}

.thumbnail-strip {
    display: none !important;
}

.thumbnail-strip::-webkit-scrollbar {
    width: 6px;
}

.thumbnail-strip::-webkit-scrollbar-track {
    background: transparent;
}

.thumbnail-strip::-webkit-scrollbar-thumb {
    background: rgba(139,92,246,0.3);
    border-radius: 3px;
}

.arrow {
    position: fixed;
    top: 50%;
    transform: translateY(-50%);
    font-size: 40px;
    color: #fff;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
    width: 60px;
    height: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    cursor: pointer;
    transition: all 0.3s ease;
    z-index: 10;
    border: 2px solid rgba(255,255,255,0.2);
}

.arrow:hover {
    background: rgba(255,255,255,0.2);
    border-color: rgba(255,255,255,0.4);
    transform: translateY(-50%) scale(1.1);
}

.arrow.left {
    left: 30px;
}

.arrow.right {
    right: 30px;
}

.close {
    position: absolute;
    top: 20px;
    right: 20px;
    font-size: 36px;
    color: #fff;
    cursor: pointer;
    transition: all 0.3s ease;
    width: 50px;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    background: rgba(255,255,255,0.1);
    z-index: 10;
}

.close:hover {
    color: #8b5cf6;
    background: rgba(255,255,255,0.2);
    transform: rotate(90deg);
}

@media(max-width: 1200px) {
    .arrow.left { left: 20px; }
    .arrow.right { right: 20px; }
}

@media(max-width: 900px) {
    .container { flex-direction: column; }
    .sidebar { width: 100%; position: relative; top: 0; }
    .gallery { grid-template-columns: 1fr; }
    .slider-main img { max-width: 95vw; max-height: 70vh; }
    .arrow.left { left: 10px; }
    .arrow.right { right: 10px; }
    .hero h1 { font-size: 40px; }
}

@media(max-width: 600px) {
    .gallery { grid-template-columns: 1fr; gap: 15px; }
    .hero { padding: 60px 20px; }
    .hero h1 { font-size: 32px; }
    .hero p { font-size: 16px; }
    .slider-main img { max-height: 60vh; }
    .arrow { width: 45px; height: 45px; font-size: 28px; }
    .arrow.left { left: 5px; }
    .arrow.right { right: 5px; }
}
</style>
</head>
<body>
<jsp:include page="../includes/navbar/navbar.jsp" />

<div class="hero">
    <h1><i class="fa-solid fa-heart"></i> Life @ IARDO</h1>
    <p>At IARDO, every celebration strengthens our bond and every moment becomes a cherished memory. Experience the vibrant culture that makes us a family.</p>
</div>

<div class="container">
    
    <div class="sidebar">
        <h2><i class="fa-solid fa-images"></i> Gallery</h2>
        
        <div class="category">
            <div class="category-header active" onclick="toggleCategory(this)">
                <span><i class="fa-solid fa-calendar-days"></i> Festivals</span>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <ul class="category-items show">
                <li onclick="filterGallery('holi', this)"><i class="fa-solid fa-droplet"></i> Holi</li>
                <li onclick="filterGallery('diwali', this)"><i class="fa-solid fa-fire"></i> Diwali</li>
                <li onclick="filterGallery('christmas', this)" class="active"><i class="fa-solid fa-tree"></i> Christmas</li>
                 <li onclick="filterGallery('events', this)"><i class="fa-solid fa-bullhorn"></i> Events</li>
                <li onclick="filterGallery('saraswati', this)"><i class="fa-solid fa-book"></i> Saraswati Pooja</li>
                <li onclick="filterGallery('ganesh', this)"><i class="fa-solid fa-om"></i> Ganesh Chaturthi</li>
                <li onclick="filterGallery('navratri', this)"><i class="fa-solid fa-hands-praying"></i> Navratri</li>
                <li onclick="filterGallery('newyear', this)"><i class="fa-solid fa-champagne-glasses"></i> New Year</li>
                <li onclick="filterGallery('rakhi', this)"><i class="fa-solid fa-gift"></i> Raksha Bandhan</li>
                <li onclick="filterGallery('independence', this)"><i class="fa-solid fa-flag"></i> Independence Day</li>
            </ul>
        </div>

        <div class="category">
            <div class="category-header" onclick="toggleCategory(this)">
                <span><i class="fa-solid fa-building"></i> Office Fun & Activities</span>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <ul class="category-items">
                <li onclick="filterGallery('games', this)"><i class="fa-solid fa-gamepad"></i> Indoor Games</li>
                <li onclick="filterGallery('workshops', this)"><i class="fa-solid fa-laptop-code"></i> Workshops & Training</li>
                <li onclick="filterGallery('birthday', this)"><i class="fa-solid fa-cake-candles"></i> Birthday Celebrations</li>
                <li onclick="filterGallery('meetings', this)"><i class="fa-solid fa-handshake"></i> Team Meetings</li>
                <li onclick="filterGallery('hackathon', this)"><i class="fa-solid fa-code"></i> Hackathons</li>
                <li onclick="filterGallery('award', this)"><i class="fa-solid fa-trophy"></i> Awards & Recognition</li>
            </ul>
        </div>

        <div class="category">
            <div class="category-header" onclick="toggleCategory(this)">
                <span><i class="fa-solid fa-mountain-sun"></i> Outings & Trips</span>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <ul class="category-items">
                <li onclick="filterGallery('picnic', this)"><i class="fa-solid fa-utensils"></i> Company Picnic</li>
                <li onclick="filterGallery('trekking', this)"><i class="fa-solid fa-person-hiking"></i> Trekking Adventures</li>
                <li onclick="filterGallery('resort', this)"><i class="fa-solid fa-umbrella-beach"></i> Resort Getaway</li>
                <li onclick="filterGallery('dinner', this)"><i class="fa-solid fa-wine-glass"></i> Team Dinners</li>
                <li onclick="filterGallery('sports', this)"><i class="fa-solid fa-football"></i> Sports Day</li>
            </ul>
        </div>
    </div>

    <div class="gallery-section">
        <div class="gallery-header">
            <h2 id="galleryTitle">Christmas</h2>
            <p id="gallerySubtitle">7 memories captured</p>
        </div>
        
        <div class="gallery" id="gallery"></div>
        
        <div class="btn-container" id="seeMoreContainer">
            <button class="see-more-btn" onclick="showAllImages()">
                See All Photos <i class="fa-solid fa-images"></i>
            </button>
        </div>
    </div>

</div>

<div class="slider-overlay" id="slider" onclick="closeSlider(event)">
    <span class="close" onclick="closeSlider()"><i class="fa-solid fa-xmark"></i></span>
    <div class="slider-box" onclick="event.stopPropagation()">
        <span class="arrow left" onclick="prev()"><i class="fa-solid fa-chevron-left"></i></span>
        <div class="slider-main">
            <img id="slideImg" alt="Gallery Image">
            <div class="slider-caption">
                <h3 id="slideTitle"></h3>
                <p id="slideCategory"></p>
            </div>
        </div>
        <div class="thumbnail-strip" id="thumbnailStrip"></div>
        <span class="arrow right" onclick="next()"><i class="fa-solid fa-chevron-right"></i></span>
    </div>
</div>

<script>
const images = {
    christmas: [
        {src:"https://iardo.pages.dev/1.webp", caption:"Christmas Party 2024"},
        {src:"https://iardo.pages.dev/35.webp", caption:"Festive Decorations"}
    ],
    holi: [
        {src:"https://iardo.pages.dev/6.webp"},
        {src:"https://iardo.pages.dev/22.webp"},
        {src:"https://iardo.pages.dev/36.webp"},
        {src:"https://iardo.pages.dev/37.webp"}
    ],
    diwali: [
        {},
        {},
        {}
    ],
    events: [
        {src:"https://iardo.pages.dev/7.webp"},
        {src:"https://iardo.pages.dev/8.webp"},
        {src:"https://iardo.pages.dev/10.webp"},
        {src:"https://iardo.pages.dev/11.webp"},
        {src:"https://iardo.pages.dev/14.webp"},
        {src:"https://iardo.pages.dev/15.webp"},
        {src:"https://iardo.pages.dev/18.webp"},
        {src:"https://iardo.pages.dev/21.webp"},
        {src:"https://iardo.pages.dev/23.webp"},
        {src:"https://iardo.pages.dev/24.webp"},
        {src:"https://iardo.pages.dev/25.webp"},
        {src:"https://iardo.pages.dev/26.webp"},
        {src:"https://iardo.pages.dev/27.webp"},
        {src:"https://iardo.pages.dev/30.webp"},
        {src:"https://iardo.pages.dev/31.webp"},
        {src:"https://iardo.pages.dev/32.webp"},
        {src:"https://iardo.pages.dev/38.webp"},
        {src:"https://iardo.pages.dev/39.webp"},
        {src:"https://iardo.pages.dev/40.webp"},
        {src:"https://iardo.pages.dev/41.webp"},
        {src:"https://iardo.pages.dev/42.webp"},
        {src:"https://iardo.pages.dev/44.webp"},
        {src:"https://iardo.pages.dev/45.webp"},
        {src:"https://iardo.pages.dev/46.webp"},
        {src:"https://iardo.pages.dev/47.webp"},
        {src:"https://iardo.pages.dev/48.webp"},
        {src:"https://iardo.pages.dev/49.webp"},
        {src:"https://iardo.pages.dev/50.webp"},
        {src:"https://iardo.pages.dev/51.webp"},
        {src:"https://iardo.pages.dev/52.webp"},
        {src:"https://iardo.pages.dev/53.webp"},
        {src:"https://iardo.pages.dev/54.webp"}
   ],
    ganesh: [
        {},
        {}
    ],
    saraswati:[
         {src:"https://iardo.pages.dev/12.webp"},
         {src:"https://iardo.pages.dev/29.webp"},
         {src:"https://iardo.pages.dev/34.webp"},
         {src:"https://iardo.pages.dev/43.webp"}
    ],
    navratri: [
        {},
        {},
        {}
    ],
    newyear: [
        {},
        {}
    ],
    rakhi: [
        {},
        {},
        {}
    ],
    independence: [
        {}
    ],
    
    games: [{}],
    workshops: [{}],
    
    birthday: [
         {src:"https://iardo.pages.dev/2.webp"},
         {src:"https://iardo.pages.dev/3.webp"},
         {src:"https://iardo.pages.dev/4.webp"},
         {src:"https://iardo.pages.dev/5.webp"},
         {src:"https://iardo.pages.dev/16.webp"},
         {src:"https://iardo.pages.dev/17.webp"},
         {src:"https://iardo.pages.dev/19.webp"},
         {src:"https://iardo.pages.dev/20.webp"},
         {src:"https://iardo.pages.dev/56.webp"}
    ],
   
    meetings: [{}],
    hackathon: [{}],
    award: [{}],
    picnic: [
     {src:"https://iardo.pages.dev/9.webp"},
    {src:"https://iardo.pages.dev/55.webp"}
   ],
    trekking: [{}],
    resort: [{}],
    dinner: [{}],
    sports: [{}]
};

let current = [];
let index = 0;
let activeFilter = '';
let showingAll = false;

const categoryNames = {
    holi: "Holi", diwali: "Diwali", christmas: "Christmas", ganesh: "Ganesh Chaturthi",
    navratri: "Navratri", newyear: "New Year", rakhi: "Raksha Bandhan", independence: "Independence Day",
    events: "Events", games: "Indoor Games", workshops: "Workshops & Training",
    birthday: "Birthday Celebrations", meetings: "Team Meetings", hackathon: "Hackathons",
    award: "Awards & Recognition", picnic: "Company Picnic", trekking: "Trekking Adventures",
    resort: "Resort Getaway", dinner: "Team Dinners", sports: "Sports Day", saraswati: "Saraswati Pooja"
};

function toggleCategory(header) {
    const items = header.nextElementSibling;
    if (header.classList.contains('active')) {
        header.classList.remove('active');
        items.classList.remove('show');
        return;
    }
    document.querySelectorAll('.category-header').forEach(h => h.classList.remove('active'));
    document.querySelectorAll('.category-items').forEach(i => i.classList.remove('show'));
    header.classList.add('active');
    items.classList.add('show');
}

function filterGallery(type, clickedLi) {
    document.querySelectorAll('.category-items li').forEach(li => li.classList.remove('active'));
    if (clickedLi) clickedLi.classList.add('active');
    activeFilter = type;
    current = images[type] || [];
    showingAll = false;
    document.getElementById("galleryTitle").textContent = categoryNames[type] || "Gallery";
    document.getElementById("gallerySubtitle").textContent = `${current.length} memories captured`;
    displayGallery(false);
}

function displayGallery(showAll) {
    const gallery = document.getElementById("gallery");
    const seeMoreContainer = document.getElementById("seeMoreContainer");
    gallery.innerHTML = "";
    
    // Filtering out empty objects so blank cards don't show up
    const validImages = current.filter(img => img.src);
    
    if(validImages.length === 0) {
        gallery.innerHTML = "<p style='color: #64748b; padding: 20px;'>Images coming soon!</p>";
        seeMoreContainer.style.display = "none";
        return;
    }
    
    const itemsToShow = showAll ? validImages : validImages.slice(0, 4);
    
    itemsToShow.forEach((imgObj, i) => {
        const card = document.createElement("div");
        card.className = "card";
        const img = document.createElement("img");
        img.src = imgObj.src;
        img.alt = imgObj.caption || "Gallery Image";
        img.onerror = function() {
            this.src = 'https://via.placeholder.com/800x500/8b5cf6/ffffff?text=Loading...';
        };
        const overlay = document.createElement("div");
        overlay.className = "card-overlay";
        overlay.innerHTML = `<h4>${imgObj.caption || categoryNames[activeFilter]}</h4><span>${categoryNames[activeFilter]}</span>`;
        card.appendChild(img);
        card.appendChild(overlay);
        card.onclick = () => {
            index = validImages.findIndex(img => img.src === imgObj.src);
            showSlide();
            createThumbnails();
            document.getElementById("slider").style.display = "flex";
        };
        gallery.appendChild(card);
    });
    seeMoreContainer.style.display = (validImages.length > 4 && !showAll) ? "block" : "none";
}

function showAllImages() {
    showingAll = true;
    displayGallery(true);
}

function createThumbnails() {
    const strip = document.getElementById("thumbnailStrip");
    strip.innerHTML = "";
    
    const validImages = current.filter(img => img.src);
    
    validImages.forEach((imgObj, i) => {
        const thumb = document.createElement("div");
        thumb.className = "thumbnail";
        if (i === index) thumb.classList.add("active");
        const thumbImg = document.createElement("img");
        thumbImg.src = imgObj.src;
        thumbImg.alt = imgObj.caption || "Thumbnail";
        thumb.appendChild(thumbImg);
        thumb.onclick = () => {
            index = i;
            showSlide();
            updateThumbnails();
        };
        strip.appendChild(thumb);
    });
}

function updateThumbnails() {
    document.querySelectorAll(".thumbnail").forEach((thumb, i) => {
        thumb.classList.toggle("active", i === index);
    });
}

function showSlide() {
    const validImages = current.filter(img => img.src);
    if (validImages.length === 0) return;
    const slideImg = document.getElementById("slideImg");
    slideImg.src = validImages[index].src;
    slideImg.onerror = function() {
        this.src = 'https://via.placeholder.com/800x600/8b5cf6/ffffff?text=Image+Not+Available';
    };
    document.getElementById("slideTitle").textContent = validImages[index].caption || categoryNames[activeFilter];
    document.getElementById("slideCategory").textContent = categoryNames[activeFilter];
    updateThumbnails();
}

function next() {
    const validImages = current.filter(img => img.src);
    index = (index + 1) % validImages.length;
    showSlide();
}

function prev() {
    const validImages = current.filter(img => img.src);
    index = (index - 1 + validImages.length) % validImages.length;
    showSlide();
}

function closeSlider(event) {
    if (event && event.target !== event.currentTarget) return;
    document.getElementById("slider").style.display = "none";
}

document.addEventListener('keydown', (e) => {
    if (document.getElementById("slider").style.display === "flex") {
        if (e.key === "ArrowRight") next();
        if (e.key === "ArrowLeft") prev();
        if (e.key === "Escape") closeSlider();
    }
});

window.addEventListener('load', () => {
    filterGallery('christmas');
});
</script>

<jsp:include page="../includes/footer/footer.jsp" />

</body>
</html>
