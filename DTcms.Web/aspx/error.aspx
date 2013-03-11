﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.error" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>提示信息</title>\r\n<style type=\"text/css\">\r\nbody{padding:0;margin:0; width:100%;height:100%;text-align:center;font-size:12px;font-family:\"Microsoft YaHei\";}\r\na:link,a:visited{text-decoration:none;color:#0068a6}\r\na:hover,a:active{color:#ff6600;text-decoration: underline}\r\n.showMsg{margin:-87px auto auto -225px;position:absolute;border:1px solid #3B8DD1;border-radius:5px;width:450px;height:174px;top:50%;left:50%;text-align:left;}\r\n.showMsg h5{margin:0;padding:0 0 0 30px;background:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("images/msg.png) no-repeat;color:#fff;height:25px;line-height:25px;overflow:hidden;font-size:14px;text-align:left;}\r\n.showMsg .content{padding:37px 12px 10px 70px;font-size:14px;height:75px;background:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("images/msg_bg.png) no-repeat 20px -460px;}\r\n.showMsg .footer{background:#e4ecf7;line-height:26px;height:26px;text-align:center;}\r\n</style>\r\n</head>\r\n<body>\r\n<div class=\"showMsg\">\r\n	<h5>提示信息</h5>\r\n    <div class=\"content\">\r\n       ");
	templateBuilder.Append(Utils.ObjectToStr(msg));
	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"footer\">\r\n    	<a href=\"javascript:history.back();\" >[点这里返回上一页]</a>\r\n	</div>\r\n</div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
