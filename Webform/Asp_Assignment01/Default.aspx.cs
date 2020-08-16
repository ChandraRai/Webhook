using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Asp_Assignment01
{
    public partial class Default : System.Web.UI.Page
    {
        bool conditionMet = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MySubmitButton_Click(object sender, EventArgs e)
        {
            if (!conditionMet)
            {
                Regex forphone = new Regex(@"^[0-9]{10}$");
                Regex forpostalcode = new Regex(@"^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$");
                Regex hasNumber = new Regex(@"[0-9]+");
                Regex hasUpperChar = new Regex(@"[A-Z]+");
                Regex hasMinimum8Chars = new Regex(@".{6,}");
                Regex foreemail = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");

                int forage = 0;
                Int32.TryParse(age.Text, out forage);

                if (fname.Text == "")
                {
                    lblfname.Text = "Please Enter First Name.";
                    conditionMet = false;
                }
                else
                {
                    lblfname.Text = "";
                    conditionMet = true;
                }

                if (lname.Text == "")
                {
                    lbllastname.Text = "Please Enter Last Name.";
                    conditionMet = false;
                }
                else
                {
                    lbllastname.Text = "";
                    conditionMet = true;
                }

                if (address.Text == "")
                {
                    lbladdress.Text = "Please Enter Address.";
                    conditionMet = false;
                }
                else
                {
                    lbladdress.Text = "";
                    conditionMet = true;
                }
                if (!forphone.IsMatch(phone.Text))
                {
                    lblphone.Text = "Please enter phone number";
                    conditionMet = false;
                }
                else
                {
                    lblphone.Text = "";
                    conditionMet = true;
                }

                if (city.Text == "")
                {
                    lblcity.Text = "Please Enter city.";
                    conditionMet = false;
                }
                else
                {
                    lblcity.Text = "";
                    conditionMet = true;
                }
                if (province.Text == "")
                {
                    lblprovince.Text = "Please Enter province.";
                    conditionMet = false;
                }
                else
                {
                    lblprovince.Text = "";
                    conditionMet = true;
                }
                if (forage <= 18 || forage > 120)
                {
                    lblage.Text = "Please enter age.";
                    conditionMet = false;
                }
                else
                {
                    lblage.Text = "";
                    conditionMet = true;
                }
                if (!forpostalcode.IsMatch(postalcode.Text))
                {
                    lblpostalcode.Text = "Please Enter a valid postal code.";
                    conditionMet = false;
                }
                else
                {
                    lblpostalcode.Text = "";
                    conditionMet = true;
                }
                if (!foreemail.IsMatch(email.Text))
                {
                    lblemail.Text = "Please enter a valid email.";
                    conditionMet = false;
                }
                else
                {
                    lblemail.Text = "";
                    conditionMet = true;
                }
                if (!foreemail.IsMatch(alternativeemail.Text))
                {
                    lblaltemail.Text = "Please Enter email.";
                    conditionMet = false;
                }
                else
                {
                    lblaltemail.Text = "";
                    conditionMet = true;
                }
                if ((!hasNumber.IsMatch(password.Text)) || (!hasMinimum8Chars.IsMatch(password.Text)) || (!hasUpperChar.IsMatch(password.Text)))
                {
                    lblpassword.Text = "Please Enter password.";
                    conditionMet = false;
                }
                else if (password.Text != confirm.Text)
                {
                    lblconfirm.Text = "Password must match.";
                    lblconfirm.ForeColor = System.Drawing.Color.Red;
                    conditionMet = false;
                }
                else
                {
                    lblpassword.Text = "";
                    lblconfirm.Text = "";
                    conditionMet = true;
                }
            }
            if (lblpassword.Text == "" && lblconfirm.Text == "" &&
                 lblaltemail.Text == "" && lblaltemail.Text == "" &&
                lblemail.Text == "" && lblpostalcode.Text == "" &&
                lblpostalcode.Text == "" && lblphone.Text == "" && lblcity.Text == "" && lblfname.Text == "" && 
                 lbladdress.Text == "" && lbllastname.Text == "")
            {
                Response.Redirect("success.aspx?test=" + fname.Text + " " + lname.Text + "!");
            }
        }
        /*
        protected void TextChanged(object sender, EventArgs e)
        {
            province.Text = province.Text.ToUpper();
        }
        */
        protected void ClearForm(object sender, EventArgs e)
        {
            lblfname.Text = "";
            fname.Text = "";
            lbllastname.Text = "";
            lname.Text = "";
            lbladdress.Text = "";
            address.Text = "";
            lblphone.Text = "";
            phone.Text = "";
            lblcity.Text = "";
            city.Text = "";
            lblprovince.Text = "";
            province.Text = "";
            lblage.Text = "";
            age.Text = "";
            lblpostalcode.Text = "";
            postalcode.Text = "";
            lblemail.Text = "";
            email.Text = "";
            lblaltemail.Text = "";
            alternativeemail.Text = "";
            lblpassword.Text = "";
            password.Text = "";
            confirm.Text = "";
        }
    }
}