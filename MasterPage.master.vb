
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'submenu.Visible = False
        Time.Text = Date.Now
        If Session("UserName") <> "" Then
            'submenu.Visible = True
            up12.Visible = True
            lblLoginName.Text = Session("UserName")
            MainMenu.Visible = True
            menu.Visible = False
        Else
            MainMenu.Visible = False
            menu.Visible = True
        End If



    End Sub

End Class

