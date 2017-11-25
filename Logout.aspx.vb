
Partial Class Logout
    Inherits System.Web.UI.Page
  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Clear()
        Session.Abandon()
        Session.RemoveAll()
        FormsAuthentication.SignOut()
        FormsAuthentication.RedirectToLoginPage()
    End Sub
End Class
