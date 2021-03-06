﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cropleft_image.aspx.cs" Inherits="WebApplicationFYP.cropleft_image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Crop Image</title>

    <link href="Scripts/jquery.Jcrop.css" rel="stylesheet" type ="text/css" />

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>

    <script type="text/javascript" src="Scripts/jquery.Jcrop.js" ></script>

    <script type="text/javascript">

        jQuery(document).ready(function () {

            jQuery('#imgCrop').Jcrop({

                onSelect: storeCoords

            });

        });

        function storeCoords(c) {

            jQuery('#X').val(c.x);

            jQuery('#Y').val(c.y);

            jQuery('#W').val(c.w);

            jQuery('#H').val(c.h);

        };

    </script>

</head>

<body>

    <form id="form1" runat="server">

    <div>

        <asp:Panel ID="pnlUpload" runat="server">

            <asp:FileUpload ID="Upload" runat="server" />

            <br />

            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />

            <asp:Label ID="lblError" runat="server" Visible="false" />

        </asp:Panel>
        <p> user must crop left side of eye</p>
        <asp:Panel ID="pnlCrop" runat="server" Visible="false">

            <asp:Image ID="imgCrop" runat="server" />

            <br />

            <asp:HiddenField ID="X" runat="server" />

            <asp:HiddenField ID="Y" runat="server" />

            <asp:HiddenField ID="W" runat="server" />

            <asp:HiddenField ID="H" runat="server" />

            <asp:Button ID="btnCrop" runat="server" Text="Cropleftside" OnClick="btnCrop_Click" />

            
        </asp:Panel>
          
    </div>
         <h4>Now Click the Result Button!!!</h4>
        <asp:Button ID="btnResult" runat="server" Text="Result" OnClick="btnResult_Click" />
    </form>

</body>

</html>
