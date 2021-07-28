using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventosModel.DAL
{
    public interface IUsuarioDAL
    {
        List<Usuario> ObtenerUsuario();
        List<Usuario> ObtenerUsuario(string deuda);
        Usuario Obtener(int id);
        void agregarUsuario(Usuario usuario);
        void EliminarUsuario(int id);
    }
}
