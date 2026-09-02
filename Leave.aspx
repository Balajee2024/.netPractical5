<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="p_5.Leave" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Leave Application</h1>

            <table border="1">
                <tr>
                    <td><asp:Label ID="LabelEmployeeID" runat="server" Text="Employee ID :"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmployeeID" runat="server" CssClass="input"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelEmployee" runat="server" Text="Employee Name :"></asp:Label></td>
                    <td><asp:TextBox ID="empName" runat="server" CssClass="input"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelDepartment" runat="server" Text="Department :"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="input">
                            <asp:ListItem Text="Select Department" Value=""></asp:ListItem>
                            <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                            <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                            <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                            <asp:ListItem Text="Sales" Value="Sales"></asp:ListItem>
                            <asp:ListItem Text="Marketing" Value="Marketing"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelFromDate" runat="server" Text="From Date :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date"
                            CssClass="input" AutoPostBack="true"
                            OnTextChanged="DateChanged"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelToDate" runat="server" Text="To Date :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtToDate" runat="server" TextMode="Date"
                            CssClass="input" AutoPostBack="true"
                            OnTextChanged="DateChanged"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelDays" runat="server" Text="Number of Days :"></asp:Label></td>
                    <td><asp:Label ID="lblDays" runat="server" Text="0"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelLeaveType" runat="server" Text="Leave Type :"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input">
                            <asp:ListItem Text="Select Leave Type" Value=""></asp:ListItem>
                            <asp:ListItem Text="Personal Leave" Value="Personal"></asp:ListItem>
                            <asp:ListItem Text="Medical Leave" Value="Medical"></asp:ListItem>
                            <asp:ListItem Text="Emergency Leave" Value="Emergency"></asp:ListItem>
                            <asp:ListItem Text="Casual Leave" Value="Casual"></asp:ListItem>
                            <asp:ListItem Text="Other Leave" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelReason" runat="server" Text="Reason :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"
                            TextMode="MultiLine" Rows="4" Columns="20"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelContact" runat="server" Text="Contact Number :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtContact" runat="server"
                            TextMode="Phone" CssClass="input"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="LabelAttachment" runat="server" Text="Attachment :"></asp:Label></td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></td>
                </tr>

                <tr>
                    <td>Remember Name :</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember my name"></asp:CheckBox>
                    </td>
                </tr>

                <tr>
                    <td>Confirmation :</td>
                    <td>
                        <asp:CheckBox ID="chkConfirm" runat="server"
                            Text="I confirm that the information is correct."></asp:CheckBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Submit Leave"
                            CssClass="btn" OnClick="Button1_Click"></asp:Button>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                            CssClass="btn" CausesValidation="false"
                            OnClick="btnClear_Click"></asp:Button>
                    </td>
                </tr>
            </table>

            <asp:Label ID="lblMsg" runat="server" Text=""
                style="display:block; margin-top:30px; padding:20px;
                border:2px solid black; background-color:#f8f8f8;
                color:#222; font-family:Arial; font-size:16px;
                line-height:2; width:600px;"></asp:Label>
        </div>
    </form>
</body>
</html>
