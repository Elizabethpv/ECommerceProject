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
    public partial class AddEditProduct : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string selcategory = "select Category_Id,Name from EC_Category";
                DataSet dset = conobj.Fn_Dataset(selcategory);
                drpCategory.DataSource = dset;
                drpCategory.DataTextField = "Name";
                drpCategory.DataValueField = "Category_Id";
               drpCategory.DataBind();

                gridloadProduct();                       
            }
        }

        protected void BtnProduct_Click(object sender, EventArgs e)
        {
            string imgpath = "~/ImageProduct/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(imgpath));

            string catid = drpCategory.SelectedItem.Value;

            string proins = "insert into EC_Product values('" + catid+"','" + txtName.Text + "'," +
                              "'" + txtDescription.Text + "','"+txtPrice.Text+"','" + imgpath + "'," +
                              "'"+txtStock.Text+"','avialable')";
            conobj.Fn_Nonquery(proins);
            Response.Redirect(Request.RawUrl);
        }
        public void gridloadProduct()
        {
            string sele = "select *from EC_Product";
            DataSet dset = conobj.Fn_Dataset(sele);
            GridView1.DataSource = dset;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del= "delete from EC_Product where Product_id="+getid+"";
                conobj.Fn_Nonquery(del);
            gridloadProduct();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridloadProduct();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridloadProduct();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string filePath = string.Empty;
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].FindControl("txtNameEdit");
            TextBox txtdescriptions = (TextBox)GridView1.Rows[i].FindControl("txtDescriptionEdit");
            TextBox txtprice = (TextBox)GridView1.Rows[i].FindControl("txtProductPrice");
            TextBox txtstock = (TextBox)GridView1.Rows[i].FindControl("txtStockEdit");
            TextBox txtstatus = (TextBox)GridView1.Rows[i].FindControl("txtStatusEdit");
            FileUpload fileUploads = (FileUpload)GridView1.Rows[i].FindControl("FileUploadedits");
           
            if (fileUploads.HasFile)
            {
                filePath = "~/ImageProduct/" + fileUploads.FileName;
                fileUploads.SaveAs(MapPath(filePath));
            }
            else
            {
                filePath = ((Image)GridView1.Rows[i].FindControl("imgPreview")).ImageUrl;
            }

            string up = "update EC_Product set Product_Name='" + txtname.Text + "'," +
                " Product_Description='" + txtdescriptions.Text + "', Product_Price=" + txtprice.Text + "," +
                " Product_Image='" + filePath + "', Product_Stock=" + txtstock.Text + ", Product_Status='" + txtstatus.Text + "'" +
                "where Product_id=" + getid + "";
            conobj.Fn_Nonquery(up);
            GridView1.EditIndex = -1;
            gridloadProduct();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gridloadProduct();
        }
    }
}