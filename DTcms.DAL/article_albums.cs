using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using DTcms.DBUtility;
using DTcms.Common;

namespace DTcms.DAL
{
	/// <summary>
	/// ͼƬ���
	/// </summary>
	public partial class article_albums
	{
		public article_albums()
		{}

        /// <summary>
        /// ��������б�
        /// </summary>
        public List<Model.article_albums> GetList(int article_id)
        {
            List<Model.article_albums> modelList = new List<Model.article_albums>();

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,article_id,big_img,small_img,remark ");
            strSql.Append(" FROM dt_article_albums ");
            strSql.Append(" where article_id=" + article_id);
            DataTable dt = DbHelperSQL.Query(strSql.ToString()).Tables[0];

            int rowsCount = dt.Rows.Count;
            if (rowsCount > 0)
            {
                Model.article_albums model;
                for (int n = 0; n < rowsCount; n++)
                {
                    model = new Model.article_albums();
                    if (dt.Rows[n]["id"] != null && dt.Rows[n]["id"].ToString() != "")
                    {
                        model.id = int.Parse(dt.Rows[n]["id"].ToString());
                    }
                    if (dt.Rows[n]["article_id"] != null && dt.Rows[n]["article_id"].ToString() != "")
                    {
                        model.article_id = int.Parse(dt.Rows[n]["article_id"].ToString());
                    }
                    if (dt.Rows[n]["big_img"] != null && dt.Rows[n]["big_img"].ToString() != "")
                    {
                        model.big_img = dt.Rows[n]["big_img"].ToString();
                    }
                    if (dt.Rows[n]["small_img"] != null && dt.Rows[n]["small_img"].ToString() != "")
                    {
                        model.small_img = dt.Rows[n]["small_img"].ToString();
                    }
                    if (dt.Rows[n]["remark"] != null && dt.Rows[n]["remark"].ToString() != "")
                    {
                        model.remark = dt.Rows[n]["remark"].ToString();
                    }
                    modelList.Add(model);
                }
            }
            return modelList;
        }

        /// <summary>
        /// ���Ҳ����ڵ�ͼƬ��ɾ����ɾ����ͼƬ������
        /// </summary>
        public void DeleteList(SqlConnection conn, SqlTransaction trans, List<Model.article_albums> models, int article_id)
        {
            StringBuilder idList = new StringBuilder();
            if (models != null)
            {
                foreach (Model.article_albums modelt in models)
                {
                    if (modelt.id > 0)
                    {
                        idList.Append(modelt.id + ",");
                    }
                }
            }
            string id_list = Utils.DelLastChar(idList.ToString(), ",");
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select id,big_img,small_img from dt_article_albums where article_id=" + article_id);
            if (!string.IsNullOrEmpty(id_list))
            {
                strSql.Append(" and id not in(" + id_list + ")");
            }
            DataSet ds = DbHelperSQL.Query(conn, trans, strSql.ToString());
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                int rows = DbHelperSQL.ExecuteSql(conn, trans, "delete from dt_article_albums where id=" + dr["id"].ToString()); //ɾ�����ݿ�
                if (rows > 0)
                {
                    Utils.DeleteFile(dr["big_img"].ToString()); //ɾ��ԭͼ
                    Utils.DeleteFile(dr["small_img"].ToString()); //ɾ������ͼ
                }
            }
        }

        /// <summary>
        /// ɾ�����ͼƬ
        /// </summary>
        public void DeleteFile(List<Model.article_albums> models)
        {
            if (models != null)
            {
                foreach (Model.article_albums modelt in models)
                {
                    Utils.DeleteFile(modelt.big_img);
                    Utils.DeleteFile(modelt.small_img);
                }
            }
        }

	}
}

