using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace ECommerceProject
{
    public partial class AdminFeedback : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            Fn_feedbackview();
        }
        public void Fn_feedbackview()
        {
            string selfeebback = "SELECT  EC_UserRegistration.Name,EC_UserRegistration.Email,EC_Feedback.feedback_message," +
               " EC_Feedback.feedback_Id,EC_Feedback.feedback_status FROM EC_Feedback JOIN EC_UserRegistration " +
               " ON EC_Feedback.user_id = EC_UserRegistration.user_id where EC_Feedback.feedback_status=1";
            DataSet dset = conobj.Fn_Dataset(selfeebback);
            GridView1.DataSource = dset;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fromName = Session["userName"].ToString(); 
            string gmailUsername = "loraljenny185@gmail.com";
            string gmailPassword = "mlpt kwai whbt ueqo";
            string toName = Session["fedname"].ToString();
            string toEmail = txtto.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string body = txtBody.Text.Trim();


            try
            {

                SendEmail2(fromName, gmailUsername, gmailPassword, toName, toEmail, subject, body);
                
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal({ title: 'SMTP', text: '"+ ex.Message + "', icon: 'warning', buttons: ['Cancel', 'OK'], dangerMode: true });", true);
                
            }
            string upfedstatus = "update EC_Feedback set replay_message='" + txtBody.Text + "'," +
                " feedback_status='0' where feedback_Id="+Session["replayid"]+"";
            int i=conobj.Fn_Nonquery(upfedstatus);
            if(i==1)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
             "swal({ title: 'FeedBack', text: 'Sent successfully', icon: 'success', button: 'OK' });", true);
                txtBody.Text = string.Empty;
            }         
            txtSubject.Text = string.Empty;
            txtto.Text = string.Empty;
            Panel1.Visible = false;
            Fn_feedbackview();
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }


        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            string name = "";
            string email = "";
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["replayid"] = getid;
            string selectuserinfo = "SELECT EC_UserRegistration.Name,EC_Feedback.feedback_message,EC_UserRegistration.Email FROM EC_Feedback " +
                " JOIN EC_UserRegistration ON EC_Feedback.user_id = EC_UserRegistration.user_id " +
                " where EC_Feedback.feedback_Id=" + getid + " ";
            SqlDataReader da = conobj.Fn_Reader(selectuserinfo);
            while(da.Read())
            {
                name = da["Name"].ToString();
                txtto.Text = da["Email"].ToString();
                txtmessage.Text = da["feedback_message"].ToString();
            }
            Session["fedname"] = name;
            Session["fedemail"] = email;

        }

        protected void btnpanel_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}