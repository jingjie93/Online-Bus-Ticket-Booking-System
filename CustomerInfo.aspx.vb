Imports System.Data.SqlClient
Imports System.Data

Partial Class CustomerInfo
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
        Dim price1 As Double

        From.Text = Session("From")
        [To].Text = Session("To")
        Depart.Text = Session("Depart")
        Time.Text = Session("Time")
        totalSeat.Text = Session("Count")
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "SELECT Price FROM Timelist where (Departure = '" & Session("From") & "') and (Arrival = '" & Session("To") & "') and (Time = '" & Session("Time") & "')"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()
        While reader.Read()
            price1 = reader("Price")
        End While
        cn.Close()
        price.Text = price1.ToString
        totalPrice.Text = price1 * Session("Count")
        seatNum.Text = "[ " & Session("seatNumber") & "]"

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim name As String = txtName.Text
        Dim phone = txtPhone.Text
        Dim depart = Session("From")
        Dim arrived = Session("To")
        Dim totalseat1 = Session("Count")
        Dim seatnum1 = Session("seatNumber")
        Dim amount = totalPrice.Text
        Dim staffname = "Cindy"
        Dim status = "Book"
        Dim dateDepart = Session("Depart")
        Dim timeDepart = Session("Time")

        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "INSERT INTO Cusinfo (CusName,CusHpNo,Depart,Arrived,TotalSeat,SeatNum,Amount,StaffName,Status,Date,Time) VALUES ('" & name & "','" & phone & "','" & depart & "','" & arrived & "','" & totalseat1 & "','" & seatnum1 & "','" & amount & "','" & staffname & "','" & status & "','" & dateDepart & "','" & timeDepart & "')"
        dbcmd.ExecuteNonQuery()
        MsgBox("INSERTED")
        cn.Close()
        Response.Redirect("Ticket.aspx")
       
    End Sub


End Class
