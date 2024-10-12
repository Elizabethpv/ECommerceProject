using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ECommerceProject
{
    public partial class LoginPage : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string countlogselect = "select count(Reg_id)from EC_Login where Username='" + txtusername.Text + "' " +
                "and Password='" + txtpassword.Text + "'";
            string recordexist=conobj.Fn_Scalar(countlogselect);
            if(recordexist=="1")
            {
                string loginperson= "select Logtype from EC_Login where Username='" + txtusername.Text + "' " +
                    "and Password='" + txtpassword.Text + "'";
                string logintype =conobj.Fn_Scalar(loginperson);
                if(logintype== "admin")
                {  
                    Session["role"] = "admin";

                    string loginpersonname = "select adminRegistration.Name from adminRegistration join EC_Login on adminRegistration.admin_id=EC_Login .Reg_id where EC_Login.Username='" + txtusername.Text + "' and EC_Login.Password='" + txtpassword.Text + "'";
                    string UserName = conobj.Fn_Scalar(loginpersonname);
                    Session["userName"] = UserName;
                   
                    Response.Redirect("AdminHome.aspx");
                }
                else if(logintype == "user")
                {
                    Session["role"] = "user";
                    string UserNames="";
                    int id = 0;
                    string loginpersonnames = "select EC_UserRegistration.user_id,EC_UserRegistration.Name from EC_UserRegistration join EC_Login on EC_UserRegistration.user_id=EC_Login.Reg_id where EC_Login.Username='" + txtusername.Text + "' and EC_Login.Password='" + txtpassword.Text + "'";               
                    SqlDataReader dr = conobj.Fn_Reader(loginpersonnames);
                    while(dr.Read())
                    {
                        id= Convert.ToInt32(dr["user_id"].ToString());
                        UserNames = dr["Name"].ToString();
                    }
                    Session["userName"] = UserNames;
                    Session["userid"] = id;

                    Response.Redirect("HomePage.aspx");
                }
            }
        }
    }
}