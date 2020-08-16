<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="Asp_Assignment01.success" %>

<!DOCTYPE html>
<!-- Assignment#01 -->
<!-- Designed by: Chandra K. Rai -->
<!-- Student ID No: 300890510 -->
<!-- Submitted to: Seyed Mohammad Reza Dibaj -->
<!-- Filename: success.aspx -->

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ASP.Net Assignment_01</title>
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
                <nav class="navbar navbar-light bg-light">

                    <a class="navbar-brand">
                        <asp:Label ID="applicant" runat="server" Text=""></asp:Label>
                        You have successfully submitted your information. We will assess and get back to you soon.
                    </a>
                </nav>

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


