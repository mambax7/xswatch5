<ul class="nav flex-column text-primary">
    <li class="nav-item <{if !$block.nothome|default:false}> bg-primary bg-opacity-25 rounded pb-0<{/if}> ">
        <a class="nav-link<{if !$block.nothome|default:false}> active<{/if}>" href="<{xoAppUrl }>" title="<{$block.lang_home}>"><span class="fa fa-home fa-fw<{if $block.nothome|default:false}> text-primary text-opacity-25<{/if}>"></span> <{$block.lang_home}></a>
    </li>
    
    <!-- start module menu loop -->
    <{foreach item=module from=$block.modules}>
        <li class="nav-item <{if $module.highlight|default:false}>bg-primary bg-opacity-25 rounded pb-0<{/if}>">
            <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{$xoops_url}>/modules/<{$module.directory}>/" title="<{$module.name}>">
                <span class="fa <{if $module.highlight|default:false}>fa-check-square-o <{else}>fa-square-o text-primary text-opacity-25<{/if}> fa-fw"></span> <{$module.name}>
            </a>

            <{if $module.sublinks|default:false}>
                <ul class="ms-3 pb-1">
                    <{foreach item=sublink from=$module.sublinks}>
                        <li>
                            <a class="text-decoration-none" href="<{$sublink.url}>" title="<{$sublink.name}>"><{$sublink.name}></a>
                        </li>
                    <{/foreach}>
                </ul>
            <{/if}>
            
    <{/foreach}>
    <!-- end module menu loop -->
</ul>
