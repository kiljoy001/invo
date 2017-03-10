<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Member.aspx.cs" MasterPageFile="~/Site.Master" Inherits="asp.net_project.Account.Member" %>

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
            onitemupdated="frmEdit_ItemUpdated" Width="1586px">
            <ItemTemplate>
                <div class="panel panel-success">
                    <div id="topbox" class="panel-heading">
                        <h2 class="panel-heading panel-title">
                            <a href="#" id="updateName">
                                <%# Eval("product_name") %>
                            </a>
                        </h2>
                        <span>
                            <asp:TextBox class="form-control" id="input_name" style="display: none; margin-left: 2px; margin-top:5px; width: 200px;" runat="server" ClientIDMode="Static"  text='<%# Bind("product_name") %>'/>
                            <asp:LinkButton 
                                runat="server"
                                id="updateNameBtn"
                                class="btn btn-primary"
                                ClientIDMode="Static"
                                style="display: none;" 
                                CommandName="Update">
                                Update
                            </asp:LinkButton>
                            </span>     
                    </div>
                    <div class="panel-body">
                            <span>
                                <h2><b>Units: </b></h2>
                                <a href="#" id="amount">
                                    <h2><%# Eval("product_units") %></h2>
                                </a>
                                <span class="input-group-btn">
                                    <input type="text" class="form-control" id="units" style="display: none; width: 200px;" />
                                    <button id="updateAmt" class="btn btn-primary" style="display: none; margin-top:-12px;"  >
                                        Update
                                    </button>
                                </span>
                            </span>
                        <br />
                            <span>
                                <h2><b>Wholesale Price: </b></h2>
                                <a href="#" id="wprice">
                                    <h2><%#Eval("product_price","{0:c}")%></h2>
                                </a>
                                <input type="text" class="form-control" id="price" style="display: none; margin-left: 5px; width: 200px;" />
                                    <button id="updatePrc" class="btn btn-primary" style="display: none; margin-top:-5px;" >
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
                $("#input_name").slideToggle("fast").css('display', 'inline');
                $("#updateNameBtn").slideToggle("fast").css('display', 'inline');
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
