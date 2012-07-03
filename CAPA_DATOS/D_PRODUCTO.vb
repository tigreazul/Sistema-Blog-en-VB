Imports System.Data.SqlClient
Imports CAPA_ENTIDAD

Public Class D_PRODUCTO
    Dim objGeneral As New D_CONEXION

    Public Function obtenerProducto(ByVal pr As E_PRODUCTO)
        Dim param(0) As SqlParameter
        param(0) = New SqlParameter("@codProd", SqlDbType.Int)
        param(0).Value = pr.codigo
        Return (objGeneral.returnTable("SPL_PRODUCTO", param))
    End Function

    Public Function addProduct(ByVal prod As E_PRODUCTO) As Boolean
        Dim param(4) As SqlParameter
        param(0) = New SqlParameter("@CODCAT", SqlDbType.Int)
        param(0).Value = prod.cod_categoria
        param(1) = New SqlParameter("@NOM", SqlDbType.VarChar, 20)
        param(1).Value = prod.nombre
        param(2) = New SqlParameter("@DESC", SqlDbType.VarChar, 50)
        param(2).Value = prod.descripcion
        param(3) = New SqlParameter("@PRECIO", SqlDbType.Decimal, 18.2)
        param(3).Value = prod.precio
        param(4) = New SqlParameter("@STOCK", SqlDbType.Int)
        param(4).Value = prod.stock
        Return (objGeneral.executeComand("INS_TPRODUCTO", param))
    End Function


End Class
