Imports CAPA_ENTIDAD
Imports CAPA_LOGICA
Partial Public Class _Default
    Inherits System.Web.UI.Page

    Dim objCat As New L_CATEGORIA
    Dim entCat As New E_CATEGORIA

    Dim objEnt As New L_PRODUCTO
    Dim entProd As New E_PRODUCTO
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'entCat.CodigoCate = 0
        'cboCat.DataSource = objCat.comboCat(entCat)
        'cboCat.DataTextField = "DESCRIPCION"
        'cboCat.DataValueField = "COD_CAT"
        'cboCat.DataBind()

        entProd.codigo = 0
        GridView1.DataSource = objEnt.listaProd(entProd)
        GridView1.DataBind()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGuardar.Click
        With entProd
            .cod_categoria = cboCat.SelectedValue
            .descripcion = txtDesc.Text
            .nombre = txtNom.Text
            .precio = txtPrecio.Text
            .stock = txtStock.Text
        End With

        If (objEnt.addProducto(entProd)) = True Then
            Literal1.Text = "<div style='color:blue'>Guardado </div>"

            txtDesc.Text = ""
            txtNom.Text = ""
            txtPrecio.Text = ""
            txtStock.Text = ""

            entProd.codigo = 0
            GridView1.DataSource = objEnt.listaProd(entProd)
            GridView1.DataBind()

        Else
            Literal1.Text = "<div style='color:red'>ERROR</div>"
        End If
    End Sub

    Protected Sub btnSaveCat_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSaveCat.Click
        With entCat
            .Descriocion = txtNomCat.Text
        End With
        If (objCat.addCat(entCat)) = True Then
            Literal2.Text = "<div style='color:blue'>Guardado Categoria</div>"
            txtNomCat.Text = ""
        Else
            Literal2.Text = "<div style='color:red'>HERROR</div>"
        End If
    End Sub
End Class