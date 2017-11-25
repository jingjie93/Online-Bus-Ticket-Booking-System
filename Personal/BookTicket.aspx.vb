
Partial Class Personal_BookTicket
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnNext.Click

    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSave.Click

    End Sub
End Class
