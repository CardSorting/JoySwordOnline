import { useNavigate, useLocation } from 'react-router-dom';

export function useSectionNavigator() {
  const navigate = useNavigate();
  const location = useLocation();

  const navigateToSection = (sectionId: string) => {
    if (location.pathname === '/') {
      const element = document.getElementById(sectionId);
      if (element) {
        element.scrollIntoView({ behavior: 'smooth' });
      }
    } else {
      window.localStorage.setItem('scrollToSection', sectionId);
      navigate('/');
    }
  };

  return navigateToSection;
}
