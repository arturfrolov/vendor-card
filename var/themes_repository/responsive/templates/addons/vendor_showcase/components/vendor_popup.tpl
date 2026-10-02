<div class="vendor-popup js--vendor-popup">
  <button type="button" class="vendor-trigger js--vendor-trigger" aria-expanded="false">
      {include file="addons/vendor_showcase/components/vendor_card_face.tpl" card=$card}
  </button>

  <div class="vendor-popup__panel js--vendor-popup__panel" hidden>
      {include file="addons/vendor_showcase/components/vendor_details.tpl" card=$card}
  </div>
</div>
