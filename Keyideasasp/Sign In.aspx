<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign In.aspx.cs" Inherits="Keyideasasp.Sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .card-body {
            width: 536px;
            height: 212px;
            margin-left: 290px;
            margin-right: 0px;
        }
        #woffice-login-right.popuop-loginform {
    width: 109%;
    padding-top: 5px;
            top: 0px;
            left: -97px;
        }
        #woffice-login-right {
    width: 70%;
}
#woffice-login-right {
    position: relative;
    width: 50%;
    padding: 50px 10% 0 10%;
    background: #fff;
    max-height: 100%;
    height: 100%;
    overflow-y: auto;
    overflow-x: hidden;
    
}

        .login-tabs-wrapper {
            width: 1065px;
        }

    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <div class="text-center">

														<header>
																															<a href="http://keyideasglobal.com/qa/mdrwg2" id="login-logo"><img src="//keyideasglobal.com/qa/mdrwg2/wp-content/uploads/logo.png" style="height: 191px; width: 478px; margin-left: 0px"></a><br />
															
															
															
																													
																														
														</header>
           

            <section id =" woffice-login" style="height: 406px">
           
           <div id="woffice-login-right" class="popuop-loginform">


														<div class="login-tabs-wrapper">

															
					
			        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            
                   <br/>
                            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The UserName field is required." />

                   <br/>
                         <asp:Label ID="Label2" runat="server" AssociatedControlID="Password">Password</asp:Label>
            
                   <br/>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The Password field is required." />
                           <br/><br/>              
              <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="btn btn-primary"></asp:Button>
                        </div>
			
		
            </div>
                 
       
        </section>
    </div>        
            
</div>
   
    </form>
</body>
</html>
<link href="https://localhost:44376/StyleSheet2.css" rel="stylesheet" />
