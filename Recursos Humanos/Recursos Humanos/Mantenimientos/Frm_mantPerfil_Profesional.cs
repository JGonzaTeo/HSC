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
using CapaDiseno;
using CapaLogica_RRHH;

namespace Recursos_Humanos.Mantenimientos
{
    public partial class Frm_mantPerfil_Profesional : Form
    {
        ToolTip ayuda_tp = new ToolTip();
        string sususario;
        Logica lo = new Logica();
        string scampo;
        public Frm_mantPerfil_Profesional(string user)
        {
            sususario = user;
            InitializeComponent();
            string[] alias = { "Codigo Perfil:", "Nombre Puesto:", "Ubicacion Organigrama:", "Descripcion de Tareas:", "Objetivo Principal","Conocimientos Necesarios", "Estado" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            navegador1.asignarColorFondo(Color.LightBlue);
            navegador1.asignarColorFuente(Color.BlueViolet);
            navegador1.asignarAyuda("18");
            navegador1.asignarTabla("tbl_perfil_profesional");
            navegador1.asignarNombreForm("Perfil Profesional");
            ayuda_tp.IsBalloon = true;
            scampo = lo.siguiente("tbl_perfil_profesional", "KidPerfil");
            Txt_Sig.Text = scampo;
            Txt_Sig.Enabled = false;
        }
        private void Frm_mantPerfil_Profesional_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(sususario);
            navegador1.botonesYPermisosInicial(sususario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
            scampo = lo.siguiente("tbl_perfil_profesional", "KidPerfil");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_MouseHover(object sender, EventArgs e)
        {
            scampo = lo.siguiente("tbl_perfil_profesional", "KidPerfil");
            Txt_Sig.Text = scampo;
        }
    }
}
