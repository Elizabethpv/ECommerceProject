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
    public partial class AddEditCategory : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gridcategeryview();
            }
           
        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            string imgpath = "~/Category_Images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(imgpath));

            string catins = "insert into EC_Category values('"+txtName.Text+"'," +
                              "'"+txtDescription.Text+"','"+imgpath+"','avialable')";
            conobj.Fn_Nonquery(catins);
            Response.Redirect(Request.RawUrl);
            gridcategeryview();
        }

        public void  gridcategeryview()
        {
            string sele = "select *from EC_Category";
            DataSet dset = conobj.Fn_Dataset(sele);
            GridView1.DataSource = dset;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string dl= "delete from EC_Category where Category_Id="+getid+"";
            conobj.Fn_Nonquery(dl);
            gridcategeryview();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridcategeryview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridcategeryview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string filePath = string.Empty;
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].FindControl("txtNameEdit");
            TextBox txtdescriptions = (TextBox)GridView1.Rows[i].FindControl("txtDescriptionEdit");
            FileUpload fileUpload = (FileUpload)GridView1.Rows[i].FindControl("FileUploadEdit");
            TextBox txtstatus = (TextBox)GridView1.Rows[i].FindControl("txtStatusEdit");

            if (fileUpload.HasFile)
            {
                filePath = "~/Category_Images/" + fileUpload.FileName;
                fileUpload.SaveAs(Server.MapPath(filePath));  
            }
            else
            {
                filePath = ((Image)GridView1.Rows[i].FindControl("imgPreview")).ImageUrl;
            }


            string updatecategory = "update EC_Category set Name='" + txtname.Text + "'," +
                "Description='" + txtdescriptions.Text + "',Category_Image='"+filePath+"'," +
                "Status='" + txtstatus.Text + "' where Category_Id=" + getid + "";

            conobj.Fn_Nonquery(updatecategory);
            GridView1.EditIndex = -1;
            gridcategeryview();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gridcategeryview();
        }
    }
}