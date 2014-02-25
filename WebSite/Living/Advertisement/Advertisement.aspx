<%@ Page Title="Triviali - Einfach. Gut." Language="C#" MasterPageFile="~/Site.master"
    AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Advertisement" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #AdvertisementText
        {
            width: 394px;
            height: 86px;
        }
        .textStyle
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="Überprüfen und einfach freischalten"></asp:Label>
    </h2>
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD"
        BorderWidth="1px" DisplaySideBar="False" Font-Names="Verdana" Font-Size="0.8em"
        Height="400px" Width="600px" ActiveStepIndex="0" BorderStyle="Ridge" OnFinishButtonClick="Wizard1_FinishButtonClick1"
        CancelDestinationPageUrl="~/Living/Advertisement/LaunchCancel.aspx" CellPadding="4"
        CellSpacing="5" DisplayCancelButton="True">
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px"
            Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" ForeColor="#990000" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
        <WizardSteps>
            <asp:WizardStep runat="server" Title="Inserat" StepType="Start" AllowReturn="False">
                <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%">
                    <table style="width: 100%; height: 100%;">
                        <tr>
                            <td class="textStyle" width="25%">
                                Titel
                            </td>
                            <td class="textStyle" width="75%">
                                <asp:TextBox ID="TextBox4" runat="server" Width="245px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" width="25%">
                                &nbsp;
                            </td>
                            <td class="textStyle" width="75%">
                                <asp:RadioButton ID="RadioButtonTypeAngebot" runat="server" Checked="True" Font-Size="Small"
                                    GroupName="Type" Text="Angebot" />
                                <asp:RadioButton ID="RadioButtonTypeGesuch" runat="server" Font-Size="Small" GroupName="Type"
                                    Text="Gesuch" />
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" height="29px" width="25%">
                            </td>
                            <td class="textStyle" height="29px" width="75%">
                                <asp:RadioButton ID="RadioButton3" runat="server" Text="Wohngemeinschaft" GroupName="Cat" />
                                &nbsp;<asp:RadioButton ID="RadioButton4" runat="server" Text="Mehrgenerationenprojekt"
                                    GroupName="Cat" />
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" height="29px" width="25%">
                                Postleitzahl
                            </td>
                            <td height="29px" lang="de-de" width="75%">
                                <asp:TextBox ID="TextBoxPlz" runat="server" CausesValidation="True" MaxLength="5"
                                    Width="55px" ValidationGroup="PLZ" AutoPostBack="True"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="PlzValidator" runat="server" ValidationGroup="PLZ"
                                    ErrorMessage="Die PLZ ist fehlerhaft." ControlToValidate="TextBoxPlz" SetFocusOnError="True"
                                    ValidationExpression="[0-9]{5}" ForeColor="White" BackColor="#CC3300" />
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" height="29px" width="25%">
                                Ort
                            </td>
                            <td height="29px" class="textStyle" width="75%">
                                <asp:TextBox ID="TextBoxCity" runat="server" Width="245px" Wrap="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" height="29px" width="25%">
                                Zeitraum
                            </td>
                            <td class="textStyle" height="29px" width="75%">
                                von:&nbsp;&nbsp;<asp:TextBox ID="TextBoxDate_From" runat="server" Width="90px"></asp:TextBox>
                                &nbsp; bis:
                                <asp:TextBox ID="TextBoxDate_To" runat="server" Width="90px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="textStyle" height="140" width="25%">
                                Anzeigentext
                            </td>
                            <td height="140" width="75%">
                                <asp:TextBox ID="TextBox3" runat="server" Columns="2" Height="100%" MaxLength="1000"
                                    Rows="5" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Übersicht" StepType="Finish">
                <table style="width: 100%; height: 300;">
                    <tr>
                        <td class="textStyle" height="100%">
                            <asp:Label ID="Label11" runat="server" Font-Size="Small" Text="Titel:"></asp:Label>
                        </td>
                        <td height="29">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="textStyle" height="100%">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Typ des Inserats"></asp:Label>
                        </td>
                        <td height="29">
                            <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Angebot"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" height="100%">
                            <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Inhalt"></asp:Label>
                        </td>
                        <td height="29">
                            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Wohngemeinschaft"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="PLZ / Ort"></asp:Label>
                            :
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="40764 Langenfeld"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Zeitraum"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="01.03.2014 - 30.06.2014"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" height="29">
                            <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="Anzeigentext:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="103px" ReadOnly="True" Width="366px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
