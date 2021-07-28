using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventosModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        private EventosDB7Entities eventosDB = new EventosDB7Entities();

        public void agregarUsuario(Usuario usuario)
        {
            this.eventosDB.Usuarios.Add(usuario);
            this.eventosDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            Usuario usuario = this.eventosDB.Usuarios.Find(id);
            this.eventosDB.Usuarios.Remove(usuario);
            this.eventosDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.eventosDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuario()
        {
            return this.eventosDB.Usuarios.ToList();
        }
        public void Actualizar(Usuario a)
        {
            Usuario aOriginal = this.eventosDB.Usuarios.Find(a.id);
            aOriginal.deuda = a.deuda;
            aOriginal.nombre = a.nombre;
            this.eventosDB.SaveChanges();
        }

        public List<Usuario> ObtenerUsuario(string deuda)
        {
            var query = from a in this.eventosDB.Usuarios
                        where a.deuda == deuda
                        select a;
            return query.ToList();
        }
    }
}
