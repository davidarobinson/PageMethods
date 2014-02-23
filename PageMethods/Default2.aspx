<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">

        function GetGreeting() {

            PageMethods.GetSalutation(onSucess, onError);

            function onSucess(result) {
                var ctrl = document.getElementById("Greeting");
                ctrl.value = result;
            }

            function onError(result) {
                alert('Cannot process your request at the moment, please try later.');
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <div>
        <p>
            <input type="button" onclick="GetGreeting()" value="Go" />
        </p>
        <p>
            <input type="text" id="Greeting" value="" />
        </p>
    </div>
    </form>
</body>
</html>
