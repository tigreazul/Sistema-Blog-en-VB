<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="CAPA_PRESENTACION._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="2">
                    CATEGORIA</td>
            </tr>
            <tr>
                <td>
                    NOMBRE:</td>
                <td>
                    <asp:TextBox ID="txtNomCat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSaveCat" runat="server" Text="Agregar" />
                    <br />
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    PRODUCTOS:</td>
            </tr>
            <tr>
                <td>
                    Categoria:</td>
                <td>
                            <asp:DropDownList ID="cboCat" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" 
                        DataValueField="COD_CAT">
                            </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_BLOGConnectionString %>" 
                        SelectCommand="SELECT [COD_CAT], [DESCRIPCION] FROM [T_CATEGORIA] ORDER BY [DESCRIPCION]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Nombre:</td>
                <td>
                    <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Descripcion:</td>
                <td>
                    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Precio:</td>
                <td>
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Stock:</td>
                <td>
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
