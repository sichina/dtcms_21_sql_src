using System;
using System.Data;
using System.Collections.Generic;

namespace DTcms.BLL
{
    /// <summary>
    /// ��ѯ���
    /// </summary>
    public partial class search
    {
        private readonly DAL.search dal = new DAL.search();
        public search()
        { }
        #region  Method
        /// <summary>
        /// ���ǰ��������
        /// </summary>
        public DataSet GetList(int Top, string strWhere)
        {
            return dal.GetList(Top, strWhere);
        }

        /// <summary>
        /// ��ò�ѯ��ҳ����
        /// </summary>
        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            return dal.GetList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
        }
        #endregion  Method
    }
}