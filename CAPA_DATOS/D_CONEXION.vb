Imports System.Data.SqlClient
Imports System.Data

Public Class D_CONEXION
    Dim cn As New SqlConnection

    Public Sub New()
        cn.ConnectionString = "initial catalog = DB_BLOG; data source = . ; integrated security = yes"
        Try
            cn.Open()
        Catch ex As Exception
            ex.Message.ToString()
            cn.Close()
            cn = Nothing
        End Try
    End Sub

    Public Function returnTable(ByVal sp As String, ByVal param() As SqlParameter) As DataTable
        Dim cmd As New SqlCommand(sp)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        cmd.Connection = cn
        cmd.Parameters.AddRange(param)
        cmd.CommandType = CommandType.StoredProcedure

        Try
            da.Fill(dt)
            Return (dt)
        Catch ex As Exception
            ex.Message.ToString()
            Return Nothing
        End Try
    End Function

    'Public Function returnCombos(ByVal sp As String) As DataTable
    '    Dim cmd As New SqlCommand(sp)
    '    Dim da As New SqlDataAdapter(cmd)
    '    Dim dt As New DataTable
    '    cmd.Connection = cn
    '    cmd.CommandType = CommandType.StoredProcedure

    '    Try
    '        da.Fill(dt)
    '        Return (dt)
    '    Catch ex As Exception
    '        ex.Message.ToString()
    '        Return Nothing
    '    End Try
    'End Function

    Public Function executeComand(ByVal sp As String, ByVal param() As SqlParameter) As Boolean
        Dim cmd As New SqlCommand(sp)
        cmd.Connection = cn
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddRange(param)
        Try
            cmd.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            ex.Message.ToString()
            Return False
        End Try
    End Function
End Class
