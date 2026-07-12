import { Link } from 'react-router-dom';
import { Suspense } from 'react';
import { FaqExplorer } from '@/components/wiki/FaqExplorer';
import { faqItems } from '@/content/wiki';
import { SEO } from '@/components/SEO';

export default function FaqPage() {
  const faqSchema = {
    '@context': 'https://schema.org',
    '@type': 'FAQPage',
    'mainEntity': faqItems.map((item) => ({
      '@type': 'Question',
      'name': item.question,
      'acceptedAnswer': {
        '@type': 'Answer',
        'text': item.answer
      }
    }))
  };

  return (
    <article className="wiki-article wiki-faq-page">
      <SEO
        title="Frequently Asked Questions | JoySword Wiki"
        description="Find answers to frequently asked questions about JoySword: account creation, local server setup, Windows installations, gameplay mechanics, and character progression."
        keywords={['joysword faq', 'joysword troubleshooting', 'joysword setup questions', 'elsword offline help']}
        jsonLd={faqSchema}
      />
      <header className="wiki-article-header">
        <div className="wiki-breadcrumb">
          <Link to="/wiki">Player Wiki</Link><i>/</i><strong>FAQ</strong>
        </div>
        <p className="wiki-kicker">Quick answers</p>
        <h1>Frequently asked questions</h1>
        <p>
          Clear answers for account access, Windows setup, gameplay, progression,
          PvP, and common client problems.
        </p>
        <div className="wiki-article-meta">
          <span>{faqItems.length} curated answers</span>
          <span>Beginner friendly</span>
          <span>Reviewed July 2026</span>
        </div>
      </header>
      <Suspense fallback={<p className="wiki-loading">Loading answers…</p>}>
        <FaqExplorer />
      </Suspense>
    </article>
  );
}
