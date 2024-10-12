using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceProject
{
    public partial class FeedBack : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Text = Session["userName"].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {        
            string ins = "INSERT INTO EC_Feedback (user_id, feedback_message, feedback_status) VALUES (" +
              Session["userid"] + ", '" + txtmessage.Text + "', 1)";
            conobj.Fn_Nonquery(ins);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
        "swal({ title: 'FeedBack', text: 'Sent successfully', icon: 'success', button: 'OK' });", true);
            txtmessage.Text = string.Empty;
           
          
        }
    }
}