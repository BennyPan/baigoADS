<?php
/*-----------------------------------------------------------------
！！！！警告！！！！
以下为系统文件，请勿修改
-----------------------------------------------------------------*/

//不能非法包含或直接执行
if (!defined("IN_BAIGO")) {
    exit("Access Denied");
}

include_once(BG_PATH_FUNC . "init.func.php");
$arr_set = array(
    "base"          => true,
    "ssin"          => true,
    "header"        => "Content-type: application/json; charset=utf-8",
    "db"            => true,
    "type"          => "ajax",
    "ssin_begin"    => true,
);
fn_init($arr_set);

include_once(BG_PATH_CONTROL . "admin/ajax/profile.class.php"); //载入个人信息 ajax 控制器

$ajax_profile = new AJAX_PROFILE(); //初始化个人信息对象

switch ($GLOBALS["act_post"]) {
    case "pass":
        $ajax_profile->ajax_pass(); //修改密码
    break;

    case "info":
        $ajax_profile->ajax_info(); //修改个人信息
    break;
}
