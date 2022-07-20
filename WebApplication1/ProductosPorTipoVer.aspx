<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosPorTipoVer.aspx.cs" Inherits="WebApplication1.ProductosPorTipoVer" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo">Productos por tipo<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DesTip], [IdUnidad], [PrePro], [DesPro], [IdProducto] FROM [ProductosDet] WHERE ([IdTipo] = @IdTipo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdTipos" Name="IdTipo" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
<br />
<div style="text-align: left">
<asp:Label ID="lblResultado" runat="server" style="text-align: left"></asp:Label>
</div>
<div class="auto-style2">
    <br />
    <strong><span class="auto-style1">Tipos de productos<br />
    </span></strong><br />
</div>
    <asp:GridView ID="grdTipos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" CellPadding="4" DataKeyNames="IdTipo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="50%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdTipo" HeaderText="Código" ReadOnly="True" SortExpression="IdTipo" />
            <asp:BoundField DataField="DesTip" HeaderText="Descripción" SortExpression="DesTip" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <div class="auto-style2">
    <br />
    <strong><span class="auto-style1">Productos<br />
    </span></strong><br />
</div>
    <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="70%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto">
            <ItemStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro">
            <ItemStyle Width="40%" />
            </asp:BoundField>
            <asp:BoundField DataField="PrePro" DataFormatString="{0:n2}" HeaderText="Precio" SortExpression="PrePro">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="IdUnidad" HeaderText="Unidad" SortExpression="IdUnidad"></asp:BoundField>
            <asp:BoundField DataField="DesTip" HeaderText="Tipo" SortExpression="DesTip">
            <ItemStyle Width="40%" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <br />
<br />
<asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
<br />
<br />
</asp:Content>
