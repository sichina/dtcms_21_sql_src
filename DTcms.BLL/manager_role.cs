using System;
using System.Data;
using System.Collections.Generic;

namespace DTcms.BLL
{
    /// <summary>
    /// �����ɫ
    /// </summary>
    public partial class manager_role
    {
        private readonly DTcms.DAL.manager_role dal = new DTcms.DAL.manager_role();
        public manager_role()
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
        /// ���ؽ�ɫ����
        /// </summary>
        public string GetTitle(int id)
        {
            return dal.GetTitle(id);
        }

        /// <summary>
        /// ����Ƿ���Ȩ��
        /// </summary>
        public bool Exists(int role_id, int channel_id, string action_type)
        {
            Model.manager_role model = GetModel(role_id);
            if (model != null)
            {
                if (model.role_type == 1)
                {
                    return true;
                }
                Model.manager_role_value modelt = model.manager_role_values.Find(p => p.channel_id == channel_id && p.action_type == action_type);
                if (modelt != null)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// ����Ƿ���Ȩ��
        /// </summary>
        public bool Exists(int role_id, string channel_name, string action_type)
        {
            Model.manager_role model = GetModel(role_id);
            if (model != null)
            {
                if (model.role_type == 1)
                {
                    return true;
                }
                Model.manager_role_value modelt = model.manager_role_values.Find(p => p.channel_name == channel_name && p.action_type == action_type);
                if (modelt != null)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public int Add(DTcms.Model.manager_role model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public bool Update(DTcms.Model.manager_role model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// ɾ��һ������
        /// </summary>
        public bool Delete(int id)
        {
            return dal.Delete(id);
        }

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public DTcms.Model.manager_role GetModel(int id)
        {
            return dal.GetModel(id);
        }

        /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            return dal.GetList(strWhere);
        }

        #endregion  Method
    }
}