<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PageMethod Example</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script language="javascript" type="text/javascript">

        function GetFilms(category) {

            PageMethods.GetFilmsByCategory(category, onSuccess, onError);

            function onSuccess(result) {

                $("#filmlist").empty();

                for (var index = 0; index < result.length; index++) {
                    // Trim the excess whitespace. 
                    result[index] = result[index].replace(/^\s*/, "").replace(/\s*$/, "");

                    // Add additional code here, such as: 
                    $("#filmlist").append('<li>' + result[index] + '</li>');
                }
            }
        }

        function onError(result) {
            alert('Cannot process your request at the moment, please try later.');
        }

        function GetNo1Film() {
            PageMethods.GetNo1Film(onSuccess, onError);

            function onSuccess(result) {
                $("#TopFilm").text(result);
            }
        }

    </script>
    <style type="text/css">
        ul
        {
            list-style-type: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <h1>
        Page Method Example</h1>
    <h2>
        Films</h2>
    <div>
        <ul>
            <li>
                <input id="Button1" type="button" value="Family Films" onclick="GetFilms(1)" /></li>
            <li>
                <input id="Button2" type="button" value="Action Films" onclick="GetFilms(2)" /></li>
            <li>
                <input id="Button3" type="button" value="Girl Films" onclick="GetFilms(3)" /></li>
        </ul>
        <ol id="filmlist">
        </ol>
    </div>
    <hr />
    <h2>
        No.1 Film</h2>
         <input id="No1FilmButton" type="button" value="Get No.1 film" onclick="GetNo1Film()" />
         <asp:Label id="TopFilm" runat="server" ></asp:Label>
    </form>
</body>
</html>
