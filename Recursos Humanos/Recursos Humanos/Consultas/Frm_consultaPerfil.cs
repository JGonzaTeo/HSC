using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaLogica_RRHH;
using System.Data.Odbc;

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaPerfil : Form
    {

        Logica logic = new Logica();
        ToolTip ayuda_tp = new ToolTip();

        public Frm_consultaPerfil()
        {
            InitializeComponent();
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Dgv_consultaPerfil.Rows.Clear();
            Dgv_consultaPerfil.Refresh();
            OdbcDataReader mostrarEmpleado = logic.ConsultaLogicaPerfilesFiltro(Txt_nombrePerfil.Text);
            try
            {
                while (mostrarEmpleado.Read())
                {
                    Dgv_consultaPerfil.Rows.Add(mostrarEmpleado.GetString(0), mostrarEmpleado.GetString(1), mostrarEmpleado.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        public void MostrarPerfiles()
        {
            Dgv_consultaPerfil.Rows.Clear();
            OdbcDataReader mostrarPerfil = logic.ConsultaLogicaPerfiles();
            try
            {
                while (mostrarPerfil.Read())
                {
                    Dgv_consultaPerfil.Rows.Add(mostrarPerfil.GetString(0), mostrarPerfil.GetString(1), mostrarPerfil.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Btn_actualizar_Click(object sender, EventArgs e)
        {
            MostrarPerfiles();
        }

        private void Frm_consultaPerfil_Load(object sender, EventArgs e)
        {
            MostrarPerfiles();
        }

        private void Btn_seleccionar_Click(object sender, EventArgs e)
        {
            if (Dgv_consultaPerfil.Rows.Count == 0)
            {
                return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }
    }
}
