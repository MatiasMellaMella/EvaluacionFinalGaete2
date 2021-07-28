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
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        private void cargarGrilla()
        {
            List<Usuario> usuarios;
            if (this.todosChx.Checked)
            {
                usuarios = this.usuarioDAL.ObtenerUsuario();
            }
            else
            {
                usuarios = this.usuarioDAL.ObtenerUsuario(this.deudaDDl.SelectedItem.Value);
            }
            this.CargarGrilla(usuarios);
        }
        private void CargarGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuario.DataSource = usuarios;
            this.grillaUsuario.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargarGrilla();
            }
        }
        protected void deudaDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargarGrilla();
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            this.deudaDDl.Enabled = this.todosChx.Checked;
            this.cargarGrilla();
        }

        protected void grillaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuarioDAL.EliminarUsuario(id);
                this.cargarGrilla();
            }
        }
    }
}