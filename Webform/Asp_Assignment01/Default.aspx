<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Asp_Assignment01.Default" %>

<!DOCTYPE html>
<!-- Assignment#01 -->
<!-- Designed by: Chandra K. Rai -->
<!-- Student ID No: 300890510 -->
<!-- Submitted to: Seyed Mohammad Reza Dibaj -->
<!-- Filename: Default.aspx -->

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ASP.Net Application For Slack Webhook</title>
    <title>ASP.Net Application For Discord Webhook</title>
    <!-- CSS Section -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/customApp.css" rel="stylesheet" />
</head>
<body>
    <!-- Main body Section -->
    <form id="form1" runat="server">
        <div id="allPage">
            <div id="container">
                <div class="form-group row">
                    <div class="col-md-offset-1 col-md-10">
                        <img src="images/themeforest.png" id="logoOne" />
                        <div class="fa fa-braille fa-4x" aria-hidden="true" id="logoThree"></div>
                    </div>
                    <div class="col-md-offset-4 col-md-6">
                        <h1>Member Registration</h1>
                    </div>
                    <div class="col-md-offset-4 col-md-6">
                        <img src="images/online.png" id="logoTwo" />
                    </div>
                    <div class="col-md-offset-2 col-md-8">
                        <h5>Please complete the following fields:</h5>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer01">First Name</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="fname" runat="server" class="form-control margin-top" placeholder="First Name"></asp:TextBox>
                        <asp:Label ID="lblfname" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer02">Last Name</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="lname" runat="server" class="form-control margin-top" placeholder="Last Name"></asp:TextBox>
                        <asp:Label ID="lbllastname" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer03">Address</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="address" runat="server" class="form-control margin-top" placeholder="Address"></asp:TextBox>
                        <asp:Label ID="lbladdress" runat="server" CssClass="error"></asp:Label>
                    </div>

                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer06">Phone</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="phone" runat="server" class="form-control margin-top" placeholder="(###)-###-####"></asp:TextBox>
                        <asp:Label ID="lblphone" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer04">City</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="city" runat="server" class="form-control margin-top" placeholder="City"></asp:TextBox>
                        <asp:Label ID="lblcity" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer05">Province</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="province" runat="server" class="form-control margin-top" MaxLength="2" AutoPostBack="True" style="text-transform:uppercase"></asp:TextBox>
                        <asp:Label ID="lblprovince" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer07">Age</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="age" runat="server" class="form-control margin-top" placeholder="18 - 120 only" MaxLength="3"></asp:TextBox>
                        <asp:Label ID="lblage" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer08">Postal Code</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="postalcode" runat="server" class="form-control margin-top" placeholder="eg. M2J 1M6"></asp:TextBox>
                        <asp:Label ID="lblpostalcode" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer09">Email</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="email" runat="server" class="form-control margin-top" placeholder="eg. myAccount@gmail.com"></asp:TextBox>
                        <asp:Label ID="lblemail" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer10">Alternate Email</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="alternativeemail" runat="server" class="form-control margin-top"></asp:TextBox>
                        <asp:Label ID="lblaltemail" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer11">Password</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="password" runat="server" class="form-control margin-top" type="password"></asp:TextBox>
                        <asp:Label ID="lblpassword" runat="server" CssClass="error"></asp:Label>
                    </div>
                    <div class="col-md-offset-2 col-md-2">
                        <label for="validationServer12">Confirm Password</label>
                    </div>
                    <div class="col-md-offset-1 col-md-4">
                        <asp:TextBox ID="confirm" runat="server" type="password" class="form-control margin-top"></asp:TextBox>
                        <asp:Label ID="lblconfirm" runat="server"></asp:Label>
                    </div>
                    <div id="btnAlign" class="col-md-offset-5 col-md-8">
                        <asp:Button ID="SubmitButton" runat="server" Text="Register" class="btn btn-primary margin-right" OnClick="MySubmitButton_Click" />
                        <asp:Button ID="Button1" runat="server" Text="Clear" class="btn btn-primary" OnClick="ClearForm" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Footer -->
    <div class="col-md-offset-4 col-md-7" id="copyright">
        &copy;&nbsp;Copyright Reserved.
        <img src="images/logo.gif" />
        <img src="images/setas.png" />
    </div>
    <div class="col-md-offset-3 col-md-6" id="endnote">
        <h6>Chandra K. Rai, ASP.NET - Fall 2017 Powered by: Seyed Mohammad Reza Dibaj,  School of Software Engineering and Applied Science</h6>
    </div>
    <!-- Scripts Section -->
    <script src="Scripts/jquery-2.2.4.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/custom.js"></script>
</body>
</html>

