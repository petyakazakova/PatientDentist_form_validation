<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient_Dentist.aspx.cs" Inherits="Patient_Dentist.Patient_Dentist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dentist's patients</title>
</head>
<body style="padding: 10px 20px; font-family: 'Verdana', sans-serif">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="LabelMain" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Add new patient to the dentist's list"></asp:Label>
        &nbsp;<br />
        <br />
        <br />
        <asp:Label ID="LabelFirstName" runat="server" Text="First name"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="Name is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="LabelLastName" runat="server" Text="Last name"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Last name is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<br />
        <br />
        <asp:Label ID="LabelCpr" runat="server" Text="CPR"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxCpr" runat="server" OnTextChanged="TextBoxCpr_TextChanged"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorCpr" runat="server" ControlToValidate="TextBoxCpr" EnableClientScript="False" ErrorMessage="CPR missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorCpr" runat="server" ControlToValidate="TextBoxCpr" EnableClientScript="False" ErrorMessage="CPR format is incorrect" ForeColor="Red" ValidationExpression="^\d{10}$|^\d{6}-\d{4}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="LabelAge" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAge" EnableClientScript="False" ErrorMessage="Age is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="TextBoxAge" EnableClientScript="False" ErrorMessage="Age must be between 5 and 30" ForeColor="Red" MaximumValue="30" MinimumValue="5" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="LabelGender" runat="server" Text="Gender"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="RadioButtonListGender" EnableClientScript="False" ErrorMessage="Gender is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RadioButtonList ID="RadioButtonListGender" runat="server">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Email is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Email format is incorrect" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password must be between 4 and 8 characters and include letters and numbers" ForeColor="Red" ValidationExpression="^(?=.*\d).{4,8}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="LabelConfirm" runat="server" Text="Confirm "></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBoxConfirm" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxConfirm" EnableClientScript="False" ErrorMessage="Confirm is missing" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidatorConfirm" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirm" EnableClientScript="False" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="ButtonCreate" runat="server" Text="Add patient" OnClick="ButtonCreate_Click" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary" runat="server" BorderStyle="Solid" EnableClientScript="False" ForeColor="Red" HeaderText="Errors on page:" Width="700px" />
    </form>
</body>
</html>
