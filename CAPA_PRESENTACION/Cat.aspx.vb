Imports CAPA_LOGICA
Imports CAPA_ENTIDAD
Partial Public Class Cat
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim obj As New L_CATEGORIA
        Dim enti As New E_CATEGORIA

        enti.CodigoCate = 0

        BulletedList2.DataSource = obj.comboCat(enti)
        BulletedList2.DataBind()

    End Sub

    Protected Sub BulletedList1_Click(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.BulletedListEventArgs) Handles BulletedList1.Click
        BulletedList1.DataValueField = "COD_CAT"
        MsgBox("ccc")
    End Sub
End Class