using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Assignment01
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["test"]))
            {
                applicant.Text = Request.QueryString["test"];
            }
            else
            {
                applicant.Text = "NO DATA PROVIDED OR COULD NOT BE READ";
            }

        }
    }
}