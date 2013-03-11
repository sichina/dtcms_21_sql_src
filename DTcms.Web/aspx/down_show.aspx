﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.download_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2013-1-10 15:08:52.
		本页面代码由DTcms模板引擎生成于 2013-1-10 15:08:52. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int channel_id = 4;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"资源下载");
	

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\">\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/ui/skins/Aqua/css/ligerui-all.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.3.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/ui/js/ligerBuild.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/digg_ajax.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	$(function(){\r\n		bindDigg('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("');\r\n	});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\">\r\n  <div class=\"header_inner\">\r\n    <h1 class=\"logo\">\r\n      <a title=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</a>\r\n    </h1>\r\n    <ul class=\"nav\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a></li>\r\n    </ul>\r\n    <div class=\"search\">\r\n      <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("search.aspx', '#keywords');return false};\" />\r\n      <input class=\"submit\" type=\"submit\" value=\"搜索\" onclick=\"SiteSearch('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("search.aspx', '#keywords');\" />\r\n    </div>\r\n    <ul class=\"menu\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">购物车");
	templateBuilder.Append(get_cart_quantity().ToString());
	

	templateBuilder.Append("件</a></li>\r\n      ");
	if (IsUserLogin())
	{

	templateBuilder.Append("\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n    </ul>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left710\">\r\n   <!--Content-->\r\n    <div class=\"main_box\">\r\n      <div class=\"meta\">\r\n        <h1 class=\"meta-tit\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n        <p class=\"meta-info\">\r\n          <span class=\"time\">");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</span>\r\n          <span class=\"comm\">");
	templateBuilder.Append(get_comment_count(model.id, "is_lock=0").ToString());
	

	templateBuilder.Append("人评论</span>\r\n          <span class=\"view\">");
	templateBuilder.Append(Utils.ObjectToStr(model.click));
	templateBuilder.Append("次浏览</span>\r\n          分类：");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("\r\n          <!--扩展属性开始-->\r\n          <!--扩展属性结束-->\r\n        </p>\r\n      </div>\r\n      \r\n      <div class=\"entry\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n      </div>\r\n      \r\n      <!--分享-->\r\n      ");

	templateBuilder.Append("  <!-- JiaThis Button BEGIN --> \r\n  <div id=\"ckepop\">\r\n      <span class=\"jiathis_txt\">分享到：</span>\r\n      <a class=\"jiathis_button_tqq\">腾讯微博</a>\r\n      <a class=\"jiathis_button_tsina\">新浪微博</a>\r\n      <a class=\"jiathis_button_renren\">人人网</a>\r\n      <a class=\"jiathis_button_email\">邮件</a>\r\n      <a class=\"jiathis_button_fav\">收藏夹</a>\r\n      <a class=\"jiathis_button_copy\">复制网址</a> \r\n      <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n      <a class=\"jiathis_counter_style\"></a> \r\n  </div> \r\n  <!-- JiaThis Button END -->\r\n  <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n  <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n      <!--/分享-->\r\n      \r\n      <div class=\"clear\"></div>\r\n      <!--附件列表-->\r\n      <div class=\"attach_list\">\r\n        <h3 class=\"base_tit\">附件下载</h3>\r\n        <ul>\r\n          ");
	if (model.download_attachs!=null)
	{

	int modelt1__loop__id=0;
	foreach(DTcms.Model.download_attach modelt1 in model.download_attachs)
	{
		modelt1__loop__id++;


	templateBuilder.Append("\r\n          <li><span><a href=\"javascript:;\" onclick=\"downLink(");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.point));
	templateBuilder.Append(", '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/download.ashx?id=");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.id));
	templateBuilder.Append("');\">点击下载</a></span>附件");
	templateBuilder.Append(Utils.ObjectToStr(modelt1__loop__id));
	templateBuilder.Append("：");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.title));
	templateBuilder.Append("\r\n          <i>大小：\r\n            ");
	if (modelt1.file_size>1024)
	{

	            string tempSize = (modelt1.file_size/1024).ToString("#.##");
	            

	templateBuilder.Append("\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(tempSize));
	templateBuilder.Append("MB\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.file_size));
	templateBuilder.Append("KB\r\n            ");
	}	//end if


	templateBuilder.Append("\r\n          </i>\r\n          <i>下载：");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.down_num));
	templateBuilder.Append("次</i>\r\n          <i>所需积分：");
	templateBuilder.Append(Utils.ObjectToStr(modelt1.point));
	templateBuilder.Append("分</i></li>\r\n          ");
	}	//end loop


	}	//end if


	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      <!--/附件列表-->\r\n      \r\n      <div class=\"line10\"></div>\r\n      <!--顶踩-->\r\n      ");

	templateBuilder.Append("  <div class=\"newdigg\" id=\"newdigg\">\r\n    <div id=\"digg_good\" class=\"diggbox digg_good\">\r\n      <div class=\"digg_act\">顶一下</div>\r\n      <div class=\"digg_num\">(");
	templateBuilder.Append(Utils.ObjectToStr(model.digg_good));
	templateBuilder.Append(")</div>\r\n      <div class=\"digg_percent\">\r\n        ");
	        decimal good_num = 0;
	        if(model.digg_good>0){
	          good_num = decimal.Round((decimal)model.digg_good/(model.digg_good + model.digg_bad)*100,1);
	        }
	        

	templateBuilder.Append("\r\n        <div class=\"digg_percent_bar\"><span style=\"width:");
	templateBuilder.Append(Utils.ObjectToStr(good_num));
	templateBuilder.Append("%\"></span></div>\r\n        <div class=\"digg_percent_num\">");
	templateBuilder.Append(Utils.ObjectToStr(good_num));
	templateBuilder.Append("%</div>\r\n      </div>\r\n    </div>\r\n    <div id=\"digg_bad\" class=\"diggbox digg_bad\">\r\n      <div class=\"digg_act\">踩一下</div>\r\n      <div class=\"digg_num\">(");
	templateBuilder.Append(Utils.ObjectToStr(model.digg_bad));
	templateBuilder.Append(")</div>\r\n      <div class=\"digg_percent\">\r\n        ");
	        decimal bad_num = 0;
	        if(model.digg_bad>0){
	          bad_num = decimal.Round((decimal)model.digg_bad/(model.digg_good + model.digg_bad)*100,1);
	        }
	        

	templateBuilder.Append("\r\n        <div class=\"digg_percent_bar\"><span style=\"width:");
	templateBuilder.Append(Utils.ObjectToStr(bad_num));
	templateBuilder.Append("%\"></span></div>\r\n        <div class=\"digg_percent_num\">");
	templateBuilder.Append(Utils.ObjectToStr(bad_num));
	templateBuilder.Append("%</div>\r\n      </div>\r\n    </div>\r\n  </div>");


	templateBuilder.Append("\r\n      <!--/项踩-->\r\n      \r\n      <!--同类推荐-->\r\n      <div class=\"related\">\r\n        <h3 class=\"base_tit\">相关资源</h3>\r\n        <ul class=\"txt_list\">\r\n          ");
	DataTable reddown1 = get_download_list(channel_id, model.category_id, 8, "is_red=1 and id<>"+model.id);
	

	int reddr1__loop__id=0;
	foreach(DataRow reddr1 in reddown1.Rows)
	{
		reddr1__loop__id++;


	templateBuilder.Append("\r\n          <li><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(reddr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(reddr1["title"]) + "</a><span>( " + Utils.ObjectToStr(reddr1["add_time"]) + " )</span></li>\r\n          ");
	}	//end loop


	if (reddown1.Rows.Count<1)
	{

	templateBuilder.Append("\r\n          <div>同类下暂无推荐的资源...</div>\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      <!--/同类推荐-->\r\n      \r\n      <!--评论-->\r\n      ");
	if (model.is_msg==1)
	{


	int comment_count = get_comment_count(model.id, "is_lock=0");
	

	templateBuilder.Append("<!--取得评论总数-->\r\n  <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n  <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n  <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.js\"></");
	templateBuilder.Append("script>\r\n  <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.validate.min.js\"></");
	templateBuilder.Append("script>\r\n	  <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/messages_cn.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.pagination.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\">\r\n        $(function(){\r\n          //初始化评论列表\r\n          AjaxPageList('#comment_list', '#pagination', 10, ");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append(", '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_list&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/user_avatar.png');\r\n          //初始化发表评论表单\r\n          AjaxInitForm('comment_form', 'btnSubmit', 1);\r\n        });\r\n      </");
	templateBuilder.Append("script>\r\n      <div class=\"comment_box\">\r\n        <h3 class=\"base_tit\"><span><a href=\"#Add\">发表评论</a></span>共有");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append("访客发表了评论</h3>\r\n        <ol id=\"comment_list\" class=\"comment_list\">\r\n          <p style=\"line-height:35px;\">暂无评论，快来抢沙发吧！</p>\r\n          <!--\r\n          <li>\r\n            <div class=\"floor\">#3</div>\r\n            <div class=\"avatar\">\r\n              <img src=\"images/user_avatar.png\" width=\"36\" height=\"36\" />\r\n            </div>\r\n            <div class=\"inner\">\r\n              <p>你这个评论的模块是怎么实现的，能不能写一下哇，觉得很好看</p>\r\n              <div class=\"meta\">\r\n                <span class=\"blue\">匿名用户</span>\r\n                <span class=\"time\">2012-08-13 00:45</span>\r\n              </div>\r\n            </div>\r\n            <div class=\"answer\">\r\n              <div class=\"meta\">\r\n                <span class=\"right time\">2012-11-15 00:21:05</span>\r\n                <span class=\"blue\">管理员回复：</span>\r\n              </div>\r\n              <p>我晕，我什么时候购买博主的模板了？？首先声明的是 我的微之恋是用大前端的html页面，HTML页面我也是Ctrl+s进行另存为下来的，然后我用wordpress的程序改了改就发布了，很多bug我也懒得改，功能也没有大前段的主题功能强大，也就可以认为一个演示版吧，首先说的是本人木有购买，再者更没有购买后无耻进行发布，我只是靠的自己的双手收获我想要的成功，我想这就是开源精神吧？我把自己写的代码进行开源有何不可？况且我只是另存为了3个页面其他的PHP程序还不是都是我写的，大家爱用就用，不爱用也不要冷嘲热讽好不好?拿着我的免费主题说我的坏话，我真的很无语！</p>\r\n            </div>\r\n          </li>\r\n          -->\r\n        </ol>\r\n      </div>\r\n      <div class=\"line20\"></div>\r\n      <div id=\"pagination\" class=\"flickr\"></div><!--放置页码-->\r\n      <div class=\"comment_add\">\r\n        <h3 class=\"base_tit\">我来说几句吧<a name=\"Add\"></a></h3>\r\n        <form id=\"comment_form\" name=\"comment_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_add&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\">\r\n        <div class=\"comment_editor\">\r\n          <textarea id=\"txtContent\" name=\"txtContent\" class=\"input\" style=\"width:658px;height:70px;\"></textarea>\r\n        </div>\r\n        <div class=\"subcon\">\r\n          <input id=\"btnSubmit\" name=\"submit\" class=\"btn right\" type=\"submit\" value=\"提交评论（Ctrl+Enter）\" />\r\n          <span>验证码：</span>\r\n          <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input small required\" onkeydown=\"if(event.ctrlKey&&event.keyCode==13){document.getElementById('btnSubmit').click();return false};\"  />\r\n          <a href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n        </div>\r\n        </form>\r\n      </div>");


	}	//end if


	templateBuilder.Append("\r\n      <!--/评论-->\r\n    </div>\r\n    <!--/Content-->\r\n  </div>\r\n  \r\n  <div class=\"left264\">\r\n    <!--Sidebar-->\r\n    <div class=\"sidebar\">\r\n      <h3>资源类别</h3>\r\n      <ul>\r\n        ");
	DataTable category_list1 = get_category_list(channel_id, 0);
	

	int cdr1__loop__id=0;
	foreach(DataRow cdr1 in category_list1.Rows)
	{
		cdr1__loop__id++;


	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(cdr1["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\"><em class=\"arrow\">&gt;</em>" + Utils.ObjectToStr(cdr1["title"]) + "</a></li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n      <h3>推荐资源</h3>\r\n      <div class=\"focus_list\">\r\n        <ul>\r\n          ");
	DataTable reddown = get_download_list(channel_id, 0, 6, "is_red=1 and img_url<>''");
	

	int reddr__loop__id=0;
	foreach(DataRow reddr in reddown.Rows)
	{
		reddr__loop__id++;


	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(reddr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(reddr["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(reddr["img_url"]) + "\" width=\"100\" height=\"100\" alt=\"" + Utils.ObjectToStr(reddr["title"]) + "\" />\r\n              <span>" + Utils.ObjectToStr(reddr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end loop


	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"clear\"></div>\r\n      </div>\r\n      <h3>下载排行</h3>\r\n      <ul class=\"rank_list\">\r\n        ");
	DataTable hotdown = get_download_list(channel_id, 0, 10, "", "click desc,id desc");
	

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotdown.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n        <li class=\"active\">\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li>\r\n        ");
	}	//end if


	templateBuilder.Append("\r\n          <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n          <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());
	

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <!--/Sidebar-->\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer_inner\">\r\n    <div class=\"foot_nav\">\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首 页</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>|\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <div class=\"copyright\">\r\n      <p>版权所有 动力启航软件工作室 粤ICP备11064298号 版本：V");
	templateBuilder.Append(Utils.GetVersion().ToString());
	

	templateBuilder.Append(" © Copyright 2009 - 2011. dtcms.net. All Rights Reserved. <script src=\"http://s24.cnzz.com/stat.php?id=1996164&web_id=1996164&show=pic\" language=\"JavaScript\"></");
	templateBuilder.Append("script>&nbsp; </p>\r\n    </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
