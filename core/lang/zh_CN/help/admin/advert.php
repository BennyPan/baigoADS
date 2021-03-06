<?php
return "<h3>所有广告</h3>
    <p>
        点左侧菜单广告管理，可以对广告进行编辑、删除、统计、改变状态等操作。
    </p>

    <p>
        <a href=\"{images}advert_list.jpg\" target=\"_blank\"><img src=\"{images}advert_list.jpg\" class=\"img-responsive thumbnail\"></a>
    </p>

    <p>&nbsp;</p>
    <div class=\"text-right\">
        <a href=\"#top\">
            <span class=\"glyphicon glyphicon-chevron-up\"></span>
            top
        </a>
    </div>
    <hr>
    <p>&nbsp;</p>

    <a name=\"form\"></a>
    <h3>创建（编辑）广告</h3>
    <p>点左侧子菜单的“创建广告”或者点击广告列表的“编辑”菜单，进入如下界面，在此，您可以对广告进行各项操作。</p>

    <p>
        <a href=\"{images}advert_form.jpg\" target=\"_blank\"><img src=\"{images}advert_form.jpg\" class=\"img-responsive thumbnail\"></a>
    </p>

    <p>&nbsp;</p>

    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">填写说明</div>
        <div class=\"panel-body\">
            <h4 class=\"text_ads\">广告名称</h4>
            <p>广告的名称。</p>

            <h4 class=\"text_ads\">链接地址</h4>
            <p>点击广告将跳转至该地址。</p>

            <h4 class=\"text_ads\">广告内容</h4>
            <p>广告、信息或产品的具体内容，点击“选取或上传”，可以上传图片、图片，或者把已上传的图片、图片选取到广告内容中。</p>

            <h4 class=\"text_ads\">广告位</h4>
            <p>选择广告投放至某个广告位。</p>

            <h4 class=\"text_ads\">图片</h4>
            <p>选取图片，如广告位规定的广告内容为图片，则出现本选项。</p>

            <h4 class=\"text_ads\">文字内容</h4>
            <p>如广告位规定的广告内容为文字，则出现本选项。</p>

            <h4 class=\"text_ads\">生效时间</h4>
            <p>广告的生效时间，默认为当前时间，即立刻生效。</p>

            <h4 class=\"text_ads\">状态</h4>
            <p>可选启用、禁用或待审。<mark>根据用户的权限不同，表单会有所变化</mark>。</p>

            <h4 class=\"text_ads\">投放类型</h4>
            <p>可选 按日期（在指定日期结束）、按展示数（到达展示数量后结束）、按点击数（到达点击数量后结束）、无限制、替补广告（广告位上无广告时显示）。</p>

            <h4 class=\"text_ads\">结束时间</h4>
            <p>投放类型“按日期”时显示。</p>

            <h4 class=\"text_ads\">展示数不超过</h4>
            <p>投放类型“按展示数”时显示。</p>

            <h4 class=\"text_ads\">点击数不超过</h4>
            <p>投放类型“按点击数”时显示。</p>

            <h4 class=\"text_ads\">展现几率</h4>
            <p>展现几率是指广告按照百分比的几率进行展示。</p>
        </div>
    </div>

    <p>&nbsp;</p>
    <div class=\"text-right\">
        <a href=\"#top\">
            <span class=\"glyphicon glyphicon-chevron-up\"></span>
            top
        </a>
    </div>
    <hr>
    <p>&nbsp;</p>

    <h3>选取图片</h3>
    <p>点“选取图片”弹出如下对话框，在此您可以上传文件或选择已上传的文件，选取到广告中。</p>
    <p>点“上传图片”标签，可以选择文件，自动上传，上出完毕以后会自动选取到广告。上传受上传设置和图片类型的限制，详见 <a href=\"{BG_URL_HELP}ctl.php?mod=admin&act_get=opt#upfile\">上传设置</a>、<a href=\"{BG_URL_HELP}ctl.php?mod=admin&act_get=media#mime\">图片类型</a>。
    </p>
    <p>点“选取图片”标签，可以浏览已上传的文件，鼠标移到缩略图上，会弹出菜单，选择选取原图或缩略图。<a href=\"{BG_URL_HELP}ctl.php?mod=admin&act_get=media#thumb\">缩略图</a> 详情。</p>
    <p>在编辑广告时，点“本文”标签，可以本文中用到的图片列出，可以方便的进行重新选取等操作。</p>

    <p>
        <div id=\"carousel_media\" class=\"carousel slide\" data-ride=\"carousel\">
            <ol class=\"carousel-indicators\">
                <li data-target=\"#carousel_media\" data-slide-to=\"0\" class=\"active\"></li>
                <li data-target=\"#carousel_media\" data-slide-to=\"1\"></li>
                <li data-target=\"#carousel_media\" data-slide-to=\"2\"></li>
            </ol>

            <div class=\"carousel-inner\" role=\"listbox\">
                <div class=\"item active\">
                    <a href=\"{images}media_form.jpg\" target=\"_blank\"><img src=\"{images}media_form.jpg\"></a>
                    <div class=\"carousel-caption\">上传图片</div>
                </div>
                <div class=\"item\">
                    <a href=\"{images}media_form_success.jpg\" target=\"_blank\"><img src=\"{images}media_form_success.jpg\"></a>
                    <div class=\"carousel-caption\">上传图片成功</div>
                </div>
                <div class=\"item\">
                    <a href=\"{images}media_select.jpg\" target=\"_blank\"><img src=\"{images}media_select.jpg\"></a>
                    <div class=\"carousel-caption\">选取图片</div>
                </div>
            </div>

            <a class=\"left carousel-control\" href=\"#carousel_media\" role=\"button\" data-slide=\"prev\">
                <span class=\"glyphicon glyphicon-chevron-left\"></span>
                <span class=\"sr-only\">Previous</span>
            </a>
            <a class=\"right carousel-control\" href=\"#carousel_media\" role=\"button\" data-slide=\"next\">
                <span class=\"glyphicon glyphicon-chevron-right\"></span>
                <span class=\"sr-only\">Next</span>
            </a>
        </div>
    </p>

    <hr>

    <a name=\"stat\"></a>
    <h3>广告统计</h3>
    <p>
        广告的显示、点击数统计。
    </p>

    <p>
        <a href=\"{images}stat_advert.jpg\" target=\"_blank\"><img src=\"{images}stat_advert.jpg\" class=\"img-responsive thumbnail\"></a>
    </p>";
