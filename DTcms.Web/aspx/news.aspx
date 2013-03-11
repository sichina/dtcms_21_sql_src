<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.news" ValidateRequest="false" %>
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
	const int channel_id = 1;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>新闻资讯 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.3.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.KinSlideshow-1.2.1.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n	$(\"#focusNews\").KinSlideshow();\r\n})\r\n</");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left710\">\r\n   <!--Content-->\r\n    <div class=\"main_box\">\r\n      <div class=\"left300\">\r\n        <div id=\"focusNews\" class=\"ifocus\">\r\n          ");
	DataTable focusNews = get_news_list(channel_id, 0, 8, "is_slide=1");
	

	int newsdr__loop__id=0;
	foreach(DataRow newsdr in focusNews.Rows)
	{
		newsdr__loop__id++;


	templateBuilder.Append("\r\n          <a title=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(newsdr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" /></a>\r\n          ");
	}	//end loop


	templateBuilder.Append("\r\n        </div>\r\n      </div>\r\n      <div class=\"right350\">\r\n        <div class=\"newsToppic\">\r\n          <dl>\r\n            ");
	DataTable topNews = get_news_list(channel_id, 0, 8, "");
	

	int topdr__loop__id=0;
	foreach(DataRow topdr in topNews.Rows)
	{
		topdr__loop__id++;


	if (topdr__loop__id==1)
	{

	templateBuilder.Append("\r\n            <dt>\r\n              <strong><a title=\"" + Utils.ObjectToStr(topdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(topdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(topdr["title"]) + "</a></strong>\r\n              <p>");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(topdr["zhaiyao"]),150));

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(topdr["id"])));

	templateBuilder.Append("\">[详细]</a></p>\r\n            </dt>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <dd><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(topdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span><a title=\"" + Utils.ObjectToStr(topdr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(topdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(topdr["title"]) + "</a></dd>\r\n            ");
	}	//end if


	}	//end loop


	templateBuilder.Append("\r\n          </dl>\r\n        </div>\r\n      </div>\r\n      \r\n      <!--分类资讯-->\r\n      ");
	DataTable category_list = get_category_child_list(channel_id, 0);
	

	int cdr__loop__id=0;
	foreach(DataRow cdr in category_list.Rows)
	{
		cdr__loop__id++;


	templateBuilder.Append("\r\n      <div class=\"line20\"></div>\r\n      ");
	if (cdr__loop__id==1)
	{

	templateBuilder.Append("\r\n      <dl class=\"head green\">\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <dl class=\"head blue\">\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n        <dt>" + Utils.ObjectToStr(cdr["title"]) + "</dt>\r\n        <dd>\r\n          <span><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr["id"])));

	templateBuilder.Append("\" title=\"查看更多\" class=\"arrow\">&gt;</a></span>\r\n        </dd>\r\n      </dl>\r\n      <div class=\"line10\"></div>\r\n      <div class=\"newsToplist\">\r\n        <div class=\"list\">\r\n          <div class=\"left325\">\r\n            <dl>\r\n              ");
	DataTable listNews = get_news_list(channel_id, Utils.StrToInt(Utils.ObjectToStr(cdr["id"]), 0), 13, "");
	

	int listdr1__loop__id=0;
	foreach(DataRow listdr1 in listNews.Rows)
	{
		listdr1__loop__id++;


	if (listdr1__loop__id<=3)
	{

	templateBuilder.Append("\r\n              <dt>\r\n                <a title=\"" + Utils.ObjectToStr(listdr1["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr1["id"])));

	templateBuilder.Append("\"><img width=\"110\" height=\"110\" src=\"" + Utils.ObjectToStr(listdr1["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(listdr1["title"]) + "\" /></a>\r\n                <strong><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(listdr1["title"]) + "</a></strong>\r\n                <p>");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(listdr1["zhaiyao"]),110));

	templateBuilder.Append("</p>\r\n              </dt>\r\n              ");
	}	//end if


	}	//end loop


	templateBuilder.Append("\r\n            </dl>\r\n          </div>\r\n          <div class=\"right325\">\r\n            <dl>\r\n              ");
	int listdr2__loop__id=0;
	foreach(DataRow listdr2 in listNews.Rows)
	{
		listdr2__loop__id++;


	if (listdr2__loop__id>3)
	{

	templateBuilder.Append("\r\n              <dd><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(listdr2["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span><a title=\"" + Utils.ObjectToStr(listdr2["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(listdr2["title"]) + "</a></dd>\r\n              ");
	}	//end if


	}	//end loop


	templateBuilder.Append("\r\n            </dl>\r\n          </div>\r\n   \r\n        </div>\r\n      </div>\r\n      ");
	}	//end loop


	templateBuilder.Append("\r\n      <!--/分类资讯-->\r\n      \r\n    </div>\r\n    <!--/Content-->\r\n  </div>\r\n  \r\n  <div class=\"left264\">\r\n    <!--Sidebar-->\r\n    <div class=\"sidebar\">\r\n      <h3>推荐资讯</h3>\r\n      <ul class=\"newsRedlist\">\r\n        ");
	DataTable rednews1 = get_news_list(channel_id, 0, 10, "is_red=1");
	

	int reddr1__loop__id=0;
	foreach(DataRow reddr1 in rednews1.Rows)
	{
		reddr1__loop__id++;


	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(reddr1["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(reddr1["id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(reddr1["title"]),38));

	templateBuilder.Append("</a></li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n      <h3>图片资讯</h3>\r\n      <div class=\"focus_list\">\r\n        <ul>\r\n          ");
	DataTable rednews2 = get_news_list(channel_id, 0, 9, "img_url<>''");
	

	int reddr2__loop__id=0;
	foreach(DataRow reddr2 in rednews2.Rows)
	{
		reddr2__loop__id++;


	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(reddr2["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(reddr2["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(reddr2["img_url"]) + "\" width=\"100\" height=\"100\" alt=\"" + Utils.ObjectToStr(reddr2["title"]) + "\" />\r\n              <span>" + Utils.ObjectToStr(reddr2["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end loop


	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"clear\"></div>\r\n      </div>\r\n      <h3>人气排行</h3>\r\n      <ul class=\"rank_list\">\r\n        ");
	DataTable hotphoto = get_news_list(channel_id, 0, 10, "", "click desc,id desc");
	

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotphoto.Rows)
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
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(hotdr["id"])));

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
