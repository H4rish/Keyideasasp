<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Keyideasasp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style type="text/css">  
.auto-style1 {  
     width: 100%;  
      }  
.auto-style2 {  
     width: 278px;  
       }  
.auto-style3 {  
      width: 278px;  
      height: 23px;  
        }  
.auto-style4 {  
      height: 23px;  
        }  
</style>  
 </head> 
<body>  
<form id="form1" runat="server">  
<div> 
             <section id =" woffice-login">
           
           <div id="woffice-login-right" class="popuop-loginform">

														<header>
																															<a href="http://keyideasglobal.com/qa/mdrwg2" id="login-logo"><img src="//keyideasglobal.com/qa/mdrwg2/wp-content/uploads/logo.png" style="height: 191px; width: 483px; margin-left: 0px"></a>
																														
																										
															<div class="infobox fa-exclamation-triangle" id="new_text_error" style="background-color: #ffa500; display:none">
															
															</div>
															<div class="infobox fa-exclamation-triangle" id="new_text_error_login" style="background-color: #ffa500; display:none">
															
															</div>
															
															<div class="infobox fa-exclamation-triangle" id="new_text_sucess_login" style="background-color: #026602; display:none">
															
															</div>
															<div class="infobox fa-exclamation-triangle" id="new_text_reg_login" style="background-color: #026602; display:none">
															
															</div>
															
															
															
																													
																														
														</header>
           

														<div class="login-tabs-wrapper">
  <table class="auto-style1">  
    <tr>  
    <td>  
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="username" runat="server" required="true"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" CssClass="field-validation-error" ErrorMessage="The UserName field is required." />
    </td>    
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="EmailID" runat="server" TextMode="Email"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailID" CssClass="field-validation-error" ErrorMessage="The Email field is required." />
        </td>
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" CssClass="field-validation-error" ErrorMessage="The Password field is required." />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pass" CssClass="field-validation-error" ErrorMessage="The Password field should be Atleast 8 Characters with atleast 1 Number and Letter." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>    </td>
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="cpass" runat="server" TextMode="Password"></asp:TextBox> 
   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpass" CssClass="field-validation-error" ErrorMessage="The Confirm Password field is required." />
        </td>
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label4" runat="server" Text="FIrst Name"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="FirstName" runat="server" required="true"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="firstName" CssClass="field-validation-error" ErrorMessage="The FirstName field is required." /></td>
        
    </tr>
       <tr>  
    <td>  
    <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="LastName" runat="server" required="true"></asp:TextBox>  
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lastName" CssClass="field-validation-error" ErrorMessage="The LastName field is required." />
   </td> </tr>
    <tr>  
    
    <td>  
    <br />  
    <asp:Button ID="Button1" runat="server" Text="Register"  OnClick="Button1_Click" class="btn btn-primary"/>  
    </td>  
    </tr>  
    </table>  
    <asp:Label ID="message" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label> 
                                                            </div>
               <div>
                   </section></div>
    </div>  
    </form>  
     
</body>  <link href="https://localhost:44376/StyleSheet2.css" rel="stylesheet" />
</html>  

