<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Des14.customer" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .form{
            position:absolute;
            border:5px solid #DBA39A;
            width:35%;
            height:650px;
            background-color:#F0DBDB;
            margin-left:28%;
            margin-top:10%;
        }
        h2{
            color:#863A6F;
            margin-left:35%;
        }
        .upload{
            background-color:#FFADBC;
            color:#863A6F;
            border:solid 2px #FFADBC;
            border-radius:12px;
            font-weight:bold;
            margin-top:5%;
        }
        .submit{
             background-color:#863A6F;
            color:white;
            border:solid 2px #863A6F;
            border-radius:8px;
             font-weight:bold;
             padding:4px;
             margin-left:45%;
        }
        .margin{
            margin-left:40%;
        }
        .table{
            margin-top:60%;
            background-color:#F0DBDB;
             border:5px solid #DBA39A;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position:relative; background-color:#F0DBDB">
<div class="form">
    <h2>Customer Form</h2>
    
    <asp:Label ID="Label1" runat="server" Text="" CssClass="margin">Name</asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server" placeholder="enter your name" CssClass="margin"></asp:TextBox><br /> <br />
    <asp:Label ID="Label2" runat="server" Text="" CssClass="margin">Age</asp:Label><br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="enter your age" CssClass="margin"></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text="" CssClass="margin">Country</asp:Label><br />
    <asp:TextBox ID="TextBox3" runat="server" placeholder="enter your Country" CssClass="margin"></asp:TextBox><br /><br />
    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="margin"> Phone Number</asp:Label><br />
    <asp:TextBox ID="TextBox4" runat="server" placeholder="enter your phone number" CssClass="margin"></asp:TextBox><br /><br />
   

        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="margin">ID</asp:Label><br />
    <asp:TextBox ID="TextBox5" runat="server" placeholder="enter your id " CssClass="margin"></asp:TextBox><br /><br />
     <asp:Label ID="Label5" runat="server" Text="Label" CssClass="margin">Upload your image</asp:Label><br /><br />
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="margin" /><asp:Button ID="Button1" runat="server" Text="Upload" class="upload margin" OnClick="Button1_Click"/><br /><br />

    <asp:Button ID="Button2" runat="server" Text="Submit"  CssClass="submit" OnClick="Button2_Click"/>


</div>
          

        </div>

    </form>

            <div CssClass="table">
  <asp:Label ID="Label7" runat="server" Text="" ></asp:Label>
        </div>
</body>
</html>
