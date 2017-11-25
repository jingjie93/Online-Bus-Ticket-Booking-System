Imports System.Data.SqlClient
Imports System.Data

Partial Class CreateStaff
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Dim staffID, name, ICNum, gender, race, password, email, phoneNum, address, sQuestion, sAnswer, admin, dbStaffID As String
    Dim age, intStaffID As Integer
    Dim staffIDNum As String = ""

    Sub Page_Load(ByVal Sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If

        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Select * from Staff"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            dbStaffID = reader("StaffID").ToString
        End While

        Dim charStaffID() As Char = dbStaffID
        For Each ch As Char In charStaffID
            If Char.IsDigit(ch) Then
                If ch <> "0" Then
                    staffIDNum = staffIDNum & ch
                End If
            End If
        Next
        cn.Close()

        intStaffID = Convert.ToInt32(Convert.ToDecimal(staffIDNum))
        intStaffID = intStaffID + 1

        txtStaffID.Text = "SS" & intStaffID.ToString("D6")
        'txtStaffID.Text = dbStaffID
    End Sub
    
    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        

        
        staffID = txtStaffID.Text
        name = txtUserName.Text
        ICNum = txtIC.Text
        gender = rblGender.SelectedValue
        race = ddlRace.SelectedValue
        password = txtPassword.Text
        email = txtEmail.Text
        phoneNum = txtPhoneNumber.Text
        address = txtAddress.Text
        sQuestion = Question.Text
        sAnswer = Answer.Text
        age = txAge.Text




        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "INSERT INTO Staff (StaffID, StaffName, ICNumber, Age, Gender, Race, Email, PhoneNum, Address, Password, Question, Answer) VALUES ('" & staffID & "','" & name & "','" & ICNum & "'," & age & ",'" & gender & "','" & race & "','" & email & "','" & phoneNum & "','" & address & "','" & password & "','" & sQuestion & "','" & sAnswer & "')"
        dbcmd.ExecuteNonQuery()
        MsgBox("INSERTED")
        cn.Close()
        Response.Redirect("~/Admin/StaffList.aspx")

    End Sub
End Class
