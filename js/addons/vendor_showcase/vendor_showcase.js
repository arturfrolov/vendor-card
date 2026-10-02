(() => {
  const POPUP = '.js--vendor-popup';
  const TRIGGER = '.js--vendor-trigger';
  const PANEL = '.js--vendor-popup__panel';
  const EDGE_GAP = 16;

  const getOpened = () => document.querySelector(`${PANEL}:not([hidden])`)?.closest(POPUP);

  const fit = (panel) => {
    panel.style.left = '0px';

    const { left, right } = panel.getBoundingClientRect();
    const overflow = Math.min(0, document.documentElement.clientWidth - EDGE_GAP - right);

    panel.style.left = `${Math.max(overflow, EDGE_GAP - left)}px`;
  };

  const setOpen = (popup, isOpen) => {
    const panel = popup.querySelector(PANEL);

    panel.hidden = !isOpen;
    popup.querySelector(TRIGGER).setAttribute('aria-expanded', String(isOpen));

    if (isOpen) {
      fit(panel);
    }
  };

  document.addEventListener('click', ({ target }) => {
    const popup = target.closest(POPUP);
    const opened = getOpened();

    if (opened && opened !== popup) {
      setOpen(opened, false); // click outside
    }

    if (popup && target.closest(TRIGGER)) {
      setOpen(popup, popup.querySelector(PANEL).hidden); // toggle
    }
  });

  document.addEventListener('keydown', ({ key }) => {
    const opened = getOpened();

    if (key === 'Escape' && opened) {
      setOpen(opened, false);
      opened.querySelector(TRIGGER).focus();
    }
  });

  window.addEventListener('resize', () => {
    const opened = getOpened();

    if (opened) {
      fit(opened.querySelector(PANEL));
    }
  });

  // Modal mode uses the CS-Cart dialog.
  // Closing by a click on the backdrop is added here, only for our dialog.
  document.addEventListener('click', ({ target }) => {
    if (!target.classList.contains('ui-widget-overlay')) {
      return;
    }

    const dialog = Tygh.$.ceDialog('get_last');

    if (dialog.closest('.vendor-modal').length) {
      dialog.ceDialog('close');
    }
  });
})();
