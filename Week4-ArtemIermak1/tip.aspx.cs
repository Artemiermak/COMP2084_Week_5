using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week4_ArtemIermak1
{
    public partial class tip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                // get the amount from the text box
                // sace in variable of double (which holds decimals)
                // first we have to convert the value from a string to a double

                Double amount = Convert.ToDouble(txtAmount.Text);

                // get tip percent
                Double tipPercent = Convert.ToDouble(ddlPercent.SelectedValue);

                // calculate tip and total
                Double tipAmount = amount * tipPercent;
                Double total = amount + tipAmount;

                // display the results. "c" = add dollar sign $
                ddlTip.Text = "Tip Amount: " + tipAmount.ToString("c");
                lblTotal.Text = "Total Amount: " + total.ToString("c");
            }
            catch (Exception err)
            {
                Response.Redirect("/error.aspx");
            }
        }
    }
}