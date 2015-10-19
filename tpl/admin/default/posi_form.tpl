{* admin_posiList.tpl 后台用户组 *}
{if $tplData.posiRow.posi_id == 0}
	{$title_sub = $lang.page.add}
	{$str_sub = "form"}
{else}
	{$title_sub = $lang.page.edit}
	{$str_sub = "list"}
{/if}

{$cfg = [
	title          => "{$adminMod.posi.main.title} - {$title_sub}",
	menu_active    => "posi",
	sub_active     => $str_sub,
	baigoCheckall  => "true",
	baigoValidator => "true",
	baigoSubmit    => "true",
	tokenReload    => "true",
	str_url        => "{$smarty.const.BG_URL_ADMIN}ctl.php?mod=posi&act_get=list"
]}

{include "{$smarty.const.BG_PATH_TPL}admin/default/include/admin_head.tpl" cfg=$cfg}

	<li><a href="{$smarty.const.BG_URL_ADMIN}ctl.php?mod=posi&act_get=list">{$adminMod.posi.main.title}</a></li>
	<li>{$title_sub}</li>

	{include "{$smarty.const.BG_PATH_TPL}admin/default/include/admin_left.tpl" cfg=$cfg}

	<div class="form-group">
		<div class="pull-left">
			<ul class="nav nav-pills nav_baigo">
				<li>
					<a href="{$smarty.const.BG_URL_ADMIN}ctl.php?mod=posi&act_get=form">
						<span class="glyphicon glyphicon-plus"></span>
						{$lang.href.add}
					</a>
				</li>
				<li>
					<a href="{$smarty.const.BG_URL_HELP}ctl.php?mod=admin&act_get=posi" target="_blank">
						<span class="glyphicon glyphicon-question-sign"></span>
						{$lang.href.help}
					</a>
				</li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>

	<form name="posi_form" id="posi_form">
		<input type="hidden" name="token_session" class="token_session" value="{$common.token_session}">
		<input type="hidden" name="act_post" value="submit">
		<input type="hidden" name="posi_id" id="posi_id" value="{$tplData.posiRow.posi_id}">

		<div class="row">
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="form-group">
							<label class="control-label">{$lang.label.posiScript}<span id="msg_posi_script">*</span></label>
							<select name="posi_script" id="posi_script" class="validate form-control">
								<option value="">{$lang.option.please}</option>
								{foreach $tplData.scriptRows as $key=>$value}
									<option {if $tplData.posiRow.posi_script == $value.name}selected{/if} data-index="{$key}" value="{$value.name}">
										{$value.name}
										[ {$value.config.name} ]
									</option>
								{/foreach}
							</select>
							<p class="help-block" id="posi_script_note"></p>
						</div>

						<div id="group_posi_name">
							<div class="form-group">
								<label class="control-label">{$lang.label.posiName}<span id="msg_posi_name">*</span></label>
								<input type="text" name="posi_name" id="posi_name" value="{$tplData.posiRow.posi_name}" class="validate form-control">
							</div>
						</div>

						<div id="group_posi_plugin">
							<div class="form-group">
								<label class="control-label">{$lang.label.posiPlugin}<span id="msg_posi_plugin">*</span></label>
								<input type="text" name="posi_plugin" id="posi_plugin" value="{$tplData.posiRow.posi_plugin}" class="validate form-control">
							</div>
						</div>

						<div id="group_posi_selector">
							<div class="form-group">
								<label class="control-label">{$lang.label.posiSelector}<span id="msg_posi_selector">*</span></label>
								<input type="text" name="posi_selector" id="posi_selector" value="{$tplData.posiRow.posi_selector}" class="validate form-control">
							</div>
						</div>

						<div id="group_posi_opts">
							{foreach $tplData.posiRow.posi_opts as $key=>$value}
								<div class="form-group">
									<label class="control-label">{$lang.label.posiOption}{$value.label}</label>
									<input type="text" name="posi_opts[{$key}][value]" class="form-control" value="{$value.value}">
									<input type="hidden" name="posi_opts[{$key}][field]" value="{$value.field}">
									<input type="hidden" name="posi_opts[{$key}][label]" value="{$value.label}">
								</div>
							{/foreach}
						</div>

						<div id="group_posi_note">
							<div class="form-group">
								<label class="control-label">{$lang.label.note}<span id="msg_posi_note"></span></label>
								<input type="text" name="posi_note" id="posi_note" value="{$tplData.posiRow.posi_note}" class="validate form-control">
							</div>
						</div>

						<div class="form-group">
							<button type="button" id="go_form" class="btn btn-primary">{$lang.btn.save}</button>
							<a class="btn btn-default" href="{$smarty.const.BG_URL_ADMIN}ctl.php?mod=posi&act_get=list">{$lang.btn.close}</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="well">
					{if $tplData.posiRow.posi_id > 0}
						<div class="form-group">
							<label class="control-label">{$lang.label.id}</label>
							<p class="form-control-static">{$tplData.posiRow.posi_id}</p>
						</div>
					{/if}

					<label class="control-label">{$lang.label.status}<span id="msg_posi_status">*</span></label>
					<div class="form-group">
						{foreach $status.posi as $key=>$value}
							<div class="radio_baigo">
								<label for="posi_status_{$key}">
									<input type="radio" name="posi_status" id="posi_status_{$key}" value="{$key}" class="validate" {if $tplData.posiRow.posi_status == $key}checked{/if} group="posi_status">
									{$value}
								</label>
							</div>
						{/foreach}
					</div>

					<label class="control-label">{$lang.label.isPercent}<span id="msg_posi_is_percent">*</span></label>
					<div class="form-group">
						{foreach $status.isPercent as $key=>$value}
							<div class="radio_baigo">
								<label for="posi_is_percent_{$key}">
									<input type="radio" name="posi_is_percent" id="posi_is_percent_{$key}" value="{$key}" class="validate" {if $tplData.posiRow.posi_is_percent == $key}checked{/if} group="posi_is_percent">
									{$value}
								</label>
							</div>
						{/foreach}
					</div>

					<label class="control-label">{$lang.label.contentType}<span id="msg_posi_type">*</span></label>
					<div class="form-group">
						{foreach $type.posi as $key=>$value}
							<div class="radio_baigo">
								<label for="posi_type_{$key}">
									<input type="radio" name="posi_type" id="posi_type_{$key}" value="{$key}" class="validate posi_type" {if $tplData.posiRow.posi_type == $key}checked{/if} group="posi_type">
									{$value}
								</label>
							</div>
						{/foreach}
					</div>

					<div id="group_posi_size">
						<div id="group_posi_width">
							<div class="form-group">
								<label class="control-label">{$lang.label.width}<span id="msg_posi_width"></span></label>
								<div class="input-group">
									<input type="text" name="posi_width" id="posi_width" value="{$tplData.posiRow.posi_width}" class="validate form-control">
									<span class="input-group-addon">{$lang.label.px}</span>
								</div>
							</div>
						</div>

						<div id="group_posi_height">
							<div class="form-group">
								<label class="control-label">{$lang.label.height}<span id="msg_posi_height"></span></label>
								<div class="input-group">
									<input type="text" name="posi_height" id="posi_height" value="{$tplData.posiRow.posi_height}" class="validate form-control">
									<span class="input-group-addon">{$lang.label.px}</span>
								</div>
							</div>
						</div>
					</div>

					<div id="group_posi_count">
						<div class="form-group">
							<label class="control-label">{$lang.label.posiCount}<span id="msg_posi_count">*</span></label>
							<input type="text" name="posi_count" id="posi_count" value="{$tplData.posiRow.posi_count}" class="validate form-control">
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

