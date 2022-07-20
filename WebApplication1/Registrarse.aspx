<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="WebApplication1.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
<style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    .auto-style3 {
        font-size: large;
    }
    .auto-style4 {
        width: 55px;
    }
    .auto-style5 {
        font-family: helvetica;
        width: 34%;
        position: relative;
        float: left;
        top: 0px;
        left: 1px;
        text-align: right;
        height: 14px;
    }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div id="cabecera">
               <div id="cabecera1">
                  <br />
                  comerciodaw.com &nbsp;
               </div>
               <div id="cabecera2">
                   <br />
                   &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                   <br />
               </div>
               
            </div>

        <div class="auto-style1">

        <br />
            <strong><span class="auto-style2">
            <br />
            GesTienda<br />
            <br />
            </span><span class="auto-style3">Registro de Usuarios</span><span class="auto-style2"><br />
            </span></strong>
        <br />
        <div class="contFormuReg">
    <div id="formul">
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblCorreo" runat="server">Correo Electrónico</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtCorCli" runat="server" Width="308px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblContrasenya" runat="server">Contraseña</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtPassword1" runat="server" Width="147px"  TextMode="Password"></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="auto-style5">
    <asp:Label ID="lblRepetirCont" runat="server">Introduzca nuevamente la Contraseña</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtPassword2" runat="server" Width="146px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblNif" runat="server">NIF/NIE/CIF</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtIdCliente" runat="server" Width="206px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblNombre" runat="server">Nombre/Razón Social</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtNomCli" runat="server" Width="349px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblDireccion" runat="server">Dirección</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtDirCli" runat="server" Width="312px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblPoblacion" runat="server">Población</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtPobCli" runat="server" Width="253px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblCodPostal" runat="server">Código Postal</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtCpoCli" runat="server" Width="102px" ></asp:TextBox>
    </div>
    </div>
    <div class="lineas">
    <div class="textos">
    <asp:Label ID="lblTelf" runat="server">Telefono</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtTelCli" runat="server" Width="187px" ></asp:TextBox>
    </div>
    </div>
    </div>
    <br />
    <br />
    <div class="botones">
    <div class="auto-style4">
    <asp:Button ID="btnNuevo" runat="server" Text="Insertar"  Align="Center" margin="0 auto" style="text-align: center" OnClick="btnNuevo_Click"  />
    </div>
        </div>

    <br />
            <asp:Label ID="lblMensajes" runat="server"></asp:Label>
    <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" href="Default.aspx">Ir a Inicio</asp:LinkButton>
            </div>

     
        <br />
        </div>

     
    </form>
    <div id="pie">
                <br />
                <br />
                © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                <br />
                IES Mare Nostrum (Alicante)
            </div>
</body>
</html>
