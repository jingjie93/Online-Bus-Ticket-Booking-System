Imports System.Data.SqlClient
Imports System.Data

Partial Class Search
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True")
    Dim dbcmd As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click
        Dim TicketID As Integer
        Dim CusName As String
        Dim CusHpNo As String
        Dim Amount As Integer
        Dim StaffName As String
        Dim Status As String
        Dim TotalSeat As Integer
        Dim Departure As String
        Dim Arrival As String
        Dim SeatNum As String
        Dim date1 As String
        Dim time As String
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Select *from CusInfo where ticketID='" & txtpnr.Text & "'"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            TicketID = reader("TicketID")
            CusName = (reader.GetString(reader.GetOrdinal("CusName")))
            CusHpNo = (reader.GetString(reader.GetOrdinal("CusHpNo")))
            Amount = reader("Amount")
            StaffName = (reader.GetString(reader.GetOrdinal("StaffName")))
            Status = (reader.GetString(reader.GetOrdinal("Status")))
            TotalSeat = reader("TotalSeat")
            Departure = reader("Depart").ToString
            Arrival = reader("Arrived").ToString
            SeatNum = (reader.GetString(reader.GetOrdinal("SeatNum")))
            date1 = reader("Date").ToString
            time = reader("Time").ToString

        End While
        cn.Close()
        If txtpnr.Text <> TicketID Then
            pnl2.Visible = False
            MsgBox("Bus Ticket ID not found")
        Else
            litpnr.Text = TicketID
            litname.Text = CusName
            litfrom.Text = Departure
            litseat.Text = SeatNum
            litstates.Text = Status
            litagent.Text = StaffName
            litph.Text = CusHpNo
            litto.Text = Arrival
            litdate.Text = date1
            littime.Text = time
            littotalseat.Text = TotalSeat
            litrent.Text = Amount
            pnl2.Visible = True

        End If
       
    End Sub
End Class
