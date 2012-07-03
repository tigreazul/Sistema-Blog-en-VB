Imports CAPA_ENTIDAD
Imports CAPA_DATOS

Public Class L_PERFIL
    Dim objDato As New D_PERFIL

    Public Function addPerfil(ByVal perfil As E_PERFIL) As Boolean
        Return (objDato.addPerfil(perfil))
    End Function

    Public Function cargarPerfil(ByVal perfil As E_PERFIL) As DataTable
        Return (objDato.cargarPerfil(perfil))
    End Function
End Class
