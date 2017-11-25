Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_BusList
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True;MultipleActiveResultSets=true")
    Dim dbcmd As New SqlCommand
    Dim dbcmd1 As New SqlCommand
    Dim dbcmd2 As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        
        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    Protected Sub DetailsView1_ItemCreated(ByVal sender As Object, ByVal e As System.EventArgs) Handles DetailsView1.ItemCreated
        BustListGridV.DataBind()
    End Sub


End Class
