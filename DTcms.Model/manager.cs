using System;
namespace DTcms.Model
{
    /// <summary>
    /// ����Ա��Ϣ
    /// </summary>
    [Serializable]
    public partial class manager
    {
        public manager()
        { }
        #region Model
        private int _id;
        private int _role_id;
        private int _role_type = 1;
        private string _user_name;
        private string _user_pwd;
        private string _real_name;
        private string _telephone;
        private string _email;
        private int _is_lock = 0;
        private DateTime _add_time = DateTime.Now;
        /// <summary>
        /// ����ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// ��ɫID
        /// </summary>
        public int role_id
        {
            set { _role_id = value; }
            get { return _role_id; }
        }
        /// <summary>
        /// ��ɫ����
        /// </summary>
        public int role_type
        {
            set { _role_type = value; }
            get { return _role_type; }
        }
        /// <summary>
        /// �û���
        /// </summary>
        public string user_name
        {
            set { _user_name = value; }
            get { return _user_name; }
        }
        /// <summary>
        /// �û�����
        /// </summary>
        public string user_pwd
        {
            set { _user_pwd = value; }
            get { return _user_pwd; }
        }
        /// <summary>
        /// ��ʵ����
        /// </summary>
        public string real_name
        {
            set { _real_name = value; }
            get { return _real_name; }
        }
        /// <summary>
        /// ��ϵ�绰
        /// </summary>
        public string telephone
        {
            set { _telephone = value; }
            get { return _telephone; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public string email
        {
            set { _email = value; }
            get { return _email; }
        }
        /// <summary>
        /// �Ƿ����
        /// </summary>
        public int is_lock
        {
            set { _is_lock = value; }
            get { return _is_lock; }
        }
        /// <summary>
        /// ���ʱ��
        /// </summary>
        public DateTime add_time
        {
            set { _add_time = value; }
            get { return _add_time; }
        }
        #endregion Model

    }
}