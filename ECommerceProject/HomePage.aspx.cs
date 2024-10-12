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
    public partial class HomePage : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        //int catid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string producsel = "select *from EC_Category";
                DataSet dset = conobj.Fn_Dataset(producsel);
                DataList1.DataSource = dset;
                DataList1.DataBind();             

            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        { 
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Imagecat_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Imagecat_Command(object sender, CommandEventArgs e)
        {          
        }

        protected void ImageButtonCategory_Command(object sender, CommandEventArgs e)
        {
            int ctegoryId = Convert.ToInt32(e.CommandArgument);
            Session["SelectedItemID"] = ctegoryId;
            Response.Redirect("ViewProduct.aspx");
        }
    }
}