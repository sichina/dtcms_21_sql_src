using System;
using System.Xml;
using System.Text;
using System.Web;
using DTcms.Common;

namespace DTcms.API.Payment.Tenpay
{
	/// <summary>
	/// TenpayUtil ��ժҪ˵����
	/// </summary>
	public class TenpayUtil
	{
        public static string tenpay         ="1";
        public static string bargainor_id   = "";                   //�Ƹ�ͨ�̻���
        public static string tenpay_key     = "";  					//�Ƹ�ͨ��Կ;
        public static string tenpay_return  = "";//��ʾ֧��֪ͨҳ��;
        public static string tenpay_notify  =""; //֧����ɺ�Ļص�����ҳ��;

        static TenpayUtil()
        {
            //��ȡXML������Ϣ
            string fullPath = Utils.GetMapPath("~/xmlconfig/tenpay.config");
            XmlDocument doc = new XmlDocument();
            doc.Load(fullPath);
            XmlNode _bargainor_id = doc.SelectSingleNode(@"Root/bargainor_id");
            XmlNode _tenpay_key = doc.SelectSingleNode(@"Root/tenpay_key");
            XmlNode _tenpay_return = doc.SelectSingleNode(@"Root/tenpay_return");
            XmlNode _tenpay_notify = doc.SelectSingleNode(@"Root/tenpay_notify");
            //��ȡվ��������Ϣ
            Model.siteconfig model = new BLL.siteconfig().loadConfig(DTKeys.FILE_SITE_XML_CONFING);

            bargainor_id = _bargainor_id.InnerText;
            tenpay_key = _tenpay_key.InnerText;
            tenpay_return = Utils.DelLastChar(model.weburl, "/") + _tenpay_return.InnerText;
            tenpay_notify = Utils.DelLastChar(model.weburl, "/") + _tenpay_notify.InnerText;
		}
		/** ���ַ�������URL���� */
		public static string UrlEncode(string instr, string charset)
		{
			//return instr;
			if(instr == null || instr.Trim() == "")
				return "";
			else
			{
				string res;
				
				try
				{
					res = HttpUtility.UrlEncode(instr,Encoding.GetEncoding(charset));

				}
				catch (Exception ex)
				{
					res = HttpUtility.UrlEncode(instr,Encoding.GetEncoding("GB2312"));
				}
				
		
				return res;
			}
		}

		/** ���ַ�������URL���� */
		public static string UrlDecode(string instr, string charset)
		{
			if(instr == null || instr.Trim() == "")
				return "";
			else
			{
				string res;
				
				try
				{
					res = HttpUtility.UrlDecode(instr,Encoding.GetEncoding(charset));

				}
				catch (Exception ex)
				{
					res = HttpUtility.UrlDecode(instr,Encoding.GetEncoding("GB2312"));
				}
				
		
				return res;

			}
		}

		/** ȡʱ��������漴��,�滻���׵����еĺ�10λ��ˮ�� */
		public static UInt32 UnixStamp()
		{
			TimeSpan ts = DateTime.Now - TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
			return Convert.ToUInt32(ts.TotalSeconds);
		}
		/** ȡ����� */
		public static string BuildRandomStr(int length) 
		{
			Random rand = new Random();

			int num = rand.Next();

			string str = num.ToString();

			if(str.Length > length)
			{
				str = str.Substring(0,length);
			}
			else if(str.Length < length)
			{
				int n = length - str.Length;
				while(n > 0)
				{
					str.Insert(0, "0");
					n--;
				}
			}
			
			return str;
		}
	}
}