<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Registrationform.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        Registration Form
    </title>
    <script src="JavaScript.js" type="text/javascript">  </script>  
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="Jquery.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript">
        function CheckValidation{
            var txtFirstName = document.getElementById("TextBox1").value;
            var txtLastName = document.getElementById("TextBox2").value;
            //var txtAge = document.getElementById("txtAge").value;
            var txtEmail = document.getElementById("TextBox3").value;
            var EmailRegExpression = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
            if (txtFirstName.trim() == '') {
                alert("Please enter first Name.");
                return false;
            }
            if (txtLastName.trim() == '') {
                alert("Please enter last name.");
                return false;
            }
            if (txtEmail.trim() == '' || !EmailRegExpression.test(txtEmail.trim())) {
                alert("Please enter valid email.");
                return false;
            }
            return true;
        }

    </script>--%>
    
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
    </style>
</head>
<body>
    <h1 >REGISTRATION FORM</h1>
    <form id="form1" name="" runat="server" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>
        
         First Name : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="label1"></asp:Label>
            <br />
            
            <br />

   Last Name :&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Label2"></asp:Label>
            <br />
            <br />

    Email Id : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
    Contact number : <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
         <table style="width: 100%; height: 86px; margin-bottom: 4px;">   
        <tr>   
            <td class="auto-style1">   
                <asp:Label ID="Label1" runat="server" Text="Choose Your Country :"></asp:Label>   
            </td>   
            <td>   
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True"    
                    DataTextField="cname" DataValueField="cid" AppendDataBoundItems="true"    
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">   
                    <asp:ListItem Value="0">--Select Country--</asp:ListItem>   
                </asp:DropDownList>   
            </td>   
            <td>   
                 </td>   
        </tr>   
        <tr>   
            <td class="auto-style1">   
                <asp:Label ID="Label2" runat="server" Text="Choose Your State :"></asp:Label>   
            </td>   
            <td>   
                <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" DataTextField="sname"    
                    DataValueField="sid" AutoPostBack="True"    
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">   
                    <asp:ListItem Value="0">-- Select State--</asp:ListItem>   
                </asp:DropDownList>   
            </td>   
            <td>   
                 </td>   
        </tr>   
        <tr>   
            <td class="auto-style1">   
                <asp:Label ID="Label3" runat="server" Text="Choose Your City :"></asp:Label>   
            </td>   
            <td>   
                <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="true" DataTextField="cityname"    
                    DataValueField="cityid">   
                    <asp:ListItem Value="0">-- Select City--</asp:ListItem>   
                </asp:DropDownList>   
            </td>   
            <td>   
                 </td>   
        </tr>   
    </table>   
      
            <br />
   
    Male <asp:RadioButton ID="radiomale" Text="Male" runat="server" GroupName="genderr"></asp:RadioButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     Female <asp:RadioButton ID="radiofemale" Text="Female" runat="server" GroupName="genderr"></asp:RadioButton>
            <br />
            <br />
     java <asp:CheckBox ID="javacheck" runat="server"></asp:CheckBox>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     .Net <asp:CheckBox ID="netcheck" runat="server"></asp:CheckBox>
            <br />
            <br />
    Date of birth <asp:Calendar ID="datepicker1" runat="server"></asp:Calendar>
            </div>
    
        <p>
            <asp:Button runat="server" Text="submit" ID="Button1" Width="74px" onclick="Button1_Click"  OnClientClick="return userValid();"/>
            </p>
    
    </form>
    

</body>

</html>

