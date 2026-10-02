<span class="vendor-face">
  <span class="vendor-avatar">
      {if $card.logo}
        <img
                class="vendor-avatar__img"
                src="{$card.logo.src|escape}"
                alt=""
                width="40"
                height="40"
        >
      {else}
        <span aria-hidden="true">{$card.initials|escape}</span>
      {/if}
  </span>
  <span class="vendor-face__name">{$card.name|escape}</span>
</span>
