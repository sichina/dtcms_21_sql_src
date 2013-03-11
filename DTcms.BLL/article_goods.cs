using System;
using System.Data;
using System.Collections.Generic;

namespace DTcms.BLL
{
    /// <summary>
    /// ��Ʒģ��
    /// </summary>
    public partial class article
    {
        #region  Method
        /// <summary>
        /// �޸���Ʒ����һ������
        /// </summary>
        public void UpdateGoodsField(int id, string strValue)
        {
            dal.UpdateGoodsField(id, strValue);
        }
        /// <summary>
        /// ����һ������
        /// </summary>
        public int Add(Model.article_goods model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public bool Update(Model.article_goods model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public Model.article_goods GetGoodsModel(int id)
        {
            return dal.GetGoodsModel(id);
        }

        /// <summary>
        /// ���ǰ��������
        /// </summary>
        public DataSet GetGoodsList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetGoodsList(Top, strWhere, filedOrder);
        }

        /// <summary>
        /// ��ò�ѯ��ҳ����
        /// </summary>
        public DataSet GetGoodsList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            return dal.GetGoodsList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
        }
        #endregion  Method
    }
}