<div class="vendor-details">
  <div class="vendor-details__avatar">
    {if $card.logo}
      <img class="vendor-details__img" src="{$card.logo.src|escape}" alt="">
    {else}
      <span class="vendor-details__initials" aria-hidden="true">{$card.initials|escape}</span>
    {/if}
  </div>

  <div class="vendor-details__content">
    <div class="vendor-details__info">
      <div class="vendor-details__title">
        <div class="vendor-details__name">{$card.name|escape}</div>
        <span class="vendor-details__badge vendor-details__badge--pro"><span aria-hidden="true">👑</span> Pro</span>
        <span class="vendor-details__badge vendor-details__badge--kyc"><span aria-hidden="true">🪪</span> Verified (KYC)</span>
      </div>
      <div class="vendor-details__meta">
        <span class="vendor-details__online">online now</span>
        <span>since Dec 2016</span>
        <span>response &lt;1h</span>
      </div>
      {if $card.description}
        <p class="vendor-details__description">{$card.description|escape}</p>
      {/if}
    </div>

    <div class="vendor-details__stats">
      <div class="vendor-details__stat vendor-details__stat--positive">
        <span class="vendor-details__value">98%</span>
        <span class="vendor-details__label">positive</span>
      </div>
      <div class="vendor-details__stat vendor-details__stat--rating">
        <span class="vendor-details__value">★4.9</span>
        <span class="vendor-details__label">320 reviews</span>
      </div>
      <div class="vendor-details__stat">
        <span class="vendor-details__value">1 240</span>
        <span class="vendor-details__label">orders</span>
      </div>
    </div>
  </div>
</div>
