<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="WebApplication1.ControlError" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="Estilos/HojaEstilo.css"/>
    </head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;</h1>
            <h1>Aplicación Web Ges Tienda</h1>
            <h3>Error en tiempo de ejecución</h3>

            <div id="contenedor">
            <div id="errorCont">
                    <br />
                    <br />
                    Error ASP.NET<br />
                    <br />
                    <asp:Label ID="lblErrorASP" runat="server" style="text-align: left; color: #FF3300;"></asp:Label>
                    <br />
                    <br />
                    Error ADO.NET<br />
                    <br />
                    <asp:Label ID="lblErrorADO" runat="server" style="text-align: left; color: #FF3300;"></asp:Label>
                    <br />
                    <br />
                    <br />
                </div>
                </div>
        </div>
    </form>
</body>
</html>
