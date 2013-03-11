﻿using System;
namespace DTcms.Model
{
    /// <summary>
    /// 在线支付列表
    /// </summary>
    [Serializable]
    public partial class payment
    {
        public payment()
        { }
        #region Model
        private int _id;
        private string _title;
        private string _img_url = "";
        private string _remark;
        private int _type = 1;
        private int _poundage_type = 1;
        private decimal _poundage_amount;
        private int _sort_id = 99;
        private int _is_lock = 0;
        private string _api_path = "";
        /// <summary>
        /// 自增ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 支付名称
        /// </summary>
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// 显示图片
        /// </summary>
        public string img_url
        {
            set { _img_url = value; }
            get { return _img_url; }
        }
        /// <summary>
        /// 备注说明
        /// </summary>
        public string remark
        {
            set { _remark = value; }
            get { return _remark; }
        }
        /// <summary>
        /// 支付类型1线上2线下
        /// </summary>
        public int type
        {
            set { _type = value; }
            get { return _type; }
        }
        /// <summary>
        /// 手续费类型1百分比2固定金额
        /// </summary>
        public int poundage_type
        {
            set { _poundage_type = value; }
            get { return _poundage_type; }
        }
        /// <summary>
        /// 手续费金额
        /// </summary>
        public decimal poundage_amount
        {
            set { _poundage_amount = value; }
            get { return _poundage_amount; }
        }
        /// <summary>
        /// 排序
        /// </summary>
        public int sort_id
        {
            set { _sort_id = value; }
            get { return _sort_id; }
        }
        /// <summary>
        /// 是否启用
        /// </summary>
        public int is_lock
        {
            set { _is_lock = value; }
            get { return _is_lock; }
        }
        /// <summary>
        /// API目录名称
        /// </summary>
        public string api_path
        {
            set { _api_path = value; }
            get { return _api_path; }
        }
        #endregion Model

    }
}