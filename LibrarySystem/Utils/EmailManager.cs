using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace VirtualCollege.Utils
{
    public class EmailManager
    {
        private string host;
        private int port;
        private string userName;
        private string password;

        private EmailManager()
        {
        }
        private EmailManager(string host, int port, string userName, string password)
        {
            this.host = host;
            this.port = port;
            this.userName = userName;
            this.password = password;
        }
        public static EmailManager getInstance()
        {
            string host = "smtp.gmail.com";
            int port = 587;
            string userName = "teamishioka@gmail.com";
            string password = "comp231project";
            return new EmailManager(host, port, userName, password);
        }

        public void SendEmail(string[] toMails, string subject, string content)
        {
            SmtpClient sc = new SmtpClient();
            sc.Host = this.host;
            sc.Port = this.port;
            NetworkCredential nc = new NetworkCredential(this.userName, this.password);
            sc.Credentials = nc;
            sc.EnableSsl = true;
            sc.Send(GetMailMessage(toMails, subject, content));

        }

        private MailMessage GetMailMessage(string[] toMails, string subject, string content)
        {
            MailMessage mm = new MailMessage();
            mm.From = new MailAddress(this.userName);
            foreach (var m in toMails)
            {
                mm.To.Add(new MailAddress(m));
            }
            mm.Subject = subject;
            mm.SubjectEncoding = Encoding.UTF8;
            mm.Body = content;
            mm.BodyEncoding = Encoding.UTF8;
            return mm;
        }

        public void Test()
        {
            string toMail = "andyemailis@gmail.com";
            EmailManager em = EmailManager.getInstance();
            string[] toMails = { toMail };
            string subject = "A test mail";
            string content = Settings.GetProcessMessage("Andy", DateTime.Now);
            em.SendEmail(toMails, subject, content);
        }

        public static bool IsValidEmail(string email)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            return regex.IsMatch(email);
        }
    }
}