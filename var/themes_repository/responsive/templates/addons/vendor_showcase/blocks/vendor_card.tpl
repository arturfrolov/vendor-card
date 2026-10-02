{** block-description:vendor_showcase.block **}

{if $vendor_card}
    {$panel_mode = $block.properties.panel_mode|default:"popup"}
    {if $panel_mode === 'modal'}
        {include
            file="addons/vendor_showcase/components/vendor_modal.tpl"
            vendor=$vendor_card
        }
    {else}
        {include
            file="addons/vendor_showcase/components/vendor_popup.tpl"
            vendor=$vendor_card
        }
    {/if}
{/if}
