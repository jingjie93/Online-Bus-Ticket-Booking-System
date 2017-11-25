Imports System.IO
Imports System.Net
Imports System.Net.Mail
Imports System.Net.Mail.MailMessage
Imports System.Net.NetworkCredential


Partial Class Feedback
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Try
            Using mm As New MailMessage("kokcheng95@gmail.com", txtEmail.Text)
                mm.Subject = ddlSubject.Text & " Feedback"
                mm.Body = txtComment.Text

                mm.IsBodyHtml = True
                Dim smtp As New SmtpClient()
                smtp.Host = "smtp.gmail.com"
                smtp.EnableSsl = True
                Dim NetworkCred As New NetworkCredential("kokcheng95@gmail.com", "guoshun950715@")
                smtp.UseDefaultCredentials = True
                smtp.Credentials = NetworkCred
                smtp.Port = 587
                smtp.Send(mm)
                ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent.');", True)
            End Using
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

        'Try
        '    Dim Smtp_Server As New SmtpClient
        '    Dim e_mail As New MailMessage()
        '    Smtp_Server.UseDefaultCredentials = False
        '    Smtp_Server.Credentials = New Net.NetworkCredential("username@gmail.com", "password")
        '    Smtp_Server.Port = 587
        '    Smtp_Server.EnableSsl = True
        '    Smtp_Server.Host = "smtp.gmail.com"

        '    e_mail = New MailMessage()
        '    e_mail.From = New MailAddress("qin.yuan95@gmail.com")
        '    e_mail.To.Add(txtEmail.Text.ToString())
        '    e_mail.Subject = "Email Sending"
        '    e_mail.IsBodyHtml = False
        '    e_mail.Body = "This is for testing SMTP mail from GMAIL"
        '    Smtp_Server.Send(e_mail)
        '    MsgBox("Mail Sent")

        'Catch error_t As Exception
        '    MsgBox(error_t.ToString)
        'End Try

        'Dim oMsg As MailMessage = New MailMessage()

        '' TODO: Replace with sender e-mail address.
        'oMsg.From = "sender@somewhere.com"
        '' TODO: Replace with recipient e-mail address.
        'oMsg.To = "recipient@somewhere.com"
        'oMsg.Subject = "Send using Web Mail"

        '' SEND IN HTML FORMAT (comment this line to send plain text).
        'oMsg.BodyFormat = MailFormat.Html

        ''HTML Body (remove HTML tags for plain text).
        'oMsg.Body = "<HTML><BODY><B>Hello World!</B></BODY></HTML>"

        '' ADD AN ATTACHMENT.
        '' TODO: Replace with path to attachment.
        'Dim sFile As String = "C:\temp\Hello.txt"
        'Dim oAttch As MailAttachment = New MailAttachment(sFile, MailEncoding.Base64)

        'oMsg.Attachments.Add(oAttch)

        '' TODO: Replace with the name of your remote SMTP server.
        'SmtpMail.SmtpServer = "MySMTPServer"
        'SmtpMail.Send(oMsg)

        'oMsg = Nothing
        'oAttch = Nothing
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
End Class
