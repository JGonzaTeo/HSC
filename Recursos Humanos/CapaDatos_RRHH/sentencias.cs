using System;
using System.Collections.Generic;
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
                string consultaNominas = "SELECT KidNomina, KidEmpleado_Contable, fecha_de_emision, sueldo_liquido FROM tbl_nominasencabezado WHERE fecha_de_emision BETWEEN DATE_SUB(CURDATE(), INTERVAL " + dias + " DAY) AND CURDATE();";
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
            //   ***FIN DE SENTENCIAS PARA EL ÁREA DE PÓLIZAS***
        }
    }


}

