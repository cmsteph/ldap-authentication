using Novell.Directory.Ldap;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

 

namespace ldap_auth
{
    public partial class error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.error_detail_txt.Text = Session["error"].ToString();
        }
       
    }
}