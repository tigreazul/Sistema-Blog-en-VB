Imports CAPA_DATOS
Imports CAPA_ENTIDAD

Public Class L_PRODUCTO
    Dim objDatos As New D_PRODUCTO

    Public Function addProducto(ByVal pro As E_PRODUCTO) As Boolean
        Return (objDatos.addProduct(pro))
    End Function

    Public Function listaProd(ByVal pr As E_PRODUCTO) As DataTable
        Return (objDatos.obtenerProducto(pr))
    End Function


End Class
