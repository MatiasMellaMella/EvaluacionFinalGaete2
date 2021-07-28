using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventosModel.DAL
{
    public class MedidoresDALDB : IMedidorDAL
    {
        private EventosDB7Entities eventosDB = new EventosDB7Entities();
        public List<Medidor> ObtenerMedidores()
        {
            return this.eventosDB.Medidors.ToList();
        }
    }
}
