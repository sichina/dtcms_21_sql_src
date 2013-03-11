using System;
using System.Data;
using System.Collections.Generic;
using DTcms.Common;

namespace DTcms.BLL
{
    /// <summary>
    /// ���ظ���
    /// </summary>
    public partial class download_attach
    {
        private readonly DAL.download_attach dal = new DAL.download_attach();
        public download_attach()
        { }
        #region  Method
        /// <summary>
        /// �Ƿ���ڸü�¼
        /// </summary>
        public bool Exists(int id)
        {
            return dal.Exists(id);
        }

        /// <summary>
        /// �޸�һ������
        /// </summary>
        public void UpdateField(int id, string strValue)
        {
            dal.UpdateField(id, strValue);
        }

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public Model.download_attach GetModel(int id)
        {
            return dal.GetModel(id);
        }

        //ɾ�����µľ��ļ�
        public void DeleteFile(int id, string filePath)
        {
            Model.download_attach model = GetModel(id);
            if (model != null && model.file_path != filePath)
            {
                Utils.DeleteFile(model.file_path);
            }
        }

        #endregion  Method

    }
}