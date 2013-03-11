﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="center.aspx.cs" Inherits="DTcms.Web.admin.center" %>
<%@ Import namespace="DTcms.Common" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理首页</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="mainbody">
<form id="form1" runat="server">
<div class="navigation nav_icon">你好，<i><%=admin_info.user_name %>(<%=new DTcms.BLL.manager_role().GetTitle(admin_info.role_id) %>)</i>，欢迎进入后台管理中心</div>
<div class="line10"></div>
<div class="nlist1">
	<ul>
    	<li>本次登录IP：<asp:Literal ID="litIP" runat="server" Text="-" /></li>
        <li>上次登录IP：<asp:Literal ID="litBackIP" runat="server" Text="-" /></li>
        <li>上次登录时间：<asp:Literal ID="litBackTime" runat="server" Text="-" /></li>
    </ul>
</div>

<div class="line10"></div>
<div class="nlist2 clearfix">
    <h2>站点信息</h2>
    <ul>
    	<li>站点名称：<%=siteConfig.webname %></li>
        <li>公司名称：<%=siteConfig.webcompany %></li>
        <li>网站域名：<%=siteConfig.weburl %></li>
        <li>安装目录：<%=siteConfig.webpath %></li>
        <li>网站管理目录：<%=siteConfig.webmanagepath %></li>
        <li>附件上传目录：<%=siteConfig.attachpath %></li>
        <li>服务器名称：<%=Server.MachineName%> </li>
        <li>服务器IP：<%=Request.ServerVariables["LOCAL_ADDR"] %></li>
        <li>NET框架版本：<%=Environment.Version.ToString()%></li>
        <li>操作系统：<%=Environment.OSVersion.ToString()%></li>
        <li>IIS环境：<%=Request.ServerVariables["SERVER_SOFTWARE"]%></li>
        <li>服务器端口：<%=Request.ServerVariables["SERVER_PORT"]%></li>
        <li>目录物理路径：<%=Request.ServerVariables["APPL_PHYSICAL_PATH"]%></li>
        <li>系统版本：V<%=Utils.GetVersion()%></li>
        <li>升级通知：<asp:Literal ID="LitUpgrade" runat="server"/>
        </li>
    </ul>
    <div class="line10"></div>
</div>

<div class="clear" style="height:20px;"></div>
<div class="sub_nav_list">
    <h3>建站快捷导航</h3>
    <ul>
        <li><a href="javascript:parent.f_addTab('sys_config','系统参数设置','settings/sys_config.aspx')"><img src="images/icon_setting.png" /><br />参数设置</a></li>
        <li><a href="javascript:parent.f_addTab('sys_channel','系统频道设置','settings/sys_channel_list.aspx')"><img src="images/icon_channel.png" /><br />频道设置</a></li>
        <li><a href="javascript:parent.f_addTab('templet_list','系统模板管理','settings/templet_list.aspx')"><img src="images/icon_templet.png" /><br />生成模板</a></li>
        <li><a href="#"><img src="images/icon_mark.png" /><br />生成静态</a></li>
        <li><a href="javascript:parent.f_addTab('plugin_list','系统插件管理','settings/plugin_list.aspx')"><img src="images/icon_plugin.png" /><br />插件管理</a></li>
        <li><a href="javascript:parent.f_addTab('user_list','会员信息管理','users/user_list.aspx')"><img src="images/icon_user.png" /><br />会员管理</a></li>
        <li><a href="javascript:parent.f_addTab('manager_list','管理员管理','manager/manager_list.aspx')"><img src="images/icon_manaer.png" /><br />管理员</a></li>
        <li><a href="javascript:parent.f_addTab('manager_log','系统日志','manager/manager_log.aspx')"><img src="images/icon_log.png" /><br />系统日志</a></li>
    </ul>
</div>
    
<div class="note_list">
	<h3 class="site">建站三步曲</h3>
    <ul>
    	<li>1、进入后台管理中心，点击“系统设置”修改网站配置信息；</li>
    	<li>2、点击“频道管理”建立系统的频道、分类、扩展属性等信息；</li>
        <li>3、制作好网站模板，上传到站点templates目录下，点击“模板管理”生成模板；</li>
    </ul>
    <h3 class="msg">官方消息</h3>
    <ul>
        <asp:Literal ID="LitNotice" runat="server"/>
    </ul>
</div>

</form>
</body>
</html>