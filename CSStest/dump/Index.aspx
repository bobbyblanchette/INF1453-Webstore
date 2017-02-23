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
        <!----
        <uc1:_Header runat="server" ID="_Header" />
    
        <uc1:hehe1 runat="server" ID="hehe1" />
            ---->
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>RESEARCH AREA</h1>
                </div>
                <div class="panel-body">
                    <div class="row form-group">
                        <div class="col-xs-2">
                            <label for="searchTextBox" class="control-label">Search clients:</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="searchTextBox" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-2">
                            <asp:Button ID="searchButton" class="btn btn-primary form-control" runat="server" Text="Go!" OnClick="searchButton_Click" />
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <asp:GridView ID="searchGridView" class="table table-striped table-bordered" runat="server" UseAccessibleHeader="True" GridLines="None"></asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>



        <script src="../scripts/jquery-3.1.1.min.js"></script>
        <script src="../scripts/bootstrap.min.js"></script>
        <script src="../scripts/validator.min.js"></script>
    
    </div>
    </form>
</body>
</html>
