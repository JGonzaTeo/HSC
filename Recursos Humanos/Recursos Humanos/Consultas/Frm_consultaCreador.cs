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
using static Recursos_Humanos.Form1;

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaCreador : Form
    {
        Logica logic = new Logica();
        ToolTip ayuda_tp = new ToolTip();

        public Frm_consultaCreador()
        {
            InitializeComponent();
        }

        private void Lbl_titulo_Click(object sender, EventArgs e)
        {

        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        public void MostrarEmpleados()
        {
            Dgv_consultaCreador.Rows.Clear();
            OdbcDataReader mostrarEmpleado = logic.ConsultaLogicaEmpleados();
            try
            {
                while (mostrarEmpleado.Read())
                {
                    Dgv_consultaCreador.Rows.Add(mostrarEmpleado.GetString(0), mostrarEmpleado.GetString(1), mostrarEmpleado.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Frm_consultaCreador_Load(object sender, EventArgs e)
        {
            MostrarEmpleados();
        }

        private void Btn_actualizar_Click(object sender, EventArgs e)
        {
            MostrarEmpleados();
        }

        private void Btn_seleccionar_Click(object sender, EventArgs e)
        {
            if (Dgv_consultaCreador.Rows.Count == 0)
            {
                return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Dgv_consultaCreador.Rows.Clear();
            Dgv_consultaCreador.Refresh();
            OdbcDataReader mostrarEmpleado = logic.ConsultaLogicaEmpleadoFiltro(Txt_nombreEmpleado.Text);
            try
            {
                while (mostrarEmpleado.Read())
                {
                    Dgv_consultaCreador.Rows.Add(mostrarEmpleado.GetString(0), mostrarEmpleado.GetString(1), mostrarEmpleado.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Txt_nombreEmpleado_KeyUp(object sender, KeyEventArgs e)
        {
           
        }

        private void Txt_nombreEmpleado_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
