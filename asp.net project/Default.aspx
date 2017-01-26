<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp.net_project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/flickity.css">
    <div class="main-gallery js-flickity" data-flickity-options='{"cellAlign":"left","contain":"true", "pageDots":"false", "imagesLoaded":"true", "wrapAround":"true", "percentPosition": "false"}'>
        <div class="gallery-cell">
            <img src="http://placehold.it/1400x400">
            </div>
            <div class="gallery-cell">
                <img src="http://placehold.it/1400x400">
            </div>
            <div class="gallery-cell">
                <img src="http://placehold.it/1400x400">
            </div>
        <div class="gallery-cell">
            <img src="http://placehold.it/1400x400">
        </div>
    </div>
    <div class="container body-content">
        <br />
    <div class="row">
        <div class="col-md-4">
            <h2>Need to track things?</h2>
            <p>
                Invo is a easy to use inventory system that allows you to easily track your stock at an affordable cost without the need for an on the premise server or dedicated equipment to track your inventory.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Cloud Hosted</h2>
            <p>
                All parts of the Invo system are hosted on Microsoft Azure - that means reliable uptime, service wide redundancy and responsiveness.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Easy Intergration, Easy Sales Based Tracking </h2>
            <p>
                Our application is intergrated with Square and Clover point of sale systems via their API. Not using either? Contact our sales team to see if we can offer a custom solution, just for you!
            </p>
        </div>
    </div>
        </div>
</asp:Content>
