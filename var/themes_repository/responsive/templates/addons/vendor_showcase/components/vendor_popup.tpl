<div class="vendor-showcase-starter ds" data-panel-mode="{$panel_mode|escape}">
  <div class="vendor-showcase-starter__avatar">
      {if $vendor_card.logo}
        <img
                src="{$vendor_card.logo.src|escape}"
                alt="{$vendor_card.name|escape}"
                width="40"
                height="40"
        >
      {else}
        <span aria-hidden="true">{$vendor_card.initials|escape}</span>
      {/if}
  </div>

  <div class="vendor-showcase-starter__body">
    <a href="{$vendor_card.url|escape}">{$vendor_card.name|escape}</a>
    <div class="vendor-showcase-starter__debug">
        {__("vendor_showcase.current_mode")}: {$panel_mode|escape}
    </div>
  </div>
</div>
