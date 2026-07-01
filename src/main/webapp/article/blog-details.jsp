<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>${blog.metaTitle}</title>

<meta name="description" content="${blog.metaDescription}">
<meta name="keywords" content="${blog.metaKeywords}">
<meta name="author" content="${blog.author}">
<meta name="robots" content="index, follow">

<link rel="canonical" href="${blog.canonicalUrl}">
<link rel="icon" type="image/webp" href="https://iardo.pages.dev/logo_iardo_wbg.webp">

<!-- Open Graph -->
<meta property="og:title" content="${blog.metaTitle}">
<meta property="og:description" content="${blog.metaDescription}">
<meta property="og:image" content="${blog.featuredImage}">
<meta property="og:url" content="${blog.canonicalUrl}">
<meta property="og:type" content="article">
<meta property="og:site_name" content="IARDO">
<meta property="og:locale" content="en_US">

<!-- Article -->
<meta property="article:author" content="${blog.author}">
<meta property="article:published_time"
	content="${blog.publishedDate}">
<meta property="article:section" content="${blog.category}">

<!-- Twitter -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="${blog.metaTitle}">
<meta name="twitter:description" content="${blog.metaDescription}">
<meta name="twitter:image" content="${blog.featuredImage}">
<meta name="twitter:url" content="${blog.canonicalUrl}">

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "${blog.metaTitle}",
  "description": "${blog.metaDescription}",
  "image": "${blog.featuredImage}",
  "author": {
    "@type": "Person",
    "name": "${blog.author}"
  },
  "datePublished": "${blog.publishedDate}",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "${blog.canonicalUrl}"
  }
}
</script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;1,400&family=Inter:wght@300;400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/article/blog-details.css">

</head>
<body>

 <jsp:include page="../includes/navbar/navbar.jsp" /> 
	
<div class="blog-container">

	<!-- HERO -->
	<header class="blog-hero">
		<div class="blog-hero__eyebrow">
			<span class="blog-tag">${blog.category}</span>
			<span class="blog-read-time">${'5 min read'}</span>
		</div>
		<h1 class="blog-hero__title">${blog.title}</h1>
		<p class="blog-hero__subtitle">${blog.shortDescription}</p>
		<div class="blog-hero__meta">
			<span class="blog-hero__author-name">${blog.author}</span>
			<span class="blog-hero__meta-sep">·</span>
			<span class="blog-hero__date">${blog.publishedDate}</span>
		</div>
	</header>
	
	<div class="blog-cover-wrap">
	  <figure class="blog-cover">
	    <img src="${blog.featuredImage}" alt="blog-img" />
	  </figure>
	</div>

	<!-- ARTICLE BODY -->
	<article class="blog-content">
		${ blog.contentHtml }
	</article>
</div>
<jsp:include page="../includes/footer/footer.jsp" />

</body>
</html>
