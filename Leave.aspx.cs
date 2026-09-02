using System;
using System.Web.UI;

namespace p_5
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check whether Employee Name is available in cookies
                if (Request.Cookies["EmployeeName"] != null)
                {
                    empName.Text = Request.Cookies["EmployeeName"].Value;
                    CheckBox1.Checked = true;
                }

                // Get selected leave date from the previous web page
                if (Session["LeaveDate"] != null)
                {
                    DateTime dt = (DateTime)Session["LeaveDate"];
                    txtFromDate.Text = dt.ToString("yyyy-MM-dd");
                }
                else
                {
                    txtFromDate.Text = "";
                }
            }
        }

        // Calculate number of leave days
        protected void DateChanged(object sender, EventArgs e)
        {
            DateTime fromDate;
            DateTime toDate;

            if (DateTime.TryParse(txtFromDate.Text, out fromDate) &&
                DateTime.TryParse(txtToDate.Text, out toDate))
            {
                if (toDate >= fromDate)
                {
                    lblDays.Text = ((toDate - fromDate).Days + 1).ToString();
                }
                else
                {
                    lblDays.Text = "0";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string employeeID = txtEmployeeID.Text;
            string employeeName = empName.Text;
            string department = ddlDepartment.SelectedValue;
            string fromDate = txtFromDate.Text;
            string toDate = txtToDate.Text;
            string days = lblDays.Text;
            string leaveType = DropDownList1.SelectedValue;
            string reason = TextBox1.Text;
            string contact = txtContact.Text;

            // Store employee name in session
            Session["EmployeeName"] = employeeName;

            // Store leave information in session
            Session["EmployeeID"] = employeeID;
            Session["Department"] = department;
            Session["FromDate"] = fromDate;
            Session["ToDate"] = toDate;
            Session["LeaveDays"] = days;
            Session["LeaveType"] = leaveType;
            Session["Reason"] = reason;
            Session["Contact"] = contact;

            // Create cookie if checkbox is selected
            if (CheckBox1.Checked)
            {
                Response.Cookies["EmployeeName"].Value = employeeName;

                // Cookie will expire in 7 days
                Response.Cookies["EmployeeName"].Expires = DateTime.Now.AddDays(7);
            }

            lblMsg.Text = "Leave Application Submitted Successfully" +
                "<br/>Employee ID : " + employeeID +
                "<br/>Employee Name : " + employeeName +
                "<br/>Department : " + department +
                "<br/>From Date : " + fromDate +
                "<br/>To Date : " + toDate +
                "<br/>Number of Days : " + days +
                "<br/>Leave Type : " + leaveType +
                "<br/>Reason : " + reason +
                "<br/>Contact Number : " + contact;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmployeeID.Text = "";
            empName.Text = "";
            ddlDepartment.SelectedIndex = 0;
            txtFromDate.Text = "";
            txtToDate.Text = "";
            lblDays.Text = "0";
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
            txtContact.Text = "";
            CheckBox1.Checked = false;
            chkConfirm.Checked = false;
            lblMsg.Text = "";
        }
    }
}
