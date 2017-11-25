Imports System.Data.SqlClient
Imports System.Data

Partial Class Ticket
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserName") = "" Then
            FormsAuthentication.RedirectToLoginPage()
        End If

        litArrival.Text = Session("To")
        litDeparture.Text = Session("From")
        Dim TicketID As Integer
        Dim CusName As String
        Dim CusHpNo As String
        Dim Amount As Integer
        Dim StaffName As String
        Dim Status As String
      
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Select *from CusInfo where SeatNum='" & Session("seatNumber") & "' and Date='" & Session("Depart") & "' and Time='" & Session("Time") & "' and Depart='" & Session("From") & "' and Arrived='" & Session("To") & "'"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            TicketID = reader("TicketID")
            CusName = (reader.GetString(reader.GetOrdinal("CusName")))
            CusHpNo = (reader.GetString(reader.GetOrdinal("CusHpNo")))
            Amount = reader("Amount")
            StaffName = (reader.GetString(reader.GetOrdinal("StaffName")))
            Status = (reader.GetString(reader.GetOrdinal("Status")))
           
        End While

        litNum.Text = TicketID
        'litAname.Text = StaffName
        litName.Text = CusName
        litph1.Text = CusHpNo
        litDeparture.Text = Session("From")
        litArrival.Text = Session("To")
        litdate1.Text = Session("Depart")
        littime1.Text = Session("Time")
        litseat1.Text = Session("seatNumber")
        litNPasse.Text = Session("Count")
        litPrice.Text = Amount











    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
      
        MsgBox("Printed! Thank you.")
        Response.Redirect("Home.aspx")

    End Sub
End Class
