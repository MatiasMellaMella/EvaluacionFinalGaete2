<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="EvaluacionFinalGaete2.MostrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="row mt-5">
                    <div class="col-lg-6 mx-auto">
                        <asp:DropDownList ID="deudaDDl" Enable="false" runat="server" AutoPostBack="true" OnSelectedIndexChanged="deudaDDL_SelectedIndexChanged">
                            <asp:ListItem Text="Pagado" Selected="True" Value="Pagado"></asp:ListItem>
                            <asp:ListItem Text="Con deuda" Value="con deuda"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:CheckBox runat="server" ID="todosChx" Text="Todos" Checked="true"
                            AutoPostBack="true" OnCheckedChanged="todosChx_CheckedChanged" />
                    </div>
                </div>
                <div class="row mt-5">
                    <asp:GridView ID="grillaUsuario"
                        CssClass="table table-hover table-bordered"
                        AutoGenerateColumns="false"
                        ShowHeaderWhenEmpty="true"
                        EmptyDataText="no hay registro"
                        OnRowCommand="grillaUsuario_RowCommand"
                        runat="server">
                        <Columns>
                            <asp:BoundField HeaderText="Rut" DataField="Rut" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Correo_electronico" DataField="Correo_electronico" />
                            <asp:BoundField HeaderText="Estado" DataField="Deuda" />
                            <asp:BoundField HeaderText="Medidor" DataField="Medidor.Dirrecion" />
                            <asp:BoundField HeaderText="Lectura" DataField="Medidor.Lectura" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-danger" runat="server"
                                        CommandName="eliminar" Text="eliminar"
                                        CommandArgument='<%#Eval("id") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
