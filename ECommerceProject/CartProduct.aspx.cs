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
    public partial class CartProduct : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cartloading();
            }

            fn_panelloadtotal();

            //count of items--> total price box (cart)
            int cartscount = Convert.ToInt32(Session["cartcount"]);
            lbltotal.Text = cartscount.ToString();

            Fn_carttotalprice();

        }
        public void cartloading()
        {
            string sel = "select EC_Product.Product_Image,EC_Product.Product_Name,EC_Product.Product_Description,EC_Cart.quantity,EC_Cart.totalPrice,EC_Cart.cart_id from EC_Cart join EC_Product on  EC_Cart.product_Id=EC_Product.Product_id " +
                   "join EC_UserRegistration on EC_Cart.user_id = EC_UserRegistration.user_id where EC_UserRegistration.Name='" + Session["userName"] + "'";
            DataSet dset = conobj.Fn_Dataset(sel);
            GridView1.DataSource = dset;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string delcart = "delete from EC_Cart where cart_id=" + getid + "";
            conobj.Fn_Nonquery(delcart);
            cartloading();

            //Call cart count from site1
            Site1 masterPage = (Site1)Page.Master;
            if (masterPage != null)
            {
                masterPage.Fn_cartcount();

            }
            Fn_carttotalprice();
        }

        protected void btncartminus_Click(object sender, EventArgs e)
        {
            //Button btn = (Button)sender;
            //GridViewRow row = (GridViewRow)btn.NamingContainer;
            //TextBox txtQuantity = (TextBox)row.FindControl("txtqty");

            //int minustext = Convert.ToInt32(txtQuantity.Text);
            //if (minustext <= 1)
            //{
            //    txtQuantity.Text = "1";
            //}
            //else
            //{
            //    minustext -= 1;
            //    txtQuantity.Text = minustext.ToString();
            //}

        }

        protected void btncartPlus_Click(object sender, EventArgs e)
        {
            //Button btn = (Button)sender;
            //GridViewRow row = (GridViewRow)btn.NamingContainer;
            //TextBox txtQuantity = (TextBox)row.FindControl("txtqty");
            ////int plustext = Convert.ToInt32(txtQuantity.Text);
            //plustext += 1;
            //txtQuantity.Text = plustext.ToString();


        }

        //totalprice quert (cart)
        public void Fn_carttotalprice()
        {
            string selprice = "select sum(totalPrice)from EC_Cart where user_id='" + Session["userid"] + "'";
            string griditemtotal = conobj.Fn_Scalar(selprice);
            lblPrice.Text = griditemtotal;
            tblTotal.Text = griditemtotal;
        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
           
            int index = 0, grandtotal = 0;
            string seldrop = "select max(Drop_Id)from EC_Order";
            string drp_id = conobj.Fn_Scalar(seldrop);
            int drpid;
            if(drp_id=="")
            {
                drpid = 500;
            }
            else
            {
                int newid = Convert.ToInt32(drp_id);
                drpid = newid + 1;
            }
            Session["orderdrop_id"] = drpid;
            string currenttime= DateTime.Now.ToString("M-d-yyyy");
            int cartscount = Convert.ToInt32(Session["cartcount"]);
            int[] productid = new int[cartscount];
            int[] userid = new int[cartscount];
            int[] productquantity = new int[cartscount];
            int[] producttotalPrice = new int[cartscount];
          
            string selectcart = "select * from EC_Cart where user_id='" + Session["userid"] + "'";        
            SqlDataReader dr = conobj.Fn_Reader(selectcart);
            
            while (dr.Read())
            {
                if (index < cartscount)
                {
                    productid[index] = Convert.ToInt32(dr["product_Id"]);
                    userid[index] = Convert.ToInt32(dr["user_id"]);
                    productquantity[index] = Convert.ToInt32(dr["quantity"]);
                    producttotalPrice[index] = Convert.ToInt32(dr["totalPrice"]);
                    index++;
                }
            }
            
            for (int i = 0; i < index; i++)
            {
                grandtotal += producttotalPrice[i];
            }
            for (int i = 0; i < index; i++) 
            {
                string inserttoorder = "insert into EC_Order values(" + productid[i] + "," + userid[i] + "," +
                    "" + productquantity[i] + "," + producttotalPrice[i] + ",'ordered',"+drpid+")";
                int insdone=conobj.Fn_Nonquery(inserttoorder);

                if (insdone==1)
                {
                    string delcartitem= "delete from EC_Cart where user_id='"+Session["userid"] +"'";
                    conobj.Fn_Nonquery(delcartitem);
                    cartloading();
                    fn_panelloadtotal();

                    //Call cart count from site1
                    Site1 masterPage = (Site1)Page.Master;
                    if (masterPage != null)
                    {
                        masterPage.Fn_cartcount();

                    }
                }               
            }
            string inserttoBill = "insert into EC_Bill values('" + Session["userid"] + "'," +
                   "" + grandtotal + ",'" + currenttime + "','pending'," + drpid + ")";
            conobj.Fn_Nonquery(inserttoBill);

            Response.Redirect("Billview.aspx");
        }

        public void fn_panelloadtotal()
        {
            //grid present --> show total price
            if (GridView1.Rows.Count > 0)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
        }

    
        protected void txtQyantitychange_TextChanged1(object sender, EventArgs e)
        {
            TextBox txtBox = (TextBox)sender;
            string selectedValue = txtBox.Text;

            GridViewRow row = (GridViewRow)txtBox.NamingContainer;
            int rowIndex = row.RowIndex;
            int cart_Id = Convert.ToInt32(GridView1.DataKeys[rowIndex].Value);

            string sel = "select EC_Product.Product_Price from EC_Product join  EC_Cart on EC_Cart.product_Id=EC_Product.Product_id where EC_Cart.cart_id='" + cart_Id + "' ";
            string price = conobj.Fn_Scalar(sel);

            int drpqtyvalue = Convert.ToInt32(selectedValue);
            int oldprice = Convert.ToInt32(price);
            int totalprice = drpqtyvalue * oldprice;


            string up = "update EC_Cart set quantity=" + drpqtyvalue + ",totalPrice=" + totalprice + " where cart_id=" + cart_Id + "";
            conobj.Fn_Nonquery(up);

            cartloading();
            Fn_carttotalprice();
        }
    }
}