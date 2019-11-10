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

        public OdbcDataReader ConsultaLogicaEmpleados()
        {
            return sn.ConsultaEmpleados();
        }

        public OdbcDataReader ConsultaLogicaEmpleadoFiltro(string nom)
        {
            return sn.ConsultaEmpleadoFiltro(nom);
        }

        public OdbcDataReader ConsultaLogicaPerfiles()
        {
            return sn.ConsultaPerfil();
        }

        public OdbcDataReader ConsultaLogicaPerfilesFiltro(string nom)
        {
            return sn.ConsultaPerfilFiltro(nom);
        }

        public OdbcDataReader ConsultaLogicaMedios()
        {
            return sn.ConsultaMedio();
        }

        public OdbcDataReader ConsultaLogicaMediosFiltro(string nom)
        {
            return sn.ConsultaMedioFiltro(nom);
        }
        //Reporte
        public OdbcDataReader ConsultaLogicaReporteEncabezado()
        {
            return sn.ConsultaReporteEncabezado();
        }

        public OdbcDataReader ConsultaLogicaReporteEncabezadoFiltro(string id)
        {
            return sn.ConsultaReporteEncabezadoFiltro(id);
        }

        public OdbcDataReader ConsultaLogicaReporteDetalle()
        {
            return sn.ConsultaReporteDetalle();
        }

        public OdbcDataReader ConsultaLogicaReporteDetalleFiltro(string id)
        {
            return sn.ConsultaReporteDetalleFiltro(id);
        }

        /*INSERT*/
        public OdbcDataReader InsertarReporteEnca(string reporte, string idEmpleado, string idPuesto, string fecha, string tipo, string medio)
        {   //(string reporte, string idEmpleado, string idPuesto, string fecha, string tipo, string medio)
            return sn.InsertarReporEncabezado(reporte, idEmpleado, idPuesto, fecha, tipo,medio);
        }

        public OdbcDataReader InsertarReporteDeta(string cod, string primaria, string secundaria, string bachi, string eU, string gU, string cE, string dC, string sueldo)
        {   //(string cod, string primaria, string secundaria, string bachi, string eU, string gU, string cE, string dC, string sueldo)
            return sn.InsertarReporDetalle(cod, primaria,secundaria, bachi, eU, gU, cE, dC, sueldo);
        }
        /*FIN INSERT*/
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

        public OdbcCommand LogicaInsertarEncabezadoPoliza(string tipoPoliza, string docAsociado, string descripcion, string total)
        {
            return sn.InsertarEncabezadoPoliza(tipoPoliza, docAsociado, descripcion, total);
        }

        public OdbcCommand LogicaInsertarDetallePoliza(string idPoliza, string idCuenta, string debe, string haber)
        {
            return sn.InsertarDetallePoliza(idPoliza, idCuenta, debe, haber); ;
        }

        public OdbcDataReader ConsultaLogicaIdPoliza()
        {
            return sn.ConsultaIdPoliza();
        }

        public OdbcCommand LogicaActualizarNomina(string idNomina)
        {
            return sn.ActualizarEstadoNomina(idNomina);
        }

        //   ***FIN DE LOGICA PARA EL ÁREA DE PÓLIZAS***














































        public OdbcDataReader ConsultaLogicaPreseleccionFiltro(string id)
        {
            return sn.ConsultaSeleccionFiltro(id);
        }

        public OdbcDataReader ConsultaLogicaPreseleccionComparacion(string id)
        {
            return sn.ConsultaSeleccionComparacion(id);
        }

        public OdbcDataReader ConsultaSeleccionComparacionAceptados(string id)
        {
            return sn.ConsultaSeleccionComparacionAceptados(id);
        }

        /*INSERTAR BANCO*/
        public OdbcDataReader InsertarBanco(string codCurri)
        {
            return sn.InsertarBanco(codCurri);
        }
        /*FIN DE INSERTAR BANCO*/
    }
}
