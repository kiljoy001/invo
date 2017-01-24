<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp.net_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="~/Content/test.css">
    <div class="main-gallery js-flickity" data-flickity-options='{"cellAlign":"left","contain":"true", "pageDots":"false", "imagesLoaded":"true", "wrapAround":"true", "percentPosition": "false"}'>
        <div class="gallery-cell">
            <img src="Images/bags-1633717_1920.jpg" width="700" height="400" alt="" />
            </div>
            <div class="gallery-cell">
                <img src="Images/workshop-1493804_1920.jpg" width="700" height="400" alt="" />
            </div>
            <div class="gallery-cell">
                <img src="Images/factory-947425.jpg" width="700" height="400" alt="" />
            </div>
        <div class="gallery-cell">
            <img src="Images/archive-1850170_1920.jpg" width="700" height="400" alt="" />
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>&nbsp;Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
