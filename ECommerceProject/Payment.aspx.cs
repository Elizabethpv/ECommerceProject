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
    public partial class Payment : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string selbilltotal = "select grand_total from EC_Bill where user_id='" + Session["userid"] + "'";
            SqlDataReader dr = conobj.Fn_Reader(selbilltotal);
            if(dr.Read())
            {
                lbltotal.Text = dr["grand_total"].ToString();
            }
        }

        protected void btnpayments_Click(object sender, EventArgs e)
        {
            string grand_total = lbltotal.Text;
            string userid = Session["userid"].ToString();

            ServiceReferencepay.ServiceClient obj = new ServiceReferencepay.ServiceClient();
            string msg = obj.checkbalence(txtaccno.Text, grand_total, userid);
            if(msg== "successful")
            {
                string updateorder= "update EC_Order set order_status='paid' where user_id='"+ Session["userid"] + "' and Drop_Id='"+ Session["orderdrop_id"] + "'";
                conobj.Fn_Nonquery(updateorder);

                string updateBill= "update EC_Bill set bill_status='paid' where user_id='" + Session["userid"] + "' and orderdrop_id='" + Session["orderdrop_id"] + "'";
                conobj.Fn_Nonquery(updateBill);

                string upproduct="UPDATE EC_Product SET EC_Product.Product_Stock = EC_Product.Product_Stock - EC_Order.quantity" +
                    " FROM EC_Product JOIN EC_Order ON EC_Product.Product_id = EC_Order.product_Id " +
                    " JOIN EC_Bill ON EC_Order.Drop_Id = EC_Bill.orderdrop_id " +
                    " WHERE EC_Bill.bill_status = 'paid' " +
                    " AND EC_Bill.orderdrop_id = '" + Session["orderdrop_id"] + "'" +
                    " AND EC_Order.order_status = 'paid' " +
                    " AND EC_Order.Drop_Id = '" + Session["orderdrop_id"] + "'";
                conobj.Fn_Nonquery(upproduct);
                productcheck();
                Response.Redirect("Paymentsuccess .aspx");
            }
            else 
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal({ title: '" + msg + "', text: 'Please Check Your Bank Details', icon: 'warning', buttons: ['Cancel', 'OK'], dangerMode: true })" +
                ".then((willProceed) => { if (willProceed) { window.location = 'Account.aspx'; } });", true);
                txtaccno.Text = "";
            }

        }

        public void productcheck()
        {
          string countpro=  "SELECT count(EC_Product.Product_id) FROM EC_Product " +
                " JOIN EC_Order ON EC_Product.Product_id = EC_Order.product_Id " +
                " JOIN EC_Bill ON EC_Order.Drop_Id = EC_Bill.orderdrop_id " +
                " WHERE EC_Bill.bill_status = 'paid' " +
                " AND EC_Bill.orderdrop_id = '" + Session["orderdrop_id"] + "' " +
                " AND EC_Order.order_status = 'paid' " +
                " AND EC_Order.Drop_Id = '" + Session["orderdrop_id"] + "'";
          string count= conobj.Fn_Scalar(countpro);

            int itemcount = Convert.ToInt32(count);
            int index=0;
            int[] Productid = new int[itemcount];
            int[] ProductStock = new int[itemcount];

            string selproduct = "SELECT EC_Product.Product_id, EC_Product.Product_Stock " +
                           "FROM EC_Product " +
                           "JOIN EC_Order ON EC_Product.Product_id = EC_Order.product_Id " +
                           "JOIN EC_Bill ON EC_Order.Drop_Id = EC_Bill.orderdrop_id " +
                           "WHERE EC_Bill.bill_status = 'paid' " +
                           "AND EC_Bill.orderdrop_id = '" + Session["orderdrop_id"] + "' " +
                           "AND EC_Order.order_status = 'paid' " +
                           "AND EC_Order.Drop_Id = '" + Session["orderdrop_id"] + "' ";
            SqlDataReader rd = conobj.Fn_Reader(selproduct);
            while(rd.Read())
            {
                if(index<=itemcount)
                {
                    Productid[index] = Convert.ToInt32(rd["product_Id"]);
                    ProductStock[index] = Convert.ToInt32(rd["Product_Stock"]);
                    index++;
                }
            }
            for(int i=0;i<index;i++)
            {
                if(ProductStock[i]<=0)
                {
                    string updateStatusQuery = "UPDATE EC_Product " +
                                  "SET Product_Status = 'Out of Stock' " +
                                  "WHERE Product_id='" + Productid[i] + "'";
                    conobj.Fn_Nonquery(updateStatusQuery);
                }
            }

        }
    }
}