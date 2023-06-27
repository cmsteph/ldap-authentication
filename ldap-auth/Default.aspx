<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ldap_auth.login" %>

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
                            <img src="Helper/img/illustration.svg" alt="" class="img-fluid" />
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Log in Here</h1>
                        <h2 class="mb-4">Welcome Back!</h2>
                        <div class="form-group mb-4">
                            <asp:TextBox ID="txt_username" required="true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="User Name" runat="server"></asp:TextBox>

                        <div class="form-group mb-4">
                            <asp:TextBox ID="txt_password" required="true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group mb-4">
                            <asp:Button ID="btn_submit" Text="Submit" runat="server" OnClick="btn_submit_Click" CssClass="form-control border-0 shadow form-control-lg btn btn-info" />
                        </div>

                        <div class="form-group mb-4">
                            <asp:Label ID="lbl_result_text" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100 " style="text-align: end; margin-top: 390px">
                    <div class="container-fluid"> 
                        <div class="row">
                            <div class="col-md-6 text-center text-md-left text-primary">
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
