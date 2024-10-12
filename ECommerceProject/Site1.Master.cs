using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerceProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        Connectioncls conobj = new Connectioncls();

        // navbar based on userrole 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                string role = Session["role"].ToString();
                string userName=Session["userName"].ToString();
                Label1.Text = userName;
                if (role=="admin")
                {
                    loginid.Visible = false;
                    signupid.Visible = false;
                    //Nameid.Visible = true;
                    cartid.Visible = true;
                    categoryid.Visible = true;
                    //logoutid.Visible = true;
                    Accountid.Visible = true;
                    userfeedback.Visible = true;
                }
                else if (role=="user")
                {
                    loginid.Visible = false;
                    signupid.Visible = false;
                    //Nameid.Visible = true;
                    cartid.Visible = true;
                    categoryid.Visible = false;
                    //logoutid.Visible = true;
                    Accountid.Visible = true;
                    feedback.Visible = true;
                }
            }
            Fn_cartcount();
        }

        // logout seesion delete 
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }

        // logout seesion delete *
        protected void imgbtncheckout_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("HomePage.aspx");

        }

        // cart count using userid
        public void Fn_cartcount()
        {
            string selectcart = "select count(user_id)from EC_Cart where user_id='" + Session["userid"] + "'";
            string countcart = conobj.Fn_Scalar(selectcart);

            int user = Convert.ToInt32(Session["userid"]);
            Session["cartcount"] = countcart;
            int cartscount = Convert.ToInt32(Session["cartcount"]);
            if (cartscount > 0 && user!=0)
            {
                cartBadge.Visible = true;
                cartBadge.InnerText = cartscount.ToString();
            }
            else
            {
                cartBadge.Visible = false;
            }
        }
    }
}
