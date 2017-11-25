Imports System.Data
Imports System.Data.SqlClient
Partial Class Status
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=test;Integrated Security=True;MultipleActiveResultSets=true")
    Dim dbcmd As New SqlCommand
    Dim dbcmd1 As New SqlCommand
    Dim dbcmd2 As New SqlCommand
    Dim schemaTable As DataTable
    Dim reader As SqlDataReader
    Dim myField As DataRow
    Dim myProperty As DataColumn

    Protected Sub s1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s1.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s1.ImageUrl = selected Then
            s1.ImageUrl = available
        Else
            s1.ImageUrl = selected
        End If


    End Sub

    Protected Sub s6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s6.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s6.ImageUrl = selected Then
            s6.ImageUrl = available
        Else
            s6.ImageUrl = selected
        End If


    End Sub
    Protected Sub s7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s7.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s7.ImageUrl = selected Then
            s7.ImageUrl = available
        Else
            s7.ImageUrl = selected
        End If


    End Sub

    Protected Sub s2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s2.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s2.ImageUrl = selected Then
            s2.ImageUrl = available
        Else
            s2.ImageUrl = selected
        End If


    End Sub
    Protected Sub s5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s5.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s5.ImageUrl = selected Then
            s5.ImageUrl = available
        Else
            s5.ImageUrl = selected
        End If


    End Sub

    Protected Sub s8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s8.Click


        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s8.ImageUrl = selected Then
            s8.ImageUrl = available
        Else
            s8.ImageUrl = selected
        End If


    End Sub
  
    Protected Sub s3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s3.Click


        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s3.ImageUrl = selected Then
            s3.ImageUrl = available
        Else
            s3.ImageUrl = selected
        End If


    End Sub
    Protected Sub s4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s4.Click

        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s4.ImageUrl = selected Then
            s4.ImageUrl = available
        Else
            s4.ImageUrl = selected
        End If


    End Sub
    Protected Sub s9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s9.Click


        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s9.ImageUrl = selected Then
            s9.ImageUrl = available
        Else
            s9.ImageUrl = selected
        End If


    End Sub
    Protected Sub s10_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles s10.Click


        Dim available = "~/images/available_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"


        If s10.ImageUrl = selected Then
            s10.ImageUrl = available
        Else
            s10.ImageUrl = selected
        End If

    End Sub

    Protected Sub buttonGO_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles buttonGO.Click
        
        Dim count = 0
        Dim available = "~/images/available_seat_img.gif"
        Dim booked = "~/images/booked_seat_img.gif"
        Dim selected = "~/images/selected_seat_img.gif"
        Dim seatNumber As String = ""
        Dim seatleft As Integer
        Dim array(10) As Integer

        If (s1.ImageUrl <> selected And s2.ImageUrl <> selected And s3.ImageUrl <> selected And s4.ImageUrl <> selected And s5.ImageUrl <> selected) _
            And (s6.ImageUrl <> selected And s7.ImageUrl <> selected And s8.ImageUrl <> selected And s9.ImageUrl <> selected And s10.ImageUrl <> selected) Then

            ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Please Choose Your Seat');", True)
            Exit Sub
        End If

        If s1.ImageUrl = selected Then
            array(0) = 2
            s1.ImageUrl = booked
            count = count + 1
            seatNumber = "s1" & " " & seatNumber
        ElseIf s1.ImageUrl = booked Then
            array(0) = 2
        Else

            array(0) = 0
        End If

        If s2.ImageUrl = selected Then
            array(1) = 2
            s2.ImageUrl = booked
            count = count + 1
            seatNumber = "s2" & " " & seatNumber
        ElseIf s2.ImageUrl = booked Then
            array(1) = 2
        Else
            array(1) = 0
        End If

        If s3.ImageUrl = selected Then
            array(2) = 2
            s3.ImageUrl = booked
            count = count + 1
            seatNumber = "s3" & " " & seatNumber
        ElseIf s3.ImageUrl = booked Then
            array(2) = 2
        Else
            array(2) = 0
        End If
        If s4.ImageUrl = selected Then
            array(3) = 2
            s4.ImageUrl = booked
            count = count + 1
            seatNumber = "s4" & " " & seatNumber
        ElseIf s4.ImageUrl = booked Then
            array(3) = 2
        Else
            array(3) = 0
        End If
        If s5.ImageUrl = selected Then
            array(4) = 2
            s5.ImageUrl = booked
            count = count + 1
            seatNumber = "s5" & " " & seatNumber
        ElseIf s5.ImageUrl = booked Then
            array(4) = 2
        Else
            array(4) = 0
        End If
        If s6.ImageUrl = selected Then
            array(5) = 2
            s6.ImageUrl = booked
            count = count + 1
            seatNumber = "s6" & " " & seatNumber
        ElseIf s6.ImageUrl = booked Then
            array(5) = 2
        Else
            array(5) = 0
        End If
        If s7.ImageUrl = selected Then
            array(6) = 2
            s7.ImageUrl = booked
            count = count + 1
            seatNumber = "s7" & " " & seatNumber
        ElseIf s7.ImageUrl = booked Then
            array(6) = 2
        Else
            array(6) = 0
        End If
        If s8.ImageUrl = selected Then
            array(7) = 2
            s8.ImageUrl = booked
            count = count + 1
            seatNumber = "s8" & " " & seatNumber
        ElseIf s8.ImageUrl = booked Then
            array(7) = 2
        Else
            array(7) = 0
        End If
        If s9.ImageUrl = selected Then
            array(8) = 2
            s9.ImageUrl = booked
            count = count + 1
            seatNumber = "s9" & " " & seatNumber
        ElseIf s9.ImageUrl = booked Then
            array(8) = 2
        Else
            array(8) = 0
        End If
        If s10.ImageUrl = selected Then
            array(9) = 2
            s10.ImageUrl = booked
            count = count + 1
            seatNumber = "s10" & " " & seatNumber
        ElseIf s10.ImageUrl = booked Then
            array(9) = 2
        Else
            array(9) = 0
        End If


        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "update Status set s1= " & array(0) & " ,s2 = " & array(1) & ",s3=" & array(2) & ",s4=" & array(3) & ",s5=" & array(4) & ",s6=" & array(5) & ",s7=" & array(6) & ",s8=" & array(7) & ",s9=" & array(8) & ",s10=" & array(9) & "where (Date='" & Calendar1.SelectedDate & "' and  Time='" & DepartureTime.Text & "' and Departure='" & Source.Text & "' and Arrived='" & Destination.Text & "')"
        dbcmd.ExecuteNonQuery()
        cn.Close()

        Session("From") = Source.Text
        Session("To") = Destination.Text
        Session("Depart") = Calendar1.SelectedDate
        Session("Time") = DepartureTime.Text
        Session("Count") = count
        Session("seatNumber") = seatNumber

        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "SELECT SeatLeft FROM Status where (Departure = '" & Session("From") & "') and (Arrived = '" & Session("To") & "') and (Time = '" & Session("Time") & "')"
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()
        While reader.Read()
            seatleft = reader("SeatLeft")
        End While
        cn.Close()
        seatleft = seatleft - Session("Count")

        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "Update Status set SeatLeft =" & seatleft & " where (Departure = '" & Session("From") & "') and (Arrived = '" & Session("To") & "')" _
        & "and (Time = '" & Session("Time") & "') and (Date='" & Session("Depart") & "')"
        dbcmd.ExecuteNonQuery()
        cn.Close()

        Session("seatleft") = seatleft

        Response.Redirect("Customerinfo.aspx")



    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If Not Page.IsPostBack Then
            If Session("UserName") = "" Then
                FormsAuthentication.RedirectToLoginPage()
            End If
            Source.Items.Insert(0, New ListItem("Please Select", "Please Select"))
            Source.SelectedIndex = 0
            Destination.Items.Insert(0, New ListItem("Please Select", "Please Select"))
            Destination.SelectedIndex = 0
            pnl1.Visible = False
            logoIndicator.Visible = False
        End If


    End Sub



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As Integer
        Dim list As New List(Of Integer)
        Dim date1 As String
        Dim time As String
        Dim departure As String
        Dim Arrived As String
        Dim i As Integer = 1
        Dim Array(10) As Integer
        Dim available = "~/images/available_seat_img.gif"
        Dim booked = "~/images/booked_seat_img.gif"

        If Source.Text = Destination.Text Then
            MsgBox("Departure and Arrival cannot be same!!")
            pnl1.Visible = False
            logoIndicator.Visible = False
            Exit Sub
        ElseIf Source.Text = "Please Select" Or Destination.Text = "Please Select" Then
            MsgBox("Please Select the right departure and arrival")
            pnl1.Visible = False
            logoIndicator.Visible = False
            Exit Sub
        End If



        dbcmd1.Connection = cn
        dbcmd2.Connection = cn
        cn.Open()
        dbcmd.Connection = cn
        dbcmd.CommandText = "select *from Status "
        dbcmd.ExecuteNonQuery()
        reader = dbcmd.ExecuteReader()

        While reader.Read()
            If (Calendar1.SelectedDate.ToString = reader("Date").ToString And DepartureTime.Text.ToString = reader("Time").ToString And Source.Text = reader("Departure").ToString And Destination.Text = reader("Arrived").ToString) Then
                a = 1
                dbcmd1.CommandText = "SELECT *FROM Status where (Date='" & Calendar1.SelectedDate & "' and  Time='" & DepartureTime.Text & "' and Departure='" & Source.Text & "' and Arrived='" & Destination.Text & "')"
                dbcmd1.ExecuteNonQuery()
                reader = dbcmd1.ExecuteReader()
                While reader.Read()
                    list.Add(reader.GetInt32(reader.GetOrdinal("s1")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s2")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s3")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s4")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s5")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s6")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s7")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s8")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s9")))
                    list.Add(reader.GetInt32(reader.GetOrdinal("s10")))

                End While
                For Each book As String In list
                    If book = 2 Then
                        Array(i) = 2
                        i = i + 1
                    Else
                        Array(i) = 0
                        i = i + 1
                    End If
                Next


            End If

        End While
        If (a <> 1) Then
            dbcmd2.CommandText = "INSERT INTO Status (Date,Time,Departure,Arrived,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,SeatLeft) VALUES " _
                & "('" & Calendar1.SelectedDate & "','" & DepartureTime.Text & "','" & Source.Text & "','" & Destination.Text & "',0,0,0,0,0,0,0,0,0,0,10)"
            dbcmd2.ExecuteNonQuery()
            cn.Close()
            cn.Open()
            dbcmd2.CommandText = "SELECT  * FROM Status where (Date='" & Calendar1.SelectedDate & "' and  Time='" & DepartureTime.Text & "' and Departure='" & Source.Text & "' and Arrived='" & Destination.Text & "')"
            dbcmd2.ExecuteNonQuery()
            reader = dbcmd2.ExecuteReader()
            While reader.Read()
                list.Add(reader.GetInt32(reader.GetOrdinal("s1")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s2")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s3")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s4")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s5")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s6")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s7")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s8")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s9")))
                list.Add(reader.GetInt32(reader.GetOrdinal("s10")))

            End While
            For Each book As String In list
                If book = 2 Then
                    Array(i) = 2
                    i = i + 1
                Else
                    Array(i) = 0
                    i = i + 1
                End If
            Next
        End If

        cn.Close()


        If Array(1) = 2 Then
            s1.ImageUrl = booked
            s1.Enabled = False
        Else
            s1.ImageUrl = available
            s1.Enabled = True
        End If

        If Array(2) = 2 Then
            s2.ImageUrl = booked
            s2.Enabled = False
        Else
            s2.ImageUrl = available
            s2.Enabled = True
        End If
        If Array(3) = 2 Then
            s3.ImageUrl = booked
            s3.Enabled = False
        Else
            s3.ImageUrl = available
            s3.Enabled = True
        End If
        If Array(4) = 2 Then
            s4.ImageUrl = booked
            s4.Enabled = False
        Else
            s4.ImageUrl = available
            s4.Enabled = True
        End If
        If Array(5) = 2 Then
            s5.ImageUrl = booked
            s5.Enabled = False
        Else
            s5.ImageUrl = available
            s5.Enabled = True
        End If
        If Array(6) = 2 Then
            s6.ImageUrl = booked
            s6.Enabled = False
        Else
            s6.ImageUrl = available
            s6.Enabled = True
        End If
        If Array(7) = 2 Then
            s7.ImageUrl = booked
            s7.Enabled = False
        Else
            s7.ImageUrl = available
            s7.Enabled = True
        End If
        If Array(8) = 2 Then
            s8.ImageUrl = booked
            s8.Enabled = False
        Else
            s8.ImageUrl = available
            s8.Enabled = True
        End If
        If Array(9) = 2 Then
            s9.ImageUrl = booked
            s9.Enabled = False
        Else
            s9.ImageUrl = available
            s9.Enabled = True
        End If
        If Array(10) = 2 Then
            s10.ImageUrl = booked
            s10.Enabled = False
        Else
            s10.ImageUrl = available
            s10.Enabled = True
        End If
        pnl1.Visible = True
        logoIndicator.Visible = True


    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged


    End Sub

    Protected Sub DepartureTime_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DepartureTime.SelectedIndexChanged
        If DepartureTime.Text = "" Then
            pnl1.Visible = False
        End If
    End Sub
End Class