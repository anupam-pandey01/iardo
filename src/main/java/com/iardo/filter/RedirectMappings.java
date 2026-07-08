
package com.iardo.filter;

import java.util.HashMap;
import java.util.Map;

public class RedirectMappings {

	public static final Map<String, String> REDIRECTS = new HashMap<>();

	static {
		REDIRECTS.put("/blinkit-onboarding-services", "/services/quick-commerce/blinkit-onboarding-services/");
		REDIRECTS.put("/blinkit-seller-onboarding", "/services/quick-commerce/blinkit-onboarding-services/");
		REDIRECTS.put("/zepto-seller-onboarding", "/services/quick-commerce/zepto/");
		REDIRECTS.put("/swiggy-instamart-seller-onboarding", "/services/quick-commerce/swiggy-instamart/");
		REDIRECTS.put("/bigbasket-onboarding", "/services/quick-commerce/big-basket/");
		REDIRECTS.put("/flipkart-minutes-seller-onboarding", "/services/quick-commerce/flipkart-minute/");
		REDIRECTS.put("/amazon-now-seller-onboarding", "/services/quick-commerce/amazon-now/");
		REDIRECTS.put("/cloud-kitchen-seller-onboarding", "/services/quick-commerce/swiggy-cloud-kitchen/");
		REDIRECTS.put("/amazon-seller-onboarding", "/services/e-commerce/amazon/");
		REDIRECTS.put("/flipkart-seller-onboarding", "/services/e-commerce/flipkart/");
		REDIRECTS.put("/meesho-seller-onboarding", "/services/e-commerce/meesho/");
		REDIRECTS.put("/myntra-seller-onboarding", "/services/e-commerce/myntra/");
		REDIRECTS.put("/nykaa-seller-onboarding", "/services/e-commerce/nykaa/");
		REDIRECTS.put("/ajio-seller-onboarding", "/services/e-commerce/ajio/");
		REDIRECTS.put("/jiomart-seller-onboarding", "/services/e-commerce/jio-mart/");
		REDIRECTS.put("/website-development-services", "/services/development/web-development/");
		REDIRECTS.put("/app-development-services", "/services/development/app-development/");
		REDIRECTS.put("/seo-services", "/services/digital-marketing/seo/");
		REDIRECTS.put("/smo", "/services/digital-marketing/smo/");
		REDIRECTS.put("/google-ads", "/services/digital-marketing/google-ads/");
		REDIRECTS.put("/meta-ads", "/services/digital-marketing/meta-ads/");
		REDIRECTS.put("/contact", "/contact-us/");
		REDIRECTS.put("/instashop-seller-onboarding", "/services/quick-commerce/instashop/");
		REDIRECTS.put("/noon-seller-onboarding", "/noon-onboarding/");
		REDIRECTS.put("/flipkart-minutes.jsp", "/services/quick-commerce/flipkart-minute/");
		REDIRECTS.put("/contact.jsp", "/contact-us/");
		REDIRECTS.put("/Dmart", "/services/e-commerce/d-mart/");
		REDIRECTS.put("/blinkit-commission-charges", "/blog/blinkit-commission-charges");
		REDIRECTS.put("/cloud-kitchen.jsp", "/services/quick-commerce/swiggy-cloud-kitchen/");
		REDIRECTS.put("/contact.jsp", "/contact-us/");
		// TODO: Add remaining mappings from your sitemap.

	}
}
