<?php
	require_once '../includes/config.inc';
	require_once 'user.inc';
	require_once 'access.inc';
	require_once 'accessdeniedexception.inc'; 
	
	try {
		$access = new Access();
		$access->authenticate();
		$user = $access->getUser();
		
		$smarty = new MySmarty($SMARTY_CONFIG);
		$smarty->assign('user', $user);
		$smarty->assign('left_menu', true);
		$smarty->display('transactions.tpl');
	} catch (AccessDeniedException $e) {
		
	} catch (Exception $e) {
		
	}
	
	
	
?>