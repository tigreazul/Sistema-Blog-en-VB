
Public Class E_PRODUCTO
    Private _cod As Integer
    Private _codCat As Integer
    Private _nom As String
    Private _desc As String
    Private _precio As Double
    Private _stock As Integer

#Region "PROPIEDADES"

    Public Property codigo() As Integer
        Get
            Return _cod
        End Get
        Set(ByVal value As Integer)
            _cod = value
        End Set
    End Property

    Public Property cod_categoria() As Integer
        Get
            Return _codCat
        End Get
        Set(ByVal value As Integer)
            _codCat = value
        End Set
    End Property

    Public Property nombre() As String
        Get
            Return _nom
        End Get
        Set(ByVal value As String)
            _nom = value
        End Set
    End Property

    Public Property descripcion() As String
        Get
            Return _desc
        End Get
        Set(ByVal value As String)
            _desc = value
        End Set
    End Property

    Public Property precio() As Double
        Get
            Return _precio
        End Get
        Set(ByVal value As Double)
            _precio = value
        End Set
    End Property

    Public Property stock() As Integer
        Get
            Return _stock
        End Get
        Set(ByVal value As Integer)
            _stock = value
        End Set
    End Property

#End Region

End Class
