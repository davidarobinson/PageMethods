using System;
using System.Collections.Generic;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    private static List<string> actionList = new List<string>() { "The Matrix", "Iron Man", "X Men" };
    private static List<string> girlList = new List<string>() { "What to expect when you are expecting", "Accidental Husband", "Iron Man" };
    private static List<string> familyList = new List<string>() { "Shrek", "The Incredibles", "Cinderella" };

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static List<string> GetFilmsByCategory(int category)
    {
        switch (category)
        {
            case 1:
                return familyList;
            case 2:
                return actionList;
            case 3:
                return girlList;
            default:
                return new List<string>();
        }
    }

    [WebMethod]
    public static string GetNo1Film()
    {
        var d = new _Default();
        return d.GetTopFilm();
    }

    private string GetTopFilm()
    {
        return actionList[actionList.Count -1];
    }
}