﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CSStest.dump.Index" %>
<%@ Register Src="~/dump/Shared/_Header.ascx" TagPrefix="uc1" TagName="_Header" %>
<%@ Register Src="~/dump/hehe1/hehe1.ascx" TagPrefix="uc1" TagName="hehe1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/jaiunprobleme.css" rel="stylesheet" />
    <link rel="icon" href="http://emojipedia-us.s3.amazonaws.com/cache/69/0d/690d527e73bdf4998aaf2c8c5d918a7d.png" />
    <title>hehehe</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:_Header runat="server" ID="_Header" />
    
        <uc1:hehe1 runat="server" ID="hehe1" />
        
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        <script src="../scripts/jquery-3.1.1.min.js"></script>
        <script src="../scripts/bootstrap.min.js"></script>
        <script src="../scripts/validator.min.js"></script>
    
    </div>
    </form>
</body>
</html>
