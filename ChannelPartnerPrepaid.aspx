<%@ Page Title="" Language="C#" MasterPageFile="~/BasePage.master" AutoEventWireup="true"
    CodeFile="ChannelPartnerPrepaid.aspx.cs" Inherits="UI_Master_ChannelPartnerPrepaid" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="../../UserControl/ModuleHeadingControl.ascx" TagName="ModuleHeadingControl"
    TagPrefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script type="text/javascript" language="javascript">        function noenter() {           
            return !(window.event && window.event.keyCode == 13);
        } </script>
    <script type="text/javascript" language="javascript">
        function functionprice(evt) {            
            if (evt.charCode < 47 || evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                alert("Only Numeric Value Allowed.");
                return false;
            }
        }
        function alphanumeric(inputtxt) {
            if (!((inputtxt.charCode >= 65 && inputtxt.charCode <= 90) || (inputtxt.charCode >= 97 && inputtxt.charCode <= 122) || (inputtxt.charCode >= 48 && inputtxt.charCode <= 57) || (inputtxt.charCode >= 44 && inputtxt.charCode <= 46))) {
                alert("Only Alphanumeric Value Allowed.");
                return false;
            }
        } 
    </script>
    <script type="text/javascript" language="javascript">
        function functionQTY(evt) {
            if (evt.charCode < 47 || evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                alert("Only Numeric Value Allowed.");
                return false;
            }
        }
    </script>
	
	// Commented By Ashwani
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server">
                <table style="border: thin solid #E42C3D; width: 800px" align="center">
                    <tr>
                        <td align="right" colspan="2">
                            <uc1:ModuleHeadingControl ID="ModuleHeadingControl" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="ErrorID" runat="server" BorderWidth="0px" CssClass="mytextbox" Font-Bold="True"
                                ForeColor="Red" Text="ErrorID" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 300px">
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="35%">
                            <span style="color: Red">* </span>AR Code :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TxtARCode" runat="server" CssClass="mytextboxU" MaxLength="8" onkeypress="return functionprice(event)"
                                Width="80px" AutoPostBack="True" ontextchanged="TxtARCode_TextChanged"></asp:TextBox>
                            (Login ID)
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatkExtTxtARCode" runat="server" Enabled="True"
                                TargetControlID="TxtARCode" WatermarkCssClass="watermarked" WatermarkText=" Enter AR Code">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="ReqValTxtARCode" runat="server" ControlToValidate="TxtARCode"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;AR Code is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValCallExtTxtARCode" runat="server" Enabled="True"
                                TargetControlID="ReqValTxtARCode">
                            </asp:ValidatorCalloutExtender>
                            
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnResetPass" runat="server" CausesValidation="False" Visible="false"
                                        BackColor="#3399FF" ForeColor="White" Height="21px" OnClick="btnResetPass_Click"
                                        Text="Resend A1 Login Password Alert" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="35%">
                            <span style="color: Red">* </span>AP Code :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtAPCode" runat="server" CssClass="mytextboxU" MaxLength="6" onkeypress="return functionprice(event)"
                                Width="80px" AutoPostBack="True" ontextchanged="txtAPCode_TextChanged"></asp:TextBox>
                            
                            <asp:TextBoxWatermarkExtender ID="TextBoxdCODE" runat="server" Enabled="True" TargetControlID="txtAPCode"
                                WatermarkCssClass="watermarked" WatermarkText=" Enter AP Code">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldacleVendCODE" runat="server" ControlToValidate="txtAPCode"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;AP Code is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" Enabled="True"
                                TargetControlID="RequiredFieldacleVendCODE">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>Partner Company Name :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtcpName" runat="server" CssClass="mytextboxU" MaxLength="120"
                                ValidationGroup="validate" Width="300px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBotxtcpName2" runat="server" Enabled="True"
                                TargetControlID="txtcpName" WatermarkCssClass="watermarked" WatermarkText=" Enter Partner Company Name">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RFVCHNNAME" runat="server" ControlToValidate="txtcpName"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt; Partner Company Name is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="RFVCHNNAME_ValidatorCalloutExtender" runat="server"
                                Enabled="True" TargetControlID="RFVCHNNAME">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <span class="datagridred">*</span><asp:Label ID="lblARSiteName" Text="AR Site Name :"
                                runat="server"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtARsiteName" runat="server" CssClass="mytextboxU" Width="100px"
                                MaxLength="30"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" Enabled="True"
                                TargetControlID="txtARsiteName" WatermarkCssClass="watermarked" WatermarkText=" Enter AR Site Name">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RFVsitename" runat="server" BorderColor="Red" ControlToValidate="txtARsiteName"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt; AR Site Name is required"
                                ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="RFVsitename_ValidatorCalloutExtender" runat="server"
                                Enabled="True" TargetControlID="RFVsitename">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <span class="datagridred">*</span><asp:Label ID="lblAPSiteName" Text="AP Site Name :"
                                runat="server"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtAPSiteName" runat="server" CssClass="mytextboxU" Width="100px"
                                MaxLength="30"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" Enabled="True"
                                TargetControlID="txtAPSiteName" WatermarkCssClass="watermarked" WatermarkText=" Enter AP Site Name">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RFVAPsitename" runat="server" BorderColor="Red" ControlToValidate="txtAPSiteName"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt; AP Site Name is required"
                                ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" Enabled="True"
                                TargetControlID="RFVAPsitename">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <asp:Label ID="lblBotreeCode" Text="Botree Code :" runat="server"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtBotreeCode" runat="server" CssClass="mytextboxU" Width="100px"
                                MaxLength="10"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" Enabled="True"
                                TargetControlID="txtBotreeCode" WatermarkCssClass="watermarked" WatermarkText=" Enter Botree Code">
                            </asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <span class="datagridred">*</span><asp:Label ID="lblCPCategory" Text="Category of CP :"
                                runat="server"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                        
                            <asp:DropDownList ID="txtCPCategory" runat="server" CssClass="mytextboxU" Width="150px"
                                ></asp:DropDownList>
                           <%-- <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" runat="server" Enabled="True"
                                TargetControlID="txtCPCategory" WatermarkCssClass="watermarked" WatermarkText=" Enter Category of CP">
                            </asp:TextBoxWatermarkExtender>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red"
                                ControlToValidate="txtCPCategory" Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt; Category of CP is required"
                                ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" Enabled="True"
                                TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <span class="datagridred">*</span><asp:Label ID="lblLapuNo" runat="server" Text="Lapu No :"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtLapuNo" runat="server" CssClass="mytextboxU" Width="100px" MaxLength="10"
                                onkeypress="return functionprice(event)"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" runat="server" Enabled="True"
                                TargetControlID="txtLapuNo" WatermarkCssClass="watermarked" WatermarkText=" Enter Lapu No">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RFVLapuNo" runat="server" BorderColor="Red" ControlToValidate="txtLapuNo"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Lapu No  is required"
                                ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" Enabled="True"
                                TargetControlID="RFVLapuNo">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 300px; height: 23px;">
                            <span class="datagridred">*</span><asp:Label ID="lblUnbarringNo" runat="server" Text="Unbarring No :"></asp:Label>
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtUnbarringNo" onkeypress="return functionprice(event)" runat="server"
                                CssClass="mytextboxU" Width="100px" MaxLength="10"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" Enabled="True"
                                TargetControlID="txtUnbarringNo" WatermarkCssClass="watermarked" WatermarkText=" Enter Unbarring No">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RFVunbarringno" runat="server" BorderColor="Red"
                                ControlToValidate="txtUnbarringNo" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Unbarring No is required"
                                Display="None" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            &nbsp;
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" Enabled="True"
                                TargetControlID="RFVunbarringno">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>LOB ID :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddllob" runat="server" CssClass="mytextbox" Width="190px" ValidationGroup="validateE"
                                OnSelectedIndexChanged="ddllob_SelectedIndexChanged" AutoPostBack="True" Enabled="false">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RF1" runat="server" ControlToValidate="ddllob" Display="None"
                                ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;LOB ID is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" Enabled="True"
                                TargetControlID="RF1">
                            </asp:ValidatorCalloutExtender>
                            <%--&nbsp;&nbsp;&nbsp;&nbsp;CIRCLE : &nbsp;<asp:Label ID="lblcirclename" runat="server" Text="*"></asp:Label>--%>
                            <asp:Label ID="LblLobID" runat="server" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>Circle Name :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlcircle" runat="server" CssClass="mytextbox" ValidationGroup="validateE"
                                Width="190px" OnSelectedIndexChanged="ddlcircle_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ReqCircle" runat="server" ControlToValidate="ddlcircle"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Circle Name is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" Enabled="True"
                                TargetControlID="ReqCircle">
                            </asp:ValidatorCalloutExtender>
                            <asp:Label ID="LblCircleID" runat="server" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr id="TrCircleState" runat="server" visible="false">
                        <td align="right">
                            <span style="color: Red">* </span>Circle State Name :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="DdlCircleState" runat="server" CssClass="mytextbox" ValidationGroup="validateE"
                                Width="190px" AutoPostBack="True" OnSelectedIndexChanged="DdlCircleState_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ReqValDdlCircleState" runat="server" ControlToValidate="DdlCircleState"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Circle State Name is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValCallExtDdlCircleState" runat="server" Enabled="True"
                                TargetControlID="ReqValDdlCircleState">
                            </asp:ValidatorCalloutExtender>
                            
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>Contact Person :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtContPerson" runat="server" CssClass="mytextboxU" MaxLength="40"
                                Width="250px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWtxtContPersoner2" runat="server" Enabled="True"
                                TargetControlID="txtContPerson" WatermarkCssClass="watermarked" WatermarkText=" Enter Contact Person">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RequitxtContPerson" runat="server" ControlToValidate="txtContPerson"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Contact Person is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidaRequitxtContPerson" runat="server" Enabled="True"
                                TargetControlID="RequitxtContPerson">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>Contact Person Mobile No. :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="Txtx91" runat="server" CssClass="mytextbox" Text="+91" Enabled="false"
                                Width="30px"></asp:TextBox>
                            <asp:TextBox ID="txtContactNo" runat="server" CssClass="mytextbox" MaxLength="10"
                                Width="120px" onkeypress="return functionprice(event)"></asp:TextBox>
                            Mobile No. must be of 10 Digits
                            <asp:RequiredFieldValidator ID="RequirtxtContactNo" runat="server" ControlToValidate="txtContactNo"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Contact Person Mobile No. is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" Enabled="True"
                                TargetControlID="RequirtxtContactNo">
                            </asp:ValidatorCalloutExtender>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatetxtContNo2" runat="server" Enabled="True"
                                TargetControlID="txtContactNo" WatermarkCssClass="watermarked" WatermarkText=" Enter Mobile No.">
                            </asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Email ID :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtEmail" runat="server" MaxLength="80" ValidationGroup="validateE"
                                CssClass="mytextbox" Width="300px"></asp:TextBox>                          
                            <asp:TextBoxWatermarkExtender ID="txtEmailarkExtender2" runat="server" Enabled="True"
                                TargetControlID="txtEmail" WatermarkCssClass="watermarked" WatermarkText=" Enter email ID">
                            </asp:TextBoxWatermarkExtender>                         
                            <asp:RegularExpressionValidator ID="EMAILREGEXP" runat="server" ControlToValidate="txtEmail"
                                Display="None" ErrorMessage="&lt;b&gt;Invalid Email&lt;/b&gt;&lt;br /&gt;Invalid Email ID. "
                                ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="EMAILREGEXP_ValidatorCalloutExtender" runat="server"
                                Enabled="True" TargetControlID="EMAILREGEXP">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            <span style="color: Red">* </span>Address 1 :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtAdd1" runat="server" CssClass="mytextboxU" MaxLength="10" onkeypress="return noenter()"
                                Width="500px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredtxtAdd1" runat="server" ControlToValidate="txtAdd1"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Address 1 is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" Enabled="True"
                                TargetControlID="RequiredtxtAdd1">
                            </asp:ValidatorCalloutExtender>
                            <asp:TextBoxWatermarkExtender ID="txtAdd1_TextBoxWatermarkExtender" runat="server"
                                Enabled="True" TargetControlID="txtAdd1" WatermarkCssClass="watermarked" WatermarkText=" Enter Address 1">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtAdd1" ID="RegulatxtAdd11"
                                ValidationExpression="^[\s\S]{0,150}$" runat="server" ErrorMessage="Maximum 150 characters allowed."
                                ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            2 &nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtAdd2" runat="server" CssClass="mytextboxU" MaxLength="150" onkeypress="return noenter()"
                                Width="500px" TextMode="MultiLine"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtAdd2_TextBoxWatermarkExtender" runat="server"
                                Enabled="True" TargetControlID="txtAdd2" WatermarkCssClass="watermarked" WatermarkText=" Enter Address 2">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtAdd2" ID="RegularExpressionValidator1"
                                ValidationExpression="^[\s\S]{0,150}$" runat="server" ErrorMessage="Maximum 150 characters allowed."
                                ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            3 &nbsp;
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtAdd3" runat="server" CssClass="mytextboxU" MaxLength="150" onkeypress="return noenter()"
                                Width="500px" TextMode="MultiLine"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtAdd3_TextBoxWatermarkExtender" runat="server"
                                Enabled="True" TargetControlID="txtAdd3" WatermarkCssClass="watermarked" WatermarkText=" Enter Address 3">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtAdd3" ID="RegularExpressionValidator2"
                                ValidationExpression="^[\s\S]{0,150}$" runat="server" ErrorMessage="Maximum 150 characters allowed."
                                ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>State :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" CssClass="mytextbox"
                                ValidationGroup="validateE" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"
                                Width="120px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RGV_STATE" runat="server" ControlToValidate="ddlstate"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;State is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" Enabled="True"
                                TargetControlID="RGV_STATE">
                            </asp:ValidatorCalloutExtender>
                            <asp:Label ID="txtStateCode" runat="server" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>City :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" CssClass="mytextbox"
                                OnSelectedIndexChanged="ddlcity_SelectedIndexChanged" Width="120px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFielddlcity" runat="server" ControlToValidate="ddlcity"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;City is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCallddlcity" runat="server" Enabled="True"
                                TargetControlID="RequiredFielddlcity">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            PIN Code :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlpincode" runat="server" CssClass="mytextbox" Width="120px"
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Zone Name :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddlZone" runat="server" ValidationGroup="validateE" CssClass="mytextbox"
                                Width="120px">
                            </asp:DropDownList>
                            <asp:Label ID="lblManagerCode" Visible="false" runat="server" Text="Zone Name  :"></asp:Label>
                            <asp:Label ID="lblChannelPartnerManCode" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <%--<tr>
                        <td align="right">
                            &nbsp;State Code :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtStateCode" runat="server" CssClass="mytextboxU" MaxLength="10"
                                Enabled="false" onkeypress="return alphanumeric(event)" Width="30px"></asp:TextBox>
                        </td>
                    </tr>--%>
                    <tr>
                        <td align="right">
                            <span style="color: Red">* </span>PAN Number :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtPANno" runat="server" AutoPostBack="true" CssClass="mytextboxU"
                                onkeypress="return alphanumeric(event)" ValidationGroup="validate" MaxLength="10"
                                Width="90px" OnTextChanged="txtPANno_TextChanged" ></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatetxtsalPan" runat="server" Enabled="True"
                                TargetControlID="txtPANno" WatermarkCssClass="watermarked" WatermarkText=" Enter PAN No.">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RequiredtxtsalPan" runat="server" ControlToValidate="txtPANno"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;PAN is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCaltxtsalPan" runat="server" Enabled="True"
                                TargetControlID="RequiredtxtsalPan">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="PAN must be of 10 Characters"></asp:Label> 
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="height: 23px">
                            <span style="color: Red">*&nbsp;</span>Signed By PAN Number :
                        </td>
                        <td align="left" style="height: 23px">
                            <asp:TextBox ID="txtDSC_PanNo" runat="server" AutoPostBack="true" CssClass="mytextboxU"
                                onkeypress="return alphanumeric(event)" ValidationGroup="validate" MaxLength="10"
                                Width="90px" OnTextChanged="txtDSC_PanNo_TextChanged" ></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" Enabled="True"
                                TargetControlID="txtDSC_PanNo" WatermarkCssClass="watermarked" WatermarkText=" Enter DSC PAN Card">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldtxtDSC_PanNo" runat="server" ControlToValidate="txtDSC_PanNo"
                                Display="None" ErrorMessage="&lt;b&gt;Required Field Missing&lt;/b&gt;&lt;br /&gt;Signed By PAN Number is required."
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="txtDSC_PanNoieldValidator2" runat="server" Enabled="True"
                                TargetControlID="RequiredFieldtxtDSC_PanNo">
                            </asp:ValidatorCalloutExtender>
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Signed By PAN Number must be of 10 Characters"></asp:Label> 
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            GST Applicable :
                        </td>
                        <td align="left">
                            <asp:CheckBox ID="ChkGStApplicable" runat="server" AutoPostBack="True" Checked="true" OnCheckedChanged="ChkGStApplicable_CheckedChanged" />
                        </td>
                    </tr>
                    <tr id="TrGST" runat="server" visible="True">
                        <td align="right">
                            <span style="color: Red">* </span>GST No :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtFullGSTno" runat="server" CssClass="mytextboxU" MaxLength="15"
                                onkeypress="return alphanumeric(event)" Width="140px" 
                                AutoPostBack="True" ontextchanged="txtFullGSTno_TextChanged"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextWaterExttxtFullGSTno" runat="server" Enabled="True"
                                TargetControlID="txtFullGSTno" WatermarkCssClass="watermarked" WatermarkText="GST No.">
                            </asp:TextBoxWatermarkExtender>
                             
                            
                            <asp:Label ID="Label3" runat="server" Text="GST No. must be of 15 Characters"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Activate :
                        </td>
                        <td align="left">
                            <asp:CheckBox ID="chkLoginActivate" runat="server" AutoPostBack="True" OnCheckedChanged="chkLoginActivate_CheckedChanged" />
                            &nbsp;<%--<asp:Label ID="note3" runat="server" ForeColor="Green">Check for Activation  of this Channel Partner. </asp:Label>--%>&nbsp;
                            <asp:TextBox ID="txtvaldt" runat="server" CssClass="mytextbox" Width="70px" Enabled="False"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" BehaviorID="txtvaldt_TextBoxWatermarkExtender"
                                Enabled="True" TargetControlID="txtvaldt" WatermarkCssClass="watermarked" WatermarkText="(DD/MM/YYYY)">
                            </asp:TextBoxWatermarkExtender>
                            <asp:CalendarExtender ID="CalendarExtender2" runat="server" BehaviorID="txtvaldt_CalendarExtender"
                                Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtvaldt">
                            </asp:CalendarExtender>
                            &nbsp;
                        </td>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            Remarks :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtRemarksLog" runat="server" TextMode="MultiLine" MaxLength="100"
                                Height="30px" CssClass="mytextbox" Width="300px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td align="right">
                            Digital Sign Applicable :
                        </td>
                        <td align="left">
                            <asp:CheckBox ID="ChkSignAppl" runat="server" Checked="true" AutoPostBack="True" OnCheckedChanged="ChkSignAppl_CheckedChanged" />
                        </td>
                    </tr>
                    <tr id="TrDSCAvail" runat="server" visible="false">
                        <td align="right">
                            DSC Token Available :
                        </td>
                        <td align="left">
                            <asp:CheckBox ID="ChkDSCAvailable" runat="server" AutoPostBack="True" OnCheckedChanged="ChkDSCAvailable_CheckedChanged" />
                        </td>
                    </tr>
                    <tr id="travali" runat="server" visible="false">
                        <td align="right">
                            &nbsp;DSC Token Sourced From :
                        </td>
                        <td align="left">
                            <asp:RadioButtonList ID="rdoDSCSource" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="SHIVA">Shiva Infotech</asp:ListItem>
                                <asp:ListItem Value="OTHERS">Others (Self)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr id="trtokenvalid" runat="server" visible="false">
                        <td align="right">
                            &nbsp;DSC Token Valid From :
                        </td>
                        <td align="left" valign="bottom">
                            <asp:TextBox ID="txtfromdt" runat="server" AutoPostBack="true" CssClass="mytextbox"
                                Width="90px" OnTextChanged="txtfromdt_TextChanged1"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtfromdt_WatermarkExtender1" runat="server" BehaviorID="txtfromdt_TextBoxWatermarkExtender"
                                Enabled="True" TargetControlID="txtfromdt" WatermarkCssClass="watermarked" WatermarkText="(DD/MM/YYYY)">
                            </asp:TextBoxWatermarkExtender>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="txtfromdt_CalendarExtender"
                                Enabled="True" Format="dd/MM/yyyy" TargetControlID="txtfromdt">
                            </asp:CalendarExtender>
                            &nbsp;<asp:RegularExpressionValidator ID="REVtxtfromdt" runat="server" ControlToValidate="txtfromdt"
                                Display="None" ErrorMessage="&lt;b&gt;Invalid Date&lt;/b&gt;&lt;br /&gt;Invalid To Date. "
                                SetFocusOnError="True" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="txtfromdt_ValidatorCalloutExtender" runat="server"
                                BehaviorID="txtfromdt_ValidatorCalloutExtender" Enabled="True" TargetControlID="REVtxtfromdt">
                            </asp:ValidatorCalloutExtender>
                            &nbsp; To
                            <asp:TextBox ID="txttodt" runat="server" CssClass="mytextbox" Width="90px"></asp:TextBox>
                            &nbsp; &nbsp;
                            <asp:Label ID="lbltooltip" Font-Bold="True" runat="server" ToolTip="Default Validity for 2 years"
                                Font-Italic="False" Font-Size="Medium" ForeColor="Black" Font-Names="Arial">&#9432;</asp:Label>
                            <asp:TextBoxWatermarkExtender ID="txtToDt_TextBoxWatermarkExtender" runat="server"
                                BehaviorID="txtToDt_TextBoxWatermarkExtender" Enabled="True" TargetControlID="txttodt"
                                WatermarkCssClass="watermarked" WatermarkText="(DD/MM/YYYY)">
                            </asp:TextBoxWatermarkExtender>
                            <asp:CalendarExtender ID="txtToDt_CalendarExtender" runat="server" BehaviorID="txtToDt_CalendarExtender"
                                Enabled="True" Format="dd/MM/yyyy" TargetControlID="txttodt">
                            </asp:CalendarExtender>
                            &nbsp;<asp:RegularExpressionValidator ID="REVtxtToDt" runat="server" ControlToValidate="txttodt"
                                Display="None" ErrorMessage="&lt;b&gt;Invalid Date&lt;/b&gt;&lt;br /&gt;Invalid To Date. "
                                SetFocusOnError="True" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="REVtxtToDt_ValidatorCalloutExtender" runat="server"
                                BehaviorID="REVtxtToDt_ValidatorCalloutExtender" Enabled="True" TargetControlID="REVtxtToDt">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                     <tr>
                                <td align="right">
                                    Aadhaar No. :
                                </td>
                                <td align="left">
                                     <asp:TextBox ID="txt_AdharNo" runat="server" CssClass="mytextboxU" 
                                         MaxLength="12" onkeypress="return functionprice(event)"
                                        Width="90px"></asp:TextBox>
                                </td>
                            </tr>
                    <tr>
                        <td align="right">
                            Input Mode :
                        </td>
                        <td align="left">
                            <asp:RadioButtonList ID="inputmode" runat="server" RepeatDirection="Horizontal" Enabled="false">
                                <asp:ListItem Value="0" Text="Mannual" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Bulk Upload"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="color: Red">
                            * Mandatory Fields
                        </td>
                        <td align="left" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="imgbtnSave" runat="server" Text="Submit" CssClass="buttonSave" OnClick="imgbtnSave_Click" />
                            &nbsp;
                            <asp:Button ID="imgbtnCancel" runat="server" Text="Cancel" CssClass="buttonSave"
                                ValidationGroup="saveas" OnClick="imgbtnCancel_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
