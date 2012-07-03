Imports System.Data.SqlClient
Imports CAPA_ENTIDAD

Public Class D_PERFIL
    Dim objGeneral As New D_CONEXION

    Public Function addPerfil(ByVal perf As E_PERFIL) As Boolean
        Dim param(6) As SqlParameter
        param(0) = New SqlParameter("@CODUSER", SqlDbType.Int)
        param(0).Value = perf.codUser
        param(1) = New SqlParameter("@NOM", SqlDbType.VarChar, 20)
        param(1).Value = perf.nombre
        param(2) = New SqlParameter("@APE", SqlDbType.VarChar, 30)
        param(2).Value = perf.apellido
        param(3) = New SqlParameter("@FNAC", SqlDbType.DateTime)
        param(3).Value = perf.fechaNacimiento
        param(4) = New SqlParameter("@EMAIL", SqlDbType.VarChar, 50)
        param(4).Value = perf.email
        param(5) = New SqlParameter("@CIU", SqlDbType.VarChar, 20)
        param(5).Value = perf.cuidad
        param(6) = New SqlParameter("@SESSION", SqlDbType.DateTime)
        param(6).Value = perf.session
        Return (objGeneral.executeComand("INS_TPERFIL", param))
    End Function

    Public Function cargarPerfil(ByVal perfil As E_PERFIL)
        Dim param(0) As SqlParameter
        param(0) = New SqlParameter("@COD", SqlDbType.Int)
        param(0).Value = perfil.codPerfil
        Return (objGeneral.returnTable("SPL_PERFIL", param))
    End Function
End Class
