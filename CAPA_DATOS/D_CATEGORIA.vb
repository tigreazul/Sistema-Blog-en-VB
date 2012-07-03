Imports CAPA_ENTIDAD
Imports System.Data.SqlClient

Public Class D_CATEGORIA
    Dim objGen As New D_CONEXION
    'Dim objEnti As New E_CATEGORIA

    Public Function comboCat(ByVal car As E_CATEGORIA)
        Dim param(0) As SqlParameter
        param(0) = New SqlParameter("@COD", SqlDbType.Int)
        param(0).Value = car.CodigoCate
        Return (objGen.returnTable("SPL_CATEGORIA", param))
    End Function

    Public Function addCategoria(ByVal cat As E_CATEGORIA) As Boolean
        Dim param(0) As SqlParameter
        param(0) = New SqlParameter("@DES", SqlDbType.VarChar, 20)
        param(0).Value = cat.Descriocion
        Return (objGen.executeComand("INS_TCATEGORIA", param))
    End Function

End Class
