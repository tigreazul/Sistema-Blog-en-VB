
Public Class E_CATEGORIA
    Private _codCat As Integer
    Private _descripcion As String



    Public Property CodigoCate() As Integer
        Get
            Return _codCat
        End Get
        Set(ByVal value As Integer)
            _codCat = value
        End Set
    End Property



    Public Property Descriocion() As String
        Get
            Return _descripcion
        End Get
        Set(ByVal value As String)
            _descripcion = value
        End Set
    End Property


End Class