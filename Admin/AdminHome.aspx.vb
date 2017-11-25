
Partial Class Admin_AdminHome
    Inherits System.Web.UI.Page
    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If


    End Sub
End Class
