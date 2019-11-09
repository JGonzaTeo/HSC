using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos_RRHH
{
   public class sentencias
    {
        Conexion cn = new Conexion();
        OdbcCommand comm;
        public string obtenerfinal(string tabla,string campo)// metodo  que obtinene el contenio de una tabla
        {
          

            String camporesultante="";
            try
            {
               
                string sql = "SELECT MAX(" + campo+ "+1) FROM " + tabla + ";"; //SELECT MAX(idFuncion) FROM `funciones`     
                OdbcCommand command = new OdbcCommand(sql, cn.probarConexion());
                OdbcDataReader reader = command.ExecuteReader();           
                reader.Read();
                camporesultante = reader.GetValue(0).ToString();
            }
            catch (Exception)
            {
                Console.WriteLine(camporesultante);
            }
            return camporesultante;
            
        }
        public void ejecutarQuery(string query)// ejecuta un query en la BD
        {
            try
            {
                OdbcCommand consulta = new OdbcCommand(query, cn.probarConexion());
                consulta.ExecuteNonQuery();
            }
            catch (OdbcException ex) { Console.WriteLine(ex.ToString()); }

        }

        // ****INICIO DE SENTENCIAS PARA EL ÁREA DE INTEGRACION***
        public OdbcDataReader ConsultaResultadoBanco(string cod)
        {
            try
            {
                cn.probarConexion();
                //string consultaResultados = "SELECT KidPruebas,Resultado FROM tbl_resultados where KidBancoTalento = " + cod + ";";
                string consultaResultados = "SELECT nombre_candidato,apellido_candidato,correoelectronico FROM tbl_bancotalento where KidBancoTalento = " + cod + ";";
                comm = new OdbcCommand(consultaResultados, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataAdapter ConsultaGrafica(string cod)
        {
            try
            {
                cn.probarConexion();
                string consultaGra = "Select p.nombre, r.Resultado From tbl_pruebas p inner join tbl_resultados r on p.KidPruebas = r.KidPruebas inner join tbl_bancotalento on r.KidBancoTalento = " + cod + ";";
                ;
                OdbcDataAdapter dataGrafica = new OdbcDataAdapter(consultaGra, cn.probarConexion());
                return dataGrafica;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
            //   ***FIN DE SENTENCIAS PARA EL ÁREA DE PÓLIZAS***
        }
        Conexion cnx = new Conexion();

        //   ***SENTENCIAS PARA EL ÁREA DE PÓLIZAS***
        public OdbcDataReader ConsultaNomina(string dias)
        {
            try
            {
                cnx.probarConexion();
                string consultaNominas = "SELECT KidNomina, KidEmpleado_Contable, fecha_de_emision, sueldo_liquido FROM tbl_nominasencabezado WHERE fecha_de_emision BETWEEN DATE_SUB(CURDATE(), INTERVAL " + dias + " DAY) AND CURDATE() AND estado = 1;";
                comm = new OdbcCommand(consultaNominas, cnx.probarConexion());
                OdbcDataReader mostrarNominas = comm.ExecuteReader();
                return mostrarNominas;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcDataReader ConsultaCuentaFiltro(string nombreCuenta)
        {
            try
            {
                cnx.probarConexion();
                string consultaCuentas = "SELECT * FROM tbl_cuentas WHERE nombre LIKE ('%" + nombreCuenta + "%') AND estado = 1;";
                comm = new OdbcCommand(consultaCuentas, cnx.probarConexion());
                OdbcDataReader mostrarCuentas = comm.ExecuteReader();
                return mostrarCuentas;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcDataReader ConsultaCuenta()
        {
            try
            {
                cnx.probarConexion();
                string consultaCuentas = "SELECT * FROM tbl_cuentas WHERE estado = 1;";
                comm = new OdbcCommand(consultaCuentas, cnx.probarConexion());
                OdbcDataReader mostrarCuentas = comm.ExecuteReader();
                return mostrarCuentas;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcDataAdapter ConsultaTipoPoliza()
        {
            try
            {
                cnx.probarConexion();
                string consultaTipoPolizas = "SELECT KidTipoDePoliza FROM tbl_tipo_poliza WHERE estado = 1";
                OdbcDataAdapter dataTipoPoliza = new OdbcDataAdapter(consultaTipoPolizas, cnx.probarConexion());
                return dataTipoPoliza;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
            
        }

        public OdbcCommand InsertarEncabezadoPoliza(string tipoPoliza, string docAsociado, string descripcion, string total)
        {
            try
            {
                OdbcCommand comm = new OdbcCommand("{call procedimientoInsertarEncabezadoPoliza(?,?,?,?)}", cnx.probarConexion());
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("idTipoPoliza", OdbcType.Text).Value = tipoPoliza;
                comm.Parameters.Add("idDocAsociado", OdbcType.Text).Value = docAsociado;
                comm.Parameters.Add("descripcion", OdbcType.Text).Value = descripcion;
                comm.Parameters.Add("total", OdbcType.Text).Value = total;
                comm.ExecuteNonQuery();
                return comm;
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcCommand InsertarDetallePoliza(string idPoliza, string idCuenta, string debe, string haber)
        {
            try
            {
                OdbcCommand comm = new OdbcCommand("{call procedimientoInsertarDetallePoliza(?,?,?,?)}", cnx.probarConexion());
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add("idPoliza", OdbcType.Text).Value = idPoliza;
                comm.Parameters.Add("idCuenta", OdbcType.Text).Value = idCuenta;
                comm.Parameters.Add("debe", OdbcType.Text).Value = debe;
                comm.Parameters.Add("haber", OdbcType.Text).Value = haber;
                comm.ExecuteNonQuery();
                return comm;
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcDataReader ConsultaIdPoliza()
        {
            try
            {
                cnx.probarConexion();
                string consultaPoliza = "SELECT MAX(KidPoliza) FROM tbl_poliza_encabezado";
                comm = new OdbcCommand(consultaPoliza, cnx.probarConexion());
                OdbcDataReader mostrarIdPoliza = comm.ExecuteReader();
                return mostrarIdPoliza;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        public OdbcCommand ActualizarEstadoNomina(string idNomina)
        {
            try
            {
                string consultaActualizarNomina = "UPDATE tbl_nominasencabezado SET estado = 0 WHERE KidNomina = " + idNomina + ";";
                OdbcCommand comm = new OdbcCommand(consultaActualizarNomina, cnx.probarConexion());
                comm.ExecuteNonQuery();
                return comm;
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }

        //   ***FIN DE SENTENCIAS PARA EL ÁREA DE PÓLIZAS***
    }


}

