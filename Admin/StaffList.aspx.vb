
Partial Class Admin_StaffList
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    Protected Sub DetailsView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        'Refresh the GridView control after a new record is updated 
        'in the DetailsView control.
        GridView1.DataBind()
    End Sub
End Class
