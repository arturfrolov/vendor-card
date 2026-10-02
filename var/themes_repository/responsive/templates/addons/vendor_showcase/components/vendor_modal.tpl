{$modal_id = "vendor_modal_`$card.company_id`"}
<button
  type="button"
  class="vendor-trigger cm-dialog-opener cm-dialog-auto-size"
  data-ca-target-id="{$modal_id}"
  data-ca-dialog-class="vendor-modal"
>
    {include file="addons/vendor_showcase/components/vendor_card_face.tpl" card=$card}
</button>

<div class="hidden" id="{$modal_id}" title="{$card.name|escape}">
    {include file="addons/vendor_showcase/components/vendor_details.tpl" card=$card}
</div>
