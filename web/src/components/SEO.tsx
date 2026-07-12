import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import { siteUrl } from '@/lib/site';

interface SEOProps {
  title: string;
  description?: string;
  keywords?: string[];
  canonicalPath?: string;
  ogType?: 'website' | 'article' | 'video.other';
  ogImage?: string;
  ogImageAlt?: string;
  jsonLd?: Record<string, any> | Record<string, any>[];
  noIndex?: boolean;
}

export function SEO({
  title,
  description,
  keywords,
  canonicalPath,
  ogType = 'website',
  ogImage = '/joysword_hero_banner.webp',
  ogImageAlt = 'JoySword Online — Classic Anime Action MMORPG Realm',
  jsonLd,
  noIndex = false,
}: SEOProps) {
  const location = useLocation();

  useEffect(() => {
    // 1. Update Title
    document.title = title;

    // Helper to get or create a tag
    const getOrCreateMetaTag = (attribute: string, attrValue: string): HTMLMetaElement => {
      let element = document.querySelector(`meta[${attribute}="${attrValue}"]`) as HTMLMetaElement;
      if (!element) {
        element = document.createElement('meta');
        element.setAttribute(attribute, attrValue);
        document.head.appendChild(element);
      }
      return element;
    };

    // Helper to get or create link tags
    const getOrCreateLinkTag = (rel: string): HTMLLinkElement => {
      let element = document.querySelector(`link[rel="${rel}"]`) as HTMLLinkElement;
      if (!element) {
        element = document.createElement('link');
        element.setAttribute('rel', rel);
        document.head.appendChild(element);
      }
      return element;
    };

    // 2. Meta description
    if (description) {
      const descTag = getOrCreateMetaTag('name', 'description');
      descTag.setAttribute('content', description);

      const ogDescTag = getOrCreateMetaTag('property', 'og:description');
      ogDescTag.setAttribute('content', description);

      const twDescTag = getOrCreateMetaTag('name', 'twitter:description');
      twDescTag.setAttribute('content', description);
    }

    // 3. Keywords
    if (keywords && keywords.length > 0) {
      const keywordsTag = getOrCreateMetaTag('name', 'keywords');
      keywordsTag.setAttribute('content', keywords.join(', '));
    }

    // 4. Robots indexing
    const robotsTag = getOrCreateMetaTag('name', 'robots');
    robotsTag.setAttribute('content', noIndex ? 'noindex, nofollow' : 'index, follow');

    // 5. Canonical URL
    const canonicalUrl = canonicalPath
      ? `${siteUrl}${canonicalPath}`
      : `${siteUrl}${location.pathname}`;
    const canonicalLink = getOrCreateLinkTag('canonical');
    canonicalLink.setAttribute('href', canonicalUrl);

    // 6. Open Graph Tags
    const ogTitleTag = getOrCreateMetaTag('property', 'og:title');
    ogTitleTag.setAttribute('content', title);

    const ogUrlTag = getOrCreateMetaTag('property', 'og:url');
    ogUrlTag.setAttribute('content', canonicalUrl);

    const ogTypeTag = getOrCreateMetaTag('property', 'og:type');
    ogTypeTag.setAttribute('content', ogType);

    const fullOgImage = ogImage.startsWith('http') ? ogImage : `${siteUrl}${ogImage}`;
    const ogImgTag = getOrCreateMetaTag('property', 'og:image');
    ogImgTag.setAttribute('content', fullOgImage);

    if (ogImageAlt) {
      const ogImgAltTag = getOrCreateMetaTag('property', 'og:image_alt');
      ogImgAltTag.setAttribute('content', ogImageAlt);
    }

    const ogSiteNameTag = getOrCreateMetaTag('property', 'og:site_name');
    ogSiteNameTag.setAttribute('content', 'JoySword');

    // 7. Twitter Card Tags
    const twCardTag = getOrCreateMetaTag('name', 'twitter:card');
    twCardTag.setAttribute('content', 'summary_large_image');

    const twTitleTag = getOrCreateMetaTag('name', 'twitter:title');
    twTitleTag.setAttribute('content', title);

    const twImgTag = getOrCreateMetaTag('name', 'twitter:image');
    twImgTag.setAttribute('content', fullOgImage);

    // 8. Structured Data (JSON-LD)
    // Remove existing dynamic script tag if any
    const existingScript = document.getElementById('dynamic-jsonld');
    if (existingScript) {
      existingScript.remove();
    }

    if (jsonLd) {
      const script = document.createElement('script');
      script.id = 'dynamic-jsonld';
      script.type = 'application/ld+json';
      script.innerHTML = JSON.stringify(jsonLd).replace(/</g, '\\u003c');
      document.head.appendChild(script);
    }

    return () => {
      // Clean up dynamic JSON-LD when component unmounts/updates
      const scriptToDelete = document.getElementById('dynamic-jsonld');
      if (scriptToDelete) {
        scriptToDelete.remove();
      }
    };
  }, [title, description, keywords, canonicalPath, ogType, ogImage, ogImageAlt, jsonLd, location.pathname]);

  return null;
}
