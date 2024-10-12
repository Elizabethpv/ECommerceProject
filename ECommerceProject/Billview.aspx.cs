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
    public partial class Billview : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectbilldetails = "SELECT EC_Bill.date, EC_Bill.grand_total, " +
                            "EC_UserRegistration.Name, EC_UserRegistration.Email, " +
                            "EC_UserRegistration.Phone, EC_UserRegistration.Address, " +
                            "EC_UserRegistration.Pincode, EC_Bill.user_id " +
                            "FROM EC_Bill " +
                            "INNER JOIN EC_UserRegistration ON EC_Bill.user_id = EC_UserRegistration.user_id " +
                            "WHERE EC_Bill.user_id = '" + Session["userid"] + "'";
            SqlDataReader dr = conobj.Fn_Reader(selectbilldetails);
            while (dr.Read())
            {
                lbldate.Text = Convert.ToDateTime(dr["date"]).ToString("dd-MM-yyyy");
                lblname.Text = dr["Name"].ToString();
                lbladdress.Text = dr["Address"].ToString();
                lblphone.Text = dr["Phone"].ToString();
                lblpincode.Text = dr["Pincode"].ToString();
                lblTotal.Text = dr["grand_total"].ToString();
            }
            billpaymentload();
        }
        public void billpaymentload()
        {
            string selecttogrid = "SELECT EC_Product.Product_Image, EC_Product.Product_Name, EC_Product.Product_Description, " +
                                  "EC_Order.quantity, EC_Order.totalPrice " +
                                  "FROM EC_Bill " +
                                  "JOIN EC_Order ON EC_Bill.user_id = EC_Order.user_id " +
                                  "JOIN EC_Product ON EC_Order.product_Id = EC_Product.Product_id " +
                                  "where EC_Bill.user_id = '" + Session["userid"] + "' and EC_Order.order_status='ordered' and EC_Bill.bill_status='pending'";

            DataSet dset = conobj.Fn_Dataset(selecttogrid);
            GridView1.DataSource = dset;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panelaccount.Visible = true;
        }

        protected void btninsertaccount_Click(object sender, EventArgs e)
        {
            string insacc = "INSERT INTO EC_Account values('" + Session["userid"] + "', '" + txtaccountname.Text + "', '" + txtaccountnumber.Text + "', '" + txtbalence.Text + "')";
            conobj.Fn_Nonquery(insacc);
            Response.Redirect(Request.RawUrl);
        }
    }
}