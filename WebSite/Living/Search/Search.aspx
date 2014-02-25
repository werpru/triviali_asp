<%@ Page Title="Suche" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" EnableEventValidation="false"
    CodeFile="Search.aspx.cs" Inherits="_Search" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Triviali - Suche.
    </h2>
    <form action="Search.aspx">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trivialiConnectionStringVM %>"
            ProviderName="<%$ ConnectionStrings:trivialiConnectionStringVM.ProviderName %>" SelectCommand=""></asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Table ID="Table1" runat="server" Width="449px">
                <asp:TableRow>
                    <asp:TableCell>Plz</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxPlz" runat="server" MaxLength="5">
                        </asp:TextBox>
                        <asp:RegularExpressionValidator ID="PlzValidator" runat="server" ValidationGroup="PLZ"
                            ErrorMessage="" ControlToValidate="TextBoxPlz" SetFocusOnError="True"
                            ValidationExpression="[0-9]*" ForeColor="White" BackColor="#CC3300"  />

                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="PlzValidator" PopupPosition="TopRight"></asp:ValidatorCalloutExtender>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Ort</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBoxOrt" runat="server">
                        </asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Right">
                    <asp:TableCell>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                       
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="SucheButton" runat="server" Text="Suche" AccessKey="S"
                OnClick="SucheButton_Click" />
        </asp:Panel>

        <hr />

        <asp:Panel ID="Panel2" runat="server" Height="341px">
            <asp:GridView ID="Suchergebnis" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                Caption="Suchergebnis" CaptionAlign="Left" CellPadding="1"
                DataSourceID="SqlDataSource1" EmptyDataText="Es wurden leider keine Daten gefunden, die Ihren Suchkriterien entsprechen." ForeColor="#333333" Width="550px" ShowHeaderWhenEmpty="True" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="plz" HeaderText="Plz" SortExpression="plz">
                        <HeaderStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="Ort" NullDisplayText="---"
                        SortExpression="city">
                        <HeaderStyle Width="160px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="start_date" DataFormatString="{0:d}"
                        HeaderText="Beginn" SortExpression="start_date" />
                    <asp:BoundField DataField="end_date" DataFormatString="{0:d}" HeaderText="Ende"
                        SortExpression="end_date" NullDisplayText="---" />
                    <asp:CommandField ShowSelectButton="True" SelectText="Details" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True"
                    Font-Names="Microsoft Sans Serif" Font-Overline="False" ForeColor="White"
                    HorizontalAlign="Left" Wrap="False" CssClass="accordionHeader" />
                <PagerStyle BackColor="#2461BF" ForeColor="White"
                    HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" Wrap="False" />
                <SelectedRowStyle BackColor="#D1DDF1" BorderStyle="Dotted"
                    ForeColor="#333333" Font-Bold="True" BorderWidth="1px" Wrap="False" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" Font-Italic="True" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </asp:Panel>
    </form>
</asp:Content>
