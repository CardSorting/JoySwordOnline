'use client';

import { useState } from 'react';

const media = [
  {
    src: '/joysword_hero_banner.webp',
    alt: 'JoySword heroes assembled beneath the realm title',
    label: 'Realm overview'
  },
  {
    src: '/cashshop-revelation.webp',
    alt: 'JoySword Revelation collection preview',
    label: 'Character collections'
  },
  {
    src: '/wiki-guide-archive.webp',
    alt: 'JoySword archive and player guide preview',
    label: 'Player archive'
  },
  {
    src: '/ice-burner/royal-blood-gallery.webp',
    alt: 'Royal Blood costume collection preview',
    label: 'Royal Blood collection'
  }
];

export function StoreMediaGallery() {
  const [activeIndex, setActiveIndex] = useState(0);
  const active = media[activeIndex];

  function selectRelative(direction: number) {
    setActiveIndex((current) => (current + direction + media.length) % media.length);
  }

  return (
    <div className="store-media-gallery">
      <div className="store-media-main">
        <img
          key={active.src}
          src={active.src}
          alt={active.alt}
          style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
          loading={activeIndex === 0 ? 'eager' : 'lazy'}
        />
        <div className="store-media-caption">
          <span>Media {activeIndex + 1} of {media.length}</span>
          <strong>{active.label}</strong>
        </div>
        <button
          className="store-media-arrow previous"
          type="button"
          aria-label="Show previous media item"
          onClick={() => selectRelative(-1)}
        >
          ‹
        </button>
        <button
          className="store-media-arrow next"
          type="button"
          aria-label="Show next media item"
          onClick={() => selectRelative(1)}
        >
          ›
        </button>
      </div>
      <div className="store-media-thumbnails" role="tablist" aria-label="JoySword media">
        {media.map((item, index) => (
          <button
            className={index === activeIndex ? 'is-active' : ''}
            type="button"
            role="tab"
            aria-selected={index === activeIndex}
            aria-label={`Show ${item.label}`}
            onClick={() => setActiveIndex(index)}
            key={item.src}
          >
            <img
              src={item.src}
              alt={`Thumbnail for ${item.label}`}
              style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
              loading="lazy"
            />
          </button>
        ))}
      </div>
    </div>
  );
}
