<div class="p-2 my-2 bg-light rounded-3 <{if $xoops_banner != "&nbsp;"}> xo-jumbotron<{/if}>">
	<div class="container-fluid py-1">
		<h2 class="display-4"><{$smarty.const.THEME_ABOUTUS}></h2>
        <p class="fs-4"><{$xoops_meta_description}></p>
		<hr />
		<a class="btn btn-primary mb-md-3 mb-0" href="<{$xoops_url}>/"><{$smarty.const.THEME_LEARNMORE}></a>

		<{if $xoops_banner != "&nbsp;"}>
			<div class="row d-none d-md-block mb-0 mx-1">
				<hr>
				<div class="col-12">
					<div class="text-center xoops-banner"><{$xoops_banner}></div>
				</div>
			</div>
		<{/if}>
    </div>
</div>
