Imports System.Data.SqlClient
Imports System.Data

Partial Class Personal_ChangePass
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Protected Sub btnChangePass_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChangePass.Click
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "UPDATE Staff SET Password='" & NewPassword.Text & "' WHERE StaffName = '" & Session("UserName") & "'"
        dbcmd.ExecuteNonQuery()
        MsgBox("Password Changed")
        cn.Close()
        Session.Clear()
        Session.Abandon()
        Session.RemoveAll()
        FormsAuthentication.SignOut()
        FormsAuthentication.RedirectToLoginPage()
        'Response.Redirect("~/Login.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
