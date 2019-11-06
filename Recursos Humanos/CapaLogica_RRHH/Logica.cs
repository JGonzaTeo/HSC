using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos_RRHH;



namespace CapaLogica_RRHH
{
   public class Logica
    {
        sentencias sn = new sentencias();
        public string siguiente(string tabla,string campo)
        {
            string llave = sn.obtenerfinal(tabla, campo);
            return llave;
        }
        public void nuevoQuery(String query)//trasporta el query de la capa de disenio a Datos
        {
            sn.ejecutarQuery(query);
        }
    }
}
