<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="EvaluacionFinalGaete2.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row mt-5">
        <div class="col-log-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>ingresar Usuario</h3>

                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" MaxLength="9" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="rutTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese un rut valido"></asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="nombreTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese un Nombre valido"></asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                        <label for="CorreoTxt">Correo Electronico</label>
                        <asp:TextBox TextMode="Email" ID="CorreoTxt"  CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="CorreoTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese un Correo Electronico valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="contraseñaTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="contraseñaTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ingrese un Contraseña valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="Deudatxt"></label>
                        <asp:RadioButtonList ID="deudaRb1" runat="server">
                            <asp:ListItem Text="Pagado" Selected="True" Value="Pagado"></asp:ListItem>
                            <asp:ListItem Text="Con deuda" Value="Con deuda"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <label for="MedidorDDL">medidor</label>
                        <asp:DropDownList ID="MedidorDDL" runat="server"></asp:DropDownList>
                    </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>