{include "{$smarty.const.BG_PATH_TPL}admin/default/include/admin_foot.tpl" cfg=$cfg}

	<script type="text/javascript">
	var script_json = {$tplData.scriptJSON}

	var opts_validator_form = {
		posi_name: {
			length: { min: 1, max: 300 },
			validate: { type: "ajax", format: "text", group: "group_posi_name" },
			msg: { id: "msg_posi_name", too_short: "{$alert.x040201}", too_long: "{$alert.x040202}", ajaxIng: "{$alert.x030401}", ajax_err: "{$alert.x030402}" },
			ajax: { url: "{$smarty.const.BG_URL_ADMIN}ajax.php?mod=posi&act_get=chkname", key: "posi_name", type: "str", attach_selectors: ["#posi_id"], attach_keys: ["posi_id"] }
		},
		posi_count: {
			length: { min: 1, max: 0 },
			validate: { type: "str", format: "int", group: "group_posi_count" },
			msg: { id: "msg_posi_count", too_short: "{$alert.x040205}", format_err: "{$alert.x040208}" }
		},
		posi_type: {
			length: { min: 1, max: 0 },
			validate: { type: "radio" },
			msg: { id: "msg_posi_type", too_few: "{$alert.x040209}" }
		},
		posi_width: {
			length: { min: 1, max: 4 },
			validate: { type: "str", format: "text", group: "group_posi_width" },
			msg: { id: "msg_posi_width", too_short: "{$alert.x040210}", too_long: "{$alert.x040211}" }
		},
		posi_height: {
			length: { min: 1, max: 4 },
			validate: { type: "str", format: "text", group: "group_posi_height" },
			msg: { id: "msg_posi_height", too_short: "{$alert.x040212}", too_long: "{$alert.x040213}" }
		},
		posi_posi_id: {
			length: { min: 1, max: 0 },
			validate: { type: "select" },
			msg: { id: "msg_posi_posi_id", too_few: "{$alert.x040214}" }
		},
		posi_script: {
			length: { min: 1, max: 0 },
			validate: { type: "select" },
			msg: { id: "msg_posi_script", too_few: "{$alert.x040215}" }
		},
		posi_plugin: {
			length: { min: 1, max: 100 },
			validate: { type: "str", format: "text", group: "group_posi_plugin" },
			msg: { id: "msg_posi_plugin", too_short: "{$alert.x040216}", too_long: "{$alert.x040217}" }
		},
		posi_selector: {
			length: { min: 1, max: 100 },
			validate: { type: "str", format: "text", group: "group_posi_selector" },
			msg: { id: "msg_posi_note", too_short: "{$alert.x040218}", too_long: "{$alert.x040219}" }
		},
		posi_is_percent: {
			length: { min: 1, max: 0 },
			validate: { type: "radio" },
			msg: { id: "msg_posi_is_percent", too_few: "{$alert.x040221}" }
		},
		posi_note: {
			length: { min: 0, max: 300 },
			validate: { type: "str", format: "text", group: "group_posi_note" },
			msg: { id: "msg_posi_note", too_long: "{$alert.x040204}" }
		},
		posi_status: {
			length: { min: 1, max: 0 },
			validate: { type: "radio" },
			msg: { id: "msg_posi_status", too_few: "{$alert.x040207}" }
		}
	};

	var opts_submit_form = {
		ajax_url: "{$smarty.const.BG_URL_ADMIN}ajax.php?mod=posi",
		text_submitting: "{$lang.label.submitting}",
		btn_text: "{$lang.btn.ok}",
		btn_close: "{$lang.btn.close}",
		btn_url: "{$cfg.str_url}"
	};

	function posi_type(_posi_type) {
		if (_posi_type == "text") {
			$("#group_posi_size").hide();
		} else {
			$("#group_posi_size").show();
		}
	}

	function posi_script(_script_index) {
		var _result = script_json[_script_index].config;

		$("#posi_name").val(_result.name);
		$("#posi_plugin").val(_result.plugin);
		$("#posi_selector").val(_result.selector);
		$("#posi_is_percent_" + _result.ispercent).prop("checked", "checked");
		$("#posi_type_" + _result.type).prop("checked", "checked");
		posi_type(_result.type);
		$("#posi_script_note").text(_result.note);
		$("#group_posi_opts").empty();
		if (typeof _result.opts != "undefined" && _result.opts) {
			var _str_opts = "";
			$.each(_result.opts, function(_key, _value){
				_str_opts += "<div class=\"form-group\">";
					_str_opts += "<label class=\"control-label\">{$lang.label.posiOption}" + _value.label + "</label>";
					_str_opts += "<input type=\"text\" name=\"posi_opts[" + _key + "][value]\" class=\"form-control\" value=\"" + _value.value + "\">";
					_str_opts += "<input type=\"hidden\" name=\"posi_opts[" + _key + "][field]\" value=\"" + _value.field + "\">";
					_str_opts += "<input type=\"hidden\" name=\"posi_opts[" + _key + "][label]\" value=\"" + _value.label + "\">";
				_str_opts += "</div>";
			});
			$("#group_posi_opts").html(_str_opts);
		}
	}

	$(document).ready(function(){
		posi_type("{$tplData.posiRow.posi_type}");
		var obj_validate_form = $("#posi_form").baigoValidator(opts_validator_form);
		var obj_submit_form   = $("#posi_form").baigoSubmit(opts_submit_form);
		$("#go_form").click(function(){
			if (obj_validate_form.validateSubmit()) {
				obj_submit_form.formSubmit();
			}
		});
		$(".posi_type").click(function(){
			var _posi_type = $(this).val();
			posi_type(_posi_type);
		});
		$("#posi_script").change(function(){
			var _script_index = $("#posi_script option:selected").attr("data-index");
			if (_script_index) {
				posi_script(_script_index);
			}
		});
	})
	</script>

{include "{$smarty.const.BG_PATH_TPL}admin/default/include/html_foot.tpl" cfg=$cfg}

