<%@ Page Title="AjaxControlToolkit-Testseite" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ACT_Test.aspx.cs" Inherits="Test" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Willkommen bei ASP.NET.
    </h2>

    <p>
        &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </p>
    <p>
        &nbsp;
    </p>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trivialiConnectionStringVM %>"
        ProviderName="<%$ ConnectionStrings:trivialiConnectionStringVM.ProviderName %>" SelectCommand="SELECT plz, city, start_date, end_date FROM tv01_ads where user_id=2"></asp:SqlDataSource>

    <asp:AccordionPane ID="AccordionPane1" runat="server" BorderStyle="Ridge">
    </asp:AccordionPane>
    <asp:Accordion ID="Accordion1" runat="server" Height="101px" Width="368px" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent" CssClass="accordion" FramesPerSecond="30" TransitionDuration="250">
        <Panes>
            <asp:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="" HeaderCssClass="accordionHeader">
                <Header>Pane 1</Header>
                <Content>


                    <asp:GridView ID="Suchergebnis" runat="server" AllowPaging="True"
                        AllowSorting="False" AutoGenerateColumns="False"
                        Caption="Suchergebnis" CaptionAlign="Left" CellPadding="4"
                        DataSourceID="SqlDataSource1" EmptyDataText="Es wurden leider keine Daten gefunden, die Ihren Suchkriterien entsprechen." ForeColor="#333333" Width="550px" CellSpacing="1" ShowHeaderWhenEmpty="True">
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
                            HorizontalAlign="Left" BorderStyle="Solid" Wrap="False" />
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


                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane4" runat="server" ContentCssClass="" HeaderCssClass="accordionHeader">
                <Header>Pane 2</Header>
                <Content>sfgdfmlgndgdng</Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
    <p>
    </p>
    <asp:AccordionPane ID="AccordionPane2" runat="server" Height="100px" Width="100px">
    </asp:AccordionPane>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
</asp:Content>
