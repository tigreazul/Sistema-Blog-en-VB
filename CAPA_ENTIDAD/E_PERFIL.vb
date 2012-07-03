Public Class E_PERFIL
    Private _codPerfil As Integer
    Private _codUser As String
    Private _nombre As String
    Private _apellido As String
    Private _fNaci As String
    Private _email As String
    Private _cuidad As String
    Private _session As String



    Public Property codPerfil() As Integer
        Get
            Return _codPerfil
        End Get
        Set(ByVal value As Integer)
            _codPerfil = value
        End Set
    End Property

    Public Property codUser() As Integer
        Get
            Return _codUser
        End Get
        Set(ByVal value As Integer)
            _codUser = value
        End Set
    End Property

    Public Property nombre() As String
        Get
            Return _nombre
        End Get
        Set(ByVal value As String)
            _nombre = value
        End Set
    End Property

    Public Property apellido() As String
        Get
            Return _apellido
        End Get
        Set(ByVal value As String)
            _apellido = value
        End Set
    End Property

    Public Property fechaNacimiento() As String
        Get
            Return _fNaci
        End Get
        Set(ByVal value As String)
            _fNaci = value
        End Set
    End Property

    Public Property email() As String
        Get
            Return _email
        End Get
        Set(ByVal value As String)
            _email = value
        End Set
    End Property

    Public Property cuidad() As String
        Get
            Return _cuidad
        End Get
        Set(ByVal value As String)
            _cuidad = value
        End Set
    End Property

    Public Property session() As String
        Get
            Return _session
        End Get
        Set(ByVal value As String)
            _session = value
        End Set
    End Property
End Class
