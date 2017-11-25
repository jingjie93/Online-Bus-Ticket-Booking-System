Imports System.Data.SqlClient
Imports System.Data

Partial Class ForgetPassword
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True;MultipleActiveResultSets=true")
    Dim dbcmd As New SqlCommand
    Dim dbcmd2 As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn


    Protected Sub btnNext1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnNext1.Click
        Dim usernameDB As String
        Dim question As String
        Dim answer As String
        Dim password As String
        Dim a As Integer

      
        cn.Open()
        dbcmd.Connection = cn
        dbcmd2.Connection = cn

        dbcmd.CommandText = "Select StaffName from Staff"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            usernameDB = reader("StaffName").ToString

            If usernameDB.ToLower = txtUserName.Text.ToLower Then
                dbcmd2.CommandText = "Select * from Staff where StaffName='" & txtUserName.Text & "'"
                dbcmd2.ExecuteNonQuery()

                reader = dbcmd2.ExecuteReader()
                While reader.Read()

                    question = reader("Question").ToString
                    answer = reader("Answer").ToString
                    password = reader("Password").ToString

                End While
                lblUsername.Text = txtUserName.Text
                lblQuestion.Text = question
                pnl1.Visible = False
                pnl2.Visible = True
                a = 1
                Session("answer") = answer
                Session("password") = password
               
            End If

        End While


       
        cn.Close
        If a <> 1 Then
            MsgBox("Dont Have This User", MsgBoxStyle.OkOnly, "User didn't exist")
        End If


        

        

    End Sub

    Protected Sub btnNext2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnNext2.Click

       

        If txtans.Text.ToLower = Session("answer") Then
            pnl1.Visible = False
            pnl2.Visible = False
            pnl3.Visible = True
            lblUsername2.Text = txtUserName.Text
            lblPassword.Text = Session("Password")
        Else
            MsgBox("You answer is incorrect!!!")
        End If




    End Sub

    Protected Sub btnSumit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSumit.Click
        MsgBox("Submit button will send you back to the Login page. Do you want to exit?", MsgBoxStyle.YesNo, "End View")
        Response.Redirect("Login.aspx")
    End Sub
End Class
