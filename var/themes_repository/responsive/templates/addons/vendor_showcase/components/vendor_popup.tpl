{$panel_id = "vendor_popup_`$card.company_id`"}
<div class="vendor-popup js--vendor-popup">
  <button type="button" class="vendor-popup__trigger js--vendor-popup__trigger" aria-expanded="false" aria-controls="{$panel_id}">
      {include file="addons/vendor_showcase/components/vendor_card_face.tpl" card=$card}
  </button>

  <div class="vendor-popup__panel js--vendor-popup__panel" id="{$panel_id}" hidden>
      {include file="addons/vendor_showcase/components/vendor_details.tpl" card=$card}
  </div>
</div>
