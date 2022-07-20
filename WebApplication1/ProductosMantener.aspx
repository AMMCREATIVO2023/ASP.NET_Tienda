<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="WebApplication1.ProductosMantener" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .boton {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo">Mantenimiento productos</div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <div class="gridW">
    <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="94%" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" DataFormatString="{0:n2}" HeaderText="Precio" SortExpression="PrePro">
            <ItemStyle HorizontalAlign="Right" />
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
    </div>
    <div class="contFormu">
    <div id="formul">
    <div class="linea">
    <div class="textos">
    <asp:Label ID="lblIdProducto" runat="server">Id. Producto</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtIdProducto" runat="server" Width="175px" Enabled="False"></asp:TextBox>
    </div>
    </div>
    <div class="linea">
    <div class="textos">
    <asp:Label ID="lblDesPro" runat="server">Descripción</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtDesPro" runat="server" Width="246px" Enabled="False"></asp:TextBox>
    </div>
    </div>
    <div class="linea">
    <div class="textos">
    <asp:Label ID="lblPrePro" runat="server">Precio</asp:Label>
    </div>
    <div class="controles">
    <asp:TextBox ID="txtPrePro" runat="server" Width="175px" Enabled="False"></asp:TextBox>
    </div>
    </div>
    <div class="linea">
    <div class="textos">
    <asp:Label ID="lblIdUnidad" runat="server">Unidad</asp:Label>
    </div>
    <div class="controles">
    <asp:DropDownList ID="ddlIdUnidad" runat="server" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad" Enabled="False" Height="16px" Width="134px">                 
    </asp:DropDownList>
    </div>
    </div>
    <div class="linea">
    <div class="textos">
    <asp:Label ID="lblIdTipo" runat="server">Tipo Producto</asp:Label>
    </div>
    <div class="controles">
    <asp:DropDownList ID="ddlIdTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo" Enabled="False" Height="18px" Width="217px">
    </asp:DropDownList>
    </div>
    </div>
    </div>
    <br />
    <br />
    <div class="botones">
    <div class="boton">
    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo"  Align="Center" style="text-align: center" OnClick="btnNuevo_Click"  />
    </div>
    <div class="boton">
    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" OnClick="btnEditar_Click" />
    </div>
    <div class="boton">
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" OnClick="btnEliminar_Click" />
    </div>
    <div class="boton">
    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="False" OnClick="btnInsertar_Click" />
    </div>
    <div class="boton">
    <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" OnClick="btnModificar_Click" />
    </div>
    <div class="boton">
    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="False" OnClick="btnBorrar_Click" />
    </div>
    <div class="boton">
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Visible="False" OnClick="btnCancelar_Click" />
    </div>
    </div>
    </div>
    <br />
    <br />
    <div>

    <div style="clear: both"></div>
<asp:Label ID="lblResultado" runat="server"></asp:Label>
</div>
<br />
<asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
<br />
<br />
</asp:Content>
