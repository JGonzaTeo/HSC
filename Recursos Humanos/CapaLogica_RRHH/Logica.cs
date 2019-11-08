using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos_RRHH;
using System.Data;
using System.Data.Odbc;


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
        //   ***** INICIO DE LOGICA INTEGRACION *******

        public OdbcDataReader ConsultaLogicaResultado(string cod)
        {
            return sn.ConsultaResultadoBanco(cod);
        }

        public DataTable ConsultaLogicaGrafica(string cod)
        {
            OdbcDataAdapter dtaGrafica = sn.ConsultaGrafica(cod);
            DataTable grafica = new DataTable();
            dtaGrafica.Fill(grafica);
            return grafica;
        }

        public OdbcDataReader ConsultaLogicaDesempeño(string cod)
        {
            return sn.ConsultaDesempeñoEmpleado(cod);
        }

        public DataTable ConsultaLogicaGraficaDesempeño(string cod)
        {
            OdbcDataAdapter dtaGrafica = sn.ConsultaGraficaDesempeño(cod);
            DataTable grafica = new DataTable();
            dtaGrafica.Fill(grafica);
            return grafica;
        }
        /*
                public DataTable ConsultaLogicaGraficaAsistencia(string nom)
                {
                    OdbcDataAdapter dtaGrafica = sn.ConsultaGraficaAsistencias(nom);
                    DataTable grafica = new DataTable();
                    dtaGrafica.Fill(grafica);
                    return grafica;
                }*/
        public OdbcDataReader ConsultaLogicaGraficaAsistencia(string nom)
        {
            return sn.ConsultaGraficaAsistencias2(nom);
        }

    }
}
