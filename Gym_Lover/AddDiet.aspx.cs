using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Lover
{
    public partial class AddDiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Database.Connection obj = new Database.Connection();
            if (txtName.Text.ToString().Equals("") && txtDetails.Text.ToString().Equals(""))
            {
                rslt.InnerHtml = "Fill all the Information ";
            }
            else {
                obj.cmdquery("insert into diet (Name,Description) values ('"+txtName.Text.ToString()+"','"+txtDetails.Text.ToString()+"')");
                rslt.InnerHtml = "Record Saved";
                txtDetails.Text = "";
                txtName.Text = "";
            }
        }
    }
}