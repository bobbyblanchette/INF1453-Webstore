<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NouvellePage.aspx.cs" Inherits="CSStest.dump.NouvellePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/jaiunprobleme.css" rel="stylesheet" />
    <link rel="icon" href="http://emojipedia-us.s3.amazonaws.com/cache/69/0d/690d527e73bdf4998aaf2c8c5d918a7d.png" />    
    <title>Nouvelle Page</title>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div>
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>Nouvelle Page</h1>
                </div>
                <div class="panel-body">
                    <div class="row form-group">
                        <div class="col-xs-1">
                            <label for="searchTextBox" class="control-label">
                                Search:
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <asp:DropDownList ID="searchDropDown" runat="server" class="form-control">
                                <asp:ListItem Value="ContactName">Client Name</asp:ListItem>
                                <asp:ListItem Value="CompanyName">Company Name</asp:ListItem>
                                <asp:ListItem>City</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-xs-6">
                            <asp:TextBox ID="searchTextBox" runat="server" class="form-control" ControlToValidate="searchTextBox"></asp:TextBox>
                        </div>
                        <div class="col-xs-2">
                            <asp:Button ID="searchButton" runat="server" Text="Search" class="btn btn-primary" OnClick="searchButton_Click"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <asp:GridView ID="searchGridView" runat="server" class="table table-striped table-bordered" GridLines="None"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
