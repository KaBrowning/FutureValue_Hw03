<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Browning HW03 Future Value</title>
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <header>
        <img id="logo" alt="Murach Logo" src="Images/MurachLogo.jpg"/>
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>401K Future Value Calculator</h1>
            <label>Monthly investment:</label>
            <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" CssClass="entry"></asp:DropDownList>
            <br/>
            <label>Annual interest rate:</label>
            <asp:TextBox ID="txtInterestRate" runat="server" CssClass="entry">6.0</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validator" ErrorMessage="Interest rate is required." ControlToValidate="txtInterestRate" Display="Dynamic"></asp:RequiredFieldValidator>
            <br/>
            <label>Number of years:</label>
            <asp:TextBox ID="txtYears" runat="server" CssClass="entry">10</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validator" ControlToValidate="txtYears" Display="Dynamic" ErrorMessage="Number of years is required."></asp:RequiredFieldValidator>
            <br/>
            <label>Future value:</label>
            <asp:Label ID="lblFutureValue" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" 
                onclick="btnCalculate_Click" CssClass="button"/>
            <asp:Button ID="btnClear" runat="server" Text="Clear" 
                onclick="btnClear_Click" CausesValidation="False" CssClass="button" />
        </form>
    </section>    
</body>
</html>
