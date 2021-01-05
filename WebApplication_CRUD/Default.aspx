<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication_CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="jumbotron" style="background-color: #8f0e22">
        <div aria-disabled="False">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF" Text=" User Registration Form"></asp:Label>
        </div>
            </div>
    <asp:Label ID="LabelID" runat="server" Text="User ID"></asp:Label>
&nbsp;
<asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
    <br />
    <br />
        <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    <br />
    <br />
    <p>
        <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
    </p>
      <br />
<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btInsert" runat="server" OnClick="btInsert_Click" Text="Insert" />
&nbsp;&nbsp;
        <asp:Button ID="btSearch" runat="server" Text="Search" OnClick="btSearch_Click" />
&nbsp;&nbsp;
        <asp:Button ID="btUpdate" runat="server" Text="Update" OnClick="btUpdate_Click" />
&nbsp;&nbsp;
        <asp:Button ID="btDelete" runat="server" Text="Delete" OnClick="btDelete_Click" onClientClick="return confirm('Are you sure to delete?');" />
 <br />
    <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmsgInsert" runat="server" Font-Bold="True" ForeColor="#990033" Text="Label"></asp:Label>
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Width="412px">
        </asp:GridView>
</p>

</asp:Content>
