using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Text;
using DTcms.Common;

namespace DTcms.Web.UI.Page
{
    public partial class search : Web.UI.BasePage
    {
        protected int page;         //当前页码
        protected string keyword = string.Empty; //关健字
        protected int totalcount;   //OUT数据总数
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            page = DTRequest.GetQueryInt("page", 1);
            keyword = DTRequest.GetQueryString("keyword").Replace("'", "");
        }

        /// <summary>
        /// 查询数据
        /// </summary>
        protected DataTable get_search_list(int _pagesize, out int _totalcount)
        {
            //组合查询条件
            string strWhere = "(title like '%" + keyword + "%' or content like '%" + keyword + "%')";
            //创建一个DataTable
            DataTable dt = new DataTable();
            dt.Columns.Add("title", Type.GetType("System.String"));
            dt.Columns.Add("remark", Type.GetType("System.String"));
            dt.Columns.Add("link_url", Type.GetType("System.String"));
            dt.Columns.Add("add_time", Type.GetType("System.String"));

            BLL.search bll = new BLL.search();
            DataSet ds = bll.GetList(_pagesize, page, strWhere, "add_time desc", out _totalcount);
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DataRow dr1 = ds.Tables[0].Rows[i];
                    string link_url = get_url_rewrite(dr1["channel_id"].ToString(), Convert.ToInt32(dr1["id"]));
                    if (!string.IsNullOrEmpty(link_url))
                    {
                        DataRow dr = dt.NewRow();
                        dr["title"] = dr1["title"]; //标题
                        dr["remark"] = Utils.DropHTML(dr1["content"].ToString(), 255); //简介
                        dr["link_url"] = link_url; //链接地址
                        dr["add_time"] = dr1["add_time"]; //发布时间
                        dt.Rows.Add(dr);
                    }
                }
            }

            return dt;
        }

        //查找匹配的URL
        private string get_url_rewrite(string channel_id, int id)
        {
            BLL.url_rewrite bll = new BLL.url_rewrite();
            Model.url_rewrite model = bll.GetInfo(channel_id, "detail");
            if (model != null)
            {
                return linkurl(model.name, id);
            }
            return "";
        }

    }
}
