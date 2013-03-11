using System;
namespace DTcms.Model
{
    /// <summary>
    /// ����Ա��¼��־:ʵ����
    /// </summary>
    [Serializable]
    public partial class manager_log
    {
        public manager_log()
        { }
        #region Model
        private int _id;
        private int _user_id;
        private string _user_name;
        private string _action_type;
        private string _note;
        private string _login_ip;
        private DateTime _login_time;
        /// <summary>
        /// ����ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// �û�ID
        /// </summary>
        public int user_id
        {
            set { _user_id = value; }
            get { return _user_id; }
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
        /// ��������
        /// </summary>
        public string action_type
        {
            set { _action_type = value; }
            get { return _action_type; }
        }
        /// <summary>
        /// ��ע
        /// </summary>
        public string note
        {
            set { _note = value; }
            get { return _note; }
        }
        /// <summary>
        /// ��¼IP
        /// </summary>
        public string login_ip
        {
            set { _login_ip = value; }
            get { return _login_ip; }
        }
        /// <summary>
        /// ��¼ʱ��
        /// </summary>
        public DateTime login_time
        {
            set { _login_time = value; }
            get { return _login_time; }
        }
        #endregion Model

    }
}