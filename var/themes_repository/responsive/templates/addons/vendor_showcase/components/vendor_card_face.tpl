<span class="vendor-face">
  <span class="vendor-face__avatar">
      {if $card.logo}
        <img
                class="vendor-face__img"
                src="{$card.logo.src|escape}"
                alt=""
                width="40"
                height="40"
        >
      {else}
        <span class="vendor-face__initials" aria-hidden="true">{$card.initials|escape}</span>
      {/if}
  </span>
  <span class="vendor-face__name">{$card.name|escape}</span>
</span>
