<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" MasterPageFile="~/Site.Master" Inherits="asp.net_project.Account.Member" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <h1 class="page-header">Current Products</h1>
    <asp:gridview 
        id="product_grid"
        autogeneratecolumns ="false"
        CssClass="table table-striped table-hover"
        headerStyle-CssClass="th"
        PagerStyle-CssClass="pagination"
        RowStyle-CssClass="active"
        pagesize="25"
        Runat="server" DataSourceID="modeldb" AllowPaging="True" AllowSorting="True" >

        
    
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="true" />
            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
            <asp:BoundField DataField="product_units" HeaderText="Number of Product" />
            <asp:BoundField DataField="product_price" HeaderText="Product Wholesale Price" />
            <asp:BoundField DataField="product_guid" HeaderText="Tracking Number" />

        </Columns>
<HeaderStyle CssClass="th"></HeaderStyle>

<PagerStyle CssClass="pagination"></PagerStyle>

<RowStyle CssClass="active"></RowStyle>
    </asp:GridView>

        
    
    <asp:SqlDataSource ID="modeldb" runat="server" ConnectionString="<%$ ConnectionStrings:model_dbConnectionString %>" >
    </asp:SqlDataSource>
        
    <script>
        $(document).ready(function () {
            $(".open-bext").click(function () {
                $(this).parents("tr").next("tr").show();
            });
        })
    </script>
</asp:Content>
