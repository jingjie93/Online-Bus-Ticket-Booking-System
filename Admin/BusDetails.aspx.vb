
Partial Class Admin_BusDetails
    Inherits System.Web.UI.Page


    Protected Sub BusDetailV_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles BusDetailV.ItemUpdated
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub
End Class
