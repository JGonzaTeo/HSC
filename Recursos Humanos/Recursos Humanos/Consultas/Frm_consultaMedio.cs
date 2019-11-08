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
    public partial class Frm_consultaMedio : Form
    {

        Logica logic = new Logica();
        ToolTip ayuda_tp = new ToolTip();

        public Frm_consultaMedio()
        {
            InitializeComponent();
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        public void MostrarMedios()
        {
            Dgv_consultaMedios.Rows.Clear();
            OdbcDataReader mostrarMedio = logic.ConsultaLogicaMedios();
            try
            {
                while (mostrarMedio.Read())
                {
                    Dgv_consultaMedios.Rows.Add(mostrarMedio.GetString(0), mostrarMedio.GetString(1), mostrarMedio.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Frm_consultaMedio_Load(object sender, EventArgs e)
        {
            MostrarMedios();
        }

        private void Btn_actualizar_Click(object sender, EventArgs e)
        {
            MostrarMedios();
        }

        private void Btn_buscar_Click(object sender, EventArgs e)
        {
            Dgv_consultaMedios.Rows.Clear();
            Dgv_consultaMedios.Refresh();
            OdbcDataReader mostrarMedio = logic.ConsultaLogicaMediosFiltro(Txt_nombreMedio.Text);
            try
            {
                while (mostrarMedio.Read())
                {
                    Dgv_consultaMedios.Rows.Add(mostrarMedio.GetString(0), mostrarMedio.GetString(1), mostrarMedio.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Btn_seleccionar_Click(object sender, EventArgs e)
        {
            if (Dgv_consultaMedios.Rows.Count == 0)
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
