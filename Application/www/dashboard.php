<?php
	require_once '../includes/config.inc';
	require_once 'user.inc';
	require_once 'access.inc';
	require_once 'accessdeniedexception.inc';
	
	try {
		$access = new Access();
		$access->authenticate();
		$user = $access->getUser();

		$activities_amount = $user->getActivitiesAmount();
		//print_r($activities_amount); exit;
		
		
		$smarty = new MySmarty($SMARTY_CONFIG);
		
		$smarty->assign('debit', $activities_amount['debit']);
		$smarty->assign('credit', $activities_amount['credit']);
		
		$smarty->assign('user', $user);
		$smarty->assign('dashboard', 'dashboard');
		$smarty->assign('left_menu', true);
		$smarty->display('dashboard.tpl');
		
	} catch (AccessDeniedException $e) {
		trigger_error('Access Denied');
	} catch (Exception $e) {
		trigger_error('An error has occurred, please try again in a few minutes');
	}

?>