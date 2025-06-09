<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Weateher_App.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weather App</title>
    <style>
        .auto-style1 {
            width: 100%;
            height: 593px;
        }
        .right{
            background-color:  #3399ff;
        }
        .auto-style2 {
            width: 100%;
            height: 511px;
        }
        .white{
            background-color:white;
            border: 3px solid #3399ff; /* blue border to match theme */
            border-radius: 15px;       /* rounded corners */
            /*box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);*/ /* soft shadow for depth */

        }
        .auto-style4 {
            height: 55px;
        }
        .auto-style5 {
            height: 54px;
        }
        .auto-style6 {
            height: 60px;
        }
        .auto-style7 {
            height: 72px;
            /*background-color: #3399ff; 
            color: white;
            font-style: italic;*/
            font-weight: bold;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            
        }
        .auto-style8 {
            height: 75px;
            /*background-color: #3399ff; 
            color: white;
            font-style: italic;*/
            font-weight: bold;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .head{
            color:#3399ff;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            /*text-align:center;*/
        }
        .btn1 {
            background-color: #3399ff; 
            color: white;
        }
        .btn1 {
            text-align: center; margin-top: 30px;
        }
        .auto-style9 {
            width: 305px;
        }
        .auto-style10 {
            width: 306px;
        }
        .placeholder{
            text-align:center;
        }
        .center-placeholder
        {
        text-align: center; /* Center the input text */
        }
        .lbl {
            color: #3399ff;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            /*text-align: center;*/
        }
    </style>
</head>
<body style="background-color:  #3399ff;">
    <form id="form1" runat="server">
        <div class="divs">
        </div>
    <table class="auto-style1">
        <tr>
            <td class="right">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="white" colspan="2" rowspan="4">
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style6">
                                       <h2> <asp:Label ID="Label2" class="lbl" runat="server"></asp:Label> </h2>
                                    </td>
                                    <td class="auto-style6">
                                        <h2 class="head">Weather Forecast</h2>
                                    </td>
                                    <td rowspan="5"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Image ID="Image1" runat="server" />
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td class="auto-style5"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>

                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
