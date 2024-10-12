using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceProject
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string maxreg = "select max(Reg_id)from EC_Login";
            string regid = conobj.Fn_Scalar(maxreg);
            int logid = 0;
            if(regid=="")
            {
                logid = 1;
            }
            else
            {
                int newid = Convert.ToInt32(regid);
                logid = newid + 1;
            }
            string admin_reg = "insert into adminRegistration values(" + logid + ",'" + txtname.Text + "'," +
                "'" + txtaddress.Text + "'," + txtPhone.Text + ",'" + txtEmail.Text + "')";
            conobj.Fn_Nonquery(admin_reg);

            string Logtable_ins = "insert into EC_Login values("+ logid + ",'"+txtusername.Text+"'," +
                "'"+txtPassword.Text+"','admin')";
            conobj.Fn_Nonquery(Logtable_ins);
            Response.Redirect(Request.RawUrl);
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}