<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calender.aspx.cs" Inherits="p_5.calender" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"
                OnSelectionChanged="calAcademic"
                BackColor="White"
                BorderColor="Black"
                DayNameFormat="Shortest"
                Font-Names="Times New Roman"
                Font-Size="10pt"
                ForeColor="Black"
                Height="220px"
                NextPrevFormat="FullMonth"
                TitleFormat="Month"
                Width="400px">

                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True"
                    Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="8pt"
                    ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True"
                    Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>

            <br /><br />

            <asp:Label ID="LabelSelectDate" runat="server" Text="Label"></asp:Label>

            <br /><br />

            <asp:Button ID="Button1" runat="server"
                Text="ApplyLeave" OnClick="button1_click" />
        </div>
    </form>
</body>
</html>
