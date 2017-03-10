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
        Runat="server" DataSourceID="modeldb" AllowPaging="True"
        AllowSorting="True"
        OnSelectedIndexChanged="product_grid_SelectedIndexChanged"
        DatakeyNames="product_clusterkey" >

        
    
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="true" />
            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
            <asp:BoundField DataField="product_units" HeaderText="Number of Product" />
            <asp:BoundField DataField="product_price" HtmlEncode="false" DataFormatString="{0:c}" HeaderText="Product Wholesale Price" />
            <asp:BoundField DataField="product_guid" HeaderText="Tracking Number" />

        </Columns>
<HeaderStyle CssClass="th"></HeaderStyle>

<PagerStyle CssClass="pagination"></PagerStyle>

<RowStyle CssClass="active"></RowStyle>
    </asp:GridView>

    <asp:SqlDataSource ID="modeldb" runat="server" ConnectionString="<%$ ConnectionStrings:model_dbConnectionString %>" >
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:model_dbConnectionString %>" >
        <SelectParameters>
            <asp:ControlParameter name="idkey" controlID="product_grid" />
        </SelectParameters>     
    </asp:SqlDataSource>
   <div id="divEdit" runat="server">
        <asp:FormView
            id="frmEdit"
            datakeynames="product_clusterkey"
            datasourceid="SqlDataSource1"
            runat="server"
            onitemupdated="frmEdit_ItemUpdated">
            <ItemTemplate>
                <div class="panel panel-success">
                    <div id="topbox" class="panel-heading">
                        <h2 class="panel-heading panel-title">
                            <a href="#" id="updateName">
                                <%# Eval("product_name") %>
                            </a>
                        </h2>
                        <span>
                                <input type="text" class="form-control" id="name" style="display: none; margin-left: 2px; margin-top:5px; width: 200px;"  />
                                    <button id="updateBtn" class="btn btn-primary" style="display: none;">
                                        Update
                                    </button>
                            </span>     
                    </div>
                    <div class="panel-body">
                            <span>
                                <b>Units: </b>
                                <a href="#" id="amount">
                                    <%# Eval("product_units") %>
                                </a>
                                <span class="input-group-btn">
                                    <input type="text" class="form-control" id="units" style="display: none; width: 200px;" />
                                    <button id="updateAmt" class="btn btn-primary" style="display: none; margin-top:-12px;">
                                        Update
                                    </button>
                                </span>
                            </span>
                        <br />
                            <span>
                                <b>Wholesale Price: </b>
                                <a href="#" id="wprice">
                                    <%#Eval("product_price","{0:c}")%>
                                </a>
                                <input type="text" class="form-control" id="price" style="display: none; margin-left: 5px; width: 200px;" />
                                    <button id="updatePrc" class="btn btn-primary" style="display: none; margin-top:-5px; ">
                                        Update
                                    </button>
                            </span>
                        
                    </div>
                </div>
            </ItemTemplate>
        </asp:FormView>
           </div>      
    <script>
        $(function () {
            $("#updateName").click(function () {
                $("#name").slideToggle("fast").css('display', 'inline');
                $("#updateBtn").slideToggle("fast").css('display', 'inline');
            });
        });
        $(function () {
            $("#amount").click(function () {
                $("#units").slideToggle("fast").css("display", "inline");
                $("#updateAmt").slideToggle("fast").css("display", "inline");
            });
        });
        $(function () {
            $("#wprice").click(function () {
                $("#price").slideToggle("fast").css("display", "inline");
                $("#updatePrc").slideToggle("fast").css("display", "inline");
            });
        });
    </script>
</asp:Content>
