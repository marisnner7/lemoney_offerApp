import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find The Best Offer Today", "Get your money back"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };