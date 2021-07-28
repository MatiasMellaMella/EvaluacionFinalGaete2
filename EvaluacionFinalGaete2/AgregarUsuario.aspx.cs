using EventosModel;
using EventosModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvaluacionFinalGaete2
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidoresDALDB();
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.MedidorDDL.DataSource = this.medidorDAL.ObtenerMedidores();
                this.MedidorDDL.DataTextField = "Dirrecion";
                this.MedidorDDL.DataValueField = "id";
                this.MedidorDDL.DataBind();
            }
        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario usuario = new Usuario();
                usuario.rut = this.rutTxt.Text.Trim();
                usuario.nombre = this.nombreTxt.Text.Trim();
                usuario.correo_electronico = this.CorreoTxt.Text.Trim();
                usuario.contraseña = this.contraseñaTxt.Text.Trim();
                usuario.deuda = this.deudaRb1.SelectedValue;
                usuario.id_medidor = Convert.ToInt32(this.MedidorDDL.SelectedItem.Value);

                this.usuarioDAL.agregarUsuario(usuario);
                Response.Redirect("MostrarUsuario.aspx");
            }
            
        }
    }
}