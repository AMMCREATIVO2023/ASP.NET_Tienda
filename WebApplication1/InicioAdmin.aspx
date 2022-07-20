<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="InicioAdmin.aspx.cs" Inherits="WebApplication1.InicioAdmin" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <p class="auto-style1">
        <strong>Inicio de Administrador</strong></p>
    <p>
        Esta es la página de inicio de los administradores. Bienvenido al Panel de Administración de la Aplicación Web GesTienda.</p>
</asp:Content>
