/*!
 * CSS theme toggler for Bootstrap / Bootswatch
 */

(() => {
  'use strict';

  const getStoredCss = () => localStorage.getItem('css-theme');
  const setStoredCss = css => localStorage.setItem('css-theme', css);

  const setCss = css => {
      if (css) {
        const link = linkRegex(/.*\.min\.css/)[0];
        if (link) {
          if (link.getAttribute("href") === css) {
            return;
          }
          const body = document.querySelector('body');
          if (body) {
            body.style.visibility = "hidden";
          }
          link.removeAttribute("integrity");

          const handleLoad = () => {
            if (body) {
              body.style.visibility = "visible";
            }
          };
          link.addEventListener('load', handleLoad, { once: true });
          link.addEventListener('error', handleLoad, { once: true });
          // Fallback timeout in case load event is missed
          setTimeout(handleLoad, 1000);

          link.setAttribute("href", css);
        }
      }
  };

  const linkRegex = (regex) => {
    let output = [];
    for (let i of document.querySelectorAll('link')) {
        if (regex.test(i.href)) {
            output.push(i);
        }
    }
    return output;
  }

  const showActiveCss = (css, focus = false) => {
    const themeSwitcher = document.querySelector('#bd-css-theme');

    if (!themeSwitcher) {
      return;
    }

    const activeThemeIcon = document.querySelector('.theme-icon-active use');
    const btnToActive = document.querySelector(`[data-bs-css-href="${css}"]`);

    document.querySelectorAll('[data-bs-css-href]').forEach(element => {
      element.classList.remove('active');
      element.setAttribute('aria-pressed', 'false');
    });

    if (btnToActive) {
      btnToActive.classList.add('active');
      btnToActive.setAttribute('aria-pressed', 'true');
    }

    if (focus) {
      themeSwitcher.focus();
    }
  };

  window.addEventListener('DOMContentLoaded', () => {    
    setCss( getStoredCss());
    showActiveCss(getStoredCss());
    document.querySelectorAll('[data-bs-css-href]').forEach(toggle => {
      toggle.addEventListener('click', () => {
        const css = toggle.getAttribute('data-bs-css-href');
        setStoredCss(css);
        setCss(css);
        showActiveCss(css, true);
      });
    });
  });
})();
