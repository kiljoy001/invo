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
                <asp:RegularExpressionValidator ID="fNameValidate" runat="server" ControlToValidate="fName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your first name." CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lName" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Your last name is required." />
                <asp:RegularExpressionValidator ID="lNameValidate" runat="server" ControlToValidate="lName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your last name." CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Phone" CssClass="form-control" TextMode="SingleLine" />
                <asp:RegularExpressionValidator ID="phoneValidate" runat="server" ErrorMessage="Please input a US phone number." ControlToValidate="Phone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Display="Dynamic" CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Your email address is is required." />
                <asp:RegularExpressionValidator ID="emailValidate" runat="server" Display="Dynamic" ErrorMessage="Please enter a valid email address." ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." Display="Dynamic" />
                <asp:RegularExpressionValidator ID="passwordValidate" runat="server" Display="Dynamic" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters." ControlToValidate="Password" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" CssClass="text-danger" />

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
                <asp:RegularExpressionValidator ID="cName_validator" runat="server" ControlToValidate="cName" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your first name." CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cTitle" CssClass="col-md-2 control-label">Title</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cTitle" CssClass="form-control" TextMode="SingleLine" />
                <asp:RegularExpressionValidator ID="cTitle_validator" runat="server" ControlToValidate="cTitle" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your title." CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cAddress" CssClass="col-md-2 control-label">Company Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cAddress" Class="form-control" TextMode="SingleLine" />
                <div class="form-group"></div>
                <asp:TextBox runat="server" ID="cAddress_opt" Class="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter company name" />
                <asp:RegularExpressionValidator ID="cAddress_validator1" runat="server" ControlToValidate="cAddress" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your company address." CssClass="text-danger" />
                <asp:RegularExpressionValidator ID="cAddress_validator2" runat="server" ControlToValidate="cAddress_opt" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your company address." CssClass="text-danger" />
            </div>
        </div>
        <div class="form-group">          
                <asp:Label runat="server" AssociatedControlID="cStateList" CssClass="col-md-2 control-label">Company State</asp:Label>
            <div class="col-md-10">
                <style type="text/css">
                    #MainContent_cStateList {
                        color: black;
                    }
                </style>
                <asp:DropDownList ID="cStateList" runat="server" AutoPostBack="true">
                    <asp:ListItem Selected="True">Select State</asp:ListItem>
                    <asp:ListItem>Alabama</asp:ListItem>
                    <asp:ListItem>Alaska</asp:ListItem>
                    <asp:ListItem>Arizona</asp:ListItem>
                    <asp:ListItem>Arkansas</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                    <asp:ListItem>Colorado</asp:ListItem>
                    <asp:ListItem>Connecticut</asp:ListItem>
                    <asp:ListItem>Delaware</asp:ListItem>
                    <asp:ListItem>Florida</asp:ListItem>
                    <asp:ListItem>Georgia</asp:ListItem>
                    <asp:ListItem>Hawaii</asp:ListItem>
                    <asp:ListItem>Idaho</asp:ListItem>
                    <asp:ListItem>Illinois</asp:ListItem>
                    <asp:ListItem>Indiana</asp:ListItem>
                    <asp:ListItem>Iowa</asp:ListItem>
                    <asp:ListItem>Kansas</asp:ListItem>
                    <asp:ListItem>Kentucky</asp:ListItem>
                    <asp:ListItem>Louisiana</asp:ListItem>
                    <asp:ListItem>Maine</asp:ListItem>
                    <asp:ListItem>Maryland</asp:ListItem>
                    <asp:ListItem>Massachusetts</asp:ListItem>
                    <asp:ListItem>Michigan</asp:ListItem>
                    <asp:ListItem>Minnesota</asp:ListItem>
                    <asp:ListItem>Mississippi</asp:ListItem>
                    <asp:ListItem>Missouri</asp:ListItem>
                    <asp:ListItem>Montana</asp:ListItem>
                    <asp:ListItem>Nebraska</asp:ListItem>
                    <asp:ListItem>Nevada</asp:ListItem>
                    <asp:ListItem>New Hampshire</asp:ListItem>
                    <asp:ListItem>New Jersey</asp:ListItem>
                    <asp:ListItem>New Mexico</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>North Carolina</asp:ListItem>
                    <asp:ListItem>North Dakota</asp:ListItem>
                    <asp:ListItem>Ohio</asp:ListItem>
                    <asp:ListItem>Oklahoma</asp:ListItem>
                    <asp:ListItem>Oregon</asp:ListItem>
                    <asp:ListItem>Pennsylvania</asp:ListItem>
                    <asp:ListItem>Rhode Island</asp:ListItem>
                    <asp:ListItem>South Carolina</asp:ListItem>
                    <asp:ListItem>South Dakota</asp:ListItem>
                    <asp:ListItem>Tennessee</asp:ListItem>
                    <asp:ListItem>Texas</asp:ListItem>
                    <asp:ListItem>Utah</asp:ListItem>
                    <asp:ListItem>Vermont</asp:ListItem>
                    <asp:ListItem>Virginia</asp:ListItem>
                    <asp:ListItem>Washington</asp:ListItem>
                    <asp:ListItem>West Virginia</asp:ListItem>
                    <asp:ListItem>Wisconsin</asp:ListItem>
                    <asp:ListItem>Wyoming</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="cZip" CssClass="col-md-2 control-label">Company Zip Code</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="cZip" CssClass="form-control" TextMode="SingleLine" />
                <asp:RegularExpressionValidator ID="cZip_Validator" runat="server" ControlToValidate="cZip" Display="Dynamic" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" ErrorMessage="Please enter your Zip Code." CssClass="text-danger" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
        </div>
    </div>
</asp:Content>
