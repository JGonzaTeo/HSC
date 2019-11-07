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

        //   ***LOGICA PARA EL ÁREA DE PÓLIZAS***
        public OdbcDataReader ConsultaLogicaNominas(string dias)
        {
            return sn.ConsultaNomina(dias);
        }

        public OdbcDataReader ConsultaLogicaCuentasFiltro(string nombreCuenta)
        {
            return sn.ConsultaCuentaFiltro(nombreCuenta);
        }

        public OdbcDataReader ConsultaLogicaCuentas()
        {
            return sn.ConsultaCuenta();
        }

        public DataTable ConsultaLogicaTipoPoliza()
        {
            OdbcDataAdapter dtaTipoPoliza = sn.ConsultaTipoPoliza();
            DataTable tableTipoPoliza = new DataTable();
            dtaTipoPoliza.Fill(tableTipoPoliza);
            return tableTipoPoliza;
        }

        //   ***FIN DE LOGICA PARA EL ÁREA DE PÓLIZAS***
    }
}
