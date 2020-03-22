using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Lover
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Database.Connection obj = new Database.Connection();
            if(txtEmail.Text.ToString().Equals("") && txtMsg.Text.ToString().Equals("") && txtName.Text.ToString().Equals(""))
            {
                rslt.InnerHtml = "Fill all details ";
            }
            else {

                obj.cmdquery("insert into contact (name,Email,Msg) values ('"+txtName.Text.ToString()+"','"+txtEmail.Text.ToString()+"','"+txtMsg.Text.ToString()+"')");
                rslt.InnerHtml = "Thanks for  the query ";
                txtEmail.Text = "";
                txtMsg.Text = "";
                txtName.Text = "";
            }
        }
    }
}