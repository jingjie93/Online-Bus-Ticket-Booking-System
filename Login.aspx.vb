Imports System.Data.SqlClient
Imports System.Data

Partial Class Login
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn


    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        


    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        Dim userName, password As String
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Select * from Staff"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            userName = reader("StaffName")
            password = reader("Password")

            If txtUserName.Text.ToLower = userName.ToLower And txtPassword.Text = password Then
                Session("UserName") = txtUserName.Text
                cn.Close()
                Response.Redirect("Home.aspx")
            End If

        End While

        MsgBox("Invalid Username or Password", MsgBoxStyle.OkOnly, "Login Fail")
        cn.Close()
    End Sub

End Class
