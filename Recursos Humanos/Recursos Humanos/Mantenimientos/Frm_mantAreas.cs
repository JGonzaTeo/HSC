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
   
    public partial class Frm_mantAreas : Form
    {

        ToolTip ayuda_tp = new ToolTip();
        string sususario;
        Logica lo = new Logica();
        string scampo;


        public Frm_mantAreas(string user)
        {
            InitializeComponent();
            sususario = user;
            string[] alias = { "Cod Area", "Nombre", "Estado" };
            navegador1.asignarAlias(alias);
            navegador1.asignarSalida(this);
            Color rrhh = Color.FromArgb(128, 173, 239);
            navegador1.asignarColorFondo(rrhh);
            navegador1.asignarColorFuente(Color.Black);
            navegador1.asignarAyuda("401");
            //navegador1.asignarReporte("4");
            navegador1.asignarTabla("tbl_areas");
            //navegador1.asignarComboConTabla("tbl_tipo_habitacion", "KidTipoHabitacion", 0);
            navegador1.asignarNombreForm("Areas");
            ayuda_tp.IsBalloon = true;
           scampo = lo.siguiente("tbl_areas", "KidArea");
            Txt_Sig.Text = scampo;
            Txt_Sig.Enabled = false;



        }

        private void Frm_mantAreas_Load(object sender, EventArgs e)
        {
            string aplicacionActiva = "1";
            navegador1.ObtenerIdUsuario(sususario);
            navegador1.botonesYPermisosInicial(sususario, aplicacionActiva);
            navegador1.ObtenerIdAplicacion(aplicacionActiva);
            scampo=lo.siguiente("tbl_areas", "KidArea");
            Txt_Sig.Text = scampo;



        }

        private void Navegador1_Click(object sender, EventArgs e)
        {

            
        }

        private void Navegador1_MouseMove(object sender, MouseEventArgs e)
        {

     
        }

        private void Navegador1_MouseHover(object sender, EventArgs e)
        {
            scampo = lo.siguiente("tbl_areas", "KidArea");
            Txt_Sig.Text = scampo;
        }

        private void Frm_mantAreas_MouseMove(object sender, MouseEventArgs e)
        {
           
        }

        private void Navegador1_Load(object sender, EventArgs e)
        {
        }

        private void Navegador1_Load_1(object sender, EventArgs e)
        {

        }
    }
}
