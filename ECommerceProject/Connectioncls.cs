using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ECommerceProject
{
    public class Connectioncls
    {
        SqlConnection con;
        SqlCommand cmd;

        public Connectioncls()
        {
            con = new SqlConnection(@"server=DESKTOP-IT4CQOE\SQLEXPRESS;database=E-commerceASP.NETWebform;integrated security=true");
        }
        public int Fn_Nonquery(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fn_Scalar(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public DataSet Fn_Dataset(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet dset = new DataSet();
            da.Fill(dset);
            return dset;
        }
        public SqlDataReader Fn_Reader(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            return rd;
        }
    }
}