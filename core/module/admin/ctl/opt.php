<?php
/*-----------------------------------------------------------------
！！！！警告！！！！
以下为系统文件，请勿修改
-----------------------------------------------------------------*/

//不能非法包含或直接执行
if(!defined("IN_BAIGO")) {
	exit("Access Denied");
}

include_once(BG_PATH_INC . "common_admin_ctl.inc.php"); //管理员通用
include_once(BG_PATH_INC . "is_install.inc.php"); //验证是否已登录
include_once(BG_PATH_INC . "is_admin.inc.php"); //验证是否已登录
include_once(BG_PATH_CONTROL . "admin/ctl/opt.class.php"); //载入设置控制器

$ctl_opt = new CONTROL_OPT(); //初始化设置对象

switch ($GLOBALS["act_get"]) {
	default: //基本
		$arr_optRow = $ctl_opt->ctl_form();
		if ($arr_optRow["alert"] != "y060301") {
			header("Location: " . BG_URL_ADMIN . "ctl.php?mod=alert&act_get=show&alert=" . $arr_optRow["alert"]);
			exit;
		}
	break;
}
