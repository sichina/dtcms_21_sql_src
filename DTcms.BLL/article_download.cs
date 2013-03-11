using System;
using System.Data;
using System.Collections.Generic;

namespace DTcms.BLL
{
    /// <summary>
    /// ����ģ��
    /// </summary>
    public partial class article
    {
        #region  Method
        /// <summary>
        /// �޸����ظ���һ������
        /// </summary>
        public void UpdateDownloadField(int id, string strValue)
        {
            dal.UpdateDownloadField(id, strValue);
        }
        /// <summary>
        /// ����һ������
        /// </summary>
        public int Add(Model.article_download model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public bool Update(Model.article_download model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public Model.article_download GetDownloadModel(int id)
        {
            return dal.GetDownloadModel(id);
        }

        /// <summary>
        /// ���ǰ��������
        /// </summary>
        public DataSet GetDownloadList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetDownloadList(Top, strWhere, filedOrder);
        }

        /// <summary>
        /// ��ò�ѯ��ҳ����
        /// </summary>
        public DataSet GetDownloadList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            return dal.GetDownloadList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
        }

        #endregion  Method

    }
}