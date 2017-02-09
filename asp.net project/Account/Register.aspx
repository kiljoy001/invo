<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="asp.net_project.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="fName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="fName" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="fName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Your first name is required." />
                <asp:RegularExpressionValidator ID="fNameValidate" runat="server" ControlToValidate="fName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your first name." CssClass="text-danger"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lName" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Your last name is required." />
                <asp:RegularExpressionValidator ID="lNameValidate" runat="server" ControlToValidate="lName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your last name." CssClass="text-danger"/>
            </div>
        </div>
           <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Phone" CssClass="form-control" TextMode="SingleLine" />
                <asp:RegularExpressionValidator ID="phoneValidate" runat="server" ErrorMessage="Please input a US phone number." ControlToValidate="Phone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Display="Dynamic" CssClass="text-danger"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Your email address is is required." />
                <asp:RegularExpressionValidator ID="emailValidate" runat="server" display="Dynamic" ErrorMessage="Please enter a valid email address." ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." Display="Dynamic" />
                <asp:RegularExpressionValidator ID="passwordValidate" runat="server" display="Dynamic" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters." ControlToValidate="Password" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" CssClass="text-danger"/>

            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cName" CssClass="col-md-2 control-label">Company Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cName" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter company name" />
                <asp:RegularExpressionValidator ID="cName_validator" runat="server" ControlToValidate="cName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your first name." CssClass="text-danger"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="title" CssClass="col-md-2 control-label">Title</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="" CssClass="form-control" TextMode="SingleLine" />
                <asp:RegularExpressionValidator ID="cTitle" runat="server" ControlToValidate="cName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your title." CssClass="text-danger"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cName" CssClass="col-md-2 control-label">Company Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter company name" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="cName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your first name." CssClass="text-danger"/>
            </div>
            </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
</asp:Content>
