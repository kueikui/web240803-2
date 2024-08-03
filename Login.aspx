<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="web_1.Web.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .container {
            width: 400px;
            margin: 0px auto;
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }

        .input-field {
            margin-bottom: 10px;
            margin-left:10px;
        }

        .choose-container {
            width: 450px;
            margin: 80px auto 0px;
            text-align: center;        
        }

        .choose-btn {
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-top-left-radius: 7px;
            border-top-right-radius: 7px;
        }

        .login-container {
            width: 400px;
        }

        .login-btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 7px;
            margin-right: 10px;
        }

        h2 {
            background-color: #0077b6;
            color: white;
            text-align: center;
            padding: 10px 20px;
            display: inline-block;
            border-radius: 20px;
        }

        .forget-btn {
            background-color: transparent;
            border: none;
        }

        .sign_up-btn {
            background-color: transparent;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel3" runat="server">
            <div class="choose-container">
                <asp:Button ID="Button1" runat="server" Text="系統登入" BackColor="Aqua" BorderColor="#66FFFF" Height="50px" Width="218px" CssClass="choose-btn" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="居家登入" BackColor="LightBlue" BorderColor="#66FFFF" Height="50px" Width="218px" CssClass="choose-btn" OnClick="Button2_Click" />
            </div>
        </asp:Panel>

        <div class="container">
            <asp:Panel ID="Panel1" runat="server">
                <h2>登入</h2>
                <div class="form-container">
                    <div>
                        帳 號<label for="txtUsername">:</label>
                        <asp:TextBox ID="cAccountText" runat="server" CssClass="input-field" Width="300px"></asp:TextBox>
                    </div>
                    <div>
                        <label for="txtPassword">密 碼:</label>
                        <asp:TextBox ID="cPasswordText" runat="server" TextMode="Password" CssClass="input-field" Width="300px"></asp:TextBox>
                    </div>
                    <div class="login-container">
                        <asp:Button ID="btnLogin" runat="server" Text="登入" OnClick="btnLogin_Click" CssClass="login-btn" />
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="#FF3300"></asp:Label>
                </div>
                <div class="link-container">
                    <asp:Button ID="forget" runat="server" Text="忘記密碼" BorderStyle="None" CssClass="forget-btn" ForeColor="#0066FF" OnClick="forget_Click" />
                    <br />
                    <asp:Button ID="sign_up" runat="server" Text="註冊" BorderStyle="None" CssClass="sign_up-btn" ForeColor="#0066FF" Visible="False" OnClick="sign_up_Click" />
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <h2>註冊帳號</h2>
                <div class="form-container">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用戶姓名:<asp:TextBox ID="signup_name" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="signup_name" ErrorMessage="姓名不可為空" ForeColor="#FF3300" ValidationGroup="SignupGroup"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 電子信箱:<asp:TextBox ID="signup_account" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="signup_account" ErrorMessage="信箱不可為空" ForeColor="#FF3300" ValidationGroup="SignupGroup"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 碼:<asp:TextBox ID="signup_password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="signup_password" ErrorMessage="密碼不可為空" ForeColor="#FF3300" ValidationGroup="SignupGroup"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <div class="login-container">
                        <asp:Button ID="Button3" runat="server" Text="下一步" OnClick="next_Click" CssClass="login-btn" ValidationGroup="SignupGroup" Height="46px" />
                    </div>
                </div>   
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Visible="False">
                <h2>註冊帳號</h2>
                <div class="form-container">
                    驗&nbsp;&nbsp; 證&nbsp;&nbsp; 碼: <asp:TextBox ID="verification_Text" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <div class="login-container">
                        <asp:Button ID="Button4" runat="server" Text="註冊" OnClick="btnSign_Click" CssClass="login-btn" ValidationGroup="SignupGroup" />
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Visible="False">
                <h2>忘記密碼</h2>
                    <div class="form-container">
                        電子信箱: <asp:TextBox ID="forgetPass_Text" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                        <br />
                        <div class="login-container">
                            <asp:Button ID="forgetPass_Btn" runat="server" Text="確定" OnClick="btnForgetPass_Click" CssClass="login-btn" ValidationGroup="SignupGroup" />
                        </div>
                    </div>
                    <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
