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
    public partial class Account : System.Web.UI.Page
    {
        Connectioncls conobj = new Connectioncls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string drpvalue = drpType.SelectedItem.Text;
            string insacc = "INSERT INTO EC_Account values('" + Session["userid"] + "', '" + drpvalue + "', '" + txtNumber.Text + "', '" + txtamount.Text + "')";
            conobj.Fn_Nonquery(insacc);
        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            grid_Bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del= "delete from EC_Account where acc_no="+getid+"";
            conobj.Fn_Nonquery(del);
            grid_Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_Bind();
        }
        public void grid_Bind()
        {           
            string sel = "select *from EC_Account where acc_no='" + txtNumberCheck.Text + "'";
            DataSet dset = conobj.Fn_Dataset(sel);
            if (dset.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = dset;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No account available.')</script>");
            }
               
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtbalence = (TextBox)GridView1.Rows[i].FindControl("txtbalanceamount");
            string updatetab = "update EC_Account set acc_balance='" + txtbalence.Text + "' where acc_no=" + getid + "";
            conobj.Fn_Nonquery(updatetab);
            GridView1.EditIndex = -1;
            grid_Bind();
        }
    }
}