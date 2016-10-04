<%@ Page Title="Tip Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="Week4_ArtemIermak1.tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tip Calculator</h1>
    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount:</label>
        <asp:TextBox id="txtAmount" runat="server" />
    </div>
    <asp:RequiredFieldValidator 
        ID="anyId1" 
        runat="server" 
        ErrorMessage="Required" 
        CssClass="alert-danger" 
        ControlToValidate="txtAmount"
        Display="Dynamic">
    </asp:RequiredFieldValidator>

    <asp:RangeValidator 
        ID="anyId2" 
        runat="server" 
        ErrorMessage="Invalid input"
        CssClass="alert-danger" 
        ControlToValidate="txtAmount"
        MaximumValue="9999999999" 
        MinimumValue="0.01"
        Display="Dynamic"
        Type="Currency">
    </asp:RangeValidator>

    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value="-1" Text="- Choose -" />
            <asp:ListItem Value=".1" Text="10%" />
            <asp:ListItem Value=".15" Text="15%" />
            <asp:ListItem Value=".2" Text="20%" />
        </asp:DropDownList>
        <asp:RangeValidator 
            ID="RangeValidator1" 
            runat="server" 
            ErrorMessage="choose tip %"
            CssClass="alert-danger"
            type="Double"
            MinimumValue="0"
            MaximumValue="9999999999"
            ControlToValidate="txtAmount"
            Display="Dynamic">
        </asp:RangeValidator>

    </div>
    <asp:Button ID="btnCalculate" runat="server" Text="Caluclate Tip" CssClass="btn btn-success col-sm-offset-2" OnClick="btnCalculate_Click" />

    <div>
        <asp:Label ID="ddlTip" runat="server" CssClass="alert aler-info" />
    </div>

     <div>
        <asp:Label ID="lblTotal" runat="server" CssClass="alert aler-info" />
    </div>
</asp:Content>
