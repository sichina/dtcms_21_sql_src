using System;
using System.Collections.Generic;
namespace DTcms.Model
{
    /// <summary>
    /// ϵͳģ��
    /// </summary>
    [Serializable]
    public class sys_model
    {
        public sys_model()
        { }
        #region Model
        private int _id;
        private string _title;
        private int _sort_id = 99;
        private string _inherit_index = "";
        private string _inherit_list = "";
        private string _inherit_detail = "";
        private int _is_sys = 0;
        /// <summary>
        /// ����ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// ģ������
        /// </summary>
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// ��������
        /// </summary>
        public int sort_id
        {
            set { _sort_id = value; }
            get { return _sort_id; }
        }
        /// <summary>
        /// ��ҳ����
        /// </summary>
        public string inherit_index
        {
            set { _inherit_index = value; }
            get { return _inherit_index; }
        }
        /// <summary>
        /// �б�ҳ����
        /// </summary>
        public string inherit_list
        {
            set { _inherit_list = value; }
            get { return _inherit_list; }
        }
        /// <summary>
        /// ��ϸҳ����
        /// </summary>
        public string inherit_detail
        {
            set { _inherit_detail = value; }
            get { return _inherit_detail; }
        }
        /// <summary>
        /// �Ƿ�ϵͳ����
        /// </summary>
        public int is_sys
        {
            set { _is_sys = value; }
            get { return _is_sys; }
        }
        #endregion Model

        private List<sys_model_nav> _sys_model_navs;
        /// <summary>
        /// ģ�Ͳ˵�
        /// </summary>
        public List<sys_model_nav> sys_model_navs
        {
            set { _sys_model_navs = value; }
            get { return _sys_model_navs; }
        }
    }
}