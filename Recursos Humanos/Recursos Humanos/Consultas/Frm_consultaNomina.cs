using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Odbc;
using CapaLogica_RRHH;

namespace Recursos_Humanos.Consultas
{
    public partial class Frm_consultaNomina : Form
    {
        Logica logic = new Logica();
        public Frm_consultaNomina()
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

        private void Frm_consultaNomina_Load(object sender, EventArgs e)
        {
            Cmbx_dias.DisplayMember = "Text";
            Cmbx_dias.ValueMember = "Value";

            var items = new[]
            {
                new {Text = "7 DIAS", Value = 7},
                new {Text = "15 DIAS", Value = 15},
                new {Text = "30 DIAS", Value = 30},
                new {Text = "60 DIAS", Value = 60},
                new {Text = "90 DIAS", Value = 90},
                new {Text = "120 DIAS", Value = 120},
                new {Text = "240 DIAS", Value = 240},
                new {Text = "1 AÑO", Value = 365},
                new {Text = "MAS DE UN AÑO", Value = 367}

            };

            Cmbx_dias.DataSource = items;
        }

        private void Cmbx_dias_SelectedValueChanged(object sender, EventArgs e)
        {
            Console.WriteLine(Cmbx_dias.SelectedValue);
            Dgv_consultaNomina.Rows.Clear();
            OdbcDataReader mostrarNominas = logic.ConsultaLogicaNominas(Cmbx_dias.SelectedValue.ToString());
            try
            {
                while (mostrarNominas.Read())
                {
                    Dgv_consultaNomina.Rows.Add(mostrarNominas.GetString(0), mostrarNominas.GetString(1), mostrarNominas.GetString(2), mostrarNominas.GetString(3));
                }
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void Btn_seleccionar_Click(object sender, EventArgs e)
        {
            if(Dgv_consultaNomina.Rows.Count == 0)
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
