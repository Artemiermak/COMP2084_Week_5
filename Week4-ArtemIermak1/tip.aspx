<%@ Page Title="Tip Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="Week4_ArtemIermak1.tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tip Calculator</h1>
    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount:</label>
        <asp:TextBox id="txtAmount" runat="server" />
    </div>

    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value=".1" Text="10%" />
            <asp:ListItem Value=".15" Text="15%" />
            <asp:ListItem Value=".2" Text="20%" />
        </asp:DropDownList>
    </div>
    <asp:Button ID="btnCalculate" runat="server" Text="Caluclate Tip" CssClass="btn btn-success col-sm-offset-2" OnClick="btnCalculate_Click" />

    <div>
        <asp:Label ID="ddlTip" runat="server" CssClass="alert aler-info" />
    </div>

     <div>
        <asp:Label ID="lblTotal" runat="server" CssClass="alert aler-info" />
    </div>
</asp:Content>
