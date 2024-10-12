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
    public partial class ViewProduct : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int categoryId = Convert.ToInt32(Session["SelectedItemID"]);
                string producsel = "select *from EC_Product where Catgory_id=" +categoryId+ "";
                DataSet dset = conobj.Fn_Dataset(producsel);
                DataList1.DataSource = dset;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["Productid"] = getid;
            Response.Redirect("SelectProduct.aspx");
        }
    }
}