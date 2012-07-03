Imports CAPA_DATOS
Imports CAPA_ENTIDAD

Public Class L_CATEGORIA
    Dim objCat As New D_CATEGORIA

    Public Function comboCat(ByVal cat As E_CATEGORIA) As DataTable
        Return (objCat.comboCat(cat))
    End Function

    Public Function addCat(ByVal cate As E_CATEGORIA) As Boolean
        Return (objCat.addCategoria(cate))
    End Function

End Class
