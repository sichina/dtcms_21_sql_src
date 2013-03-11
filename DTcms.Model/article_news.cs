using System;
using System.Collections.Generic;

namespace DTcms.Model
{
    /// <summary>
    /// ����ģ��
    /// </summary>
    [Serializable]
    public partial class article_news
    {
        public article_news()
        { }
        #region Model
        private int _id;
        private int _channel_id = 0;
        private int _category_id = 0;
        private string _title = "";
        private string _author = "";
        private string _from = "";
        private string _zhaiyao = "";
        private string _link_url = "";
        private string _img_url = "";
        private string _seo_title = "";
        private string _seo_keywords = "";
        private string _seo_description = "";
        private string _content = "";
        private int _sort_id = 99;
        private int _click = 0;
        private int _is_msg = 0;
        private int _is_top = 0;
        private int _is_red = 0;
        private int _is_hot = 0;
        private int _is_slide = 0;
        private int _is_lock = 0;
        private int _user_id = 0;
        private DateTime _add_time = DateTime.Now;
        private int _digg_good = 0;
        private int _digg_bad = 0;

        /// <summary>
        /// ����ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// Ƶ��ID
        /// </summary>
        public int channel_id
        {
            set { _channel_id = value; }
            get { return _channel_id; }
        }
        /// <summary>
        /// ���ID
        /// </summary>
        public int category_id
        {
            set { _category_id = value; }
            get { return _category_id; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public string author
        {
            set { _author = value; }
            get { return _author; }
        }
        /// <summary>
        /// ������Դ
        /// </summary>
        public string from
        {
            set { _from = value; }
            get { return _from; }
        }
        /// <summary>
        /// ����ժҪ
        /// </summary>
        public string zhaiyao
        {
            set { _zhaiyao = value; }
            get { return _zhaiyao; }
        }
        /// <summary>
        /// �ⲿ����
        /// </summary>
        public string link_url
        {
            set { _link_url = value; }
            get { return _link_url; }
        }
        /// <summary>
        /// ͼƬ��ַ
        /// </summary>
        public string img_url
        {
            set { _img_url = value; }
            get { return _img_url; }
        }
        /// <summary>
        /// SEO����
        /// </summary>
        public string seo_title
        {
            set { _seo_title = value; }
            get { return _seo_title; }
        }
        /// <summary>
        /// SEO�ؽ���
        /// </summary>
        public string seo_keywords
        {
            set { _seo_keywords = value; }
            get { return _seo_keywords; }
        }
        /// <summary>
        /// SEO����
        /// </summary>
        public string seo_description
        {
            set { _seo_description = value; }
            get { return _seo_description; }
        }
        /// <summary>
        /// ��ϸ����
        /// </summary>
        public string content
        {
            set { _content = value; }
            get { return _content; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public int sort_id
        {
            set { _sort_id = value; }
            get { return _sort_id; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public int click
        {
            set { _click = value; }
            get { return _click; }
        }
        /// <summary>
        /// �Ƿ�����
        /// </summary>
        public int is_msg
        {
            set { _is_msg = value; }
            get { return _is_msg; }
        }
        /// <summary>
        /// �Ƿ��ö�
        /// </summary>
        public int is_top
        {
            set { _is_top = value; }
            get { return _is_top; }
        }
        /// <summary>
        /// �Ƿ��Ƽ�
        /// </summary>
        public int is_red
        {
            set { _is_red = value; }
            get { return _is_red; }
        }
        /// <summary>
        /// �Ƿ�����
        /// </summary>
        public int is_hot
        {
            set { _is_hot = value; }
            get { return _is_hot; }
        }
        /// <summary>
        /// �Ƿ�õ�Ƭ
        /// </summary>
        public int is_slide
        {
            set { _is_slide = value; }
            get { return _is_slide; }
        }
        /// <summary>
        /// �Ƿ�����
        /// </summary>
        public int is_lock
        {
            set { _is_lock = value; }
            get { return _is_lock; }
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
        /// ����ʱ��
        /// </summary>
        public DateTime add_time
        {
            set { _add_time = value; }
            get { return _add_time; }
        }

        /// <summary>
        /// ��һ��
        /// </summary>
        public int digg_good
        {
            set { _digg_good = value; }
            get { return _digg_good; }
        }
        /// <summary>
        /// ��һ��
        /// </summary>
        public int digg_bad
        {
            set { _digg_bad = value; }
            get { return _digg_bad; }
        }
        #endregion Model

        private List<article_albums> _albums;
        /// <summary>
        /// ͼƬ����б�
        /// </summary>
        public List<article_albums> albums
        {
            set { _albums = value; }
            get { return _albums; }
        }

        private List<attribute_value> _attribute_values;
        /// <summary>
        /// �����б�
        /// </summary>
        public List<attribute_value> attribute_values
        {
            set { _attribute_values = value; }
            get { return _attribute_values; }
        }
    }
}