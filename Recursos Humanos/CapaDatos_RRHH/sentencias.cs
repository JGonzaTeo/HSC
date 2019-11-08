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
            
        }

        public OdbcDataReader ConsultaDesempeñoEmpleado(string cod)
        {
            try
            {
                cn.probarConexion();
                string consultaDesempeño = "Select nombres,apellidos,telefono,correo from tbl_empleado where KidEmpleado = " + cod + ";";
                comm = new OdbcCommand(consultaDesempeño, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataAdapter ConsultaGraficaDesempeño(string cod)
        {
            try
            {
                cn.probarConexion();
                string consultaGraDesem = "Select p.nombre, d.Resultado From tbl_pruebas p inner join tbl_desempeñoempleado d on p.KidPruebas = d.KidPruebas inner join tbl_empleado on d.KidEmpleado = " + cod + ";";
                ;
                OdbcDataAdapter dataGrafica = new OdbcDataAdapter(consultaGraDesem, cn.probarConexion());
                return dataGrafica;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataAdapter ConsultaGraficaAsistencias(string nom)
        {
            try
            {
                cn.probarConexion();
                string consultaGraDesem = "select count(PK_id_usuario), month(fecha) from tbl_bitacora where PK_id_usuario like '"+ nom + "' and accion like 'Se logeo al sistema' group by month(fecha);";
                OdbcDataAdapter dataGrafica = new OdbcDataAdapter(consultaGraDesem, cn.probarConexion());
                return dataGrafica;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }
        public OdbcDataReader ConsultaGraficaAsistencias2(string nom)
        {
            try
            {
                cn.probarConexion();
                string consultaGraAsis = "select count(PK_id_usuario), MONTHNAME(fecha) from tbl_bitacora where PK_id_usuario like '" + nom + "' and accion like 'Se logeo al sistema' group by month(fecha);";
                comm = new OdbcCommand(consultaGraAsis, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }
        /*Empleados*/
        public OdbcDataReader ConsultaEmpleados()
        {
            try
            {
                cn.probarConexion();
                // string consultaGraAsis = " select kidempleado, nombres, apellidos from tbl_empleado where nombres like '" + nom + "';";
                string consultaGraAsis = " select kidempleado, nombres, apellidos from tbl_empleado;";
                comm = new OdbcCommand(consultaGraAsis, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataReader ConsultaEmpleadoFiltro(string nom)
        {
            try
            {
                cn.probarConexion();
                string consulta = " select kidempleado, nombres, apellidos from tbl_empleado where nombres like '" + nom + "';";
                comm = new OdbcCommand(consulta, cn.probarConexion());
                OdbcDataReader mostrar = comm.ExecuteReader();
                return mostrar;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }
        /*FIN Empleados*/
        /*Perfiles*/
        public OdbcDataReader ConsultaPerfil()
        {
            try
            {
                cn.probarConexion();
                string consultaGraAsis = " select KidPerfil, Nombre_Puesto, Descripcion_Tareas from tbl_perfil_profesional;";
                comm = new OdbcCommand(consultaGraAsis, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataReader ConsultaPerfilFiltro(string nom)
        {
            try
            {
                cn.probarConexion();
                string consulta = "select KidPerfil, Nombre_Puesto, Descripcion_Tareas from tbl_perfil_profesional where Nombre_Puesto like '" + nom + "';";
                comm = new OdbcCommand(consulta, cn.probarConexion());
                OdbcDataReader mostrar = comm.ExecuteReader();
                return mostrar;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }
        /*FIN Perfiles*/
        /*MEDIOS*/
        public OdbcDataReader ConsultaMedio()
        {
            try
            {
                cn.probarConexion();
                string consultaGraAsis = " select KidMediosComunicacion, Nombre_medio, Tipo_medio from tbl_medios_comunicacion;";
                comm = new OdbcCommand(consultaGraAsis, cn.probarConexion());
                OdbcDataReader mostrarResultados = comm.ExecuteReader();
                return mostrarResultados;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }

        }

        public OdbcDataReader ConsultaMedioFiltro(string nom)
        {
            try
            {
                cn.probarConexion();
                string consulta = "select KidMediosComunicacion, Nombre_medio, Tipo_medio from tbl_medios_comunicacion where Nombre_medio like '" + nom + "';";
                comm = new OdbcCommand(consulta, cn.probarConexion());
                OdbcDataReader mostrar = comm.ExecuteReader();
                return mostrar;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }
        /*FIN Perfiles*/
        /*INSERTAR */
        public OdbcDataReader InsertarRepor(string idEmpleado, string idPuesto, string fecha, string tipo, string medio, string razon, string descripcion)
        {
            try
            {
                cn.probarConexion();
                string consulta = "insert into tbl_encabezadoreportevacante values ("+ 1 +","+ idEmpleado + "," + idPuesto + "," + "'"+fecha + "'" + "," +"'"+ tipo + "'" + "," + medio + "," + 1 +");";
                string consulta2 = "insert into tbl_detallereportevacante values (" + 1 + "," + "'"+razon + "'" + "," + "'"+descripcion + "'" + "," + 1 + ");";
                comm = new OdbcCommand(consulta, cn.probarConexion());
                OdbcDataReader mostrar = comm.ExecuteReader();
                comm = new OdbcCommand(consulta2, cn.probarConexion());
                OdbcDataReader mostrar2 = comm.ExecuteReader();
                return mostrar;
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return null;
            }
        }
        /*fin insertar*/
        //   ***FIN DE SENTENCIAS PARA EL ÁREA DE INTEGRACION***





    }





}

