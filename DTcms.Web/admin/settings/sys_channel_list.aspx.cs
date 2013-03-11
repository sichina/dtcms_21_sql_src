﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.Common;

namespace DTcms.Web.admin.settings
{
    public partial class sys_channel_list : DTcms.Web.UI.ManagePage
    {
        public string keywords = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.keywords = DTRequest.GetQueryString("keywords");
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("sys_channel", DTEnums.ActionEnum.View.ToString()); //检查权限
                RptBind("id>0" + CombSqlTxt(this.keywords));
            }
        }

        #region 数据绑定
        private void RptBind(string _strWhere)
        {
            this.txtKeywords.Text = this.keywords;
            DTcms.BLL.sys_channel bll = new DTcms.BLL.sys_channel();
            this.rptList.DataSource = bll.GetList(_strWhere);
            this.rptList.DataBind();
        }
        #endregion

        #region 组合SQL查询语句
        protected string CombSqlTxt(string _keywords)
        {
            StringBuilder strTemp = new StringBuilder();
            _keywords = _keywords.Replace("'", "");
            if (!string.IsNullOrEmpty(_keywords))
            {
                strTemp.Append(" and title like '%" + _keywords + "%'");
            }

            return strTemp.ToString();
        }
        #endregion

        //删除操作
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ChkAdminLevel("sys_channel", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            DTcms.BLL.sys_channel bll = new DTcms.BLL.sys_channel();
            BLL.url_rewrite bll2 = new BLL.url_rewrite();
            //批量删除
            for (int i = 0; i < rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)rptList.Items[i].FindControl("hidId")).Value);
                CheckBox cb = (CheckBox)rptList.Items[i].FindControl("chkId");
                if (cb.Checked)
                {
                    bll.Delete(id);
                    //删除URL映射表
                    bll2.Remove("channel", id.ToString());
                }
            }
            JscriptMsg("批量删除成功啦！", Utils.CombUrlTxt("sys_channel_list.aspx", "keywords={0}", txtKeywords.Text.Trim()), "Success", "parent.loadChannelTree");
        }

        //查询操作
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect(Utils.CombUrlTxt("sys_channel_list.aspx", "keywords={0}", txtKeywords.Text.Trim()));
        }
    }
}