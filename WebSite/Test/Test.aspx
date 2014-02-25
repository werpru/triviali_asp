<%@ Page Title="Startseite" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Willkommen bei ASP.NET.
    </h2>
    <p>
        Weitere Informationen zu ASP.NET finden Sie auf <a href="http://www.asp.net" title="ASP.NET-Website">
            www.asp.net</a>.
    </p>
    <p>
        <a href="http://go.microsoft.com/fwlink/?LinkID=152368" title="MSDN-ASP.NET-Dokumente">
            Dokumentation finden Sie auch unter ASP.NET bei MSDN</a>.
    </p>
    <p>
        &nbsp;</p>
        <asp:Wizard ID="Wizard2" runat="server" ActiveStepIndex="1" Height="243px" 
        Width="606px">
            <WizardSteps>
                <asp:WizardStep runat="server" Title="Step 1">
                    Name
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    <br />
                    Vorname
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    Fon
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Step 2">
                        <asp:Panel ID="Panel1" runat="server" BorderColor="#FF3399" BorderStyle="Groove" BorderWidth="1px">

                    <div style="height: 79px; width: 347px; position: inherit; top: 60px; left: 35px; z-index: auto; border-collapse: separate;">
                        <asp:Button ID="SendMail" runat="server" Text="Send E-Mail" 
                            OnClick="SendMail_Click" />
                        <br />
                        <asp:Button ID="showDialog" runat="server" OnClick="showDialog_Click" 
                            Text="Zeige Dialog" />
                    </div>
                    <div 
                        
                        style=" position: inherit; top: 20px; left: 20px; width: 111px; height: 51px; table-layout: auto;
                        border-collapse: separate; cursor: auto; color: #FF0000; z-index: inherit; border-spacing: 5px;">
                        <asp:BulletedList ID="BulletedList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:BulletedList>
                    </div>
                         </asp:Panel>
               </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    <p>
        &nbsp;</p>
</asp:Content>
