Imports CAPA_ENTIDAD
Imports CAPA_LOGICA

Partial Public Class perfil
    Inherits System.Web.UI.Page

    Dim objEntiPerf As New E_PERFIL
    Dim objLogPerf As New L_PERFIL

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        objEntiPerf.codPerfil = 0
        GridView1.DataSource = objLogPerf.cargarPerfil(objEntiPerf)
        GridView1.DataBind()
    End Sub

    Protected Sub btnGuardar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGuardar.Click

        With objEntiPerf
            .codUser = cboUsuario.SelectedValue
            .nombre = txtNom.Text
            .apellido = txtApe.Text
            .cuidad = txtCuidad.Text
            .email = txtEmail.Text
            .fechaNacimiento = txtFecha.Text
            .session = "10/10/10"
        End With
        If (objLogPerf.addPerfil(objEntiPerf)) = True Then
            Literal1.Text = "<strong style ='color:blue'>AGREGADO</strong>"
            txtApe.Text = ""
            txtCuidad.Text = ""
            txtEmail.Text = ""
            txtFecha.Text = ""
            txtNom.Text = ""

            objEntiPerf.codPerfil = 0
            GridView1.DataSource = objLogPerf.cargarPerfil(objEntiPerf)
            GridView1.DataBind()
        Else
            Literal1.Text = "<strong style ='color:red'>HERROR</strong>"
        End If
    End Sub
End Class