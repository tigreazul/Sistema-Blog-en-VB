<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cat.aspx.vb" Inherits="CAPA_PRESENTACION.Cat" %>

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
                    CATEGORIA<asp:BulletedList ID="BulletedList2" runat="server">
                    </asp:BulletedList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        DataKeyNames="COD_CAT" DataSourceID="SqlDataSource1" Height="50px" 
                        Width="125px">
                        <Fields>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                                SortExpression="DESCRIPCION" />
                            <asp:BoundField DataField="COD_CAT" HeaderText="COD_CAT" InsertVisible="False" 
                                ReadOnly="True" SortExpression="COD_CAT" />
                        </Fields>
                    </asp:DetailsView>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>
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
                    <asp:BulletedList ID="BulletedList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" 
                        DataValueField="COD_CAT" NavigateUrl="~/COD_CAT">
                    </asp:BulletedList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_BLOGConnectionString %>" 
                        
                        SelectCommand="SELECT [DESCRIPCION], [COD_CAT] FROM [T_CATEGORIA] ORDER BY [DESCRIPCION]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource2" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="NOM_PROD" HeaderText="NOM_PROD" 
                                SortExpression="NOM_PROD" />
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                                SortExpression="DESCRIPCION" />
                            <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" 
                                SortExpression="PRECIO" />
                            <asp:ImageField DataImageUrlField="IMAGEN" 
                                DataImageUrlFormatString="~/images/producto/{0}" HeaderText="Imagen">
                            </asp:ImageField>
                        </Columns>
                        <EmptyDataTemplate>
                            No hay registro
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DB_BLOGConnectionString %>" 
                        SelectCommand="SELECT [NOM_PROD], [DESCRIPCION], [PRECIO], [IMAGEN] FROM [T_PRODUCTO]">
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                        RepeatColumns="3">
                        <ItemTemplate>
                            &nbsp;<asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("NOM_PROD") %>' 
                                Height="140px" ImageUrl='<%# Eval("IMAGEN", "~/images/producto/{0}") %>' 
                                Width="219px" />
                            <br />
                            <asp:Label ID="NOM_PRODLabel" runat="server" style="text-align: center" 
                                Text='<%# Eval("NOM_PROD") %>' />
                            <br />
                            <asp:Label ID="DESCRIPCIONLabel" runat="server" style="text-align: center" 
                                Text='<%# Eval("DESCRIPCION") %>' />
                            <br />
                            <asp:Label ID="PRECIOLabel" runat="server" style="text-align: center" 
                                Text='<%# Eval("PRECIO") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                        <AlternatingItemTemplate>
                            <asp:Label ID="IMAGENLabel" runat="server" Text='<%# Eval("IMAGEN") %>'></asp:Label>
                            <asp:Image ID="Image2" runat="server" Height="92px" 
                                ImageUrl='<%# Eval("IMAGEN", "~/images/producto/{0}") %>' Width="98px" />
                            <br />
                            NOM_PROD:
                            <asp:Label ID="NOM_PRODLabel" runat="server" Text='<%# Eval("NOM_PROD") %>'></asp:Label>
                            <br />
                            DESCRIPCION:
                            <asp:Label ID="DESCRIPCIONLabel" runat="server" 
                                Text='<%# Eval("DESCRIPCION") %>'></asp:Label>
                            <br />
                            PRECIO:
                            <asp:Label ID="PRECIOLabel" runat="server" Text='<%# Eval("PRECIO") %>'></asp:Label>
                        </AlternatingItemTemplate>
                        <LayoutTemplate>
                            <ul ID="itemPlaceholderContainer" runat="server" style="">
                                <li style="" >
                                  
                                    <li ID="itemPlaceholder" runat="server"></li>
                                    <br />
                                </li>
                                </ul>
                            </LayoutTemplate>


                            <EmptyDataTemplate>
                                No se han devuelto datos.
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <li style="">
                                    IMAGEN:
                                    <asp:Label ID="IMAGENLabel" runat="server" Text='<%# Eval("IMAGEN") %>' />
                                    <br />
                                    NOM_PROD:
                                    <asp:Label ID="NOM_PRODLabel" runat="server" Text='<%# Eval("NOM_PROD") %>' />
                                    <br />
                                    DESCRIPCION:
                                    <asp:Label ID="DESCRIPCIONLabel" runat="server" 
                                        Text='<%# Eval("DESCRIPCION") %>' />
                                    <br />
                                    PRECIO:
                                    <asp:Label ID="PRECIOLabel" runat="server" Text='<%# Eval("PRECIO") %>' />
                                    <br />
                                    
                                </li>
                            </ItemTemplate>
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                        </asp:ListView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
