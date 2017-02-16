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
                <asp:RegularExpressionValidator ID="passwordValidate" runat="server" Display="Dynamic" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters." ControlToValidate="Password" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,60})$" CssClass="text-danger" />

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
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="cAddress"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter company name" />
                <%--<asp:RegularExpressionValidator ID="cAddress_validator1" runat="server" ControlToValidate="cAddress" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your company address." CssClass="text-danger" />--%>
                <%--<asp:RegularExpressionValidator ID="cAddress_validator2" runat="server" ControlToValidate="cAddress_opt" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,100}$" ErrorMessage="Please enter your company address." CssClass="text-danger" />--%>
            </div>      
        </div>
        <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label">City</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="City" Class="form-control" TextMode="SingleLine" />
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
                <asp:DropDownList ID="cStateList" runat="server" AutoPostBack="false">
                    <asp:ListItem Selected="True">Select State</asp:ListItem>
                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
                    <asp:ListItem Value="AK">Alaska</asp:ListItem>
                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                    <asp:ListItem Value="CA">California</asp:ListItem>
                    <asp:ListItem Value="CO">Colorado</asp:ListItem>
                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                    <asp:ListItem Value="DE">Delaware</asp:ListItem>
                    <asp:ListItem Value="FL">Florida</asp:ListItem>
                    <asp:ListItem Value="GA">Georgia</asp:ListItem>
                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
                    <asp:ListItem Value="IL">Illinois</asp:ListItem>
                    <asp:ListItem Value="IN">Indiana</asp:ListItem>
                    <asp:ListItem Value="IA">Iowa</asp:ListItem>
                    <asp:ListItem Value="KS">Kansas</asp:ListItem>
                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                    <asp:ListItem Value="ME">Maine</asp:ListItem>
                    <asp:ListItem Value="MD">Maryland</asp:ListItem>
                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                    <asp:ListItem Value="MI">Michigan</asp:ListItem>
                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                    <asp:ListItem Value="MO">Missouri</asp:ListItem>
                    <asp:ListItem Value="MT">Montana</asp:ListItem>
                    <asp:ListItem Value="NM">Nebraska</asp:ListItem>
                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                    <asp:ListItem Value="NY">New York</asp:ListItem>
                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                    <asp:ListItem Value="OH">Ohio</asp:ListItem>
                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                    <asp:ListItem Value="TX">Texas</asp:ListItem>
                    <asp:ListItem Value="UT">Utah</asp:ListItem>
                    <asp:ListItem Value="VT">Vermont</asp:ListItem>
                    <asp:ListItem Value="VA">Virginia</asp:ListItem>
                    <asp:ListItem Value="WA">Washington</asp:ListItem>
                    <asp:ListItem Value="DC">Washington D.C.</asp:ListItem>
                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
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
