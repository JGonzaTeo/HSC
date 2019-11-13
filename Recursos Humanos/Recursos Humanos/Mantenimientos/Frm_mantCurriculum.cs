using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDeDiseno;
using CapaLogica_RRHH;

namespace Recursos_Humanos.Mantenimientos
{
    public partial class Frm_mantCurriculum : Form
    {
        ToolTip ayuda_tp = new ToolTip();
        string ususario;
        Logica lo = new Logica();
        string scampo;
        public Frm_mantCurriculum(string user)
        {
            InitializeComponent();
            ususario = user;

            string[] alias = { "Cod Curriculum", "Nombre:", "Apellido:", "Numero:", "Direccion:", "Correo:", "Primaria:", "Secundaria:", "Bachillerato", "Estudiante U", "Graduado", "Curso Extra", "Descp. Curso", "Experiencia Previa", "Sueldo Esperado", "Reporte Vacante:", "Estado:" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            navegador1.asignarColorFondo(Color.LightBlue);
            navegador1.asignarColorFuente(Color.BlueViolet);
            navegador1.asignarAyuda("408");
            navegador1.asignarTabla("tbl_curriculums");
            navegador1.asignarComboConTabla("tbl_encabezadoreportevacante", "KidReporteVacante", 1);
            navegador1.asignarNombreForm("Curriculum");
            ayuda_tp.IsBalloon = true;
            scampo = lo.siguiente("tbl_curriculums", "KidCurriculum");
            Txt_Sig.Text = scampo;
            Txt_Sig.Enabled = false;
        }
        private void Frm_mantCurriculum_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(ususario);
            navegador1.botonesYPermisosInicial(ususario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
            scampo = lo.siguiente("tbl_curriculums", "KidCurriculum");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_MouseHover(object sender, EventArgs e)
        {
            scampo = lo.siguiente("tbl_curriculums", "KidCurriculum");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_Load(object sender, EventArgs e)
        {

        }
    }
}
