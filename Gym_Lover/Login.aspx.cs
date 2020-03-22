using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Lover
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            Database.Connection obj = new Database.Connection();
            if (txtEmail.Text.ToString().Equals("") && txtPassword.Text.ToString().Equals(""))
            {
                rslt.InnerHtml = "must Fill the User Name and Password";
            }
            else {
                DataTable tbl = new DataTable();
                tbl=obj.SearchRecord("select * from Login where Id='"+txtEmail.Text.ToString()+"' and Password='"+txtPassword.Text.ToString()+"'");
                if (tbl.Rows.Count>0) {
                    Response.Redirect("LoginZone.aspx");
                }
                else {
                    rslt.InnerHtml = "Id and Password is Wrong ";
                }
            }
        }
    }
}