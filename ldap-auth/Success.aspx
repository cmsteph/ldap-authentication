<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="ldap_auth.success" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                        <div class="pr-lg-5">
                            <img src="Helper/img/login.svg" alt="" class="img-fluid" />
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">login successful</h1>
                        <div class="text-primary">
                            <asp:Label ID="user_data_txt" runat="server"></asp:Label>
                        </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
