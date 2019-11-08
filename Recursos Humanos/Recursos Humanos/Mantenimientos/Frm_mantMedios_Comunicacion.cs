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
    public partial class Frm_mantMedios_Comunicacion : Form
    {
        ToolTip ayuda_tp = new ToolTip();
        string sususario;
        Logica lo = new Logica();
        string scampo;
        public Frm_mantMedios_Comunicacion(string user)
        {
            sususario = user;
            InitializeComponent();
            string[] alias = { "Codigo Medio:", "Nombre:", "Tipo:", "Contacto:","Estado" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            navegador1.asignarColorFondo(Color.LightBlue);
            navegador1.asignarColorFuente(Color.BlueViolet);
            navegador1.asignarAyuda("14");
            navegador1.asignarTabla("tbl_medios_comunicacion");
            navegador1.asignarNombreForm("Medios de Comunicacion");
            ayuda_tp.IsBalloon = true;
            scampo = lo.siguiente("tbl_medios_comunicacion", "KidMediosComunicacion");
            Txt_Sig.Text = scampo;
            Txt_Sig.Enabled = false;
            
        }
        private void Frm_mantPruebas_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(sususario);
            navegador1.botonesYPermisosInicial(sususario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
            scampo = lo.siguiente("tbl_medios_comunicacion", "KidMediosComunicacion");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_MouseHover(object sender, EventArgs e)
        {
            scampo = lo.siguiente("tbl_medios_comunicacion", "KidMediosComunicacion");
            Txt_Sig.Text = scampo;
        }

        private void Navegador1_Load(object sender, EventArgs e)
        {

        }
    }
}
