<{if !$xoops_page|strstr:'viewpmsg' && !$xoops_page|strstr:'readpmsg'}>
    <{xoInboxCount assign='newPms'}>
    <{if $newPms>0}>
    <{* Turn off hide with data-bs-autohide="false" *}>
    <{* Adjust millisecond time to hide in data-bs-delay *}>
	<div class="toast-container position-fixed top-0 start-0 p-2">
		<div class="toast" data-bs-autohide="true" data-bs-delay="4000" role="alert" aria-live="assertive" aria-atomic="true"  >
			<div class="toast-header">
				<span class="fa fa-fw fa-envelope"></span>
				<strong class="me-auto">&nbsp;<{$smarty.const.THEME_INBOX_ALERT}> <span class="badge bg-primary rounded-pill"><{$newPms}></span></strong>
				<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body bg-secondary">
				<a href="<{$xoops_url}>/viewpmsg.php"><{$smarty.const.THEME_INBOX_LINK}></a>
			</div>
		</div>
		<script>
			$(document).ready(function(){
				$('.toast').toast('show');
			});
		</script>
	</div>	
    <{/if}>
<{/if}>
