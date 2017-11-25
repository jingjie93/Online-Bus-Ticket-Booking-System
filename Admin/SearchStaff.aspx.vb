Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_SearchStaff
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        Dim staffID, name, ICNum, gender, race, password, email, phoneNum, address, sQuestion, sAnswer As String
        Dim age As Integer

        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Select * from Staff where StaffName='" & txtname.Text & "'"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            staffID = reader("StaffID").ToString
            name = reader("StaffName").ToString
            phoneNum = reader("PhoneNum").ToString
            ICNum = reader("ICNumber").ToString
            gender = reader("Gender").ToString
            race = reader("Race").ToString
            email = reader("Email")
            address = reader("Address").ToString
            age = reader("Age").ToString


        End While

        lblStaffId.Text = staffID
        lblName.Text = name
        lblICNumber.Text = ICNum
        lblGender.Text = gender
        lblRace.Text = race
        lblEmail.Text = email
        lblPhNum.Text = phoneNum
        lblAddress.Text = address
        lblAge.Text = age
 
        If (staffID = "") Then
            lblerror.Visible = True
            lblerror.Text = "No data found..."
            pnl1.Visible = False
        Else
            lblerror.Visible = False
            pnl1.Visible = True
        End If

        cn.Close()
    End Sub
End Class
