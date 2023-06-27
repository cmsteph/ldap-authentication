using Novell.Directory.Ldap;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ldap_auth
{
    public partial class login : System.Web.UI.Page
    {
        public string userData = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public bool ValidateUser(string domainName, string username, string password)
        {
            string userDn = $"{username}@{domainName}";
            success n = new success();
            try
            {
                using (var connection = new LdapConnection { SecureSocketLayer = false })
                {
                    connection.Connect(domainName, LdapConnection.DefaultPort);
                    connection.Bind(userDn, password);
                    if (connection.Bound)
                        this.save_session("Host: " + connection.Host + "\n  PORT: "+ connection.Port + "\n  Username: " + username);
                        return true;
                }
            }
            catch (LdapException ex)
            {
                Session["error"] = "Login Failed: USER OR PASSWORD INCORRECT";
            }
            return false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string param_username = this.txt_username.Text;
            string param_password = this.txt_password.Text;
            bool isUserValid = this.ValidateUser(domainName: "redeslab.local", username: param_username, password: param_password);

            if (isUserValid)
            {
                Response.Redirect("Success.aspx");
            }
            else {
                Response.Redirect("Error.aspx");
            }
        }

        private void save_session(string conn_info) 
        {
            Session["connection"] = conn_info;
        }
    }
}