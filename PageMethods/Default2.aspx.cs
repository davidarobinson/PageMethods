using System;
using System.Web.Services;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string GetSalutation()
    {
        var salutation = string.Empty;
        var hour = DateTime.Now.TimeOfDay.Hours;
        if (hour >= 0 && hour <= 11)
        {
            salutation = "Good Morning!";
        }
        else if (hour >= 12 && hour <= 16)
        {
            salutation = "Good Afternoon!";
        }
        else
        {
            salutation = "Good Evening!";
        }

        return salutation;
    }
}