<%@ Page Title="Suche" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="SearchOwnAds.aspx.cs" Inherits="_Search" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Triviali - Suche.
    </h2>
    <form action="Search.aspx">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trivialiConnectionString %>"
            ProviderName="<%$ ConnectionStrings:trivialiConnectionString.ProviderName %>"
            
            SelectCommand="SELECT plz, city, start_date, end_date FROM tv01_ads WHERE (user_id = 2)"></asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <br />
        <hr />
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="341px">
            <asp:GridView ID="Suchergebnis" runat="server" AllowPaging="True" 
                AllowSorting="True" 
                Caption="Eigene Inserate" CaptionAlign="Left" CellPadding="4" 
                DataSourceID="SqlDataSource1" EmptyDataText="---" ForeColor="#333333" 
                GridLines="None" Width="550px" Height="247px" 
                onselectedindexchanged="Suchergebnis_SelectedIndexChanged" 
                AutoGenerateColumns="False" EnableSortingAndPagingCallbacks="True" PageSize="5" 
                ShowFooter="True" ShowHeaderWhenEmpty="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="plz" HeaderText="plz" SortExpression="plz">
                    </asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="city" 
                        SortExpression="city">
                    </asp:BoundField>
                    <asp:BoundField DataField="start_date" 
                        HeaderText="start_date" SortExpression="start_date" />
                    <asp:BoundField DataField="end_date" HeaderText="end_date" 
                        SortExpression="end_date" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" 
                    Font-Names="Microsoft Sans Serif" Font-Overline="False" ForeColor="White" 
                    HorizontalAlign="Left" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" 
                    HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" 
                    ForeColor="#333333" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" font-italic="True" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Details" />
        </asp:Panel>
    </form>
</asp:Content>
