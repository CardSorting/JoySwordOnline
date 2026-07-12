import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomePage from '@/app/page';
import DownloadPage from '@/app/download/page';
import InstallGuidePage from '@/app/download/install/page';
import AnimePage from '@/app/anime/page';
import CommunityPage from '@/app/community/page';
import WikiPage from '@/app/wiki/page';
import WikiArticlePage from '@/app/wiki/[slug]/page';
import FaqPage from '@/app/wiki/faq/page';
import IceBurnerPage from '@/app/wiki/cash-shop/ice-burner/page';
import IceBurnerDetailPage from '@/app/wiki/cash-shop/ice-burner/[setSlug]/page';
import WikiLayout from '@/app/wiki/layout';
import AccountPage from '@/app/account/page';
import NotFoundPage from '@/app/not-found/page';

export default function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/download" element={<DownloadPage />} />
        <Route path="/download/install" element={<InstallGuidePage />} />
        <Route path="/anime" element={<AnimePage />} />
        <Route path="/community" element={<CommunityPage />} />

        {/* Account portal — register/login/dashboard all render the same page */}
        <Route path="/account" element={<AccountPage />} />
        <Route path="/register" element={<AccountPage />} />
        <Route path="/login" element={<AccountPage />} />

        {/* Wiki Layout sub-routes */}
        <Route element={<WikiLayout />}>
          <Route path="/wiki" element={<WikiPage />} />
          <Route path="/wiki/:slug" element={<WikiArticlePage />} />
          <Route path="/wiki/faq" element={<FaqPage />} />
          <Route path="/wiki/cash-shop/ice-burner" element={<IceBurnerPage />} />
          <Route path="/wiki/cash-shop/ice-burner/:setSlug" element={<IceBurnerDetailPage />} />
        </Route>

        {/* Wildcard 404 Route */}
        <Route path="*" element={<NotFoundPage />} />
      </Routes>
    </Router>
  );
}
