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
    public partial class SelectProduct : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {       
            if (!IsPostBack)
            {
                int productId = Convert.ToInt32(Session["Productid"]);
                string status = "",quantity="";
                string selproduct= "select *from EC_Product where Product_id="+ productId + "";
                SqlDataReader rd = conobj.Fn_Reader(selproduct);
                while(rd.Read())
                {
                    LblProductName.Text = rd["Product_Name"].ToString();
                    lbDescription.Text= rd["Product_Description"].ToString();
                    lblPrice.Text = rd["Product_Price"].ToString();
                    Image1.ImageUrl = rd["Product_Image"].ToString();
                    status = rd["Product_Status"].ToString();
                    quantity = rd["Product_Stock"].ToString();
                }
                Session["qty"] = quantity;
                if (Convert.ToInt32(quantity)==0)
                {
                    lblstatusmsg.Visible = true;
                    lblstatusmsg.Text = "out of stock";
                    lblstatusmsg.ForeColor = System.Drawing.Color.Red;
                    btnAddCart.Visible = false;
                }
                if (Convert.ToInt32(quantity) < 5)
                {
                    lblquantity.Visible = true;
                    lblquantity.Text = quantity + " items are left";
                }
            }
           
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            string selcartid = "select max(cart_id)from EC_Cart";
            string cart_id = conobj.Fn_Scalar(selcartid);
            int newcartid = 0;
            if (cart_id == "")
            {
                newcartid = 1;
            }
            else
            {
                int saveid = Convert.ToInt32(cart_id);
                newcartid = saveid + 1;                  
            }
            if (Convert.ToInt32(Session["qty"]) < Convert.ToInt32(txtQuantity.Text))
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                 "swal({ title: 'stock', text: '"+ Session["qty"] + "stocks are left', icon: 'warning', button: 'OK' });", true);
                txtQuantity.Text = Session["qty"].ToString();
            }
            else
            {
                int totalprice = Convert.ToInt32(lblPrice.Text) * Convert.ToInt32(txtQuantity.Text);

                string inscart = "insert into EC_Cart values(" + newcartid + ",'" + Session["Productid"] + "'," +
                    "'" + Session["userid"] + "'," + txtQuantity.Text + "," + totalprice + ")";
                conobj.Fn_Nonquery(inscart);
            }
           
            //Call cart count from site1
            Site1 masterPage = (Site1)Page.Master;
            if (masterPage != null)
            {
                masterPage.Fn_cartcount();
            }
        }

        protected void btnqtyminus_Click(object sender, EventArgs e)
        {
            int minustext = Convert.ToInt32(txtQuantity.Text);

            if (minustext <= 1)
            {
                txtQuantity.Text = "1";
            }
            else
            {
                minustext -= 1;
                txtQuantity.Text = minustext.ToString();
            }

        }

        protected void btnqtyplus_Click(object sender, EventArgs e)
        {
            int plustext = Convert.ToInt32(txtQuantity.Text);
            if (plustext < 10)
            {
                plustext += 1;
            }
            else
            {
                plustext = 1;
            }
            txtQuantity.Text = plustext.ToString();
            
        }
    }
}