<%@ Control Language="C#" ClassName="_Header" %>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button aria-controls="navbar-default" aria-expanded="false" class="navbar-toggle collapsed" data-target="#main-navbar" data-toggle="collapse" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="../dump/Index.aspx" class="navbar-brand">LOGO</a>
        </div>
        <nav class="collapse navbar-collapse" id="main-navbar" aria-expanded="false">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="#">hehe1</a>
                </li>
                <li>
                    <a href="#">hehe2</a>
                </li>
                <li>
                    <a href="#">hehe3</a>
                </li>
                <li>
                    <a href="#">hehe4</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                </li>
                <li>
                    <a href="#" data-toggle="modal" data-target="#register-modal">Register</a>
                </li>
            </ul>
        </nav>
    </div>
</nav>
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>                            
                <h3 class="modal-title">Login to your account</h3>                                                                                    
            </div>                                                                                                                
            <div class="modal-body">                                                                                              
                <form class="form-horizontal">                                                                                     
                    <div class="form-group">                                                                                      
                        <label class="col-sm-2 control-label">Username</label>                                                    
                        <div class="col-sm-10">                                                                                   
                            <input type="text" class="form-control" id="loginUsername" placeholder="Username" />                  
                        </div>                                                                                                    
                    </div>                                                                                                        
                    <div class="form-group">                                                                                      
                        <label class="col-sm-2 control-label">Password</label>                                                    
                        <div class="col-sm-10">                                                                                   
                            <input type="password" class="form-control" id="loginPassword" placeholder="Password" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">
                                Submit</button>
                            <small><a href="#">Forgot your password?</a></small>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="register-modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 class="modal-title">Create a new account</h3>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" runat="server" data-toggle="validator" role="form">
                    <div class="form-group">
                        <label for="registerUsername" class="col-sm-3 control-label">Username</label>
                        <div class="col-sm-9">
                            <asp:TextBox id="registerUsername" runat="server" type="text"  class="form-control" placeholder="Username" data-error="Username is required" required></asp:TextBox>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">First Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="registerFirstName" placeholder="First Name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Last Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="registerLastName" placeholder="Last Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="registerEmail" class="col-sm-3 control-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="registerEmail" placeholder="Email" data-error="Invalid email address" required />
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Phone Number</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="registerPhone" placeholder="Phone Number" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Password</label>
                        <div class="col-sm-9">
                            <div class="row">
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="registerPassword" data-minlength="6" placeholder="Password" required/>
                                <div class="help-block">Minimum of 6 characters</div>
                            </div>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="registerConfirmPassword" placeholder="Confirm Password" />
                            </div>
                                </div>
                        </div>
                        
                    </div>
                        
                        
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-9">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
